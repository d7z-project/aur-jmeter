# Maintainer: Witko <kos.na.bordel@gmail.com>
# Contributor: Stick <stick@stma.is>
# Contributor: Ngo Huy <severus@theslinux.org>
# Contributor: Dave Reisner <dreisner@archlinux.org>
# shellcheck disable=SC2034,SC2148,SC2154

pkgname=jmeter
pkgver=5.5
pkgrel=2
arch=('any')
pkgdesc="Java application designed to load test functional behavior and measure performance"
url="http://jmeter.apache.org/"
license=("apache")
depends=("java-environment>=8")
options=('!strip')
source=("https://mirrors.ustc.edu.cn/apache/jmeter/binaries/apache-${pkgname}-${pkgver}.tgz"
  "${pkgname}.desktop"
  "${pkgname}.xml"
  "${pkgname}-desktop.sh"
  )
sha256sums=('60e89c7c4523731467fdb717f33d614086c10f0316369cbaa45650ae1c402e1f'
  '43e8313bd0910df50262c4451699fa8050f8915768f6dd442ee9034788b80999'
  '739eb662f37acf0605d42e92a2f14b8b326576932afb8b78dd03fee415b0b608'
  'feffcabcc208e8069052eaf507437b90406451210557bfdffba960b09e8d5794'
  )
validpgpkeys=('C4923F9ABFB2F1A06F08E88BAC214CAA0612B399')

package() {
  install -dm755 "$pkgdir/opt/jmeter" "$pkgdir/usr/bin" "${pkgdir}/usr/share/applications" "${pkgdir}/usr/share/pixmaps" "${pkgdir}/usr/share/mime/packages"
  install -m644 "${srcdir}/${pkgname}.desktop" "${pkgdir}/usr/share/applications/${pkgname}.desktop"
  install -m755 "${srcdir}/${pkgname}-desktop.sh" "${pkgdir}/usr/bin/${pkgname}-desktop"
  install -m644 "$srcdir"/${pkgname}.xml "$pkgdir"/usr/share/mime/packages/"$pkgname".xml
  cp -a "apache-$pkgname-$pkgver"/* "$pkgdir/opt/jmeter"
  ln -s /opt/jmeter/bin/jmeter "$pkgdir/usr/bin/jmeter"
  sed -i '/^java/s|`dirname "$0"`|/opt/jmeter/bin|' "$pkgdir/opt/jmeter/bin/jmeter"
}

# vim:set ts=2 sw=2 et:
