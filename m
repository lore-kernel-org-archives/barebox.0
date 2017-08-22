Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dk18b-0007Sn-No
 for barebox@lists.infradead.org; Tue, 22 Aug 2017 04:50:04 +0000
References: <908276710.287135237.1503332620287.JavaMail.zimbra@kalray.eu>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <92639b98-1bc6-61fd-dec9-28db41c06a13@rempel-privat.de>
Date: Tue, 22 Aug 2017 06:49:28 +0200
MIME-Version: 1.0
In-Reply-To: <908276710.287135237.1503332620287.JavaMail.zimbra@kalray.eu>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0058980616364413546=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] TFTP: Add support for custom server and port
To: =?UTF-8?Q?Cl=c3=a9ment_Leger?= <cleger@kalray.eu>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0058980616364413546==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="B47be36tIuxXrRHjltCS1gLeoKMMS23ph"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--B47be36tIuxXrRHjltCS1gLeoKMMS23ph
Content-Type: multipart/mixed; boundary="BqvVaFC4S6Esuv7Kq35F7NBQ0T5RuoPLp";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: =?UTF-8?Q?Cl=c3=a9ment_Leger?= <cleger@kalray.eu>,
 barebox@lists.infradead.org
Message-ID: <92639b98-1bc6-61fd-dec9-28db41c06a13@rempel-privat.de>
Subject: Re: [PATCH 1/1] TFTP: Add support for custom server and port
References: <908276710.287135237.1503332620287.JavaMail.zimbra@kalray.eu>
In-Reply-To: <908276710.287135237.1503332620287.JavaMail.zimbra@kalray.eu>

--BqvVaFC4S6Esuv7Kq35F7NBQ0T5RuoPLp
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Am 21.08.2017 um 18:23 schrieb Cl=C3=A9ment Leger:
> From de97046a780acf75263f932b34b32eb33a9d6eea Mon Sep 17 00:00:00 2001
> From: Clement Leger <clement.leger@kalray.eu>
> Date: Mon, 21 Aug 2017 18:08:01 +0200
> Subject: [PATCH] TFTP: Add support for custom server and port
>=20
> This patch add argument to the tftp command which allow to specify a
> custom tftp server and port. These options are now given to the tftp
> filesystem by using serveri[:port] format.
> In order to maintain backward compatibity with direct mount usage, the
> port is optional and defaults to the standard tftp port if not given.
> These parameters are useful when using a different server than the=20
> one provided by dhcp and not running on a standard port.

Hm... it should be possible to overwrite serverip in the interface file
/env/network/eth0, even if dhcp is used:
http://www.barebox.org/doc/latest/user/booting-linux.html#network-boot

is it not working for you? or are there some other reasons to have this
parameter?

> Signed-off-by: Clement Leger <clement.leger@kalray.eu>
> ---
>  commands/tftp.c | 31 +++++++++++++++++++++++++------
>  fs/tftp.c       | 19 ++++++++++++++++---
>  2 files changed, 41 insertions(+), 9 deletions(-)
>=20
> diff --git a/commands/tftp.c b/commands/tftp.c
> index 08366b4..3c6ec72 100644
> --- a/commands/tftp.c
> +++ b/commands/tftp.c
> @@ -28,6 +28,10 @@
> =20
>  #define TFTP_MOUNT_PATH	"/.tftp_tmp_path"
> =20
> +#define IPV4_STR_SIZE	sizeof("255.255.255.255:12345")
> +
> +#define TFTP_PORT	69
> +
>  static int do_tftpb(int argc, char *argv[])
>  {
>  	char *source, *dest, *freep;
> @@ -36,13 +40,22 @@ static int do_tftpb(int argc, char *argv[])
>  	int tftp_push =3D 0;
>  	int ret;
>  	IPaddr_t ip;
> -	char ip4_str[sizeof("255.255.255.255")];
> +	int port =3D TFTP_PORT;
> +	char server_str[IPV4_STR_SIZE] =3D {0};
> +	int server_given =3D 0;
> =20
> -	while ((opt =3D getopt(argc, argv, "p")) > 0) {
> +	while ((opt =3D getopt(argc, argv, "pP:s:")) > 0) {
>  		switch(opt) {
>  		case 'p':
>  			tftp_push =3D 1;
>  			break;
> +		case 'P':
> +			port =3D simple_strtol(optarg, NULL, 0);
> +			break;
> +		case 's':
> +			server_given =3D 1;
> +			strncpy(server_str, optarg, IPV4_STR_SIZE - 1);
> +			break;
>  		default:
>  			return COMMAND_ERROR_USAGE;
>  		}
> @@ -73,9 +86,13 @@ static int do_tftpb(int argc, char *argv[])
>  	if (ret)
>  		goto err_free;
> =20
> -	ip =3D net_get_serverip();
> -	sprintf(ip4_str, "%pI4", &ip);
> -	ret =3D mount(ip4_str, "tftp", TFTP_MOUNT_PATH, NULL);
> +	if (!server_given) {
> +		ip =3D net_get_serverip();
> +		sprintf(server_str, "%pI4", &ip);
> +	}
> +
> +	snprintf(server_str + strlen(server_str), IPV4_STR_SIZE - 1, ":%d", p=
ort);
> +	ret =3D mount(server_str, "tftp", TFTP_MOUNT_PATH, NULL);
>  	if (ret)
>  		goto err_rmdir;
> =20
> @@ -100,12 +117,14 @@ BAREBOX_CMD_HELP_TEXT("server address is taken fr=
om the environment (ethX.server
>  BAREBOX_CMD_HELP_TEXT("")
>  BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT ("-p", "push to TFTP server")
> +BAREBOX_CMD_HELP_OPT ("-P", "TFTP port")
> +BAREBOX_CMD_HELP_OPT ("-s", "Server IP")
>  BAREBOX_CMD_HELP_END
> =20
>  BAREBOX_CMD_START(tftp)
>  	.cmd		=3D do_tftpb,
>  	BAREBOX_CMD_DESC("load (or save) a file using TFTP")
> -	BAREBOX_CMD_OPTS("[-p] SOURCE [DEST]")
> +	BAREBOX_CMD_OPTS("[-pPs] SOURCE [DEST]")
>  	BAREBOX_CMD_GROUP(CMD_GRP_NET)
>  	BAREBOX_CMD_HELP(cmd_tftp_help)
>  BAREBOX_CMD_END
> diff --git a/fs/tftp.c b/fs/tftp.c
> index 847921a..c4a2769 100644
> --- a/fs/tftp.c
> +++ b/fs/tftp.c
> @@ -87,6 +87,7 @@ struct file_priv {
> =20
>  struct tftp_priv {
>  	IPaddr_t server;
> +	uint16_t port;
>  };
> =20
>  static int tftp_create(struct device_d *dev, const char *pathname, mod=
e_t mode)
> @@ -423,7 +424,7 @@ static struct file_priv *tftp_do_open(struct device=
_d *dev,
>  		goto out;
>  	}
> =20
> -	priv->tftp_con =3D net_udp_new(tpriv->server, TFTP_PORT, tftp_handler=
,
> +	priv->tftp_con =3D net_udp_new(tpriv->server, tpriv->port, tftp_handl=
er,
>  			priv);
>  	if (IS_ERR(priv->tftp_con)) {
>  		ret =3D PTR_ERR(priv->tftp_con);
> @@ -647,12 +648,24 @@ static int tftp_probe(struct device_d *dev)
>  {
>  	struct fs_device_d *fsdev =3D dev_to_fs_device(dev);
>  	struct tftp_priv *priv =3D xzalloc(sizeof(struct tftp_priv));
> +	char *tmp =3D xstrdup(fsdev->backingstore);
> +	char *port;
> +	int ret =3D 0;
> =20
>  	dev->priv =3D priv;
> =20
> -	priv->server =3D resolv(fsdev->backingstore);
> +	port =3D strchr(tmp, ':');
> +	if (!port) {
> +		priv->port =3D TFTP_PORT;
> +	} else {
> +		*port =3D 0;
> +		priv->port =3D simple_strtol(port + 1, NULL, 0);
> +	}
> =20
> -	return 0;
> +	priv->server =3D resolv(tmp);
> +
> +	free(tmp);
> +	return ret;
>  }
> =20
>  static void tftp_remove(struct device_d *dev)
>=20


--=20
Regards,
Oleksij


--BqvVaFC4S6Esuv7Kq35F7NBQ0T5RuoPLp--

--B47be36tIuxXrRHjltCS1gLeoKMMS23ph
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF4EAREIAAYFAlmbt9gACgkQHwImuRkmbWk9nQD+JKUrEX2yAR9oafEEKeGIy+z0
tDmQAFE7YZKSgbsTzokA+gJUzthojHByawgj7XYAChZUsIM8EP69BHKeWbV2Hyug
=1g5K
-----END PGP SIGNATURE-----

--B47be36tIuxXrRHjltCS1gLeoKMMS23ph--


--===============0058980616364413546==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0058980616364413546==--
