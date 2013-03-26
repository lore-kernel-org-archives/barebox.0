Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eso.teric.us ([69.164.192.171])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UKTgH-0000wE-Pb
 for barebox@lists.infradead.org; Tue, 26 Mar 2013 13:12:50 +0000
Date: Tue, 26 Mar 2013 08:19:54 -0500
From: Josh Cartwright <joshc@eso.teric.us>
Message-ID: <20130326131954.GE16050@kryptos>
References: <1364289086-2241-1-git-send-email-s.trumtrar@pengutronix.de>
 <1364289086-2241-3-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1364289086-2241-3-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v3 2/5] ARM: zynq: Add new architecture zynq
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

A few comments below, but otherwise: nice work.

On Tue, Mar 26, 2013 at 10:11:23AM +0100, Steffen Trumtrar wrote:
> Add basic support for the Xilinx Zynq-7000 EPP architecture.
> The Zynq-7000 is an embedded processing platform that combines a Cortex A9
> dualcore MPSoC with an Artix-7 FPGA.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
> 
> Changes since v2:
> 	- don't force serial driver in Kconfig
> 	- remove MACH_HAS_LOWLEVEL_INIT
> 	- use (void __iomem *) in debug_ll.h
> 	- remove zynq_add_device inline function
> 	- use resource_size_t instead of void *
> 	- use __le32 consistently in zynq-flash-header.h
> 	- remove useless flash_header_start section
[..]
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index fcb2969..ceb45dc 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -64,6 +64,7 @@ machine-$(CONFIG_ARCH_PXA)		:= pxa
>  machine-$(CONFIG_ARCH_SAMSUNG)		:= samsung
>  machine-$(CONFIG_ARCH_VERSATILE)	:= versatile
>  machine-$(CONFIG_ARCH_TEGRA)		:= tegra
> +machine-$(CONFIG_ARCH_ZYNQ)		:= zynq
>  
>  # Board directory name.  This list is sorted alphanumerically
>  # by CONFIG_* macro name.
> @@ -157,6 +158,7 @@ board-$(CONFIG_MACH_SABRELITE)			:= freescale-mx6-sabrelite
>  board-$(CONFIG_MACH_TX53)			:= karo-tx53
>  board-$(CONFIG_MACH_GUF_VINCELL)		:= guf-vincell
>  board-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK)		:= efika-mx-smartbook
> +board-$(CONFIG_MACH_ZEDBOARD)			:= avnet-zedboard
>  machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
>  
> diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
> new file mode 100644
> index 0000000..5bbd648
> --- /dev/null
> +++ b/arch/arm/mach-zynq/Kconfig
> @@ -0,0 +1,38 @@
> +if ARCH_ZYNQ

Not sure how much we care here, but with the order of the patchset the
way it is, after this one, it will be possible to select the ZedBoard,
even though all of the other support files get added only in the last
patch.

> +
> +config ARCH_TEXT_BASE
> +	hex
> +	default 0x1ff00000 if MACH_ZEDBOARD
> +
> +config ZYNQ_DEBUG_LL_UART_BASE
> +	hex
> +	default 0xe0001000 if MACH_ZEDBOARD
> +
> +config BOARDINFO
> +	default "ZedBoard" if MACH_ZEDBOARD
> +
> +choice
> +	prompt "Xilinx Zynq type board"
> +
> +config ARCH_ZYNQ7000
> +	bool "Zynq-7000"
> +	select CPU_V7
> +	select CLKDEV_LOOKUP
> +	select COMMON_CLK
> +	select ARM_SMP_TWD
> +
> +endchoice
> +
> +if ARCH_ZYNQ7000
> +
> +choice
> +	prompt "Zynq-7000 Board Type"
> +
> +config MACH_ZEDBOARD
> +	bool "Avnet Zynq-7000 ZedBoard"
> +	select DRIVER_SERIAL_CADENCE
> +
> +endchoice
> +endif
> +
> +endif
[..]
> diff --git a/arch/arm/mach-zynq/include/mach/zynq-flash-header.h b/arch/arm/mach-zynq/include/mach/zynq-flash-header.h
> new file mode 100644
> index 0000000..3b67e55
> --- /dev/null
> +++ b/arch/arm/mach-zynq/include/mach/zynq-flash-header.h
> @@ -0,0 +1,38 @@
> +#ifndef __MACH_FLASH_HEADER_H
> +#define __MACH_FLASH_HEADER_H
> +
> +#include <asm-generic/sections.h>
> +
> +#define __flash_header_section		__section(.flash_header_0x0)
> +#define __ps7reg_entry_section		__section(.ps7reg_entry_0x0A0)
> +#define __image_len_section		__section(.image_len_0x08c0)
> +#define FLASH_HEADER_OFFSET		0x0
> +#define IMAGE_OFFSET			0x8c0
> +
> +#define DEST_BASE			0x8c0
> +#define FLASH_HEADER_BASE	(DEST_BASE + FLASH_HEADER_OFFSET)
> +
> +struct zynq_reg_entry {
> +	__le32 addr;
> +	__le32 val;
> +};
> +
> +#define WIDTH_DETECTION_MAGIC	0xAA995566
> +#define IMAGE_IDENTIFICATION	0x584C4E58	/* "XLNX" */
> +
> +struct zynq_flash_header {
> +	__le32 width_det;
> +	__le32 image_id;
> +	__le32 enc_stat;
> +	__le32 user;
> +	__le32 flash_offset;
> +	__le32 length;
> +	__le32 res0;
> +	__le32 start_of_exec;
> +	__le32 total_len;
> +	__le32 res1;
> +	__le32 checksum;
> +	__le32 res2;
> +};

One thing I found during my testing/debugging to be useful is to have a
way to turn off the flash header, to get a header-less barebox.bin I
could use JTAG to load on the board.  (I realize I could have done used
it _with_ the flash header and set the PC up at 0x8c0, but this was
easier).

It would be nice if there was a headerless binary left as a build
artifact that could be used for this purpose.

   Josh

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
