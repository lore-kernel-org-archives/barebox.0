Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ePkQI-0002Yj-7L
 for barebox@lists.infradead.org; Fri, 15 Dec 2017 07:28:48 +0000
Date: Fri, 15 Dec 2017 08:28:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171215072824.k6smdqxt3xb23jwc@pengutronix.de>
References: <438665629.65151347.1513255256053.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <438665629.65151347.1513255256053.JavaMail.zimbra@kalray.eu>
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
Subject: Re: [PATCH] Bootm: remove uimage_close done later in bootm_boot
To: =?iso-8859-15?Q?Cl=E9ment?= Leger <cleger@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Dec 14, 2017 at 01:40:56PM +0100, Cl=E9ment Leger wrote:
> From 24e24f9998342b23cd8de4145c8098f93c60cdc7 Mon Sep 17 00:00:00 2001
> From: Clement Leger <clement.leger@kalray.eu>
> Date: Thu, 14 Dec 2017 13:29:50 +0100
> Subject: [PATCH] Bootm: fix double uimage_close
> =

> When uimage crc fails, the error handling path call uimage_close in
> bootm_open_os_uimage and also in bootm_boot. This leads to crash/exceptio=
n.
> Keep the main error handling path in bootm_boot and remove uimage_close f=
rom
> bootm_open_os_uimage to avoid double uimage_close.
> ---
>  common/bootm.c | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/common/bootm.c b/common/bootm.c
> index eebaa799f..c23898bea 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -455,7 +455,6 @@ static int bootm_open_os_uimage(struct image_data *da=
ta)
>  		if (ret) {
>  			printf("Checking data crc failed with %s\n",
>  					strerror(-ret));
> -			uimage_close(data->os);
>  			return ret;
>  		}
>  	}
> -- =

> 2.15.0.276.g89ea799
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
