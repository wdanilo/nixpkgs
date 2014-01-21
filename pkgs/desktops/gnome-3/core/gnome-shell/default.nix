{ fetchurl, stdenv, pkgconfig, gnome3, json_glib, libcroco, intltool, libsecret
, python, libsoup, polkit, libcanberra, libcanberra_gtk3, clutter, networkmanager
, libstartup_notification, telepathy_glib, libXtst, p11_kit, networkmanagerapplet
, pulseaudio, libical, libtool, nss, gobjectIntrospection, gstreamer }:


stdenv.mkDerivation rec {
  name = "gnome-shell-3.10.2.1";

  src = fetchurl {
    url = "mirror://gnome/sources/gnome-shell/3.10/${name}.tar.xz";
    sha256 = "0k642y6h878v6mczx4z1zj4pjl7z4bvq02raxxwxkjyvyz2fv36j";
  };

  buildInputs = with gnome3;
    [ gsettings_desktop_schemas gnome_keyring gnome-menus glib gcr json_glib
      libcroco intltool libsecret pkgconfig python libsoup polkit libcanberra
      libcanberra_gtk3 clutter networkmanager libstartup_notification telepathy_glib
      libXtst p11_kit networkmanagerapplet gjs mutter pulseaudio caribou evolution_data_server
      libical libtool nss gnome-menus gobjectIntrospection gtk gstreamer ];

  configureFlags = "--disable-static";

  preBuild = ''
    patchShebangs src/data-to-c.pl
  '';

  meta = with stdenv.lib; {
    platforms = platforms.linux;
  };

}
