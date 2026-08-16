Delivery-date: Sun, 16 Aug 2026 20:02:32 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvfBn-003pjK-1w
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 20:02:32 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DB183201CD8
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 20:02:31 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=c6LqNiek;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UXMFdYoIgCjwzpCYqOx1Lqxt2i7efYWMIrcVKuNIOn8=; b=c6LqNiekVqPuz2DC7cCRNKNyot
	JtARh7XKfJ/Z/AIQsTYElLHw/++LUXzoP8FTXPQkZshxOpTVur/RuLz94oVdyfirmakFC1F7MKcvK
	vmwDWh09pqLey01+56qJrTNT5jSBkgAXl4PSq35qjFEjn+c9m9Wlma9gap17ETSbRxkthqRL3lzcB
	aK1ZzHfrDLB+c8LEhDVX14LklpR7IiLlCcDoQq/6YsqjIIgEqSE2GbZ1VZyL+woRq8B4SwhpxtIRd
	9JZpbN3sPGxWYgQPTAbX4gMjPGeCPu9zf2cVqvZPK5lf2xAjLW4ARKlcaVlBX1fuSYRgJIRQA7cew
	aqZ9zjWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBP-00000004xRM-069W;
	Sun, 16 Aug 2026 18:02:07 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBI-00000004xLU-1UMG
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 18:02:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8373A201B9A;
	Sun, 16 Aug 2026 20:01:58 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvfBG-001orL-1N;
	Sun, 16 Aug 2026 20:01:58 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-1Ac9;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:42 +0200
Subject: [PATCH 22/27] ARM: pxa: add a barebox update handler for NAND
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-22-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=6106;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=9reWMFtc3QRdIJXonFhjQfh3E+2VRzcQIbR0+HsLsGc=;
 b=ozcF+ech4Ujfa0IjZqggbG6LSibTrwcUsIgFqLzy4KiVajsP//qjeoH1doXFPCzqazR47qVDp
 GEju1VH7yzbBKDqrUmLMfEw3lI0VVqDjU0H1XG8OWqD1IUj6u6rvwTy
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_110200_566380_47BBD487 
X-CRM114-Status: GOOD (  22.24  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The PXA3xx Boot ROM boots from the start of the flash: an
   NTIM header, the OBM it copies into internal SRAM and the image the OBM loads
    into DRAM, all in one blob built by scripts/pxa-image. Add an up [...] 
 
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
X-Stat-Signature: 7cxmkx6h67qwy61gxh18sct6e3ppirf7
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: DB183201CD8

The PXA3xx Boot ROM boots from the start of the flash: an NTIM header,
the OBM it copies into internal SRAM and the image the OBM loads into
DRAM, all in one blob built by scripts/pxa-image. Add an update handler
that writes such a blob to the mtd partition covering it, so a board can
replace its own bootloader with barebox_update.

bbu_register_std_file_update() would do the copy, but it goes through
the cdev and writes straight over a bad block. Use mtd_peb_write_file()
instead, which skips them, so what lands in flash is the image with the
bad blocks taken out of it. That is what the other end expects:
pxa_nand_load_image() reads the flash offsets in the NTIM as offsets into
the good blocks and skips the bad ones the same way. The NTIM and the OBM
are in the first erase block, which cannot be bad, so the Boot ROM -
which knows nothing of any of this - always finds them where it looks.

The image is checked for filetype_pxa_ntim before anything is erased.
Writing something else to this partition leaves a board that only JTAG
can talk to.

Assisted-by: Claude Opus 5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-pxa/Kconfig  |  9 +++++
 arch/arm/mach-pxa/Makefile |  1 +
 arch/arm/mach-pxa/bbu.c    | 96 ++++++++++++++++++++++++++++++++++++++++++++++
 include/mach/pxa/bbu.h     | 18 +++++++++
 4 files changed, 124 insertions(+)

diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index 5bc99f1f83..b159cee0cc 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -19,4 +19,13 @@ config ARCH_PXA310
 	bool
 	select ARCH_PXA3XX
 
+config BAREBOX_UPDATE_PXA_NAND
+	prompt "barebox update NAND handler"
+	bool
+	depends on ARCH_PXA3XX && BAREBOX_UPDATE && MTD
+	help
+	  Say Y here for an update handler that writes the image built by
+	  scripts/pxa-image - the NTIM header, the OBM and barebox - to the
+	  mtd partition the Boot ROM boots from.
+
 endif
diff --git a/arch/arm/mach-pxa/Makefile b/arch/arm/mach-pxa/Makefile
index 4069a47251..86d9c4ca95 100644
--- a/arch/arm/mach-pxa/Makefile
+++ b/arch/arm/mach-pxa/Makefile
@@ -6,5 +6,6 @@ obj-y += common.o
 obj-y += devices.o
 
 obj-$(CONFIG_ARCH_PXA3XX) += mfp-pxa3xx.o pxa3xx.o
+obj-$(CONFIG_BAREBOX_UPDATE_PXA_NAND) += bbu.o
 
 pbl-$(CONFIG_ARCH_PXA3XX) += xload-nand.o
diff --git a/arch/arm/mach-pxa/bbu.c b/arch/arm/mach-pxa/bbu.c
new file mode 100644
index 0000000000..981069a016
--- /dev/null
+++ b/arch/arm/mach-pxa/bbu.c
@@ -0,0 +1,96 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * barebox update handler for the PXA3xx NAND boot partition.
+ */
+
+#include <common.h>
+#include <bbu.h>
+#include <filetype.h>
+#include <fs.h>
+#include <malloc.h>
+#include <linux/err.h>
+#include <linux/mtd/mtd.h>
+#include <mtd/mtd-peb.h>
+#include <mach/pxa/bbu.h>
+
+static int pxa_bbu_nand_handler(struct bbu_handler *handler,
+				struct bbu_data *data)
+{
+	struct mtd_info *mtd;
+	struct cdev *cdev;
+	int ret;
+
+	/*
+	 * The Boot ROM expects an NTIM header at the start of the boot
+	 * device. Writing anything else here leaves a board that only JTAG
+	 * can talk to.
+	 */
+	if (file_detect_type(data->image, data->len) != filetype_pxa_ntim) {
+		if (!bbu_force(data, "%s is not a PXA3xx NTIM image",
+			       data->imagefile))
+			return -EINVAL;
+	}
+
+	cdev = cdev_by_name(devpath_to_name(data->devicefile));
+	if (!cdev) {
+		pr_err("%s: no such device\n", data->devicefile);
+		return -ENODEV;
+	}
+
+	mtd = cdev->mtd;
+	if (!mtd) {
+		pr_err("%s is not a mtd device\n", data->devicefile);
+		return -EINVAL;
+	}
+
+	/* last chance before erasing the flash */
+	ret = bbu_confirm(data);
+	if (ret)
+		return ret;
+
+	ret = mtd_peb_write_file(mtd, 0, mtd_num_pebs(mtd), data->image,
+				 data->len);
+	if (ret == -ENOSPC)
+		pr_err("%s holds %llu bytes, the image needs %zu\n",
+		       data->devicefile, mtd->size, data->len);
+
+	return ret;
+}
+
+/**
+ * pxa_bbu_nand_register_handler - register a NAND update handler
+ * @name:	Name of the handler
+ * @devicefile:	the mtd partition the Boot ROM boots from
+ *
+ * Registers an update handler for the image built by scripts/pxa-image: the
+ * NTIM header the Boot ROM reads, the OBM it copies into internal SRAM, and
+ * the barebox image the OBM loads into DRAM.
+ *
+ * Unlike bbu_register_std_file_update() this goes through
+ * mtd_peb_write_file(), so a factory bad block in the boot partition is
+ * skipped rather than written to, and what lands in flash is the image with
+ * the bad blocks taken out of it. That is what the other side expects:
+ * pxa_nand_load_image() reads the flash offsets in the NTIM as offsets into
+ * the good blocks and skips the bad ones the same way. The NTIM and the OBM
+ * are in the first erase block, which cannot be bad, so the Boot ROM - which
+ * has no idea about any of this - always finds them where it looks.
+ *
+ * Return: 0 if successful, negative error code otherwise
+ */
+int pxa_bbu_nand_register_handler(const char *name, const char *devicefile)
+{
+	struct bbu_handler *handler;
+	int ret;
+
+	handler = xzalloc(sizeof(*handler));
+	handler->devicefile = devicefile;
+	handler->name = name;
+	handler->handler = pxa_bbu_nand_handler;
+	handler->flags = BBU_HANDLER_FLAG_DEFAULT;
+
+	ret = bbu_register_handler(handler);
+	if (ret)
+		free(handler);
+
+	return ret;
+}
diff --git a/include/mach/pxa/bbu.h b/include/mach/pxa/bbu.h
new file mode 100644
index 0000000000..7b13009cf4
--- /dev/null
+++ b/include/mach/pxa/bbu.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __MACH_PXA_BBU_H
+#define __MACH_PXA_BBU_H
+
+#include <bbu.h>
+
+#ifdef CONFIG_BAREBOX_UPDATE_PXA_NAND
+int pxa_bbu_nand_register_handler(const char *name, const char *devicefile);
+#else
+static inline int pxa_bbu_nand_register_handler(const char *name,
+						const char *devicefile)
+{
+	return 0;
+}
+#endif
+
+#endif /* __MACH_PXA_BBU_H */

-- 
2.47.3



