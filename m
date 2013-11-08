Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ven4T-0004yT-Cc
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 14:30:02 +0000
Date: Fri, 8 Nov 2013 15:29:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131108142939.GX24559@pengutronix.de>
References: <1383869695-25566-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1383869695-25566-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] partitions: dos: don't open code get_unaligned_le32
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 08, 2013 at 01:14:55AM +0100, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Runtime tested and applied, thanks

Sascha

> ---
> Hello,
> =

> note this is only compile tested.
> =

> Best regards
> Uwe
> =

>  common/partitions/dos.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/common/partitions/dos.c b/common/partitions/dos.c
> index 31b1ed6..9afd122 100644
> --- a/common/partitions/dos.c
> +++ b/common/partitions/dos.c
> @@ -105,7 +105,7 @@ static int dos_get_disk_signature(struct param_d *p, =
void *_priv)
>  	if (!buf)
>  		return -EIO;
>  =

> -	priv->signature =3D le32_to_cpup((__le32 *)(buf + 0x1b8));
> +	priv->signature =3D get_unaligned_le32(buf + 0x1b8);
>  =

>  	free(buf);
>  =

> -- =

> 1.8.4.rc3
> =

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
