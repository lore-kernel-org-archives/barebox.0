Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSHKw-00086i-SK
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 08:06:16 +0000
Date: Thu, 29 Nov 2018 09:06:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181129080603.d47oxk2tek6pbgkj@pengutronix.de>
References: <20181127160730.20147-1-t.scherer@eckelmann.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181127160730.20147-1-t.scherer@eckelmann.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] imd: fix missing error message
To: "Thorsten K. Scherer" <t.scherer@eckelmann.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 27, 2018 at 05:07:30PM +0100, Thorsten K. Scherer wrote:
> imd -t just returns 'imd: error 61', if there is not tag for <type>
> =

> reference: common/imd.c:357 if (!imd) { ...
> Signed-off-by: Thorsten K. Scherer <t.scherer@eckelmann.de>
> ---
>  common/misc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/common/misc.c b/common/misc.c
> index 665f72be7..66aba534f 100644
> --- a/common/misc.c
> +++ b/common/misc.c
> @@ -67,11 +67,11 @@ const char *strerror(int errnum)
>  	case	ETIMEDOUT	: str =3D "Connection timed out"; break;
>  	case	EPROBE_DEFER	: str =3D "Requested probe deferral"; break;
>  	case	ELOOP		: str =3D "Too many symbolic links encountered"; break;
> +	case	ENODATA		: str =3D "No data available"; break;
>  #if 0 /* These are probably not needed */
>  	case	ENOTBLK		: str =3D "Block device required"; break;
>  	case	EFBIG		: str =3D "File too large"; break;
>  	case	EBADSLT		: str =3D "Invalid slot"; break;
> -	case	ENODATA		: str =3D "No data available"; break;
>  	case	ETIME		: str =3D "Timer expired"; break;
>  	case	ENONET		: str =3D "Machine is not on the network"; break;
>  	case	EADV		: str =3D "Advertise error"; break;
> -- =

> 2.19.1
> =

> =

> -- =

> Eckelmann AG
> Vorstand: Dipl.-Ing. Peter Frankenbach (Sprecher) Dipl.-Wi.-Ing. Philipp =
Eckelmann
> Dr.-Ing. Marco M=FCnchhof Dr.-Ing. Frank Uhlemann
> Vorsitzender des Aufsichtsrats: Hubertus G. Krossa
> Stv. Vorsitzender des Aufsichtsrats: Dr.-Ing. Gerd Eckelmann
> Sitz der Gesellschaft: Berliner Str. 161, 65205 Wiesbaden, Amtsgericht Wi=
esbaden HRB 12636
> http://www.eckelmann.de
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
