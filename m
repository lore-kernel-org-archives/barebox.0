Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnOj7-0004PM-5a
 for barebox@lists.infradead.org; Wed, 08 Aug 2018 13:42:14 +0000
Date: Wed, 8 Aug 2018 15:42:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180808134200.ackpfosj7ysktz5n@pengutronix.de>
References: <1531417503-11837-1-git-send-email-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1531417503-11837-1-git-send-email-festevam@gmail.com>
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
Subject: Re: [PATCH v2] mx5: Implement Spectre v2 workaround for Cortex-A8
To: Fabio Estevam <festevam@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 12, 2018 at 02:45:03PM -0300, Fabio Estevam wrote:
> Since 4.18-rc1 kernel the following warning is seen on i.MX51 and
> i.MX53:
>     
> CPU0: Spectre v2: firmware did not set auxiliary control register IBE bit, system vulnerable
>     
> Implement the suggested workaround by setting the IBE bit in the
> auxiliary control register, which allows the kernel to flush the
> BTB properly.
> 
> Based on commit 7b37a9c732bf ("ARM: Introduce ability to enable ACR::IBE
> on Cortex-A8 for CVE-2017-5715") from U-Boot.
>     
> With this patch applied the kernel now reports:
>     
> CPU0: Spectre v2: using BPIALL workaround
> 
> Tested on a imx51 babbage.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---

Applied, thanks

Sascha

> Changes since v1:
> - Rename the function name (Lucas)
> - Improve the commit log (Lucas)
> 
>  arch/arm/include/asm/errata.h | 9 +++++++++
>  arch/arm/mach-imx/cpu_init.c  | 3 ++-
>  2 files changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/include/asm/errata.h b/arch/arm/include/asm/errata.h
> index 98137b5..c0e0f5a 100644
> --- a/arch/arm/include/asm/errata.h
> +++ b/arch/arm/include/asm/errata.h
> @@ -86,3 +86,12 @@ static inline void enable_arm_errata_845369_war(void)
>  		"mcr	p15, 0, r0, c15, c0, 1\n"
>  	);
>  }
> +
> +static inline void enable_arm_errata_cortexa8_enable_ibe(void)
> +{
> +	__asm__ __volatile__ (
> +		"mrc	p15, 0, r0, c1, c0, 1\n"
> +		"orr	r0, r0, #1 << 6\n"
> +		"mcr	p15, 0, r0, c1, c0, 1\n"
> +	);
> +}
> diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
> index 5b93d12..e1d88c7 100644
> --- a/arch/arm/mach-imx/cpu_init.c
> +++ b/arch/arm/mach-imx/cpu_init.c
> @@ -22,6 +22,7 @@ void imx5_cpu_lowlevel_init(void)
>  	arm_cpu_lowlevel_init();
>  
>  	enable_arm_errata_709718_war();
> +	enable_arm_errata_cortexa8_enable_ibe();
>  }
>  
>  void imx6_cpu_lowlevel_init(void)
> @@ -51,4 +52,4 @@ void vf610_cpu_lowlevel_init(void)
>  {
>  	arm_cpu_lowlevel_init();
>  }
> -#endif
> \ No newline at end of file
> +#endif
> -- 
> 2.7.4
> 
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
