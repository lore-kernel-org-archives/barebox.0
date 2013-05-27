Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgspG-0000ur-QX
 for barebox@lists.infradead.org; Mon, 27 May 2013 08:30:43 +0000
Date: Mon, 27 May 2013 10:30:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130527083020.GZ20989@pengutronix.de>
References: <1369209220-14529-1-git-send-email-linux@rempel-privat.de>
 <1369209220-14529-3-git-send-email-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1369209220-14529-3-git-send-email-linux@rempel-privat.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] cfi_flash: size_ratio should not be 0
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Wed, May 22, 2013 at 09:53:40AM +0200, Oleksij Rempel wrote:
> We will get size = 0 if size_ratio = 0
> 
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>

Applied, thanks

Sascha

> ---
>  drivers/mtd/nor/cfi_flash.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
> index 4b4e29d..85e96ce 100644
> --- a/drivers/mtd/nor/cfi_flash.c
> +++ b/drivers/mtd/nor/cfi_flash.c
> @@ -371,7 +371,8 @@ static ulong flash_get_size (struct flash_info *info)
>  		size_ratio = info->portwidth / info->chipwidth;
>  		/* if the chip is x8/x16 reduce the ratio by half */
>  		if ((info->interface == FLASH_CFI_X8X16)
> -		    && (info->chipwidth == FLASH_CFI_BY8)) {
> +		    && (info->chipwidth == FLASH_CFI_BY8)
> +		    && (size_ratio != 1)) {
>  			size_ratio >>= 1;
>  		}
>  		debug ("size_ratio %d port %d bits chip %d bits\n",
> -- 
> 1.8.1.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
