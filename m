Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqb7P-0002iL-8j
 for barebox@lists.infradead.org; Thu, 14 Apr 2016 06:51:11 +0000
Date: Thu, 14 Apr 2016 08:50:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160414065049.GZ9102@pengutronix.de>
References: <1460492120-28861-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1460492120-28861-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH] ARM: tegra: set up stack before calling maincluster entry
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Tue, Apr 12, 2016 at 10:15:20PM +0200, Lucas Stach wrote:
> Allows this code to work correct regardless of the used compiler
> optimizations.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/mach-tegra/include/mach/lowlevel.h | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
> index f70688e..e9ba5ee 100644
> --- a/arch/arm/mach-tegra/include/mach/lowlevel.h
> +++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
> @@ -255,9 +255,6 @@ void tegra_cpu_lowlevel_setup(char *fdt)
>  {
>  	uint32_t r;
>  
> -	if (tegra_cpu_is_maincomplex())
> -		tegra_maincomplex_entry(fdt - get_runtime_offset());
> -
>  	/* set the cpu to SVC32 mode */
>  	__asm__ __volatile__("mrs %0, cpsr":"=r"(r));
>  	r &= ~0x1f;
> @@ -265,6 +262,10 @@ void tegra_cpu_lowlevel_setup(char *fdt)
>  	__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
>  
>  	arm_setup_stack(TEGRA_IRAM_BASE + SZ_256K - 8);
> +
> +	if (tegra_cpu_is_maincomplex())
> +		tegra_maincomplex_entry(fdt - get_runtime_offset());
> +
>  	tegra_ll_delay_setup();
>  }
>  
> -- 
> 2.5.5
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
