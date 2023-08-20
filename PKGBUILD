# Maintainer: Theophilos Giannakopoulos <theo@abstractnonsense.org>

pkgname='pipewire-acpi-volume'
pkgver=1.0.1
pkgrel=1
pkgdesc="Control pipewire volume with ACPI events"
arch=('any')
url='https://github.com/tgiannak/pipewire-acpi-volume'
license=('BSD')
depends=('sh' 'coreutils' 'findutils' 'socat' 'pamixer' 'acpid' 'pipewire')
source=("volume-service.sh"
        "volume.sh"
        "pipewire-acpi-volume.service"
        "LICENSE")
md5sums=('7cf184583f18deb87dc1131b33c49ebc'
         'b4999d36b055930da098edc7ddce8d67'
         '22d18fa7ad0a1fd11bb45da0da208ea1'
         '28a2fecbcf246b2330146ae4a342c345')
conflicts=('pulseaudio-acpi-volume')

package() {
  install -Dm755 "$srcdir/volume-service.sh" \
          "$pkgdir/usr/lib/pipewire-acpi-volume/volume-service.sh"
  install -Dm755 "$srcdir/volume.sh" \
          "$pkgdir/usr/lib/pipewire-acpi-volume/volume.sh"
  install -Dm644 "$srcdir/pipewire-acpi-volume.service" \
          "$pkgdir/usr/lib/systemd/user/pipewire-acpi-volume.service"
  install -Dm644 "$srcdir/LICENSE" \
          "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
