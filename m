Delivery-date: Thu, 07 Mar 2024 18:01:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riH7g-00CUzs-2r
	for lore@lore.pengutronix.de;
	Thu, 07 Mar 2024 18:01:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riH7f-0004rQ-Hd
	for lore@pengutronix.de; Thu, 07 Mar 2024 18:01:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hUjBS4UQyiPe8CxOA06M3gwCA1YmCgLsTT4iMba8MfA=; b=mJuW1yqCbYYBh1ump1Ml8M6XoK
	oTAp85Pse1YsdtLTsVUZtKTMxP1E1LC8OJXmokGMAOV1t13YfCkwcu9IQfP2UvQNCji4ck7a899CU
	FgbN3vls5DfGA322UXMKkZX3YXk3Ga+B6M7i9Jbgu+iJTX6XUsRZskAX7n2DSr3LZZivJ5URDQ7/l
	9ac2CLqgN/4dMBQQWeiT+k4w438Q/HT1kaVzhVJcbQBBN7IEWebu2Xb8lshisqI/ZjrFm4MX5yRoK
	3bYHw/Q18Ry3A3WWkSTBwGA3vKTEYb2Xu5a9hOmpVOKK1Cx2l+ztMMMYetvZ7upb1a/gUfjIaxIhZ
	WgT6StMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riH73-00000005bGj-20pt;
	Thu, 07 Mar 2024 17:00:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riH6z-00000005bEs-1Q7u
	for barebox@lists.infradead.org;
	Thu, 07 Mar 2024 17:00:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1riH6x-0003lA-A8; Thu, 07 Mar 2024 18:00:51 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1riH6w-004yj5-Ts; Thu, 07 Mar 2024 18:00:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1riH6w-00DqQF-12;
	Thu, 07 Mar 2024 18:00:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	rcz@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  7 Mar 2024 18:00:50 +0100
Message-Id: <20240307170050.3299747-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240307_090053_405485_882D6451 
X-CRM114-Status: GOOD (  11.55  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] dma: debug: detect repeated DMA sync
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dma_map_single will do any necessary cache maintenance to make a buffer
available to a device. Calling debug_dma_sync_single_for_device on such
a buffer is unnecessary, so flag when this happens.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - rename dev_mapped to dev_owned to reduce confusion (Lucas)
---
 drivers/dma/debug.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/debug.c b/drivers/dma/debug.c
index b3bfbff9b2f5..e524dc4127ce 100644
--- a/drivers/dma/debug.c
+++ b/drivers/dma/debug.c
@@ -12,6 +12,7 @@ struct dma_debug_entry {
 	dma_addr_t       dev_addr;
 	size_t           size;
 	int              direction;
+	bool             dev_owned;
 };
 
 static const char *dir2name[] = {
@@ -121,6 +122,7 @@ void debug_dma_map(struct device *dev, void *addr,
 	entry->dev_addr = dev_addr;
 	entry->size = size;
 	entry->direction = direction;
+	entry->dev_owned = true;
 
 	list_add(&entry->list, &dma_mappings);
 
@@ -159,9 +161,17 @@ void debug_dma_sync_single_for_cpu(struct device *dev,
 	struct dma_debug_entry *entry;
 
 	entry = dma_debug_entry_find(dev, dma_handle, size);
-	if (!entry)
+	if (!entry) {
 		dma_dev_warn(dev, "sync for CPU of never-mapped %s buffer 0x%llx+0x%zx!\n",
 			     dir2name[direction], (u64)dma_handle, size);
+		return;
+	}
+
+	if (!entry->dev_owned)
+		dma_dev_warn(dev, "unexpected sync for CPU of already CPU-mapped %s buffer 0x%llx+0x%zx!\n",
+			     dir2name[direction], (u64)dma_handle, size);
+
+	entry->dev_owned = false;
 }
 
 void debug_dma_sync_single_for_device(struct device *dev,
@@ -177,7 +187,15 @@ void debug_dma_sync_single_for_device(struct device *dev,
 	 * corruption
 	 */
 	entry = dma_debug_entry_find(dev, dma_handle, size);
-	if (!entry)
+	if (!entry) {
 		dma_dev_warn(dev, "Syncing for device of never-mapped %s buffer 0x%llx+0x%zx!\n",
 			     dir2name[direction], (u64)dma_handle, size);
+		return;
+	}
+
+	if (entry->dev_owned)
+		dma_dev_warn(dev, "unexpected sync for device of already device-mapped %s buffer 0x%llx+0x%zx!\n",
+			     dir2name[direction], (u64)dma_handle, size);
+
+	entry->dev_owned = true;
 }
-- 
2.39.2



