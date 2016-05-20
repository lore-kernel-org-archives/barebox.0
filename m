Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b3p69-0004k8-9J
 for barebox@lists.infradead.org; Fri, 20 May 2016 18:24:34 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Fri, 20 May 2016 18:24:11 +0000
Message-ID: <1463768655.15779.59.camel@rtred1test09.kymeta.local>
References: <1463746903-6676-1-git-send-email-s.trumtrar@pengutronix.de>
 <1463746903-6676-2-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1463746903-6676-2-git-send-email-s.trumtrar@pengutronix.de>
Content-Language: en-US
Content-ID: <97ED6C592E98CA43B6C37801E0EE2365@kymetacorp.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH 2/3] firmware: socfpga: set APPLYCFG after loading
 bitstream
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, 2016-05-20 at 14:21 +0200, Steffen Trumtrar wrote:
> If the FPGA-side of the SDRAM controller is reconfigured via the bitstream,
> the APPLYCFG bit needs to be set, so the Controller applies the new setup.

Might want to mention how this patch uses the OCRAM.

Would an alternative method be to lock the cache line containing the
code in question?

In fact, since the instruction cache would be enabled, why would a
transfer to SDRAM be executing anyway?  Is the issue that a cache
write-back could be in progress or the L2 controller could be filling
the rest of a cache line?  If that's the case, then does copying only
the function where APPLYCFG bit is set fix that problem?

> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/mach-socfpga/include/mach/socfpga-regs.h |  1 +
>  drivers/firmware/Makefile                         |  2 +-
>  drivers/firmware/socfpga.c                        | 24 +++++++++++++++++++++++
>  drivers/firmware/socfpga_sdr.S                    | 17 ++++++++++++++++
>  4 files changed, 43 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/firmware/socfpga_sdr.S
> 
> diff --git a/arch/arm/mach-socfpga/include/mach/socfpga-regs.h b/arch/arm/mach-socfpga/include/mach/socfpga-regs.h
> index e88daf718917..1a7d787a27bf 100644
> --- a/arch/arm/mach-socfpga/include/mach/socfpga-regs.h
> +++ b/arch/arm/mach-socfpga/include/mach/socfpga-regs.h
> @@ -18,5 +18,6 @@
>  #define CYCLONE5_SYSMGR_ADDRESS		0xffd08000
>  #define CYCLONE5_SCANMGR_ADDRESS	0xfff02000
>  #define CYCLONE5_SMP_TWD_ADDRESS	0xfffec600
> +#define CYCLONE5_OCRAM_ADDRESS		0xffff0000
>  
>  #endif /* __MACH_SOCFPGA_REGS_H */
> diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
> index c3a3c3400485..ac4f18bb3d78 100644
> --- a/drivers/firmware/Makefile
> +++ b/drivers/firmware/Makefile
> @@ -1,2 +1,2 @@
>  obj-$(CONFIG_FIRMWARE_ALTERA_SERIAL) += altera_serial.o
> -obj-$(CONFIG_FIRMWARE_ALTERA_SOCFPGA) += socfpga.o
> +obj-$(CONFIG_FIRMWARE_ALTERA_SOCFPGA) += socfpga.o socfpga_sdr.o
> diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
> index a0cd2011cbce..a7a86a03d8fd 100644
> --- a/drivers/firmware/socfpga.c
> +++ b/drivers/firmware/socfpga.c
> @@ -38,6 +38,7 @@
>  #include <mach/reset-manager.h>
>  #include <mach/socfpga-regs.h>
>  #include <mach/sdram.h>
> +#include <asm/fncpy.h>
>  
>  #define FPGAMGRREGS_STAT			0x0
>  #define FPGAMGRREGS_CTRL			0x4
> @@ -77,6 +78,9 @@
>  #define CDRATIO_x4	0x2
>  #define CDRATIO_x8	0x3
>  
> +extern void socfpga_sdram_apply_static_cfg(void __iomem *sdrctrlgrp);
> +extern void socfpga_sdram_apply_static_cfg_end(void *);
> +
>  struct fpgamgr {
>  	struct firmware_handler fh;
>  	struct device_d dev;
> @@ -353,6 +357,9 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
>  {
>  	struct fpgamgr *mgr = container_of(fh, struct fpgamgr, fh);
>  	int status;
> +	unsigned int func_size = &socfpga_sdram_apply_static_cfg_end -
> +				 &socfpga_sdram_apply_static_cfg;
> +	void (*ocram_func)(void __iomem *ocram_base);
>  
>  	/* Ensure the FPGA entering config done */
>  	status = fpgamgr_program_poll_cd(mgr);
> @@ -382,6 +389,23 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
>  		return status;
>  	}
>  
> +	/*
> +	 * When the f2sdram bridge is used in a bitstream, the configuration
> +	 * has to be latched into the SDR controller, when no transfers from
> +	 * or to the SDRAM happen. That means we need to run the code from
> +	 * OCRAM.
> +	 *
> +	 * Copy the assembler code for setting the bit to OCRAM and then
> +	 * execute the function.
> +	 */
> +	dev_dbg(&mgr->dev, "Setting APPLYCFG bit...\n");
> +
> +	ocram_func = fncpy((void __iomem *)CYCLONE5_OCRAM_ADDRESS,
> +			   &socfpga_sdram_apply_static_cfg, func_size);

I wonder if there is a way to use request_sdram_region() to make sure
barebox isn't using ocram?  Like for the exception vectors, isn't it
possible to place them at this address (0xffff0000) instead of
0x00000000.

> +
> +	ocram_func((void __iomem *) (CYCLONE5_SDR_ADDRESS +
> +				     SDR_CTRLGRP_STATICCFG_ADDRESS));
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/firmware/socfpga_sdr.S b/drivers/firmware/socfpga_sdr.S
> new file mode 100644
> index 000000000000..d634d6362722
> --- /dev/null
> +++ b/drivers/firmware/socfpga_sdr.S
> @@ -0,0 +1,17 @@
> +#include <linux/linkage.h>
> +
> +	.arch	armv7-a
> +	.arm

Is there a reason to force arm mode? It seems like it should be possible
to use whatever has been selected for barebox, arm or thumb2.

> +
> +/*
> + * r0 : sdram controller staticcfg
> + */
> +
> +ENTRY(socfpga_sdram_apply_static_cfg)
> +	push {ip,lr}

What are the push and pop for?  You don't modify lr or ip in this code.

> +	ldr r1, [r0]
> +	orr r1, r1, #8
> +	str r1, [r0]
> +	pop {ip,pc}

missing:
ENDPROC(socfpga_sdram_apply_static_cfg)

> +	.align

ENTRY() includes an align.

> +ENTRY(socfpga_sdram_apply_static_cfg_end)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
