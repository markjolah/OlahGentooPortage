DESCRIPTION="Tina's Random Number Generator library for efficient parallel PRNGs"
HOMEPAGE="http://numbercrunch.de/trng/"
SRC_URI="http://numbercrunch.de/trng/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

src_compile() {
    econf --
    emake || die
}
        
src_install() {
    emake DESTDIR="${D}" install || die
}
