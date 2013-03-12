Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eso.teric.us ([69.164.192.171])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFPN3-0002Mh-4W
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 13:36:01 +0000
Date: Tue, 12 Mar 2013 08:42:34 -0500
From: Josh Cartwright <joshc@eso.teric.us>
Message-ID: <20130312134234.GQ16050@kryptos>
References: <1362993306-19262-1-git-send-email-s.trumtrar@pengutronix.de>
 <1362993306-19262-3-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362993306-19262-3-git-send-email-s.trumtrar@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/9] ARM: Zynq: Add new architecture zynq
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 11, 2013 at 10:14:59AM +0100, Steffen Trumtrar wrote:
> Add basic support for the Xilinx Zynq-7000 EPP architecture.
> The Zynq-7000 is an embedded processing platform that combines a Cortex A9
> dualcore MPSoC with an Artix-7 FPGA.
> =

> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
[..]
> diff --git a/arch/arm/mach-zynq/include/mach/barebox.lds.h b/arch/arm/mac=
h-zynq/include/mach/barebox.lds.h
> new file mode 100644
> index 0000000..674a4ac
> --- /dev/null
> +++ b/arch/arm/mach-zynq/include/mach/barebox.lds.h
> @@ -0,0 +1,9 @@
> +#define PRE_IMAGE \
> +	.pre_image : {					\
> +		KEEP(*(.flash_header_start*))		\
> +		. =3D 0x20;				\
> +		KEEP(*(.flash_header_0x0*))		\
> +		. =3D 0xa0;				\
> +		KEEP(*(.ps7reg_entry_0x0A0))		\
> +		. =3D 0x8c0;				\

> +	}
[..]
> diff --git a/arch/arm/mach-zynq/include/mach/zynq-flash-header.h b/arch/a=
rm/mach-zynq/include/mach/zynq-flash-header.h
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

Was there a particular reason you kept the ps7reg_entry in a separate
section?  Since the register initialization section of BOOT.BIN is of
fixed size, it may make more sense/be simpler if you just pull it into
the zynq_flash_header (see below):


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

These should probably also be of type __le32.

struct zynq_flash_header {
	__le32=C2=A0width_det;
	__le32=C2=A0image_id;
	__le32=C2=A0enc_stat;
	__le32=C2=A0user;
	__le32=C2=A0flash_offset;
	__le32=C2=A0length;
	__le32=C2=A0res0;
	__le32=C2=A0start_of_exec;
	__le32=C2=A0total_len;
	__le32=C2=A0res1;
	__le32=C2=A0checksum;
	__le32=C2=A0res2[0x15];
	struct=C2=A0{
	=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0__le32=C2=A0addr;
	=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0__le32=C2=A0val;
	}=C2=A0reg_init[0x100];
	__le32=C2=A0res3[0x8];
};

Also, the REG() macro you've introduced in the board file seems
like it should go in this file instead.

#define REG(a,v)	{ .addr =3D cpu_to_le32(a), .val =3D cpu_to_le32(v) }
#define END_REG		REG(0xFFFFFFFF, 0)

> +
> +#endif /* __MACH_FLASH_HEADER_H */
[..]

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
