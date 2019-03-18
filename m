Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5pJ8-0003iZ-SG
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 10:16:08 +0000
Date: Mon, 18 Mar 2019 11:15:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190318101548.7xrlmvgl75umyn2n@pengutronix.de>
References: <20190311134125.10946-1-d.brandt@phytec.de>
 <20190313144109.1066-1-d.brandt@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190313144109.1066-1-d.brandt@phytec.de>
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
Subject: Re: [PATCH v2] commands: bootaux: New command bootaux for iMX
To: David Brandt <d.brandt@phytec.de>
Cc: barebox@lists.infradead.org

Hi David,

On Wed, Mar 13, 2019 at 03:41:09PM +0100, David Brandt wrote:
> This patch add the bootaux command which starts
> auxiliary cores of iMX processors, currently only
> iMX8MQ. This is based on the u-boot-imx command.
> 
> The currently unnecessary parameter for the core
> to start is necessary for the iMX8QM and other
> processors having multiple auxiliary cores.
> 
> Signed-off-by: David Brandt <d.brandt@phytec.de>
> ---
> Changes v1->v2:
> - removed ifdef around imx_auxiliary functions
>   in arch/arm/mach-imx/imx8mq.c
> - cleaned up includes in commands/bootaux.c
> - clarified what ADDR is and what is done
> - core is now specified with -c option
> - added some checks and message to hint what
>   could be wrong
> - use kstrtouint/kstrtoul
> ---
>  arch/arm/mach-imx/imx8mq.c               | 37 ++++++++++++
>  arch/arm/mach-imx/include/mach/generic.h |  4 ++
>  commands/Kconfig                         | 16 ++++++
>  commands/Makefile                        |  1 +
>  commands/bootaux.c                       | 73 ++++++++++++++++++++++++
>  5 files changed, 131 insertions(+)
>  create mode 100644 commands/bootaux.c
> 
> diff --git a/arch/arm/mach-imx/imx8mq.c b/arch/arm/mach-imx/imx8mq.c
> index 3f6b433a5..98c62b58d 100644
> --- a/arch/arm/mach-imx/imx8mq.c
> +++ b/arch/arm/mach-imx/imx8mq.c
> @@ -124,3 +124,40 @@ static int imx8mq_report_hdmi_firmware(void)
>  	return 0;
>  }
>  console_initcall(imx8mq_report_hdmi_firmware);
> +
> +#define FSL_SIP_SRC             0xC2000005
> +#define FSL_SIP_SRC_M4_START    0x00
> +#define FSL_SIP_SRC_M4_STARTED  0x01
> +int imx_auxiliary_core_up(unsigned int core_id, ulong boot_private_data)
> +{
> +	u32 stack, pc;
> +	struct arm_smccc_res res;
> +
> +	if (core_id || !boot_private_data)
> +		return -EINVAL;
> +
> +	stack = *(u32 *)boot_private_data;
> +	pc = *(u32 *)(boot_private_data + 4);
> +
> +	/* Set the stack and pc to M4 bootROM */
> +	writel(stack, MX8MQ_M4_BOOTROM_BASE_ADDR);
> +	writel(pc, MX8MQ_M4_BOOTROM_BASE_ADDR + 4);
> +
> +	/* Enable M4 */
> +	arm_smccc_smc(FSL_SIP_SRC, FSL_SIP_SRC_M4_START,
> +			0, 0, 0, 0, 0, 0, &res);
> +
> +	return res.a0;
> +}

I think this needs more work. First of all we have
imx_auxiliary_core_up(), but this function is i.MX8 specific, i.MX6/7
need other methods. Similar to this "bootaux" is a generic command name,
but here i.MX specific functions are called. The typical U-Boot way
would be to add #ifdefs to it until it works for other known cases and
until the code is completely unreadable. Fortunately we don't do U-Boot
here, so we'll need some kind of cpu core registration function and a
generic command could show a list of registered cores and start a
particular one.
That would fit well with the already existing devicetree binding for the
auxiliary i.MX cores, see bindings/remoteproc/imx-rproc.txt, compatible
"fsl,imx7d-cm4" and "fsl,imx6sx-cm4". The code for the aux cores could
then be simply written as regular drivers.

Also we should make sure that the memory area used for the aux core
isn't passed to Linux. I would expect some convenience here for the user
so that he doesn't have to adjust the devicetrees manually.

I agree with Oleksij here that remoteproc is the right approach for
doing this.

Overall I think these aux cores are a hot topic and we should do it
right rather than fast. Merging a trivial approach for it would just
give the impression that a SoC specific quick hack is the way to go
for others, but I'm quite sure we can do better.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
