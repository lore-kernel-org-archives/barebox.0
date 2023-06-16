Delivery-date: Sat, 17 Jun 2023 00:02:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qAHWp-009Y7H-5F
	for lore@lore.pengutronix.de; Sat, 17 Jun 2023 00:02:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qAHWl-0001s0-Mp
	for lore@pengutronix.de; Sat, 17 Jun 2023 00:02:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b5SbccCe7yowZ6MUxX0G/ZGYH8C+MnQd3VPOiZbGTjU=; b=5BcYxJ6DtqeNHd5gNdxNqRU/MR
	1/A+sOlA2Qu77SVre01kpRzBW7Gp5ZpqmlIV0RlNTc7HxYKwcmhmATeoNuNsatxws2BqxzNId4TDe
	VbVMpWM4W4PkvxxCi2+qRQ858+6TQNHfTn+NYDA7PPjP+yAuzUkyOKjbL8HNaNYFVEfkn1rEuCdVA
	SYSg84HK1yz/Zxwg9YV3PeS/kN9ZfEt6hskss8/pgtvqvqdFecSmdVUUZC2AFG0N8QQDE4j4vhic9
	rekWqt0uQj346xQlr57wqQDvoJHPSAIR/ZCGfp+/ywv6wGskUPd6SE1yF8gkpvbCzf7D+XqBu/mq3
	56i+enbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAHVD-001y9F-2s;
	Fri, 16 Jun 2023 22:01:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAHV8-001y7x-0J
	for barebox@lists.infradead.org;
	Fri, 16 Jun 2023 22:01:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qAHV4-0001RA-60; Sat, 17 Jun 2023 00:00:58 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qAHV3-00036k-PN; Sat, 17 Jun 2023 00:00:57 +0200
Date: Sat, 17 Jun 2023 00:00:57 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Jules Maselbas <jmaselbas@zdiv.net>
Cc: barebox@lists.infradead.org
Message-ID: <20230616220057.bvz75z5hnyqgzkw5@pengutronix.de>
References: <20230524234328.82741-1-jmaselbas@zdiv.net>
 <20230524234328.82741-3-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="xilbj3nkkcv2yswi"
Content-Disposition: inline
In-Reply-To: <20230524234328.82741-3-jmaselbas@zdiv.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_150102_475264_5D2CCCCE 
X-CRM114-Status: GOOD (  62.72  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 02/13] scripts: Add Allwinner eGON image support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--xilbj3nkkcv2yswi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Jules,

since I work on the D1 support I also had to port the eGON image support
to barebox ^^ Please see my below comments.

On 23-05-25, Jules Maselbas wrote:
> On power-up Allwinner SoC starts in boot ROM, aka BROM, which will search
> for an eGON image: first from the SD card, then from eMMC. If no image is
> found then the BROM will enter into FEL mode that can be used for initial
> programming and recovery of devices using USB.
> 
> The eGON header, followed by the actual image, must be located at a fixed
> offset of 8192 bytes (4K) from the start of the disk, either SD; or eMMC.
> 
> The eGON header structure is adapted from u-boot: /include/sunxi_image.h,
> the header structure is also documented on https://linux-sunxi.org/EGON
> 
> BROM will load, at most, the first 32KB of the image into SRAM, including

Nit: as noted on https://linux-sunxi.org it's not always limited to 32KB.

> the header itself! The jump instruction in the header needs to be patched
> accordingly with the image size.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
> ---
> rfc->v2:
>  - removed arch/arm/mach-sunxi/egon_header.c (unused)
>  - reworked egon_mkimage.c to handle images size not multiple of 4bytes
>    and added comments
> 
>  include/mach/sunxi/egon.h |  59 ++++++++++++++++++
>  scripts/Kconfig           |   7 +++
>  scripts/Makefile          |   1 +
>  scripts/egon_mkimage.c    | 122 ++++++++++++++++++++++++++++++++++++++
>  4 files changed, 189 insertions(+)
>  create mode 100644 include/mach/sunxi/egon.h
>  create mode 100644 scripts/egon_mkimage.c
> 
> diff --git a/include/mach/sunxi/egon.h b/include/mach/sunxi/egon.h
> new file mode 100644
> index 0000000000..e00992eb7d
> --- /dev/null
> +++ b/include/mach/sunxi/egon.h
> @@ -0,0 +1,59 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +#ifndef MACH_SUNXI_EGON_H
> +#define MACH_SUNXI_EGON_H
> +
> +struct egon_header {
> +	uint32_t branch; /* branch instruction to jump over the header */
> +	uint8_t magic[8]; /* "eGON.BT0" or "eGON.BT1" */
> +	uint32_t check_sum;
> +	uint32_t length;
> +	/*
> +	 * We use a simplified header, only filling in what is needed
> +	 * by the boot ROM. To be compatible with Allwinner tools we
> +	 * would need to implement the proper fields here instead of
> +	 * padding.
> +	 *
> +	 * Actually we want the ability to recognize our "sunxi" variant
> +	 * of the SPL. To do so, let's place a special signature into the
> +	 * "pub_head_size" field. We can reasonably expect Allwinner's
> +	 * boot0 to always have the upper 16 bits of this set to 0 (after
> +	 * all the value shouldn't be larger than the limit imposed by
> +	 * SRAM size).
> +	 * If the signature is present (at 0x14), then we know it's safe
> +	 * to use the remaining 8 bytes (at 0x18) for our own purposes.
> +	 * (E.g. sunxi-tools "fel" utility can pass information there.)
> +	 */
> +	union {
> +		uint32_t header_size;
> +		uint8_t spl_signature[4];
> +	};
> +	uint32_t fel_script_address;/* since v0.1, set by sunxi-fel */
> +	/*
> +	 * If the fel_uEnv_length member below is set to a non-zero value,
> +	 * it specifies the size (byte count) of data at fel_script_address.
> +	 * At the same time this indicates that the data is in uEnv.txt
> +	 * compatible format, ready to be imported via "env import -t".
> +	 */
> +	uint32_t fel_uEnv_length;/* since v0.1, set by sunxi-fel */
> +	/*
> +	 * Offset of an ASCIIZ string (relative to the SPL header), which
> +	 * contains the default device tree name (CONFIG_DEFAULT_DEVICE_TREE).
> +	 * This is optional and may be set to NULL. Is intended to be used
> +	 * by flash programming tools for providing nice informative messages
> +	 * to the users.
> +	 */
> +	uint32_t dt_name_offset;/* since v0.2, set by mksunxiboot */
> +	uint32_t dram_size;/* in MiB, since v0.3, set by SPL */
> +	uint32_t boot_media;/* written here by the boot ROM */
> +	/* A padding area (may be used for storing text strings) */
> +	uint32_t string_pool[13];/* since v0.2, filled by mksunxiboot */
> +	/* The header must be a multiple of 32 bytes (for VBAR alignment) */
> +	/* And at least 64 byte (https://patchwork.ozlabs.org/patch/622173) */
> +};
> +#define EGON_HDR_BRANCH (0xea000000 | (sizeof(struct egon_header) / 4 - 2))
> +#define sunxi_egon_header(section) {					\
> +		__section(section) static const struct egon_header hdr= \
> +			{ .branch = EGON_HDR_BRANCH, .magic = "eGON" };	\
> +		__keep_symbolref(hdr);					\
> +	}

Using an additional sections seems a bit odd here. We can just write the
header within the image tool.

> +#endif
> diff --git a/scripts/Kconfig b/scripts/Kconfig
> index dcd5f32d1d..7517f5b79f 100644
> --- a/scripts/Kconfig
> +++ b/scripts/Kconfig
> @@ -56,6 +56,13 @@ config RK_IMAGE
>  	help
>  	  This enables building the image creation tool for Rockchip SoCs
>  
> +config EGON_IMAGE
> +       bool "Allwinner eGON image tool" if COMPILE_HOST_TOOLS
> +       depends on ARCH_SUNXI || COMPILE_HOST_TOOLS
> +       default y if ARCH_SUNXI
> +       help
> +         This enables building the image creation tool for Allwinner sunxi SoCs
> +
>  config OMAP_IMAGE
>  	bool "TI OMAP image tools" if COMPILE_HOST_TOOLS
>  	depends on ARCH_OMAP || COMPILE_HOST_TOOLS
> diff --git a/scripts/Makefile b/scripts/Makefile
> index 72ad9ad7a6..13e80db7af 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -28,6 +28,7 @@ hostprogs-always-$(CONFIG_LAYERSCAPE_PBLIMAGE)		+= pblimage
>  hostprogs-always-$(CONFIG_STM32_IMAGE)			+= stm32image
>  hostprogs-always-$(CONFIG_RISCV)			+= prelink-riscv
>  hostprogs-always-$(CONFIG_RK_IMAGE)			+= rkimage
> +hostprogs-always-$(CONFIG_EGON_IMAGE)			+= egon_mkimage
>  HOSTCFLAGS_rkimage = `pkg-config --cflags openssl`
>  HOSTLDLIBS_rkimage = `pkg-config --libs openssl`
>  KBUILD_HOSTCFLAGS += -I$(srctree)/scripts/include/
> diff --git a/scripts/egon_mkimage.c b/scripts/egon_mkimage.c
> new file mode 100644
> index 0000000000..5983bdb28a
> --- /dev/null
> +++ b/scripts/egon_mkimage.c
> @@ -0,0 +1,122 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +
> +#include <stdio.h>
> +#include <errno.h>
> +#include <stdlib.h>
> +#include <stdint.h>
> +#include <string.h>
> +#include <linux/kernel.h>
> +
> +#include "../include/mach/sunxi/egon.h"
> +
> +#include "compiler.h"
> +#include "common.h"
> +#include "common.c"
> +
> +#define STAMP_VALUE 0x5f0a6c39
> +
> +static void mkimage(char *infile, char *outfile)
> +{
> +	struct egon_header *hdr;
> +	uint32_t *p32;
> +	uint32_t sum;
> +	int i;
> +	size_t hdr_size = sizeof(*hdr);
> +	size_t bin_size;
> +	size_t img_size;
> +	void *bin;
> +	int fd, ret;
> +
> +	bin = read_file(infile, &bin_size);
> +	if (!bin) {
> +		perror("read_file");
> +		exit(1);
> +	}
> +
> +	/* test if the binary has reserved space for the header */
> +	hdr = bin;
> +	if (hdr->branch == EGON_HDR_BRANCH && memcmp(hdr->magic, "eGON", 4) == 0) {
> +		/* strip/skip existing header */
> +		bin += hdr_size;
> +		bin_size -= hdr_size;
> +	}

Hm.. the 'normal' way is to write the header via the image tool, like it
is done for the i.MX. The infile don't need to have reserved space in
front, instead this tool should prepend the header.

I attached you my two patches adding the eGON image support. Since I
work on the D1 it is RSIC-V related but the eGON image creation should
not differ that much, maybe the offset must be adapted which can be done
via the command line. We could skip this special section handling if my
patches do work for you as well :)

> +
> +	hdr = calloc(1, hdr_size);
> +	if (!hdr) {
> +		perror("malloc");
> +		exit(1);
> +	}
> +
> +	/* total image length must be a multiple of 4K bytes */
> +	img_size = ALIGN(hdr_size + bin_size, 4096);
> +
> +	hdr->branch = EGON_HDR_BRANCH;
> +	hdr->length = cpu_to_le32(img_size);
> +	memcpy(hdr->magic, "eGON.BT0", 8);
> +	memcpy(hdr->spl_signature, "SPL", 3);
> +	hdr->spl_signature[3] = 0x03; /* version 0.3 */
> +
> +	/* calculate header checksum: */
> +	sum = STAMP_VALUE;
> +	/*  - add the header checksum */
> +	for (p32 = (void *)hdr, i = 0; i < hdr_size / sizeof(uint32_t); i++)
> +		sum += le32_to_cpu(p32[i]);
> +	/*  - add the image checksum */
> +	for (p32 = bin, i = 0; i < bin_size / sizeof(uint32_t); i++)
> +		sum += le32_to_cpu(p32[i]);
> +	/*  - handle image size not aligned on 32-bits */
> +	if (bin_size % sizeof(uint32_t)) {
> +		uint32_t tmp = 0;
> +		size_t rem = bin_size % sizeof(uint32_t);
> +		memcpy(&tmp, bin + (bin_size - rem), rem);
> +		sum += le32_to_cpu(tmp);
> +	}
> +	/* final image will be padded with zeros: doesn't change the checksum */
> +	hdr->check_sum = cpu_to_le32(sum);
> +
> +	fd = open(outfile, O_WRONLY | O_TRUNC | O_CREAT,
> +		  S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
> +	if (fd < 0) {
> +		fprintf(stderr, "Cannot open %s: %s\n", outfile, strerror(errno));
> +		exit(1);
> +	}
> +	/* write the header */
> +	ret = write_full(fd, hdr, hdr_size);
> +	if (ret < 0) {
> +		perror("write_full");
> +		exit(1);
> +	}
> +	/* write the binary */
> +	ret = write_full(fd, bin, bin_size);
> +	if (ret < 0) {
> +		perror("write_full");
> +		exit(1);
> +	}
> +	/* align the image file size on a 4K bytes multiple (img_size),
> +	 * if neccessary ftruncate will pad the end of the file with zeros */
> +	ret = ftruncate(fd, img_size);
> +	if (ret < 0) {
> +		perror("ftruncate");
> +		exit(1);
> +	}
> +	close(fd);
> +
> +	free(hdr);
> +}
> +
> +static void usage(char *argv0)
> +{
> +	fprintf(stderr, "usage: %s <infile> <outfile>\n", argv0);
> +}
> +
> +int main(int argc, char *argv[])
> +{
> +	if (argc != 3) {
> +		usage(argv[0]);
> +		return 1;
> +	}
> +
> +	mkimage(argv[1], argv[2]);
> +
> +	return 0;
> +}

--xilbj3nkkcv2yswi
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="0001-sunxi-add-image-support.patch"

>From 13cc73335b3d35b511087d0dc18085e9f67e03ca Mon Sep 17 00:00:00 2001
From: Marco Felsch <marco.felsch@gmail.com>
Date: Wed, 26 Apr 2023 10:29:59 +0200
Subject: [PATCH 1/2] sunxi: add image support

---
 arch/riscv/Kconfig.socs              |   6 +-
 include/mach/allwinner/sunxi_image.h | 118 +++++++++++++++
 scripts/.gitignore                   |   1 +
 scripts/Kconfig                      |   7 +
 scripts/Makefile                     |   2 +
 scripts/sunxi_egon.c                 | 208 +++++++++++++++++++++++++++
 6 files changed, 339 insertions(+), 3 deletions(-)
 create mode 100644 include/mach/allwinner/sunxi_image.h
 create mode 100644 scripts/sunxi_egon.c

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 2cb0716cd5..9f528df7de 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -110,13 +110,13 @@ config BOARD_BEAGLEV_BETA
 
 endif
 
-config SOC_ALLWINNER_SUN20I
-	bool "Allwinner Sun20i SoCs"
+config ARCH_SUNXI
+	bool "Allwinner sun20i SoCs"
 	depends on ARCH_RV64I
 	select HAS_DEBUG_LL
 	select HAS_CACHE
 
-if SOC_ALLWINNER_SUN20I
+if ARCH_SUNXI
 
 config BOARD_ALLWINNER_D1
 	bool "Allwinner D1 Nezha"
diff --git a/include/mach/allwinner/sunxi_image.h b/include/mach/allwinner/sunxi_image.h
new file mode 100644
index 0000000000..f90ea600ad
--- /dev/null
+++ b/include/mach/allwinner/sunxi_image.h
@@ -0,0 +1,118 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * (C) Copyright 2007-2011
+ * Allwinner Technology Co., Ltd. <www.allwinnertech.com>
+ * Tom Cubie <tangliang@allwinnertech.com>
+ *
+ * Constants and data structures used in Allwinner "eGON" images, as
+ * parsed by the Boot-ROM.
+ *
+ * Shared between mkimage and the SPL.
+ */
+
+#ifndef	SUNXI_IMAGE_H
+#define	SUNXI_IMAGE_H
+
+#include <linux/types.h>
+
+#define BOOT0_MAGIC		"eGON.BT0"
+#define BROM_STAMP_VALUE	0x5f0a6c39
+#define SPL_SIGNATURE		"SPL" /* marks "sunxi" SPL header */
+#define SPL_MAJOR_BITS		3
+#define SPL_MINOR_BITS		5
+#define SPL_VERSION(maj, min)						\
+	((((maj) & ((1U << SPL_MAJOR_BITS) - 1)) << SPL_MINOR_BITS) | \
+	((min) & ((1U << SPL_MINOR_BITS) - 1)))
+
+#define SPL_HEADER_VERSION	SPL_VERSION(0, 2)
+
+#define SPL_ENV_HEADER_VERSION	SPL_VERSION(0, 1)
+#define SPL_DT_HEADER_VERSION	SPL_VERSION(0, 2)
+#define SPL_DRAM_HEADER_VERSION	SPL_VERSION(0, 3)
+
+/* boot head definition from sun4i boot code */
+struct boot_file_head {
+	uint32_t b_instruction;	/* one intruction jumping to real code */
+	uint8_t magic[8];	/* ="eGON.BT0" or "eGON.BT1", not C-style str */
+	uint32_t check_sum;	/* generated by PC */
+	uint32_t length;	/* generated by PC */
+	/*
+	 * We use a simplified header, only filling in what is needed
+	 * by the boot ROM. To be compatible with Allwinner tools we
+	 * would need to implement the proper fields here instead of
+	 * padding.
+	 *
+	 * Actually we want the ability to recognize our "sunxi" variant
+	 * of the SPL. To do so, let's place a special signature into the
+	 * "pub_head_size" field. We can reasonably expect Allwinner's
+	 * boot0 to always have the upper 16 bits of this set to 0 (after
+	 * all the value shouldn't be larger than the limit imposed by
+	 * SRAM size).
+	 * If the signature is present (at 0x14), then we know it's safe
+	 * to use the remaining 8 bytes (at 0x18) for our own purposes.
+	 * (E.g. sunxi-tools "fel" utility can pass information there.)
+	 */
+	union {
+		uint32_t pub_head_size;
+		uint8_t spl_signature[4];
+	};
+	uint32_t fel_script_address;	/* since v0.1, set by sunxi-fel */
+	/*
+	 * If the fel_uEnv_length member below is set to a non-zero value,
+	 * it specifies the size (byte count) of data at fel_script_address.
+	 * At the same time this indicates that the data is in uEnv.txt
+	 * compatible format, ready to be imported via "env import -t".
+	 */
+	uint32_t fel_uEnv_length;	/* since v0.1, set by sunxi-fel */
+	/*
+	 * Offset of an ASCIIZ string (relative to the SPL header), which
+	 * contains the default device tree name (CONFIG_DEFAULT_DEVICE_TREE).
+	 * This is optional and may be set to NULL. Is intended to be used
+	 * by flash programming tools for providing nice informative messages
+	 * to the users.
+	 */
+	uint32_t dt_name_offset;	/* since v0.2, set by mksunxiboot */
+	uint32_t dram_size;		/* in MiB, since v0.3, set by SPL */
+	uint32_t boot_media;		/* written here by the boot ROM */
+	/* A padding area (may be used for storing text strings) */
+	uint32_t string_pool[13];	/* since v0.2, filled by mksunxiboot */
+	/* The header must be a multiple of 32 bytes (for VBAR alignment) */
+};
+
+/* Compile time check to assure proper alignment of structure */
+typedef char boot_file_head_not_multiple_of_32[1 - 2*(sizeof(struct boot_file_head) % 32)];
+
+struct toc0_main_info {
+	uint8_t	name[8];
+	__le32	magic;
+	__le32	checksum;
+	__le32	serial;
+	__le32	status;
+	__le32	num_items;
+	__le32	length;
+	uint8_t	platform[4];
+	uint8_t	reserved[8];
+	uint8_t	end[4];
+} __attribute__((packed));
+
+#define TOC0_MAIN_INFO_NAME		"TOC0.GLH"
+#define TOC0_MAIN_INFO_MAGIC		0x89119800
+#define TOC0_MAIN_INFO_END		"MIE;"
+
+struct toc0_item_info {
+	__le32	name;
+	__le32	offset;
+	__le32	length;
+	__le32	status;
+	__le32	type;
+	__le32	load_addr;
+	uint8_t	reserved[4];
+	uint8_t	end[4];
+} __attribute__((packed));
+
+#define TOC0_ITEM_INFO_NAME_CERT	0x00010101
+#define TOC0_ITEM_INFO_NAME_FIRMWARE	0x00010202
+#define TOC0_ITEM_INFO_NAME_KEY		0x00010303
+#define TOC0_ITEM_INFO_END		"IIE;"
+
+#endif
diff --git a/scripts/.gitignore b/scripts/.gitignore
index 3ca742ac6e..3b827c293c 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -37,3 +37,4 @@ rsatoc
 stm32image
 mvebuimg
 prelink-riscv
+sunxi_egon
diff --git a/scripts/Kconfig b/scripts/Kconfig
index dcd5f32d1d..e9447fac99 100644
--- a/scripts/Kconfig
+++ b/scripts/Kconfig
@@ -49,6 +49,13 @@ config STM32_IMAGE
 	help
 	  This enables building the image creation tool for STM32MP SoCs
 
+config SUNXI_EGON_IMAGE
+	bool "Sunxi eGON image tool" if COMPILE_HOST_TOOLS
+	depends on ARCH_SUNXI || COMPILE_HOST_TOOLS
+	default y if ARCH_SUNXI
+	help
+	  This enables building the image creation tool for Sunxi SoCs
+
 config RK_IMAGE
 	bool "Rockchip image tool" if COMPILE_HOST_TOOLS
 	depends on ARCH_ROCKCHIP || COMPILE_HOST_TOOLS
diff --git a/scripts/Makefile b/scripts/Makefile
index 72ad9ad7a6..c335029c6d 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -41,6 +41,8 @@ hostprogs-always-$(CONFIG_OMAP4_HOSTTOOL_USBBOOT)	+= omap4_usbboot
 HOSTCFLAGS_rk-usb-loader.o = `pkg-config --cflags libusb-1.0`
 HOSTLDLIBS_rk-usb-loader  = `pkg-config --libs libusb-1.0`
 hostprogs-always-$(CONFIG_RK_USB_LOADER)		+= rk-usb-loader
+HOSTCFLAGS_sunxi_egon.o = -I$(srctree) -I$(srctree)/include/mach
+hostprogs-always-$(CONFIG_SUNXI_EGON_IMAGE)             += sunxi_egon
 
 userprogs-always-$(CONFIG_BAREBOXENV_TARGET)		+= bareboxenv-target
 userprogs-always-$(CONFIG_KERNEL_INSTALL_TARGET)	+= kernel-install-target
diff --git a/scripts/sunxi_egon.c b/scripts/sunxi_egon.c
new file mode 100644
index 0000000000..6d74a83ad8
--- /dev/null
+++ b/scripts/sunxi_egon.c
@@ -0,0 +1,208 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * (C) Copyright 2018 Arm Ltd.
+ */
+
+#include <unistd.h>
+
+#include <linux/kernel.h>
+#include <linux/types.h>
+
+#include <sys/stat.h>
+
+#include <allwinner/sunxi_image.h>
+#include "compiler.h"
+
+/*
+ * NAND requires 8K padding. SD/eMMC gets away with 512 bytes,
+ * but let's use the larger padding by default to cover both.
+ */
+#define PAD_SIZE			8192
+
+enum sunxi_arch {
+	SUNXI_ARCH_ARM,
+	SUNXI_ARCH_RISCV,
+	SUNXI_ARCH_UNKOWN
+};
+
+static int write_image(int infd, int outfd, enum sunxi_arch arch,
+		       unsigned long pblsize, unsigned long ofs)
+{
+	struct boot_file_head *header;
+	uint32_t checksum = 0;
+	void *buf, *origbuf;
+	unsigned long size;
+	uint32_t *buf32;
+       	uint32_t value;
+	int ret;
+	int i;
+
+	size = ALIGN(pblsize + sizeof(*header), PAD_SIZE);
+
+	buf = malloc(size);
+	if (!buf)
+		return 1;
+
+	header = buf;
+	buf32 = buf;
+
+	/*
+	 * Different architectures need different first instruction to
+	 * branch to the body.
+	 */
+	switch (arch) {
+	case SUNXI_ARCH_ARM:
+		/* Generate an ARM branch instruction to jump over the header. */
+		value = 0xea000000 | (sizeof(*header) / 4 - 2);
+		header->b_instruction = cpu_to_le32(value);
+		break;
+	case SUNXI_ARCH_RISCV:
+		/*
+		 * Generate a RISC-V JAL instruction with rd=x0
+		 * (pseudo instruction J, jump without side effects).
+		 *
+		 * The following weird bit operation maps imm[20]
+		 * to inst[31], imm[10:1] to inst[30:21],
+		 * imm[11] to inst[20], imm[19:12] to inst[19:12],
+		 * and imm[0] is dropped (because 1-byte RISC-V instruction
+		 * is not allowed).
+		 */
+		value = 0x0000006f |
+			((sizeof(*header) & 0x00100000) << 11) |
+			((sizeof(*header) & 0x000007fe) << 20) |
+			((sizeof(*header) & 0x00000800) << 9) |
+			((sizeof(*header) & 0x000ff000) << 0);
+		header->b_instruction = cpu_to_le32(value);
+		break;
+	default:
+		return 1;
+	}
+
+	memcpy(header->magic, BOOT0_MAGIC, sizeof(header->magic));
+	header->check_sum = cpu_to_le32(BROM_STAMP_VALUE);
+	header->length = cpu_to_le32(size);
+
+	memcpy(header->spl_signature, SPL_SIGNATURE, 3);
+	header->spl_signature[3] = SPL_ENV_HEADER_VERSION;
+
+	/* Calculate the checksum. Yes, it's that simple. */
+	for (i = 0; i < size / 4; i++)
+		checksum += le32_to_cpu(buf32[i]);
+	header->check_sum = cpu_to_le32(checksum);
+
+	origbuf = buf;
+	buf += sizeof(*header);
+	ret = read(infd, buf, pblsize);
+	if (ret > pblsize) {
+		printf("Error: While read: 0x%d > 0x%ld bytes!\n",
+		       ret, pblsize);
+		free(origbuf);
+		return 1;
+	}
+
+	if (ofs)
+		lseek(outfd, ofs, SEEK_SET);
+
+	ret = write(outfd, origbuf, size);
+	if (ret != size) {
+		printf("Error: While write: 0x%d != 0x%ld bytes!\n",
+		       ret, size);
+		free(origbuf);
+		return 1;
+	}
+
+	free(origbuf);
+
+	return 0;
+}
+
+static void usage(const char *prog)
+{
+	printf("\nUsage: %s [options] input_file output_file", prog);
+	printf("\n-a   architecture: riscv, arm");
+	printf("\n-h   this help");
+	printf("\n-o   offset (hex)");
+	printf("\n-p   barebox pbl size in bytes (hex)");
+	printf("\n");
+}
+
+int main(int argc, char *argv[])
+{
+	enum sunxi_arch arch = SUNXI_ARCH_UNKOWN;
+	unsigned long pblsize = 0;
+	unsigned long ofs = 0;
+	int infd, outfd;
+	int opt;
+	int ret;
+
+	while ((opt = getopt(argc, argv, "a:o:p:h")) != -1)
+	{
+		switch (opt) {
+		case 'a':
+			if (!strcmp(optarg, "riscv"))
+				arch = SUNXI_ARCH_RISCV;
+			else if (!strcmp(optarg, "arm"))
+				arch = SUNXI_ARCH_ARM;
+			else {
+				printf("Error: unsupported architecture: %s\n",
+				       optarg);
+				return EXIT_FAILURE;
+			}
+			break;
+		case 'o':
+			ofs = strtoul(optarg, NULL, 0);
+			break;
+		case 'p':
+			pblsize = strtoul(optarg, NULL, 0);
+			break;
+		case 'h':
+			usage(argv[0]);
+			return EXIT_SUCCESS;
+		default:
+			usage(argv[0]);
+			return EXIT_FAILURE;
+		}
+	}
+
+	if (optind >= argc) {
+		printf("Error: %d\n", argc);
+		usage(argv[0]);
+		return EXIT_FAILURE;
+	}
+
+	infd = open(argv[optind++], O_RDONLY);
+	if (infd < 0) {
+		printf("Error: Open input file\n");
+		return EXIT_FAILURE;
+	}
+
+	if (pblsize == 0) {
+		struct stat st;
+
+		ret = fstat(infd, &st);
+		if (ret) {
+			ret = EXIT_FAILURE;
+			goto out_err_infd;
+		}
+		pblsize = st.st_size;
+	}
+
+	outfd = open(argv[optind], O_WRONLY | O_CREAT, 0666);
+	if (outfd < 0) {
+		printf("Error: Open output file\n");
+		ret = EXIT_FAILURE;
+		goto out_err_infd;
+	}
+
+	ret = write_image(infd, outfd, arch, pblsize, ofs);
+	if (ret)
+		ret = EXIT_FAILURE;
+
+	ret = EXIT_SUCCESS;
+
+	close(outfd);
+out_err_infd:
+	close(infd);
+
+	return ret;
+}
-- 
2.39.2


--xilbj3nkkcv2yswi
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="0002-images-add-Sunxi-eGON-image-support.patch"

>From d32de6b6e10378ab430c4c0164dcbb704bb5f70c Mon Sep 17 00:00:00 2001
From: Marco Felsch <marco.felsch@gmail.com>
Date: Wed, 26 Apr 2023 11:57:18 +0200
Subject: [PATCH 2/2] images: add Sunxi eGON image support

Add Makefile.sunxi to make it possible to build sunxi eGON images out of
the box.

Signed-off-by: Marco Felsch <marco.felsch@gmail.com>
---
 images/.gitignore     |  1 +
 images/Makefile       |  3 ++-
 images/Makefile.riscv |  4 ----
 images/Makefile.sunxi | 28 ++++++++++++++++++++++++++++
 scripts/Makefile.lib  |  3 +++
 5 files changed, 34 insertions(+), 5 deletions(-)
 create mode 100644 images/Makefile.sunxi

diff --git a/images/.gitignore b/images/.gitignore
index 1aa9620a42..a3cc17a3bd 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -35,3 +35,4 @@ barebox.sum
 *.stm32
 *.nmon
 *.swapped
+*.egon
diff --git a/images/Makefile b/images/Makefile
index aa5814710f..4f08404e7b 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -151,6 +151,7 @@ include $(srctree)/images/Makefile.omap3
 include $(srctree)/images/Makefile.rockchip
 include $(srctree)/images/Makefile.socfpga
 include $(srctree)/images/Makefile.stm32mp
+include $(srctree)/images/Makefile.sunxi
 include $(srctree)/images/Makefile.tegra
 include $(srctree)/images/Makefile.vexpress
 include $(srctree)/images/Makefile.xburst
@@ -209,5 +210,5 @@ $(flash-list): $(image-y-path)
 clean-files := *.pbl *.pblb *.map start_*.imximg *.img barebox.z start_*.kwbimg \
 	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
 	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd \
-	start_*.simximg start_*.usimximg *.zynqimg *.image *.swapped
+	start_*.simximg start_*.usimximg *.zynqimg *.image *.swapped *.egon
 clean-files += pbl.lds
diff --git a/images/Makefile.riscv b/images/Makefile.riscv
index df0e5a9146..0645238c43 100644
--- a/images/Makefile.riscv
+++ b/images/Makefile.riscv
@@ -23,7 +23,3 @@ image-$(CONFIG_BOARD_BEAGLEV) += barebox-beaglev-starlight.img
 pblb-$(CONFIG_BOARD_LITEX_LINUX) += start_litex_linux
 FILE_barebox-litex-linux.img = start_litex_linux.pblb
 image-$(CONFIG_BOARD_LITEX_LINUX) += barebox-litex-linux.img
-
-pblb-$(CONFIG_BOARD_ALLWINNER_D1) += start_allwinner_d1
-FILE_barebox-allwinner-d1.img = start_allwinner_d1.pblb
-image-$(CONFIG_BOARD_ALLWINNER_D1) += barebox-allwinner-d1.img
diff --git a/images/Makefile.sunxi b/images/Makefile.sunxi
new file mode 100644
index 0000000000..77cac3aa86
--- /dev/null
+++ b/images/Makefile.sunxi
@@ -0,0 +1,28 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+#
+# barebox image generation Makefile for Allwinner Sunxi SoC's
+#
+
+# %.egon - convert into Sunxi egon image
+# --------------------------------------
+
+.SECONDEXPANSION:
+$(obj)/%.egon: $(obj)/$$(FILE_$$(@F)) FORCE
+	$(Q)if [ -z $(FILE_$(@F)) ]; then echo "FILE_$(@F) empty!"; false; fi
+	$(call if_changed,egon_image)
+
+define build_egon_image =
+$(eval
+ifeq ($($(strip $(1))), y)
+	pblb-y += $(strip $(2))
+	FILE_barebox-$(strip $(3)).egon  = $(strip $(2)).pblb
+	OPTS_barebox-$(strip $(3)).egon = -a $(4) -o 0x2000 -p $$($$(patsubst $$(obj)/%.pblb,PBL_MEMORY_SIZE_%,$$<))
+	image-y += barebox-$(strip $(3)).egon
+endif
+)
+endef
+
+# Sunxi RISC-V images
+# -------------------
+
+$(call build_egon_image, CONFIG_BOARD_ALLWINNER_D1, start_allwinner_d1, allwinner-d1, riscv)
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 51beff56ae..0db2a7b716 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -603,6 +603,9 @@ $(obj)/%.bct: $(obj)/%.bct.cfg
 quiet_cmd_stm32_image = STM32-IMG $@
       cmd_stm32_image = $(objtree)/scripts/stm32image $(OPTS_$(@F)) -i $< -o $@
 
+quiet_cmd_egon_image = EGON-IMG $@
+      cmd_egon_image = $(objtree)/scripts/sunxi_egon $(OPTS_$(@F)) $< $@
+
 quiet_cmd_b64dec = B64DEC  $@
       cmd_b64dec = base64 -d $< > $@
 
-- 
2.39.2


--xilbj3nkkcv2yswi--


