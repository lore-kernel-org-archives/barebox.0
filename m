Delivery-date: Sun, 16 Aug 2026 20:02:37 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvfBs-003plw-2E
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 20:02:37 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 02818201D09
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 20:02:37 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0I7FzQch;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cqU2iiMqri/Fh3U5ah6fQwxNGTnzZJsTAUTIOG4SXl0=; b=0I7FzQchAehLDyG2IQE1Q3ILdM
	+dTK5Nb509ognaZEjQSIWRKAx2IV5MgPaKs4lnfrMEqFJej7X2Xn3YKyq6wipR731Mor2AnGsO0/V
	v8YFmKlwhmZ4aAw1KSis90tgVrDv8lN9ApHlqhmrAY+luVS8zkUwQmLDYsl57O0p+vu3A/JRNj7XZ
	ZXUwOA/fXXQ5vfKpIXFQ47XciD16Y/K/QOuwLX/6ZS7HyF00BKOjs/YB/RNvnm0UAUcdPP4r4OOQV
	eOHwA7SLT4qAE16oe0uxcLxBhH7sWUM/dR3u7gtGhllejLrnCi3pXI8p2ypWmA4se51zdeKYu8G2u
	Cr4wgQAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBS-00000004xYe-3pZg;
	Sun, 16 Aug 2026 18:02:10 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBM-00000004xNL-2pjx
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 18:02:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5C397201EC1;
	Sun, 16 Aug 2026 20:01:59 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvfBH-001orv-0w;
	Sun, 16 Aug 2026 20:01:59 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-18jH;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:39 +0200
Subject: [PATCH 19/27] scripts: add pxa-image
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-19-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=10966;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=R55bNaWvPZMe6xm1lIOBcJ9dY7f+u0si8D09bkwYglU=;
 b=Z7k1w1JVgIH6n8PSGX2mufiyMDkQBVt9fyRyJ0AOItY0JjeoEnvJTk6j2VcsPHVxzMUD6HloF
 OP/E9QaZdpaDZfV/6klxZBDM5dDYDinDVMVrbp8QdDQ1I21Ytm0VEx1
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_110205_067419_9514740D 
X-CRM114-Status: GOOD (  28.57  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The PXA3xx Boot ROM does not boot a plain binary. It reads
    a Non-Trusted Image Module header from the start of the boot device, copies
    the OBM image listed in it into internal SRAM and jumps there; th [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 773ikikw85g1fx1cf4je597qrrnbayzc
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: 02818201D09

The PXA3xx Boot ROM does not boot a plain binary. It reads a Non-Trusted
Image Module header from the start of the boot device, copies the OBM
image listed in it into internal SRAM and jumps there; the OBM has to
load whatever comes next itself, because the Boot ROM unmaps itself
before handing over and never returns.

Add a tool that builds such an image out of an OBM and a payload. The
layout is configurable and defaults to keeping the header and the OBM in
the first erase block, which NAND chips guarantee to be good as shipped,
so that the Boot ROM never has to read a block that might be bad. The
gaps between the images are filled with 0xff
so the result can be written to erased NAND as is, and the payload's real
size is recorded in its image entry so that the OBM knows how much to
copy rather than having to assume a fixed amount.

The header format was recovered from the vendor image of a Raumfeld
speaker. Fed that device's own OBM and bootloader, this tool reproduces
55 of the 59 header words exactly; the rest are the issue date, which is
left zero for reproducibility, and the two sizes, which is the point.

Assisted-by: Claude Opus 5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Kconfig     |   7 ++
 scripts/Makefile    |   1 +
 scripts/pxa-image.c | 281 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 289 insertions(+)

diff --git a/scripts/Kconfig b/scripts/Kconfig
index 2972d5dbc7..8fff940946 100644
--- a/scripts/Kconfig
+++ b/scripts/Kconfig
@@ -21,6 +21,13 @@ config SOCFPGA_MKIMAGE
 	help
 	  This enables building the image creation tool for SoCFPGA
 
+config PXA_IMAGE
+	bool "PXA image" if COMPILE_HOST_TOOLS
+	depends on ARCH_PXA || COMPILE_HOST_TOOLS
+	default y if ARCH_PXA
+	help
+	  This enables building the image creation tool for PXA3xx
+
 config ZYNQ_MKIMAGE
 	bool "Zynq mkimage" if COMPILE_HOST_TOOLS
 	depends on ARCH_ZYNQ || COMPILE_HOST_TOOLS
diff --git a/scripts/Makefile b/scripts/Makefile
index fc685f14dd..022e04ddec 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -19,6 +19,7 @@ hostprogs-always-$(CONFIG_KALLSYMS)			+= kallsyms
 hostprogs-always-$(CONFIG_MIPS)				+= mips-relocs
 hostprogs-always-$(CONFIG_MVEBU_HOSTTOOLS)		+= kwbimage kwboot mvebuimg
 hostprogs-always-$(CONFIG_OMAP_IMAGE)			+= omap_signGP mk-omap-image
+hostprogs-always-$(CONFIG_PXA_IMAGE)			+= pxa-image
 HOSTCFLAGS_zynq_mkimage.o = -I$(srctree) -I$(srctree)/include/mach
 hostprogs-always-$(CONFIG_ZYNQ_MKIMAGE)			+= zynq_mkimage
 hostprogs-always-$(CONFIG_SOCFPGA_MKIMAGE)		+= socfpga_mkimage
diff --git a/scripts/pxa-image.c b/scripts/pxa-image.c
new file mode 100644
index 0000000000..6016752c9a
--- /dev/null
+++ b/scripts/pxa-image.c
@@ -0,0 +1,281 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * pxa-image - build a bootable PXA3xx NAND image
+ *
+ * The PXA3xx Boot ROM reads a Non-Trusted Image Module (NTIM) header from the
+ * start of NAND, copies the OBM image listed in it into internal SRAM and
+ * jumps there. It does not return: the OBM has to set up DRAM and load the
+ * next image itself.
+ *
+ * This tool builds such an image out of the OBM (a barebox PBL built for
+ * internal SRAM) and barebox proper:
+ *
+ *   offset 0                NTIM header
+ *   offset <obm-offset>     OBM, loaded to internal SRAM by the Boot ROM
+ *   offset <boot-offset>    barebox, loaded to DRAM by the OBM
+ *
+ * The default offsets keep the first two in the first erase block, which NAND
+ * chips guarantee to be good as shipped, so that the Boot ROM never has to
+ * read a block that might be bad. Only barebox lives beyond it, and that one
+ * is read by the OBM, which is ours.
+ *
+ * The size of the barebox image is stored in its NTIM entry so that the OBM
+ * knows how much to copy; see pxa_nand_load_image() in mach-pxa.
+ */
+
+#include <errno.h>
+#include <getopt.h>
+#include <stdint.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+#include <sys/stat.h>
+
+#define NTIM_VERSION		0x00030102
+#define NTIM_ID_TIMH		0x54494d48	/* 'TIMH' */
+#define NTIM_ID_OBMI		0x4f424d49	/* 'OBMI' */
+#define NTIM_ID_BOOT		0x424f4f54	/* 'BOOT' */
+#define NTIM_ID_LAST		0xffffffff
+#define NTIM_OEM_UNIQUE_ID	0xcafeaffe
+#define NTIM_FLASH_INFO_NAND	0x4e414e06
+
+/* Where the Boot ROM puts the header itself. Fixed, see the Boot ROM manual. */
+#define NTIM_LOAD_ADDR		0x5c008000
+
+/*
+ * The vendor image declares 0xff for the header itself and rounds the OBM up
+ * to a NAND page. Stay byte compatible with it: this is the one configuration
+ * known to boot.
+ */
+#define NTIM_HEADER_CRC_SIZE	0xff
+#define NAND_PAGE_SIZE		2048
+
+struct ntim_header {
+	uint32_t version;
+	uint32_t identifier;
+	uint32_t trusted;
+	uint32_t issue_date;
+	uint32_t oem_unique_id;
+	uint32_t reserved[5];
+	uint32_t flash_info;
+	uint32_t num_images;
+	uint32_t num_keys;
+	uint32_t size_of_reserved;
+};
+
+struct ntim_image {
+	uint32_t image_id;
+	uint32_t next_image_id;
+	uint32_t flash_entry_addr;
+	uint32_t load_addr;
+	uint32_t image_size;
+	uint32_t reserved[10];
+};
+
+static void put32(void *buf, uint32_t v)
+{
+	unsigned char *p = buf;
+
+	p[0] = v; p[1] = v >> 8; p[2] = v >> 16; p[3] = v >> 24;
+}
+
+static void *read_file(const char *name, size_t *size)
+{
+	struct stat st;
+	void *buf;
+	FILE *f;
+
+	f = fopen(name, "rb");
+	if (!f) {
+		fprintf(stderr, "cannot open %s: %s\n", name, strerror(errno));
+		return NULL;
+	}
+	if (fstat(fileno(f), &st) < 0) {
+		fprintf(stderr, "cannot stat %s: %s\n", name, strerror(errno));
+		fclose(f);
+		return NULL;
+	}
+
+	buf = malloc(st.st_size);
+	if (!buf) {
+		fclose(f);
+		return NULL;
+	}
+
+	if (fread(buf, 1, st.st_size, f) != (size_t)st.st_size) {
+		fprintf(stderr, "short read on %s\n", name);
+		free(buf);
+		fclose(f);
+		return NULL;
+	}
+
+	fclose(f);
+	*size = st.st_size;
+
+	return buf;
+}
+
+/*
+ * The header and both images are written at their flash offsets, the gaps are
+ * filled with 0xff so that the result can be written to erased NAND as is.
+ */
+static int pad_to(FILE *out, size_t *pos, size_t target, const char *what)
+{
+	if (*pos > target) {
+		fprintf(stderr, "%s does not fit below 0x%zx (ends at 0x%zx)\n",
+			what, target, *pos);
+		return -1;
+	}
+
+	while (*pos < target) {
+		if (fputc(0xff, out) == EOF)
+			return -1;
+		(*pos)++;
+	}
+
+	return 0;
+}
+
+static void usage(const char *argv0)
+{
+	fprintf(stderr,
+"usage: %s -o OUT -b OBM -f BAREBOX [options]\n"
+"  -o FILE     output image\n"
+"  -b FILE     OBM image (barebox PBL for internal SRAM)\n"
+"  -f FILE     barebox image\n"
+"  -O OFFSET   flash offset of the OBM (default 0x800)\n"
+"  -L ADDR     load address of the OBM (default 0x5c020000)\n"
+"  -F OFFSET   flash offset of barebox (default 0x20000)\n"
+"  -A ADDR     load address of barebox (default 0x81000000)\n"
+"  -M SIZE     maximum total image size, 0 to disable (default 0x200000)\n",
+		argv0);
+}
+
+int main(int argc, char *argv[])
+{
+	const char *outfile = NULL, *obmfile = NULL, *bootfile = NULL;
+	unsigned long obm_offset = 0x800, obm_load = 0x5c020000;
+	unsigned long boot_offset = 0x20000, boot_load = 0x81000000;
+	unsigned long max_size = 0x200000;
+	size_t obm_size, boot_size, pos = 0;
+	void *obm, *boot;
+	struct ntim_header hdr;
+	struct ntim_image img[3];
+	FILE *out;
+	int opt;
+
+	while ((opt = getopt(argc, argv, "o:b:f:O:L:F:A:M:h")) != -1) {
+		switch (opt) {
+		case 'o': outfile = optarg; break;
+		case 'b': obmfile = optarg; break;
+		case 'f': bootfile = optarg; break;
+		case 'O': obm_offset = strtoul(optarg, NULL, 0); break;
+		case 'L': obm_load = strtoul(optarg, NULL, 0); break;
+		case 'F': boot_offset = strtoul(optarg, NULL, 0); break;
+		case 'A': boot_load = strtoul(optarg, NULL, 0); break;
+		case 'M': max_size = strtoul(optarg, NULL, 0); break;
+		default:
+			usage(argv[0]);
+			return opt == 'h' ? 0 : 1;
+		}
+	}
+
+	if (!outfile || !obmfile || !bootfile) {
+		usage(argv[0]);
+		return 1;
+	}
+
+	obm = read_file(obmfile, &obm_size);
+	if (!obm)
+		return 1;
+	boot = read_file(bootfile, &boot_size);
+	if (!boot)
+		return 1;
+
+	memset(&hdr, 0, sizeof(hdr));
+	put32(&hdr.version, NTIM_VERSION);
+	put32(&hdr.identifier, NTIM_ID_TIMH);
+	put32(&hdr.trusted, 0);
+	put32(&hdr.issue_date, 0);
+	put32(&hdr.oem_unique_id, NTIM_OEM_UNIQUE_ID);
+	memset(hdr.reserved, 0xff, sizeof(hdr.reserved));
+	put32(&hdr.flash_info, NTIM_FLASH_INFO_NAND);
+	put32(&hdr.num_images, 3);
+	put32(&hdr.num_keys, 0);
+	put32(&hdr.size_of_reserved, 0);
+
+	memset(img, 0, sizeof(img));
+
+	/* The header describes itself first. */
+	put32(&img[0].image_id, NTIM_ID_TIMH);
+	put32(&img[0].next_image_id, NTIM_ID_OBMI);
+	put32(&img[0].flash_entry_addr, 0);
+	put32(&img[0].load_addr, NTIM_LOAD_ADDR);
+	put32(&img[0].image_size, NTIM_HEADER_CRC_SIZE);
+
+	put32(&img[1].image_id, NTIM_ID_OBMI);
+	put32(&img[1].next_image_id, NTIM_ID_BOOT);
+	put32(&img[1].flash_entry_addr, obm_offset);
+	put32(&img[1].load_addr, obm_load);
+	put32(&img[1].image_size,
+	      (obm_size + NAND_PAGE_SIZE - 1) & ~(NAND_PAGE_SIZE - 1));
+
+	/*
+	 * image_size is what the OBM copies out of NAND, so it has to be the
+	 * real size of the barebox image rather than the CRC'd part.
+	 */
+	put32(&img[2].image_id, NTIM_ID_BOOT);
+	put32(&img[2].next_image_id, NTIM_ID_LAST);
+	put32(&img[2].flash_entry_addr, boot_offset);
+	put32(&img[2].load_addr, boot_load);
+	put32(&img[2].image_size, boot_size);
+
+	out = fopen(outfile, "wb");
+	if (!out) {
+		fprintf(stderr, "cannot create %s: %s\n", outfile,
+			strerror(errno));
+		return 1;
+	}
+
+	if (fwrite(&hdr, 1, sizeof(hdr), out) != sizeof(hdr))
+		goto write_error;
+	pos += sizeof(hdr);
+	if (fwrite(img, 1, sizeof(img), out) != sizeof(img))
+		goto write_error;
+	pos += sizeof(img);
+
+	if (pad_to(out, &pos, obm_offset, "NTIM header"))
+		goto error;
+	if (fwrite(obm, 1, obm_size, out) != obm_size)
+		goto write_error;
+	pos += obm_size;
+
+	if (pad_to(out, &pos, boot_offset, "OBM"))
+		goto error;
+	if (fwrite(boot, 1, boot_size, out) != boot_size)
+		goto write_error;
+	pos += boot_size;
+
+	if (max_size && pos > max_size) {
+		fprintf(stderr,
+			"image is 0x%zx bytes, exceeds the maximum of 0x%lx\n",
+			pos, max_size);
+		goto error;
+	}
+
+	fclose(out);
+
+	printf("pxa-image: NTIM + OBM (0x%zx @ 0x%lx) + barebox (0x%zx @ 0x%lx)"
+	       " = 0x%zx bytes\n", obm_size, obm_offset, boot_size, boot_offset,
+	       pos);
+
+	return 0;
+
+write_error:
+	fprintf(stderr, "write error on %s: %s\n", outfile, strerror(errno));
+error:
+	fclose(out);
+	remove(outfile);
+
+	return 1;
+}

-- 
2.47.3



