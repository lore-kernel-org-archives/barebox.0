Delivery-date: Wed, 24 Apr 2024 09:09:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWkv-00ER9a-1q
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 09:09:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWkr-0006ec-Va
	for lore@pengutronix.de; Wed, 24 Apr 2024 09:09:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ik658R+omhV3ldkRn1FLcJ1AL0MeytpSDXQI7bXrwow=; b=yAOn8KVhUtm7X7GDHLpptqnZe8
	ybo66wRPlzWWsgXLnUhOjKgaarK5rPnx/4uAIQJxGgsBdS/i4iM0PLIry5/6OEj1dUF/9ITkXyvxS
	T0TQ14CFjBTlTxSsUH3o8KCejG8TBhwUx3OwbWULvGyKizUoz/5VTSs5/2oRBHsd5caWQwoAM98jv
	I7op+8/oMgR/XwQxJ4hoFPv9TKMWi72HPb8odSxwrIVKEhFxG0clJZnJDKKVDKootmPKvvsEn/7d+
	2aw8Vbnou2llvSswHDIgTk42yGAD6yuewU2EauWUVwCdR0ytJdrLA4dNtf5lKiUcbuhgvUOLsBm7X
	3QzF5WmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWkI-0000000329i-2Kw9;
	Wed, 24 Apr 2024 07:08:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWjx-000000031t9-1U1W
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 07:08:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWjv-0005ct-Sa; Wed, 24 Apr 2024 09:08:23 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWjv-00E24h-FI; Wed, 24 Apr 2024 09:08:23 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00F8kt-24;
	Wed, 24 Apr 2024 08:41:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Apr 2024 08:40:50 +0200
Message-Id: <20240424064058.3608016-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
References: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_000825_873266_A00964F1 
X-CRM114-Status: GOOD (  12.74  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 15/23] firmware: qemu_fw_cfg: use bounce buffer for write
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

qemu_fw_cfg seems to be the only cdev that expect DMA-aligned memory in
its write operation. We don't generally allocate buffers for read() with
dma_alloc though, so introduce a bounce buffer. The write callback is
only used once for initial configuration of the frame buffer device, so
the allocation won't be noticeable.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/firmware/qemu_fw_cfg.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/firmware/qemu_fw_cfg.c b/drivers/firmware/qemu_fw_cfg.c
index 1ba81d1b5002..3f129a2c1e02 100644
--- a/drivers/firmware/qemu_fw_cfg.c
+++ b/drivers/firmware/qemu_fw_cfg.c
@@ -173,14 +173,24 @@ static ssize_t fw_cfg_write(struct cdev *cdev, const void *buf, size_t count,
 	struct fw_cfg *fw_cfg = to_fw_cfg(cdev);
 	struct device *dev = cdev->dev;
 	struct fw_cfg_dma __iomem *acc = fw_cfg->acc_virt;
+	void *dma_buf;
 	dma_addr_t mapping;
+	int ret = 0;
 
 	if (pos != 0)
 		return -EINVAL;
 
-	mapping = dma_map_single(dev, (void *)buf, count, DMA_TO_DEVICE);
-	if (dma_mapping_error(dev, mapping))
-		return -EFAULT;
+	dma_buf = dma_alloc(count);
+	if (!dma_buf)
+		return -ENOMEM;
+
+	memcpy(dma_buf, buf, count);
+
+	mapping = dma_map_single(dev, dma_buf, count, DMA_TO_DEVICE);
+	if (dma_mapping_error(dev, mapping)) {
+		ret = -EFAULT;
+		goto free_buf;
+	}
 
 	fw_cfg->next_read_offset = 0;
 
@@ -195,8 +205,10 @@ static ssize_t fw_cfg_write(struct cdev *cdev, const void *buf, size_t count,
 		;
 
 	dma_unmap_single(dev, mapping, count, DMA_FROM_DEVICE);
+free_buf:
+	dma_free(dma_buf);
 
-	return count;
+	return ret ?: count;
 }
 
 static struct cdev_operations fw_cfg_ops = {
-- 
2.39.2



