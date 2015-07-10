Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZDeCe-000096-RL
 for barebox@lists.infradead.org; Fri, 10 Jul 2015 19:43:21 +0000
Date: Fri, 10 Jul 2015 21:42:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150710194256.GZ18700@pengutronix.de>
References: <1436364740-15559-1-git-send-email-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1436364740-15559-1-git-send-email-ejo@pengutronix.de>
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
Subject: Re: [PATCH] ARM/Vincell LT: Fix nand probe, move
 vincell_devices_init to coredevice_initcall
To: Enrico Jorns <ejo@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 08, 2015 at 04:12:20PM +0200, Enrico Jorns wrote:
> If vincell_devices_init initcall comes after imx_nand initcall,
> device probing fails when booting from usb!
> 
> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
> ---

Applied, thanks

Sascha

> 
> Based on: [PATCH 2/2] ARM: vincell: move to DT probing
> 
>  arch/arm/boards/guf-vincell/board.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/guf-vincell/board.c b/arch/arm/boards/guf-vincell/board.c
> index a164c93..d27d9e4 100644
> --- a/arch/arm/boards/guf-vincell/board.c
> +++ b/arch/arm/boards/guf-vincell/board.c
> @@ -53,4 +53,4 @@ static int vincell_devices_init(void)
>  	return 0;
>  }
>  
> -device_initcall(vincell_devices_init);
> +coredevice_initcall(vincell_devices_init);
> -- 
> 2.1.4
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
