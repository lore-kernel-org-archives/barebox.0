Delivery-date: Thu, 25 May 2023 01:45:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1yAR-00CrhF-J1
	for lore@lore.pengutronix.de; Thu, 25 May 2023 01:45:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1yAO-0007A3-MZ
	for lore@pengutronix.de; Thu, 25 May 2023 01:45:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ecPffdnsZeShkh1oEoEKbWWI8tV1ZQDDW8Fjfq7/W2s=; b=NslO1D11IR24TvWVcTTR9J25OG
	32K+3VnBS4MeMvoVVICAGrQHGNVyVScYoSKHz3CmnjwpHPzyacpiMo400x8VmojvaaJDc34Qj7ftX
	apUKdaY0Q2rhi609Dwul+wA44ES8TNKmK7F8Kcyr3Oy4t54rV3N6RghmpS9Hb1iGOEEb0JeJCtrUo
	Y+oiONUR2aAQHs6e/OJACtgdmyQYz6jWsls8cUWD4E+Daws7BN250gbYkIf70/zKpPQnNfrAtY8fB
	Vle15eDDWjqthqAW4hv2DQQLx91YL97J7N5dpuiZufmAJNJRBcsoNaETGZQpXqan1ltaTkEmFtBen
	omJuGJeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1y95-00EzNr-0t;
	Wed, 24 May 2023 23:43:55 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1y8w-00EzHi-0M
	for barebox@lists.infradead.org;
	Wed, 24 May 2023 23:43:49 +0000
Received: (Authenticated sender: jmaselbas@zdiv.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 108821C0009;
	Wed, 24 May 2023 23:43:36 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu, 25 May 2023 01:43:17 +0200
Message-Id: <20230524234328.82741-3-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230524234328.82741-1-jmaselbas@zdiv.net>
References: <20230524234328.82741-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_164346_436907_3BA832A8 
X-CRM114-Status: GOOD (  33.38  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 02/13] scripts: Add Allwinner eGON image support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On power-up Allwinner SoC starts in boot ROM, aka BROM, which will search
for an eGON image: first from the SD card, then from eMMC. If no image is
found then the BROM will enter into FEL mode that can be used for initial
programming and recovery of devices using USB.

The eGON header, followed by the actual image, must be located at a fixed
offset of 8192 bytes (4K) from the start of the disk, either SD; or eMMC.

The eGON header structure is adapted from u-boot: /include/sunxi_image.h,
the header structure is also documented on https://linux-sunxi.org/EGON

BROM will load, at most, the first 32KB of the image into SRAM, including
the header itself! The jump instruction in the header needs to be patched
accordingly with the image size.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
rfc->v2:
 - removed arch/arm/mach-sunxi/egon_header.c (unused)
 - reworked egon_mkimage.c to handle images size not multiple of 4bytes
   and added comments

 include/mach/sunxi/egon.h |  59 ++++++++++++++++++
 scripts/Kconfig           |   7 +++
 scripts/Makefile          |   1 +
 scripts/egon_mkimage.c    | 122 ++++++++++++++++++++++++++++++++++++++
 4 files changed, 189 insertions(+)
 create mode 100644 include/mach/sunxi/egon.h
 create mode 100644 scripts/egon_mkimage.c

diff --git a/include/mach/sunxi/egon.h b/include/mach/sunxi/egon.h
new file mode 100644
index 0000000000..e00992eb7d
--- /dev/null
+++ b/include/mach/sunxi/egon.h
@@ -0,0 +1,59 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#ifndef MACH_SUNXI_EGON_H
+#define MACH_SUNXI_EGON_H
+
+struct egon_header {
+	uint32_t branch; /* branch instruction to jump over the header */
+	uint8_t magic[8]; /* "eGON.BT0" or "eGON.BT1" */
+	uint32_t check_sum;
+	uint32_t length;
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
+		uint32_t header_size;
+		uint8_t spl_signature[4];
+	};
+	uint32_t fel_script_address;/* since v0.1, set by sunxi-fel */
+	/*
+	 * If the fel_uEnv_length member below is set to a non-zero value,
+	 * it specifies the size (byte count) of data at fel_script_address.
+	 * At the same time this indicates that the data is in uEnv.txt
+	 * compatible format, ready to be imported via "env import -t".
+	 */
+	uint32_t fel_uEnv_length;/* since v0.1, set by sunxi-fel */
+	/*
+	 * Offset of an ASCIIZ string (relative to the SPL header), which
+	 * contains the default device tree name (CONFIG_DEFAULT_DEVICE_TREE).
+	 * This is optional and may be set to NULL. Is intended to be used
+	 * by flash programming tools for providing nice informative messages
+	 * to the users.
+	 */
+	uint32_t dt_name_offset;/* since v0.2, set by mksunxiboot */
+	uint32_t dram_size;/* in MiB, since v0.3, set by SPL */
+	uint32_t boot_media;/* written here by the boot ROM */
+	/* A padding area (may be used for storing text strings) */
+	uint32_t string_pool[13];/* since v0.2, filled by mksunxiboot */
+	/* The header must be a multiple of 32 bytes (for VBAR alignment) */
+	/* And at least 64 byte (https://patchwork.ozlabs.org/patch/622173) */
+};
+#define EGON_HDR_BRANCH (0xea000000 | (sizeof(struct egon_header) / 4 - 2))
+#define sunxi_egon_header(section) {					\
+		__section(section) static const struct egon_header hdr= \
+			{ .branch = EGON_HDR_BRANCH, .magic = "eGON" };	\
+		__keep_symbolref(hdr);					\
+	}
+#endif
diff --git a/scripts/Kconfig b/scripts/Kconfig
index dcd5f32d1d..7517f5b79f 100644
--- a/scripts/Kconfig
+++ b/scripts/Kconfig
@@ -56,6 +56,13 @@ config RK_IMAGE
 	help
 	  This enables building the image creation tool for Rockchip SoCs
 
+config EGON_IMAGE
+       bool "Allwinner eGON image tool" if COMPILE_HOST_TOOLS
+       depends on ARCH_SUNXI || COMPILE_HOST_TOOLS
+       default y if ARCH_SUNXI
+       help
+         This enables building the image creation tool for Allwinner sunxi SoCs
+
 config OMAP_IMAGE
 	bool "TI OMAP image tools" if COMPILE_HOST_TOOLS
 	depends on ARCH_OMAP || COMPILE_HOST_TOOLS
diff --git a/scripts/Makefile b/scripts/Makefile
index 72ad9ad7a6..13e80db7af 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -28,6 +28,7 @@ hostprogs-always-$(CONFIG_LAYERSCAPE_PBLIMAGE)		+= pblimage
 hostprogs-always-$(CONFIG_STM32_IMAGE)			+= stm32image
 hostprogs-always-$(CONFIG_RISCV)			+= prelink-riscv
 hostprogs-always-$(CONFIG_RK_IMAGE)			+= rkimage
+hostprogs-always-$(CONFIG_EGON_IMAGE)			+= egon_mkimage
 HOSTCFLAGS_rkimage = `pkg-config --cflags openssl`
 HOSTLDLIBS_rkimage = `pkg-config --libs openssl`
 KBUILD_HOSTCFLAGS += -I$(srctree)/scripts/include/
diff --git a/scripts/egon_mkimage.c b/scripts/egon_mkimage.c
new file mode 100644
index 0000000000..5983bdb28a
--- /dev/null
+++ b/scripts/egon_mkimage.c
@@ -0,0 +1,122 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#include <stdio.h>
+#include <errno.h>
+#include <stdlib.h>
+#include <stdint.h>
+#include <string.h>
+#include <linux/kernel.h>
+
+#include "../include/mach/sunxi/egon.h"
+
+#include "compiler.h"
+#include "common.h"
+#include "common.c"
+
+#define STAMP_VALUE 0x5f0a6c39
+
+static void mkimage(char *infile, char *outfile)
+{
+	struct egon_header *hdr;
+	uint32_t *p32;
+	uint32_t sum;
+	int i;
+	size_t hdr_size = sizeof(*hdr);
+	size_t bin_size;
+	size_t img_size;
+	void *bin;
+	int fd, ret;
+
+	bin = read_file(infile, &bin_size);
+	if (!bin) {
+		perror("read_file");
+		exit(1);
+	}
+
+	/* test if the binary has reserved space for the header */
+	hdr = bin;
+	if (hdr->branch == EGON_HDR_BRANCH && memcmp(hdr->magic, "eGON", 4) == 0) {
+		/* strip/skip existing header */
+		bin += hdr_size;
+		bin_size -= hdr_size;
+	}
+
+	hdr = calloc(1, hdr_size);
+	if (!hdr) {
+		perror("malloc");
+		exit(1);
+	}
+
+	/* total image length must be a multiple of 4K bytes */
+	img_size = ALIGN(hdr_size + bin_size, 4096);
+
+	hdr->branch = EGON_HDR_BRANCH;
+	hdr->length = cpu_to_le32(img_size);
+	memcpy(hdr->magic, "eGON.BT0", 8);
+	memcpy(hdr->spl_signature, "SPL", 3);
+	hdr->spl_signature[3] = 0x03; /* version 0.3 */
+
+	/* calculate header checksum: */
+	sum = STAMP_VALUE;
+	/*  - add the header checksum */
+	for (p32 = (void *)hdr, i = 0; i < hdr_size / sizeof(uint32_t); i++)
+		sum += le32_to_cpu(p32[i]);
+	/*  - add the image checksum */
+	for (p32 = bin, i = 0; i < bin_size / sizeof(uint32_t); i++)
+		sum += le32_to_cpu(p32[i]);
+	/*  - handle image size not aligned on 32-bits */
+	if (bin_size % sizeof(uint32_t)) {
+		uint32_t tmp = 0;
+		size_t rem = bin_size % sizeof(uint32_t);
+		memcpy(&tmp, bin + (bin_size - rem), rem);
+		sum += le32_to_cpu(tmp);
+	}
+	/* final image will be padded with zeros: doesn't change the checksum */
+	hdr->check_sum = cpu_to_le32(sum);
+
+	fd = open(outfile, O_WRONLY | O_TRUNC | O_CREAT,
+		  S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
+	if (fd < 0) {
+		fprintf(stderr, "Cannot open %s: %s\n", outfile, strerror(errno));
+		exit(1);
+	}
+	/* write the header */
+	ret = write_full(fd, hdr, hdr_size);
+	if (ret < 0) {
+		perror("write_full");
+		exit(1);
+	}
+	/* write the binary */
+	ret = write_full(fd, bin, bin_size);
+	if (ret < 0) {
+		perror("write_full");
+		exit(1);
+	}
+	/* align the image file size on a 4K bytes multiple (img_size),
+	 * if neccessary ftruncate will pad the end of the file with zeros */
+	ret = ftruncate(fd, img_size);
+	if (ret < 0) {
+		perror("ftruncate");
+		exit(1);
+	}
+	close(fd);
+
+	free(hdr);
+}
+
+static void usage(char *argv0)
+{
+	fprintf(stderr, "usage: %s <infile> <outfile>\n", argv0);
+}
+
+int main(int argc, char *argv[])
+{
+	if (argc != 3) {
+		usage(argv[0]);
+		return 1;
+	}
+
+	mkimage(argv[1], argv[2]);
+
+	return 0;
+}
-- 
2.40.1



