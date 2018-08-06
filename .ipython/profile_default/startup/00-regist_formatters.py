import IPython
import matplotlib.pyplot as plt
from graphviz import Digraph
from IPython.core.pylabtools import print_figure
from tabulate import tabulate


# from tablulate output to org tbl
# https://github.com/gregsexton/ob-ipython#tips-and-tricks
class OrgFormatter(IPython.core.formatters.BaseFormatter):
    def __call__(self, obj):
        try:
            return tabulate(obj, headers='keys',
                            tablefmt='orgtbl', showindex='always')
        except:
            return None

ip = get_ipython()
ip.display_formatter.formatters['text/org'] = OrgFormatter()


# from polynomial output of numpy to latex
def poly_to_latex(p):
    terms = ['%.2g' % p.coef[0]]
    if len(p) > 1:
        term = 'x'
        c = p.coef[1]
        if c != 1:
            term = ('%.2g ' % c) + term
        terms.append(term)
    if len(p) > 2:
        for i in range(2, len(p)):
            term = 'x^%d' % i
            c = p.coef[i]
            if c != 1:
                term = ('%.2g ' % c) + term
            terms.append(term)
    px = '$P(x)=%s$' % '+'.join(terms)
    dom = r', $x \in [%.2g,\ %.2g]$' % tuple(p.domain)
    return px + dom

ip = get_ipython()
latex_f = ip.display_formatter.formatters['text/latex']
latex_f.for_type_by_name('numpy.polynomial.polynomial',
                                 'Polynomial', poly_to_latex)


# from polynomial to png directly
def poly_to_png(p):
    fig, ax = plt.subplots()
    x = np.linspace(-1, 1)
    y = [p(_x) for _x in x]
    ax.plot(x, y)
    ax.set_title(poly_to_latex(p))
    ax.set_xlabel('x')
    ax.set_ylabel('P(x)')
    # from IPython.core.pylabtools import print_figure
    data = print_figure(fig, 'png')
    # We MUST close the figure, otherwise IPython's display machinery
    # will pick it up and send it as output, resulting in a double display
    plt.close(fig)
    return data


ip = get_ipython()
png_f = ip.display_formatter.formatters['image/png']
png_f.for_type_by_name('numpy.polynomial.polynomial',
                                 'Polynomial', poly_to_png)

# from tensorflow.graph to png
# https://github.com/jkitchin/scimax/blob/master/scimax-ipython.org#tensorflow-visualizations
# graphviz.render	Render file with Graphviz engine into format, return result filename.
# graphviz.pipe	Return data piped through Graphviz engine into format.
# graphviz.view	Open filepath with its default viewing application (platform-specific).
def tf_to_dot(graph):
    "Adapted from https://blog.jakuba.net/2017/05/30/tensorflow-visualization.html"
    dot = Digraph()

    for n in g.as_graph_def().node:
        dot.node(n.name, label=n.name)

        for i in n.input:
            dot.edge(i, n.name)
    dot.format = 'svg'
    return dot.pipe().decode('utf-8')

ip = get_ipython()
svg_f = ip.display_formatter.formatters['image/svg+xml']
svg_f.for_type_by_name('tensorflow.python.framework.ops',
                       'Graph', tf_to_dot)
