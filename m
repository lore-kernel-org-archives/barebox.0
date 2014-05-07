Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WhwAs-0001AJ-S5
 for barebox@lists.infradead.org; Wed, 07 May 2014 07:21:55 +0000
Date: Wed, 7 May 2014 09:21:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140507072133.GH5858@pengutronix.de>
References: <1399404496-11304-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1399404496-11304-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH] ARM: phycard-imx6: fixup for barebox_arm_entry signature
 change
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Tue, May 06, 2014 at 09:28:16PM +0200, Lucas Stach wrote:
> This board wasn't changed properly, as it was merged in the short
> timeframe where the signature change waited to be applied. Change
> it now to get rid of the compiler warning.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

Applied, thanks

Sascha

> ---
> Sascha, please apply to master.
> ---
>  arch/arm/boards/phytec-phycard-imx6/lowlevel.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boards/phytec-phycard-imx6/lowlevel.c b/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
> index 14df18f83543..64312b02437c 100644
> --- a/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
> +++ b/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
> @@ -57,7 +57,7 @@ extern char __dtb_imx6q_phytec_pbaa03_start[];
>  
>  static void __noreturn start_imx6q_phytec_pbaa03_common(uint32_t size)
>  {
> -	uint32_t fdt;
> +	void *fdt;
>  
>  	arm_cpu_lowlevel_init();
>  
> @@ -66,7 +66,7 @@ static void __noreturn start_imx6q_phytec_pbaa03_common(uint32_t size)
>  	if (IS_ENABLED(CONFIG_DEBUG_LL))
>  		setup_uart();
>  
> -	fdt = (uint32_t)__dtb_imx6q_phytec_pbaa03_start - get_runtime_offset();
> +	fdt = __dtb_imx6q_phytec_pbaa03_start - get_runtime_offset();
>  
>  	barebox_arm_entry(0x10000000, size, fdt);
>  }
> -- 
> 1.9.0
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
