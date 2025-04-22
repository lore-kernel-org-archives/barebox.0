Delivery-date: Tue, 22 Apr 2025 07:27:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76A9-003us3-0l
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 07:27:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76A7-0004Bu-S1
	for lore@pengutronix.de; Tue, 22 Apr 2025 07:27:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D0yhLTUHELikWq9J8InR0Wi31TSytWS0eP4VIBieZHs=; b=RjuTWOcXn5qSKV9n0XSrldI+8+
	tE94i3/LI+ZBRA7kNDb5o0Sbo/IQfKSj768B+JZwt4oEWgV4bWtmIiUjIzUrwf+zSgiVNRGfpqsgq
	Q6Fqe5gwFKKp2Bs2I+s9FQWksYQAk1i4TOYx2cc6Jqn2yUOa0chOZ1gZS+K9+fMk3sI/Joy7CoGBh
	IoufVP+bA4DKwVPNCLWWefNEZXzivsVGOF7SEu43P5ywMg1Wxxy5yyW2l1lD7EwkJyQKR2PUN+eei
	gBE3O60EJ07y7DVEJlR8lduxZn09Yy1hdRzL8dEQL9L6L4dKAuWf025h6EA57xvIdgK5GKhz9NpZx
	wtAH5pzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u769d-00000005rFg-3Fix;
	Tue, 22 Apr 2025 05:26:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u769X-00000005r9Y-1I3t
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 05:26:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769W-0003jR-47; Tue, 22 Apr 2025 07:26:38 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-001UvK-2g;
	Tue, 22 Apr 2025 07:26:37 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-00EN4R-2M;
	Tue, 22 Apr 2025 07:26:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Apr 2025 07:26:34 +0200
Message-Id: <20250422052635.3423961-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
References: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_222639_344469_72BBBEE8 
X-CRM114-Status: GOOD (  16.07  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/9] mci: omap_hsmmc: add xload implementation for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Luckily, the BootROM does no reset of hardware after handing over
control to the MLO and thus SD card, host and clock/resets are all
configured for barebox MLO to directly send MMC_CMD_READ_MULTIPLE_BLOCK.

Add a PBL driver that does this.

This will be used to enable a single barebox build to produce both MLO
and second stage images for the Beaglebone Black.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/Kconfig             |  3 +++
 drivers/mci/Makefile            |  1 +
 drivers/mci/omap_hsmmc_common.c |  2 +-
 drivers/mci/omap_hsmmc_pbl.c    | 32 ++++++++++++++++++++++++++++++++
 4 files changed, 37 insertions(+), 1 deletion(-)
 create mode 100644 drivers/mci/omap_hsmmc_pbl.c

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 09648aa77150..44fd4716aade 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -255,3 +255,6 @@ config MCI_ATMEL_PBL
 config MCI_ATMEL_SDHCI_PBL
 	bool
 	select MCI_SDHCI
+
+config MCI_OMAP_HSMMC_PBL
+	bool
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index b209a86d8873..f76059e7b550 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -16,6 +16,7 @@ obj-$(CONFIG_MCI_IMX_ESDHC)	+= imx-esdhc.o imx-esdhc-common.o
 pbl-$(CONFIG_MCI_IMX_ESDHC_PBL)	+= imx-esdhc-pbl.o imx-esdhc-common.o
 obj-$(CONFIG_MCI_MXS)		+= mxs.o
 obj-$(CONFIG_MCI_OMAP_HSMMC)	+= omap_hsmmc.o omap_hsmmc_common.o
+pbl-$(CONFIG_MCI_OMAP_HSMMC_PBL)	+= omap_hsmmc_pbl.o omap_hsmmc_common.o
 obj-$(CONFIG_MCI_PXA)		+= pxamci.o
 obj-$(CONFIG_MCI_ROCKCHIP_DWCMSHC)	+= rockchip-dwcmshc-sdhci.o
 obj-$(CONFIG_MCI_TEGRA)		+= tegra-sdmmc.o
diff --git a/drivers/mci/omap_hsmmc_common.c b/drivers/mci/omap_hsmmc_common.c
index 04c712460622..329908a6e4bd 100644
--- a/drivers/mci/omap_hsmmc_common.c
+++ b/drivers/mci/omap_hsmmc_common.c
@@ -468,7 +468,7 @@ int omap_hsmmc_send_cmd(struct omap_hsmmc *hsmmc, struct mci_cmd *cmd,
 		return mmc_read_data(hsmmc, data->dest,
 				     data->blocksize * data->blocks);
 
-	if (IS_ENABLED(CONFIG_MCI_WRITE))
+	if (IS_ENABLED(CONFIG_MCI_WRITE) && IN_PROPER)
 		return mmc_write_data(hsmmc, data->src,
 				      data->blocksize * data->blocks);
 
diff --git a/drivers/mci/omap_hsmmc_pbl.c b/drivers/mci/omap_hsmmc_pbl.c
new file mode 100644
index 000000000000..0e6f39859d24
--- /dev/null
+++ b/drivers/mci/omap_hsmmc_pbl.c
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2008 Texas Instruments (http://www.ti.com/, Sukumar Ghorai <s-ghorai@ti.com>)
+
+#include <pbl/mci.h>
+#include <pbl/bio.h>
+#include <mci.h>
+#include <debug_ll.h>
+#include <mach/omap/xload.h>
+
+#include "omap_hsmmc.h"
+
+static int pbl_omap_hsmmc_send_cmd(struct pbl_mci *mci,
+				   struct mci_cmd *cmd,
+				   struct mci_data *data)
+{
+	return omap_hsmmc_send_cmd(mci->priv, cmd, data);
+}
+
+static struct omap_hsmmc hsmmc;
+static struct pbl_mci mci;
+
+int omap_hsmmc_bio_init(struct pbl_bio *bio, void __iomem *iobase,
+			unsigned reg_ofs)
+{
+	hsmmc.iobase = iobase;
+	hsmmc.base = iobase + reg_ofs;
+
+	mci.priv = &hsmmc;
+	mci.send_cmd = pbl_omap_hsmmc_send_cmd;
+
+	return pbl_mci_bio_init(&mci, bio);
+}
-- 
2.39.5



