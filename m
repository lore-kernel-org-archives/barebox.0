Delivery-date: Thu, 11 Jan 2024 17:21:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNxnt-00DATa-2R
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 17:21:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNxnt-0001vk-6Y
	for lore@pengutronix.de; Thu, 11 Jan 2024 17:21:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lvsHCvUrEdJdLqn5pHuzmMjZ1E6pD7omvtdp5IypzUQ=; b=cuxezMe7HSxEN2mBe2gXIbzxsN
	ji0aQGrQYyVa3z1KLaZfjClKmJi2nhpC2Eij9WuqFA738oJboJyHVoU1gt7jzr/BBZr3DU4eaMNd0
	DzN4Ph5DcrbyUkeXTFgKjzp9IK0Fab8CeGr3yLHNWd99xb2rQq/R7ZB5laBk5pD/5icthw7FoQg8K
	EfibK3S/u9ROhwR2PPqRh3nbWHRFvUSBhDnix3cex7B7ej1wpoPDoK/pZ3w3dmk2wycixqHsEonKo
	Zobx1c6hE1gOsAGq2FVZ8gmk2QacFkFT+2TNO9JXzvPJThIUGKcA+Y9VeHHVA4fJSUgHMAFHL30fB
	mfhx65TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNxmi-000a2L-0g;
	Thu, 11 Jan 2024 16:20:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNxmf-000a1B-2h
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 16:19:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNxmd-0001e0-K6; Thu, 11 Jan 2024 17:19:55 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNxmd-001y0N-7U; Thu, 11 Jan 2024 17:19:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNxmd-009Y6v-0R;
	Thu, 11 Jan 2024 17:19:55 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Jan 2024 17:19:51 +0100
Message-Id: <20240111161951.2276057-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_081957_873226_0755F7E4 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! of: populate new device_d::dma_coherent attribute
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dev may be NULL, e.g. when

  dma_sync_single_for_cpu(NULL,

is called. Such instances are broken anyway, but we still have them,
e.g. in Raspberry Pi code for mailbox, so add a NULL check.

Fixes qemu-rpi0@multi_v7 CI breakage on next.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/driver.h | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/include/driver.h b/include/driver.h
index c23404ca16fb..43d002f66dbe 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -730,13 +730,15 @@ static inline struct device_node *dev_of_node(struct device *dev)
 
 static inline bool dev_is_dma_coherent(struct device *dev)
 {
-	switch (dev->dma_coherent) {
-	case DEV_DMA_NON_COHERENT:
-		return false;
-	case DEV_DMA_COHERENT:
-		return true;
-	case DEV_DMA_COHERENCE_DEFAULT:
-		break;
+	if (dev) {
+		switch (dev->dma_coherent) {
+		case DEV_DMA_NON_COHERENT:
+			return false;
+		case DEV_DMA_COHERENT:
+			return true;
+		case DEV_DMA_COHERENCE_DEFAULT:
+			break;
+		}
 	}
 
 	return IS_ENABLED(CONFIG_ARCH_DMA_DEFAULT_COHERENT);
-- 
2.39.2



