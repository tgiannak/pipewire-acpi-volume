# Maintainer: Theophilos Giannakopoulos <theo@abstractnonsense.org>

pkgname='pipewire-acpi-volume'
pkgver=1.1
pkgrel=1
pkgdesc="Control PipeWire volume with ACPI events"
arch=('any')
url='https://github.com/tgiannak/pipewire-acpi-volume'
license=('BSD')
depends=('sh' 'coreutils' 'findutils' 'socat' 'acpid' 'pipewire' 'wireplumber')
source=("volume-service.sh"
        "volume.sh"
        "pipewire-acpi-volume.service"
        "LICENSE")
sha256sums=('b64b712616b8b9ca28f5a7990a699d3555425b308b56327d7ac646cb5989f693'
            'd8383703698bae505c4d911b98076c4e39d4c86e9bd298fc1599695eb20ea4db'
            '07304f401c458ad845441f2d31ed7baaefc180d7227659646cd89cdb769e9b57'
            '8552b1d6eba9b621b49bf29d26fffe9cbb3f2596836e4613d66abc54bd23a5ff')
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
