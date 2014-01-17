Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1W4B9G-0007Tl-Ne
 for barebox@lists.infradead.org; Fri, 17 Jan 2014 15:15:55 +0000
Date: Fri, 17 Jan 2014 16:15:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140117151532.GC16215@pengutronix.de>
References: <1389614590-23510-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1389614590-23510-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] hummingboard: fix entryfunction for real
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 13, 2014 at 01:03:10PM +0100, Lucas Stach wrote:
> The entry function wasn't changed properly when the
> prototype changed.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks

Sascha

> ---
> The issue existed before the rename, but feel free to squash this fix
> into "ARM: imx6: rename Carrier-1 to Hummingboard".
> ---
>  arch/arm/boards/solidrun-hummingboard/lowlevel.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm/boards/solidrun-hummingboard/lowlevel.c b/arch/arm/boards/solidrun-hummingboard/lowlevel.c
> index c101f06fedd3..049a8a41be00 100644
> --- a/arch/arm/boards/solidrun-hummingboard/lowlevel.c
> +++ b/arch/arm/boards/solidrun-hummingboard/lowlevel.c
> @@ -9,8 +9,6 @@ ENTRY_FUNCTION(start_imx6dl_hummingboard, r0, r1, r2)
>  {
>  	uint32_t fdt;
>  
> -	__barebox_arm_head();
> -
>  	arm_cpu_lowlevel_init();
>  
>  	fdt = (uint32_t)__dtb_imx6dl_hummingboard_start - get_runtime_offset();
> -- 
> 1.8.5.2
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
