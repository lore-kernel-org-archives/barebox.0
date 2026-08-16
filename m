Delivery-date: Sun, 16 Aug 2026 20:15:52 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvfOh-003qRZ-0m
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 20:15:52 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 559B6201BAA
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 20:15:51 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=03W6XCUj;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7x9ijVit1e2N5qHoxZCPdVZG4Li1MaI5U6aNxZfTwgg=; b=03W6XCUjUxz0+mWwCFuOW66549
	NvgiMsJWjwZf28Pc9wvGOeAsU+buva6Qy4rZlwuoAFQlZZNFuPaynt0oGEol0k7Uzbe85HF1Bu0Ca
	RGUC3KZUn5RxyFFg+mYzkXiiX3uHG2WYyjnqRlHwUPw5y7E/enHRFWWivwKhILXpARjHDsweBVRjv
	/sKMU3ahG4DAEgr+l8suau0RvK3f5Mvek3jG3ZGNMSj79aOkrFFy2ibP/wH6S7Zp2kkF4YM3QpVVp
	gRsMqPw/eKHGXpCfmqejPs4qJm/apypd7UHLwMFfEkips6WBsuDmjw2aK9qIM1PR0THhfvoi5cLVo
	J4TUBiVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBW-00000004xgg-0Xpy;
	Sun, 16 Aug 2026 18:02:14 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBO-00000004xPm-2B6G
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 18:02:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E26A12021EB;
	Sun, 16 Aug 2026 20:01:59 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvfBH-001osJ-2j;
	Sun, 16 Aug 2026 20:01:59 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-19VB;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:40 +0200
Subject: [PATCH 20/27] ARM: pxa: add a NAND first stage loader
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-20-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=13118;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=T1QzfSpBwY/DKZzgC+pXXBIu8xPOAhPe6FIHiUWCzJA=;
 b=HDgo7sDfDUGKOaVoWFqigtrJnqw4941EnouY1s3qhZAqRIUGVDUDWtrU9u0q2/LOfx3xJrYAb
 n7Qdw/2bzkJCOtpR0QHfPcEn17siJ/nvQiCx31BRddbcNVK99L1Nyi9
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_110206_949389_D1428793 
X-CRM114-Status: GOOD (  40.75  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The PXA3xx Boot ROM reads a NTIM header from the start of
   the boot device, copies the OBM listed in it into internal SRAM and jumps
   to it. It does not come back, so the OBM has to fetch the next image [...]
    
 
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
X-Stat-Signature: qpmc3rh3aqj9kg3yo5w9r4audayttf6s
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
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
X-Rspamd-Queue-Id: 559B6201BAA

The PXA3xx Boot ROM reads a NTIM header from the start of the boot
device, copies the OBM listed in it into internal SRAM and jumps to it.
It does not come back, so the OBM has to fetch the next image itself.

Add the pieces a PXA3xx board needs to be that OBM: pxa_nand_load_image()
reads the NTIM from flash rather than relying on the copy the Boot ROM
left in its scratch area, looks up an image by id and copies exactly as
many bytes as the header says.

Bad blocks are skipped, so the flash offsets in the NTIM count good
blocks only rather than addressing the device directly. That is what
mtd_peb_write_file() produces when a board writes such an image, so the
two ends agree on where an image is without either of them having to
record where the bad blocks are. Getting at the marker needs SPARE_EN in
NDCR, which makes the controller hand the spare area out along with the
page; with ECC_EN clear that is all 64 bytes of it, and the first is the
marker on a large page device. Only the first page of a block is checked:
vendors put the marker in the first page, the second or the last
depending on the part, and reading the first is what a first stage can
afford.

The NTIM itself is not covered by any of that, and does not need to be:
scripts/pxa-image puts it and the OBM in the first erase block, which the
chip guarantees to be good.

Everything here runs from internal SRAM before DRAM is usable for
anything but the destination, so it uses no global data and no stack
beyond what the entry function set up.

Alongside it goes the image rule that turns a PBL image into the layout
the Boot ROM expects, driven by scripts/pxa-image.

Assisted-by: Claude Opus 5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-pxa/Makefile     |   2 +
 arch/arm/mach-pxa/xload-nand.c | 255 +++++++++++++++++++++++++++++++++++++++++
 images/Makefile                |   1 +
 images/Makefile.pxa            |  18 +++
 include/mach/pxa/xload.h       |  42 +++++++
 5 files changed, 318 insertions(+)

diff --git a/arch/arm/mach-pxa/Makefile b/arch/arm/mach-pxa/Makefile
index fa0793d8a9..4069a47251 100644
--- a/arch/arm/mach-pxa/Makefile
+++ b/arch/arm/mach-pxa/Makefile
@@ -6,3 +6,5 @@ obj-y += common.o
 obj-y += devices.o
 
 obj-$(CONFIG_ARCH_PXA3XX) += mfp-pxa3xx.o pxa3xx.o
+
+pbl-$(CONFIG_ARCH_PXA3XX) += xload-nand.o
diff --git a/arch/arm/mach-pxa/xload-nand.c b/arch/arm/mach-pxa/xload-nand.c
new file mode 100644
index 0000000000..c03f0e52cd
--- /dev/null
+++ b/arch/arm/mach-pxa/xload-nand.c
@@ -0,0 +1,255 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Load barebox from NAND in the PXA3xx first stage.
+ *
+ * The Boot ROM reads the NTIM header from the start of NAND, copies the OBM
+ * listed in it into internal SRAM and jumps there. It does not come back, so
+ * the OBM has to fetch the next image itself.
+ *
+ * Everything here runs from internal SRAM before DRAM is usable for anything
+ * but the destination, so it uses no global data and no stack beyond what the
+ * entry function set up.
+ *
+ * The NTIM itself is in the first erase block, which the chip guarantees to be
+ * good, so it is always where the Boot ROM and this code expect it. Everything
+ * behind it is read past bad blocks.
+ */
+
+#include <common.h>
+#include <linux/sizes.h>
+#include <asm/io.h>
+#include <mach/pxa/xload.h>
+
+#define NAND_BASE		0x43100000
+
+#define NDCR			0x00
+#define NDTR0CS0		0x04
+#define NDTR1CS0		0x0c
+#define NDSR			0x14
+#define NDDB			0x40
+#define NDCB0			0x48
+
+#define NDCR_SPARE_EN		(1 << 31)
+#define NDCR_ND_RUN		(1 << 28)
+
+#define NDSR_WRCMDREQ		(1 << 0)
+#define NDSR_RDDREQ		(1 << 1)
+
+/*
+ * Values taken from the vendor OBM. NDCR configures a x8 device with 2K
+ * pages; the timings are the ones the previous stage is known to work with.
+ *
+ * SPARE_EN is ours: it makes the controller hand out the spare area along
+ * with the data, which is where the bad block marker is. With ECC_EN clear
+ * that is all 64 bytes of it.
+ */
+#define NDCR_INIT		(0x01045fff | NDCR_SPARE_EN)
+#define NDTR0CS0_INIT		0x00161c1c
+#define NDTR1CS0_INIT		0x0f3d00f2
+
+/*
+ * Read command for a 2K page device: 0x00 followed by 0x30, five address
+ * cycles, double byte command.
+ */
+#define NDCB0_READ_PAGE		0x000d3000
+
+#define NAND_PAGE_SIZE		2048
+#define NAND_OOB_SIZE		64
+#define NAND_BLOCK_SIZE		SZ_128K
+
+/* A device with more bad blocks than this in front of the image is broken. */
+#define NAND_MAX_BAD_BLOCKS	16
+
+static void pxa_nand_init(void __iomem *base)
+{
+	int i;
+
+	writel(0, base + NDCR);
+	writel(NDTR0CS0_INIT, base + NDTR0CS0);
+	writel(NDTR1CS0_INIT, base + NDTR1CS0);
+	writel(0x00000fff, base + NDSR);
+	writel(NDCR_INIT, base + NDCR);
+
+	/* Drain whatever the controller has left in the data buffer. */
+	for (i = 0; i < 16; i++)
+		readl(base + NDDB);
+}
+
+/*
+ * Read one page. 'offset' is a physical byte offset into the device and has to
+ * be page aligned. @buf takes the data and @oob the spare area; either may be
+ * NULL to read past that part of the page without keeping it. The controller
+ * hands out both whatever we do with them, so they have to be read either way.
+ */
+static void pxa_nand_read_page(void __iomem *base, u32 offset, void *buf,
+			       void *oob)
+{
+	u32 *dest;
+	u32 addr;
+	int i;
+
+	writel(readl(base + NDCR) | NDCR_ND_RUN, base + NDCR);
+
+	while (!(readl(base + NDSR) & NDSR_WRCMDREQ))
+		;
+
+	readl(base + NDDB);
+	readl(base + NDDB);
+
+	/* column in the low bits, page number from bit 16 upwards */
+	addr = (offset & 0x7ff) | ((offset << 5) & 0xffff0000);
+
+	writel(NDCB0_READ_PAGE, base + NDCB0);
+	writel(addr, base + NDCB0);
+	writel(0, base + NDCB0);
+
+	while (!(readl(base + NDSR) & NDSR_RDDREQ))
+		;
+	writel(NDSR_RDDREQ, base + NDSR);
+
+	dest = buf;
+	for (i = 0; i < NAND_PAGE_SIZE / 4; i++) {
+		u32 val = readl(base + NDDB);
+
+		if (dest)
+			*dest++ = val;
+	}
+
+	/* The spare area follows the data. */
+	dest = oob;
+	for (i = 0; i < NAND_OOB_SIZE / 4; i++) {
+		u32 val = readl(base + NDDB);
+
+		if (dest)
+			*dest++ = val;
+	}
+}
+
+static bool pxa_nand_block_is_bad(void __iomem *base, u32 offset)
+{
+	/* pxa_nand_read_page() fills this a word at a time */
+	u8 oob[NAND_OOB_SIZE] __aligned(4);
+
+	pxa_nand_read_page(base, offset, NULL, oob);
+
+	/*
+	 * The bad block marker is the first byte of the spare area on a large
+	 * page device.
+	 */
+	return oob[0] != 0xff;
+}
+
+/*
+ * Read @size bytes from @offset, which is an offset into the good blocks of
+ * the device rather than into the device itself: bad blocks are skipped and do
+ * not count towards it. That is the same thing mtd_peb_write_file() does when
+ * the update handler writes the image, so the two agree on where an image is
+ * without either of them having to record where the bad blocks are.
+ *
+ * Returns false if the image could not be read.
+ */
+static bool pxa_nand_read(void __iomem *base, u32 offset, void *buf, u32 size)
+{
+	unsigned int skipped = 0;
+	u32 phys = 0, log = 0;
+
+	while (size) {
+		/*
+		 * Only the first page of a block carries the marker, so this
+		 * is the one point where a block can be rejected.
+		 */
+		if (!(phys & (NAND_BLOCK_SIZE - 1)) &&
+		    pxa_nand_block_is_bad(base, phys)) {
+			if (++skipped > NAND_MAX_BAD_BLOCKS)
+				return false;
+			phys += NAND_BLOCK_SIZE;
+			continue;
+		}
+
+		/* Not at the image yet, so there is nothing to keep. */
+		if (log < offset) {
+			phys += NAND_PAGE_SIZE;
+			log += NAND_PAGE_SIZE;
+			continue;
+		}
+
+		pxa_nand_read_page(base, phys, buf, NULL);
+		buf += NAND_PAGE_SIZE;
+		phys += NAND_PAGE_SIZE;
+		log += NAND_PAGE_SIZE;
+		size -= min_t(u32, size, NAND_PAGE_SIZE);
+	}
+
+	return true;
+}
+
+/**
+ * pxa_nand_load_image - load the next image out of NAND
+ * @image_id:	NTIM id of the image to load, eg NTIM_ID_BOOT
+ *
+ * Reads the NTIM header from the start of the device, looks up the entry for
+ * @image_id and copies that image to the load address the header gives. The
+ * flash offset in that entry counts good blocks only; see pxa_nand_read().
+ *
+ * The header is read from flash rather than taken from the address the Boot
+ * ROM loaded it to, so that this does not depend on the ROM's scratch area
+ * still being intact.
+ *
+ * What this expects of the flash. None of it is discovered: the register
+ * values at the top of this file are one board's, recovered from its vendor
+ * OBM, and the geometry is hardcoded to match them, so a device that differs
+ * in any of these needs more than new timings.
+ *
+ *  - 2048 byte pages. That is NDCR PAGE_SZ, the five address cycles and the
+ *    double byte command in NDCB0_READ_PAGE, and the 11 column bits in the
+ *    address. A 512 byte page device needs all four changed.
+ *
+ *  - An 8 bit bus, ie NDCR DWIDTH_M and DWIDTH_C clear.
+ *
+ *  - 64 pages to an erase block, ie NDCR PG_PER_BLK set. NAND_BLOCK_SIZE has
+ *    to say the same thing and nothing checks that it does.
+ *
+ *  - 64 bytes of spare area, which is what the controller hands out for a 2K
+ *    page with SPARE_EN set and ECC_EN clear.
+ *
+ *  - The bad block marker in the first byte of the spare area of a block's
+ *    first page. Parts that mark the second or the last page instead are not
+ *    noticed.
+ *
+ * Return: the load address of the image, or NULL if it could not be loaded
+ */
+void *pxa_nand_load_image(u32 image_id)
+{
+	void __iomem *base = IOMEM(NAND_BASE);
+	u8 page[NAND_PAGE_SIZE] __aligned(4);
+	struct ntim_header *hdr;
+	struct ntim_image *img;
+	u32 i, num_images;
+
+	pxa_nand_init(base);
+	pxa_nand_read_page(base, 0, page, NULL);
+
+	hdr = (void *)page;
+	if (hdr->identifier != NTIM_ID_TIMH ||
+	    hdr->oem_unique_id != NTIM_OEM_UNIQUE_ID)
+		return NULL;
+
+	num_images = hdr->num_images;
+	if (!num_images || num_images > NTIM_MAX_IMAGES)
+		return NULL;
+
+	img = (void *)(hdr + 1);
+
+	for (i = 0; i < num_images; i++) {
+		if (img[i].image_id != image_id)
+			continue;
+
+		if (!pxa_nand_read(base, img[i].flash_entry_addr,
+				   (void *)img[i].load_addr, img[i].image_size))
+			return NULL;
+
+		return (void *)img[i].load_addr;
+	}
+
+	return NULL;
+}
diff --git a/images/Makefile b/images/Makefile
index 91425dd3a0..f8e853418d 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -183,6 +183,7 @@ include $(srctree)/images/Makefile.malta
 include $(srctree)/images/Makefile.mvebu
 include $(srctree)/images/Makefile.mxs
 include $(srctree)/images/Makefile.omap3
+include $(srctree)/images/Makefile.pxa
 include $(srctree)/images/Makefile.rockchip
 include $(srctree)/images/Makefile.exynos
 include $(srctree)/images/Makefile.sandbox
diff --git a/images/Makefile.pxa b/images/Makefile.pxa
new file mode 100644
index 0000000000..023aec428d
--- /dev/null
+++ b/images/Makefile.pxa
@@ -0,0 +1,18 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# barebox image generation Makefile for PXA images
+#
+
+# A first stage image: the NTIM header the Boot ROM reads from NAND, the OBM
+# it loads into internal SRAM, and barebox for the OBM to load into DRAM.
+quiet_cmd_pxa_image = PXAIMG  $@
+      cmd_pxa_image = $(objtree)/scripts/pxa-image \
+	-b $< -f $(obj)/$(PXA_PAYLOAD_$(@F)) -o $@ \
+	$(if $(PXA_OBM_OFFSET_$(@F)),-O $(PXA_OBM_OFFSET_$(@F))) \
+	$(if $(PXA_OBM_LOAD_$(@F)),-L $(PXA_OBM_LOAD_$(@F))) \
+	$(if $(PXA_BOOT_OFFSET_$(@F)),-F $(PXA_BOOT_OFFSET_$(@F))) \
+	$(if $(PXA_BOOT_LOAD_$(@F)),-A $(PXA_BOOT_LOAD_$(@F))) \
+	$(if $(PXA_MAX_SIZE_$(@F)),-M $(PXA_MAX_SIZE_$(@F)))
+
+$(obj)/%.pxaimg: $(obj)/% $(obj)/$$(PXA_PAYLOAD_$$(@F)) FORCE
+	$(call if_changed,pxa_image)
diff --git a/include/mach/pxa/xload.h b/include/mach/pxa/xload.h
new file mode 100644
index 0000000000..d24b180cbf
--- /dev/null
+++ b/include/mach/pxa/xload.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __MACH_PXA_XLOAD_H
+#define __MACH_PXA_XLOAD_H
+
+#include <linux/types.h>
+
+#define NTIM_ID_TIMH		0x54494d48	/* 'TIMH' */
+#define NTIM_ID_OBMI		0x4f424d49	/* 'OBMI' */
+#define NTIM_ID_BOOT		0x424f4f54	/* 'BOOT' */
+#define NTIM_OEM_UNIQUE_ID	0xcafeaffe
+
+#define NTIM_MAX_IMAGES		8
+
+/*
+ * Non-Trusted Image Module, the header the PXA3xx Boot ROM reads from the
+ * start of the boot device. Written by scripts/pxa-image.
+ */
+struct ntim_header {
+	u32 version;
+	u32 identifier;
+	u32 trusted;
+	u32 issue_date;
+	u32 oem_unique_id;
+	u32 reserved[5];
+	u32 flash_info;
+	u32 num_images;
+	u32 num_keys;
+	u32 size_of_reserved;
+};
+
+struct ntim_image {
+	u32 image_id;
+	u32 next_image_id;
+	u32 flash_entry_addr;
+	u32 load_addr;
+	u32 image_size;
+	u32 reserved[10];
+};
+
+void *pxa_nand_load_image(u32 image_id);
+
+#endif /* __MACH_PXA_XLOAD_H */

-- 
2.47.3



