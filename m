Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eso.teric.us ([69.164.192.171])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UHwJt-0001ep-Kd
 for barebox@lists.infradead.org; Tue, 19 Mar 2013 13:11:14 +0000
Date: Tue, 19 Mar 2013 08:18:02 -0500
From: Josh Cartwright <joshc@eso.teric.us>
Message-ID: <20130319131802.GX16050@kryptos>
References: <1363684920-3034-1-git-send-email-s.trumtrar@pengutronix.de>
 <1363684920-3034-3-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1363684920-3034-3-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v2 2/5] ARM: zynq: Add new architecture zynq
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 19, 2013 at 10:21:57AM +0100, Steffen Trumtrar wrote:
> Add basic support for the Xilinx Zynq-7000 EPP architecture.
> The Zynq-7000 is an embedded processing platform that combines a Cortex A9
> dualcore MPSoC with an Artix-7 FPGA.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
[..]
> diff --git a/arch/arm/mach-zynq/include/mach/zynq-flash-header.h b/arch/arm/mach-zynq/include/mach/zynq-flash-header.h
> new file mode 100644
> index 0000000..a0251cb
> --- /dev/null
> +++ b/arch/arm/mach-zynq/include/mach/zynq-flash-header.h
> @@ -0,0 +1,40 @@
> +#ifndef __MACH_FLASH_HEADER_H
> +#define __MACH_FLASH_HEADER_H
> +
> +#include <asm-generic/sections.h>
> +
> +#define __flash_header_start		__section(.flash_header_start)
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
> +	uint32_t width_det;
> +	uint32_t image_id;
> +	uint32_t enc_stat;
> +	uint32_t user;
> +	uint32_t flash_offset;
> +	uint32_t length;
> +	uint32_t res0;
> +	uint32_t start_of_exec;
> +	uint32_t total_len;
> +	uint32_t res1;
> +	uint32_t checksum;
> +	uint32_t res2;
> +};

Did you disagree with my suggestion last time around of merging the
flash_header and ps7reg_entry sections?  At the very least, it seems
inconsistent that the zynq_reg_entrys have type __le32, and the members
of zynq_flash_header are uint32_t (even though they have the same
endianness requirement).

I still maintain you should move the REG macro currently in the board
flash_header.c here.

   Josh

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
