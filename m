Delivery-date: Thu, 13 Mar 2025 11:18:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfdu-00DWgP-0j
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 11:18:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfdr-0006qZ-Pr
	for lore@pengutronix.de; Thu, 13 Mar 2025 11:18:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=clg772iDPX9THZsEOgveUrdr1q+8aeHC5gQ4lXmt/Q4=; b=isywFXvoCWTuNQK+O0wHNDtnGu
	8ed4DxxRZ7mGiS81V+1SHau4bzySQ/+Oo9p7BYZSRLPofrGBdI3t1mjxQmDmQV5jyIBpzmiOpzycj
	xBd4v4QxyNqmSMBpOKuLrEpORgrVIbcd3rB/Tpc1Bont5KCbtczrLWJQ7JoBjRDBijWyoksnfLt3Q
	A087en2fiP4/WuFeWzID7gYUjSRinhMPw/N3flIsOA4tlYotG343oUT8ow1OMOF8VSuYo+9PdF/w+
	fR4oqiyFtJd7BCJ7LPx/bwYYBVwWfh/GXMjmZlaDKFYIaRGFiRPYaYpIhC8OLnKEsKfr1teDTftIY
	vn3ZYlEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfdE-0000000Apoa-2fy3;
	Thu, 13 Mar 2025 10:17:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfd9-0000000AplM-1GSo
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 10:17:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd5-0006G0-2o; Thu, 13 Mar 2025 11:17:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd3-005WBY-38;
	Thu, 13 Mar 2025 11:17:29 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd3-00Gch5-2n;
	Thu, 13 Mar 2025 11:17:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Adrian Negreanu <adrian.negreanu@nxp.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 11:17:19 +0100
Message-Id: <20250313101728.3546902-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
References: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_031735_353979_EDE826FC 
X-CRM114-Status: GOOD (  11.20  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/11] firmware: qemu_fw_cfg: drop duplicate definitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These same defines are already in <uapi/linux/qemu_fw_cfg.h>, so let's
not duplicate them in the driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/firmware/qemu_fw_cfg.c | 17 ++---------------
 1 file changed, 2 insertions(+), 15 deletions(-)

diff --git a/drivers/firmware/qemu_fw_cfg.c b/drivers/firmware/qemu_fw_cfg.c
index 4a48ad91520b..26770da908ce 100644
--- a/drivers/firmware/qemu_fw_cfg.c
+++ b/drivers/firmware/qemu_fw_cfg.c
@@ -28,19 +28,6 @@
 # define FW_CFG_DMA_OFF 0x10
 #endif
 
-/* fw_cfg DMA commands */
-#define FW_CFG_DMA_CTL_ERROR   0x01
-#define FW_CFG_DMA_CTL_READ    0x02
-#define FW_CFG_DMA_CTL_SKIP    0x04
-#define FW_CFG_DMA_CTL_SELECT  0x08
-#define FW_CFG_DMA_CTL_WRITE   0x10
-
-struct fw_cfg_dma {
-	__be32 control;
-	__be32 length;
-	__be64 address;
-} __packed;
-
 /* fw_cfg device i/o register addresses */
 struct fw_cfg {
 	struct resource *iores;
@@ -51,7 +38,7 @@ struct fw_cfg {
 	loff_t next_read_offset;
 	u32 sel;
 	bool is_mmio;
-	struct fw_cfg_dma __iomem *acc_virt;
+	struct fw_cfg_dma_access __iomem *acc_virt;
 	dma_addr_t acc_dma;
 };
 
@@ -172,7 +159,7 @@ static ssize_t fw_cfg_write(struct cdev *cdev, const void *buf, size_t count,
 {
 	struct fw_cfg *fw_cfg = to_fw_cfg(cdev);
 	struct device *dev = cdev->dev;
-	struct fw_cfg_dma __iomem *acc = fw_cfg->acc_virt;
+	struct fw_cfg_dma_access __iomem *acc = fw_cfg->acc_virt;
 	void *dma_buf;
 	dma_addr_t mapping;
 	int ret = 0;
-- 
2.39.5



