Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zr6ne-0006Z4-VR
 for barebox@lists.infradead.org; Tue, 27 Oct 2015 16:08:39 +0000
Date: Tue, 27 Oct 2015 17:08:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151027160817.GO25308@pengutronix.de>
References: <1445958569-23525-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1445958569-23525-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH v2] ARM: imx6: add OF fixup to delete nonexistent CPU cores
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Oct 27, 2015 at 04:09:29PM +0100, Lucas Stach wrote:
> Make sure that the DT passed to Linux reflects the actual number of CPU
> cores present in the system by reading the SCU configuration. As both
> the Q and DL variants of the MX6 have versions with cores fused away,
> but the DTs have the maximum number of cores specified, this just deletes
> any nonexistent CPU core nodes.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> v2:
> - make sure to only install the fixup on i.MX6

Applied, thanks

Sascha

> ---
>  arch/arm/mach-imx/imx6.c | 39 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
> index c49de49209f3..0fdd785c6dc6 100644
> --- a/arch/arm/mach-imx/imx6.c
> +++ b/arch/arm/mach-imx/imx6.c
> @@ -238,3 +238,42 @@ static int imx6_mmu_init(void)
>  	return 0;
>  }
>  postmmu_initcall(imx6_mmu_init);
> +
> +#define SCU_CONFIG	0x04
> +
> +static int imx6_fixup_cpus(struct device_node *root, void *context)
> +{
> +	struct device_node *cpus_node, *np, *tmp;
> +	unsigned long scu_phys_base;
> +	unsigned int max_core_index;
> +
> +	cpus_node = of_find_node_by_name(root, "cpus");
> +	if (!cpus_node)
> +		return 0;
> +
> +	/* get actual number of available CPU cores from SCU */
> +	asm("mrc p15, 4, %0, c15, c0, 0" : "=r" (scu_phys_base));
> +	max_core_index = (readl(IOMEM(scu_phys_base) + SCU_CONFIG) & 0x03);
> +
> +	for_each_child_of_node_safe(cpus_node, tmp, np) {
> +		u32 cpu_index;
> +
> +		if (of_property_read_u32(np, "reg", &cpu_index))
> +			continue;
> +
> +		if (cpu_index > max_core_index)
> +			of_delete_node(np);
> +	}
> +
> +	return 0;
> +}
> +
> +static int imx6_fixup_cpus_register(void)
> +{
> +	if (!of_machine_is_compatible("fsl,imx6q") &&
> +	    !of_machine_is_compatible("fsl,imx6dl"))
> +		return 0;
> +
> +	return of_register_fixup(imx6_fixup_cpus, NULL);
> +}
> +device_initcall(imx6_fixup_cpus_register);
> -- 
> 2.6.1
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
