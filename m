Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKcLX-0007KM-7O
 for barebox@lists.infradead.org; Wed, 16 Oct 2019 05:59:46 +0000
References: <1571204055-5028-1-git-send-email-sendpatch@qq.com>
From: Oleksij Rempel <fishor@gmx.net>
Message-ID: <61112c57-a57d-f6f2-7b4f-62b55e80a76b@gmx.net>
Date: Wed, 16 Oct 2019 07:59:30 +0200
MIME-Version: 1.0
In-Reply-To: <1571204055-5028-1-git-send-email-sendpatch@qq.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2592918434902928917=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] readline: make ctrl-u to work like linux console
To: sendpatch@qq.com, barebox@lists.infradead.org
Cc: DU HUANPENG <u74147@gmail.com>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2592918434902928917==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="5fHVZFvLIpvYqiEowU1SKz9RjI6AO2cQw"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--5fHVZFvLIpvYqiEowU1SKz9RjI6AO2cQw
Content-Type: multipart/mixed; boundary="ypxYfM5gClpjTfJNsWQaM7elJpi1EBUqu";
 protected-headers="v1"
From: Oleksij Rempel <fishor@gmx.net>
To: sendpatch@qq.com, barebox@lists.infradead.org
Cc: DU HUANPENG <u74147@gmail.com>
Message-ID: <61112c57-a57d-f6f2-7b4f-62b55e80a76b@gmx.net>
Subject: Re: [PATCH] readline: make ctrl-u to work like linux console
References: <1571204055-5028-1-git-send-email-sendpatch@qq.com>
In-Reply-To: <1571204055-5028-1-git-send-email-sendpatch@qq.com>

--ypxYfM5gClpjTfJNsWQaM7elJpi1EBUqu
Content-Type: text/plain; charset=utf-8
Content-Language: ru
Content-Transfer-Encoding: quoted-printable

Hi,

Am 16.10.19 um 07:34 schrieb sendpatch@qq.com:
> From: DU HUANPENG <u74147@gmail.com>
>=20
> currtly, the ctrl-u discards the whole line, in most linux
> boxes, ctrl-u just erase characters before cursor to the
> begginning of the line. this patch make ctrl-u to do this.

Cool, didn=C3=84t know i can use ctrl-u like this :)

>=20
> Signed-off-by: DU HUANPENG <u74147@gmail.com>
> ---
>  lib/readline.c | 34 +++++++++++++++++++++++++++++++---
>  1 file changed, 31 insertions(+), 3 deletions(-)
>=20
> diff --git a/lib/readline.c b/lib/readline.c
> index d026af1..c0b194c 100644
> --- a/lib/readline.c
> +++ b/lib/readline.c
> @@ -188,9 +188,10 @@ int readline(const char *prompt, char *buf, int le=
n)
>  	unsigned wlen;
>  	int ichar;
>  	int insert =3D 1;
> +	int i;
>  #ifdef CONFIG_AUTO_COMPLETE
>  	char tmp;
> -	int reprint, i;
> +	int reprint;
>  	char *completestr;
> =20
>  	complete_reset();
> @@ -291,8 +292,35 @@ int readline(const char *prompt, char *buf, int le=
n)
>  			break;
>  		case BB_KEY_ERASE_LINE:
>  		case CTL_CH('u'):
> -			BEGINNING_OF_LINE();
> -			ERASE_TO_EOL();
> +			if(num >=3D eol_num) {
> +				BEGINNING_OF_LINE();
> +				ERASE_TO_EOL();

Please use kernel/barebox coding style.
=2E/scripts/checkpatch.pl in barebox repository can help you.


> +			} else {
> +				for(i=3Dnum; i<eol_num; i++) {
> +					buf[i-num] =3D buf[i];
> +				}
> +				buf[i] =3D '\0';
> +
> +				for(i=3D0; i<num; i++) {
> +					getcmd_putch(CTL_BACKSPACE);
> +				}
> +				for(i=3D0; i<eol_num; i++) {
> +					getcmd_putch(' ');
> +				}
> +				for(i=3D0; i<eol_num; i++) {
> +					getcmd_putch(CTL_BACKSPACE);
> +				}
> +
> +				eol_num -=3D num;
> +				num =3D 0;
> +
> +				for(i=3D0; i<eol_num; i++) {
> +					getcmd_putch(buf[i]);
> +				}
> +				for(i=3D0; i<eol_num; i++) {
> +					getcmd_putch(CTL_BACKSPACE);
> +				}
> +			}
>  			break;
>  		case DEL:
>  		case BB_KEY_DEL7:
>=20



--ypxYfM5gClpjTfJNsWQaM7elJpi1EBUqu--

--5fHVZFvLIpvYqiEowU1SKz9RjI6AO2cQw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEpENFL0P3hvQ7p0DDdQOiSHVI77QFAl2mscMACgkQdQOiSHVI
77SxmQf/UL39yox262AF1yBbArPl7PXoAzA+8kweecKjj3ebR05hSUVxiQjDSrRu
S6q1xHYUyvWGwyRMtllFXlukTylKhlutIzwoIkYI3lqNRcuiiJgUIvOv6GCKWIS3
xLF+GS0rgOMJoU/qdvTsuPfxxTRLDrkvYPyHOIawvqvvyQcc36u/ZvQl/VrJlaGM
SbPB5FJWY/rYDbHrAoT0AU5uob2XObbs/sKqrgLy2na8+uu6WhY1zBX6PhsAujQ+
mkuz0w7HLazeAKQ4eLD/MaI/hAn0VRLt+Za9VLPIfH80q5fSNrp1zi0WMhI+bju2
Kl9BikRWPOAbJr6YVvj5agw3D/BW/A==
=QvbP
-----END PGP SIGNATURE-----

--5fHVZFvLIpvYqiEowU1SKz9RjI6AO2cQw--


--===============2592918434902928917==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2592918434902928917==--
