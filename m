Delivery-date: Tue, 10 Sep 2024 13:49:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snzN0-0038uH-0b
	for lore@lore.pengutronix.de;
	Tue, 10 Sep 2024 13:49:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snzMy-0001Pm-Td
	for lore@pengutronix.de; Tue, 10 Sep 2024 13:49:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+5pGDeBFm68ij/lYyPVWDtzWcDf6RzVum/Wy6/UbCHk=; b=n5r2MPfQ9FklvPQeCii+3r2NGg
	j+CvJkhZpm12D+T1ynw0ESqMxiU/ANfPdL7uPZ/kMhzAd9u8OcsKy/Ug4gFMbjGLsAdiHQ90A8yIY
	Am3Sb6uK9EcjbII2zEGViKM8gJwBJnETJbiHRoc7AR19uWEZeDmYwGtdST9pL7nSH5U7CUKUij3A3
	xgs+tMnmgCc8eFitw0pPkaBSghGmwcAk59AAaJSsac05S0uCf/uiJZCeUTsjoIpvxJntUJtEEkriQ
	juTV91DtyI/qCXpuvFnQq+fqBMNwYCu/ZRiu2OZxWGjkmlCxO2yiMQmZGf+K5pKVzyQFI3qrfR483
	id3aQfoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snzMQ-00000005R8k-0Qzo;
	Tue, 10 Sep 2024 11:48:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snzMK-00000005R6X-3f4r
	for barebox@lists.infradead.org;
	Tue, 10 Sep 2024 11:48:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snzMJ-0000q6-52; Tue, 10 Sep 2024 13:48:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snzMI-006sx6-Op; Tue, 10 Sep 2024 13:48:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snzMI-00CWph-0j;
	Tue, 10 Sep 2024 13:48:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Sep 2024 13:48:29 +0200
Message-Id: <20240910114832.2984195-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240910114832.2984195-1-a.fatoum@pengutronix.de>
References: <20240910114832.2984195-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_044837_000490_4F7FDEFA 
X-CRM114-Status: GOOD (  12.81  )
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
Subject: [PATCH 1/4] Revert "dma: debug: detect repeated DMA sync"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It turns out this check is too restrictive. The DMA API doesn't require
a 1:1 relation between mapping and sync. It's permissible to map a big
chunk and then managing it as a number of buffers that are synced
individually.

This is currently the case with the Designware MAC driver and having
this check here leads to a copious amount of false positives.

A proper check would involve keeping account of every individual cache
line and assigning it either a device or CPU owned flag in the common
code.

We'll implement this on top of KASAN in the follow-up commit, so let's
revert commit 1ad4b32702ddc3b801e8cd35441d2a9b3a41bb19 first to have
a clean slate.

Fixes: 1ad4b32702dd ("dma: debug: detect repeated DMA sync")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/dma/debug.c | 22 ++--------------------
 1 file changed, 2 insertions(+), 20 deletions(-)

diff --git a/drivers/dma/debug.c b/drivers/dma/debug.c
index befe837d6cd8..7bf0be1e1ff3 100644
--- a/drivers/dma/debug.c
+++ b/drivers/dma/debug.c
@@ -13,7 +13,6 @@ struct dma_debug_entry {
 	dma_addr_t       dev_addr;
 	size_t           size;
 	int              direction;
-	bool             dev_owned;
 };
 
 static const char *dir2name[] = {
@@ -123,7 +122,6 @@ void debug_dma_map(struct device *dev, void *addr,
 	entry->dev_addr = dev_addr;
 	entry->size = size;
 	entry->direction = direction;
-	entry->dev_owned = true;
 
 	list_add(&entry->list, &dma_mappings);
 
@@ -166,17 +164,9 @@ void debug_dma_sync_single_for_cpu(struct device *dev,
 	struct dma_debug_entry *entry;
 
 	entry = dma_debug_entry_find(dev, dma_handle, size);
-	if (!entry) {
+	if (!entry)
 		dma_dev_warn(dev, "sync for CPU of never-mapped %s buffer 0x%llx+0x%zx!\n",
 			     dir2name[direction], (u64)dma_handle, size);
-		return;
-	}
-
-	if (!entry->dev_owned)
-		dma_dev_warn(dev, "unexpected sync for CPU of already CPU-mapped %s buffer 0x%llx+0x%zx!\n",
-			     dir2name[direction], (u64)dma_handle, size);
-
-	entry->dev_owned = false;
 }
 
 void debug_dma_sync_single_for_device(struct device *dev,
@@ -192,15 +182,7 @@ void debug_dma_sync_single_for_device(struct device *dev,
 	 * corruption
 	 */
 	entry = dma_debug_entry_find(dev, dma_handle, size);
-	if (!entry) {
+	if (!entry)
 		dma_dev_warn(dev, "Syncing for device of never-mapped %s buffer 0x%llx+0x%zx!\n",
 			     dir2name[direction], (u64)dma_handle, size);
-		return;
-	}
-
-	if (entry->dev_owned)
-		dma_dev_warn(dev, "unexpected sync for device of already device-mapped %s buffer 0x%llx+0x%zx!\n",
-			     dir2name[direction], (u64)dma_handle, size);
-
-	entry->dev_owned = true;
 }
-- 
2.39.2



