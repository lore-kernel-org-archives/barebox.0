Delivery-date: Fri, 17 May 2024 07:58:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7qbn-000rRN-0f
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 07:58:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7qbk-0007pi-Sb
	for lore@pengutronix.de; Fri, 17 May 2024 07:58:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bCDLwzcucW2fjJgipjyWnTn3a8yNvK4ypAYeunOXglE=; b=049xakPAO2wPboysGzc/oXMdhr
	2y5dag108QWSVW3t6rBiZVPvI6ZWKr1sfgkfwNeUcAhleK+SgOvpUlSXlTNp/cyZnGKVzs/+0B9TI
	WD4sDl2s/tIHZ1dKCdw0zzcJyUXijP/jpMSMs+FPseybwNe+90af8K4aVYP/YYXSNShyUa0ByeM9K
	T795C/wa2l3wDEvjF57dj/M/z95w8O0GdwmpSshI+4vTZVOXPuPO/Qn+F8kIHYlje6yHANSuwFFJL
	GpXk60mtipmCAvnQw5aqZlqLepKrri6RtDfsRF2U3Mt/3eR4AFz95C5czQ6DGmkXKKagcK/i5QnA3
	n99G1FeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7qbN-00000006tu4-0tRp;
	Fri, 17 May 2024 05:57:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7qbK-00000006tta-35IR
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 05:57:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qbJ-0007kW-E6; Fri, 17 May 2024 07:57:53 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qbJ-001pKk-1g; Fri, 17 May 2024 07:57:53 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qbI-008V78-32;
	Fri, 17 May 2024 07:57:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 07:57:51 +0200
Message-Id: <20240517055751.2016310-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_225754_805474_FF04B39A 
X-CRM114-Status: UNSURE (   9.82  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] driver: move some inline getters for struct device into device.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The purpose of device.h is to contain only the device related
definitions and have as few header dependencies as possible.

dev_of_node() and dev_is_dma_coherent() are accessors for struct device
and have no other dependencies, so move them into this header as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/device.h | 21 +++++++++++++++++++++
 include/driver.h | 21 ---------------------
 2 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/include/device.h b/include/device.h
index 8c3561e5a2f6..ad1bc7ca1eea 100644
--- a/include/device.h
+++ b/include/device.h
@@ -108,4 +108,25 @@ struct device_alias {
 	char name[];
 };
 
+static inline struct device_node *dev_of_node(struct device *dev)
+{
+	return IS_ENABLED(CONFIG_OFDEVICE) ? dev->of_node : NULL;
+}
+
+static inline bool dev_is_dma_coherent(struct device *dev)
+{
+	if (dev) {
+		switch (dev->dma_coherent) {
+		case DEV_DMA_NON_COHERENT:
+			return false;
+		case DEV_DMA_COHERENT:
+			return true;
+		case DEV_DMA_COHERENCE_DEFAULT:
+			break;
+		}
+	}
+
+	return IS_ENABLED(CONFIG_ARCH_DMA_DEFAULT_COHERENT);
+}
+
 #endif
diff --git a/include/driver.h b/include/driver.h
index 3401ab4f07f4..100761c7657e 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -677,27 +677,6 @@ int device_match_of_modalias(struct device *dev, struct driver *drv);
 struct device *device_find_child(struct device *parent, void *data,
 				 int (*match)(struct device *dev, void *data));
 
-static inline struct device_node *dev_of_node(struct device *dev)
-{
-	return IS_ENABLED(CONFIG_OFDEVICE) ? dev->of_node : NULL;
-}
-
-static inline bool dev_is_dma_coherent(struct device *dev)
-{
-	if (dev) {
-		switch (dev->dma_coherent) {
-		case DEV_DMA_NON_COHERENT:
-			return false;
-		case DEV_DMA_COHERENT:
-			return true;
-		case DEV_DMA_COHERENCE_DEFAULT:
-			break;
-		}
-	}
-
-	return IS_ENABLED(CONFIG_ARCH_DMA_DEFAULT_COHERENT);
-}
-
 static inline void *dev_get_priv(const struct device *dev)
 {
 	return dev->priv;
-- 
2.39.2



