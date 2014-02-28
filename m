Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJIQW-0001vH-BL
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 08:04:13 +0000
Date: Fri, 28 Feb 2014 09:03:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140228080350.GW17250@pengutronix.de>
References: <1393351516-1136-1-git-send-email-philippe.retornaz@epfl.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1393351516-1136-1-git-send-email-philippe.retornaz@epfl.ch>
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
Subject: Re: [PATCH 1/1] cfi_flash: fix NULL pointer dereference
To: Philippe =?iso-8859-15?Q?R=E9tornaz?= <philippe.retornaz@epfl.ch>
Cc: barebox@lists.infradead.org

On Tue, Feb 25, 2014 at 07:05:16PM +0100, Philippe R=E9tornaz wrote:
> We need to setup the info->dev pointer before flash_get_size() since it
> might use it for dev_dbg().
> This fix a crash on boot when debug output is enabled.
> =

> Signed-off-by: Philippe R=E9tornaz <philippe.retornaz@epfl.ch>

Applied thanks. Sorry for the delay, this patch was buried in my
mailbox.

Sascha

> ---
>  drivers/mtd/nor/cfi_flash.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
> index 514eab5..3d3d231 100644
> --- a/drivers/mtd/nor/cfi_flash.c
> +++ b/drivers/mtd/nor/cfi_flash.c
> @@ -978,8 +978,8 @@ static int cfi_probe (struct device_d *dev)
>  	info->flash_id =3D FLASH_UNKNOWN;
>  	info->cmd_reset =3D FLASH_CMD_RESET;
>  	info->base =3D dev_request_mem_region(dev, 0);
> -	info->size =3D flash_get_size(info);
>  	info->dev =3D dev;
> +	info->size =3D flash_get_size(info);
>  =

>  	if (info->flash_id =3D=3D FLASH_UNKNOWN) {
>  		dev_warn(dev, "## Unknown FLASH on Bank at 0x%08x - Size =3D 0x%08lx =
=3D %ld MB\n",
> -- =

> 1.7.9.5
> =

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
