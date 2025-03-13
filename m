Delivery-date: Thu, 13 Mar 2025 11:18:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfdx-00DWhV-0j
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 11:18:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfdu-0006tu-U5
	for lore@pengutronix.de; Thu, 13 Mar 2025 11:18:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ylh9qsRlOvh2W9uAxzdyfOIFlzCJMUIlkg4Vb1DyoHQ=; b=bh1kbV9mMTTKKM9H7PfIAeqfuY
	qHiOm6/I1zQzHViqKrXI9wThh6L6Edz5rBABtZuQfr9HmDHYOibxuyTF6+a++JtNj9d9hNj4jtB+Y
	H5JiTbL6DbwMOAfq86o/nIC07RM5aNz0Nfw9AG67P/UluLlq0DQ6BFSbGdoPVvZu1hbb3DuNBTCgW
	nnowuf5JNSYXL3ICv1vKJbti7CFXNkC/FBrSjuAHdtItrZJD2oTnH3QLO96LktVSbat+bD/hXtSsx
	Pqq1TuVK3VR7Jl9iZXO5fMIDAfYHLpDN6Emhmu2g5LXeA00pBJEGREWXJeFooYOz1rpT5QythdkwW
	QbJzmxIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfdP-0000000Apw7-0gpP;
	Thu, 13 Mar 2025 10:17:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfdM-0000000Apto-1YRl
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 10:17:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd5-0006G1-2o; Thu, 13 Mar 2025 11:17:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd4-005WBb-04;
	Thu, 13 Mar 2025 11:17:30 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd3-00Gch5-2w;
	Thu, 13 Mar 2025 11:17:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Adrian Negreanu <adrian.negreanu@nxp.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 11:17:20 +0100
Message-Id: <20250313101728.3546902-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
References: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_031748_409386_E32D52EB 
X-CRM114-Status: GOOD (  12.66  )
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
Subject: [PATCH 03/11] firmware: qemu_fw_cfg: add support for seeking
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Seeks were so far not possible and resulted in an -EINVAL if the accesses
weren't consecutive.

Implement it properly using FW_CFG_DMA_CTL_SKIP.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/firmware/qemu_fw_cfg.c | 44 ++++++++++++++++++++--------------
 1 file changed, 26 insertions(+), 18 deletions(-)

diff --git a/drivers/firmware/qemu_fw_cfg.c b/drivers/firmware/qemu_fw_cfg.c
index 26770da908ce..33c1617a61e4 100644
--- a/drivers/firmware/qemu_fw_cfg.c
+++ b/drivers/firmware/qemu_fw_cfg.c
@@ -70,6 +70,7 @@ static int fw_cfg_ioctl(struct cdev *cdev, unsigned int request, void *buf)
 	switch (request) {
 	case FW_CFG_SELECT:
 		fw_cfg->sel = *(u16 *)buf;
+		fw_cfg->next_read_offset = 0;
 		break;
 	default:
 		ret = -ENOTTY;
@@ -87,10 +88,8 @@ static int fw_cfg_ioctl(struct cdev *cdev, unsigned int request, void *buf)
 	while (*remaining >= sizeof(type)) {				\
 		val = __raw_read##type((fw_cfg)->reg_data);		\
 		*remaining -= sizeof(type);				\
-		if (*address) {						\
-			put_unaligned(val, (type *)*address);		\
-			*address += sizeof(type);			\
-		}							\
+		put_unaligned(val, (type *)*address);		\
+		*address += sizeof(type);			\
 	}								\
 } while(0)
 
@@ -123,11 +122,27 @@ static void fw_cfg_data_read(struct fw_cfg *fw_cfg, void *address, size_t remain
 	fw_cfg_data_read_sized(fw_cfg, &remaining, &address, u8);
 }
 
+static void fw_cfg_do_dma(struct fw_cfg *fw_cfg, dma_addr_t address,
+			  u32 count, u32 control)
+{
+	struct fw_cfg_dma_access __iomem *acc = fw_cfg->acc_virt;
+
+	acc->address = cpu_to_be64(address);
+	acc->length = cpu_to_be32(count);
+	acc->control = cpu_to_be32(control);
+
+	iowrite64be(fw_cfg->acc_dma, fw_cfg->reg_dma);
+
+	while (ioread32be(&acc->control) & ~FW_CFG_DMA_CTL_ERROR)
+		;
+}
+
 static ssize_t fw_cfg_read(struct cdev *cdev, void *buf, size_t count,
 			   loff_t pos, unsigned long flags)
 {
 	struct fw_cfg *fw_cfg = to_fw_cfg(cdev);
 	unsigned rdsize = FIELD_GET(O_RWSIZE_MASK, flags);
+	u32 selector = FW_CFG_DMA_CTL_SELECT | fw_cfg->sel << 16;
 
 	if (!pos || pos != fw_cfg->next_read_offset) {
 		fw_cfg_select(fw_cfg);
@@ -145,8 +160,9 @@ static ssize_t fw_cfg_read(struct cdev *cdev, void *buf, size_t count,
 			rdsize = 1;
 	}
 
-	while (pos-- > fw_cfg->next_read_offset)
-		fw_cfg_data_read(fw_cfg, NULL, count, rdsize);
+	if (pos != fw_cfg->next_read_offset)
+		fw_cfg_do_dma(fw_cfg, DMA_ERROR_CODE, pos,
+			      FW_CFG_DMA_CTL_SKIP | selector);
 
 	fw_cfg_data_read(fw_cfg, buf, count, rdsize);
 
@@ -159,14 +175,10 @@ static ssize_t fw_cfg_write(struct cdev *cdev, const void *buf, size_t count,
 {
 	struct fw_cfg *fw_cfg = to_fw_cfg(cdev);
 	struct device *dev = cdev->dev;
-	struct fw_cfg_dma_access __iomem *acc = fw_cfg->acc_virt;
 	void *dma_buf;
 	dma_addr_t mapping;
 	int ret = 0;
 
-	if (pos != 0)
-		return -EINVAL;
-
 	dma_buf = dma_alloc(count);
 	if (!dma_buf)
 		return -ENOMEM;
@@ -181,15 +193,11 @@ static ssize_t fw_cfg_write(struct cdev *cdev, const void *buf, size_t count,
 
 	fw_cfg->next_read_offset = 0;
 
-	acc->address = cpu_to_be64(mapping);
-	acc->length = cpu_to_be32(count);
-	acc->control = cpu_to_be32(FW_CFG_DMA_CTL_WRITE |
-				   FW_CFG_DMA_CTL_SELECT | fw_cfg->sel << 16);
+	fw_cfg_do_dma(fw_cfg, DMA_ERROR_CODE, pos, FW_CFG_DMA_CTL_SKIP |
+		      FW_CFG_DMA_CTL_SELECT | fw_cfg->sel << 16);
 
-	iowrite64be(fw_cfg->acc_dma, fw_cfg->reg_dma);
-
-	while (ioread32be(&acc->control) & ~FW_CFG_DMA_CTL_ERROR)
-		;
+	fw_cfg_do_dma(fw_cfg, mapping, count, FW_CFG_DMA_CTL_WRITE |
+		      FW_CFG_DMA_CTL_SELECT | fw_cfg->sel << 16);
 
 	dma_unmap_single(dev, mapping, count, DMA_FROM_DEVICE);
 free_buf:
-- 
2.39.5



