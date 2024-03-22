Delivery-date: Fri, 22 Mar 2024 15:25:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rnfpn-00Hant-0I
	for lore@lore.pengutronix.de;
	Fri, 22 Mar 2024 15:25:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rnfpm-0003r6-D2
	for lore@pengutronix.de; Fri, 22 Mar 2024 15:25:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v0mxfpfl7OfKvefCHOp0XwfCmwdkEkzus8uc4uzGjAg=; b=thtyh3kdf+mgOa
	OqFLlrCxahTSgulJ1SdCkj7u+T6ckesY7jwapTNaTIkt4xjCyR592mh4UKNrojTr1wpI0X0VTIDWh
	c+cLEVNh2nLhayAYe8CubypwHG/7gQ/sj/QZn3rWWA5gT66yattIUQnwEriMphcQ751IVO68MK5Yu
	PU3xHSnTiAnjURTxtK39KchQzNxN++ECpnJCbFTP7oFytnT3cZxBTp9pnIbmkvUk9p16eeOPEh6Re
	sZIRwgM9u+qHhI+kC9Su44f3xx3ICoJ7IeeWt5/5B0649AxfeZ2Kwr0E5dnDDA1zC6bdVvMAV12CK
	SeDNaSB4JwTOKiSovy7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnfoy-00000007WeF-2CFK;
	Fri, 22 Mar 2024 14:24:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnfou-00000007Wcl-1l6e
	for barebox@lists.infradead.org;
	Fri, 22 Mar 2024 14:24:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rnfop-0003bi-SE; Fri, 22 Mar 2024 15:24:27 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rnfop-007rTT-4N; Fri, 22 Mar 2024 15:24:27 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rnfop-0047SY-0A;
	Fri, 22 Mar 2024 15:24:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 22 Mar 2024 15:24:24 +0100
Message-Id: <20240322142424.981863-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_072432_556019_15BAE070 
X-CRM114-Status: GOOD (  13.22  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH master] dma: correctly honour dma-noncoherent device tree property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Most barebox platforms are either completely cache-coherent with respect to
DMA or completely non-coherent. To avoid having to walk the device tree for
non-existent dma-coherent and dma-noncohrent properties, barebox thus
only does this when CONFIG_OF_DMA_COHERENCY is selected.

CONFIG_OF_DMA_COHERENCY is to be selected by platforms that have mixed
coherency for DMA masters. Forgetting to select this option can be
annoying to debug, which is why devinfo will inform the user of default
DMA coherency assignments:

  DMA Coherent: false (default)

In order to allow devinfo to differentiate implicit default and explicit
device tree DMA coherency configuration, the struct device::dma_coherent
member is not of boolean type, but Instead an enumeration that besides
coherent and non-coherent also encodes a DEV_DMA_COHERENCE_DEFAULT state.

In practice though, a boolean was saved in this dma_coherent member,
leading to any dma-noncoherent property being ignored and the default
coherency setting being taken for the node.

By fixing the type confusion, we restore working Ethernet on the
StarFive JH7100, which is the only SoC we currently support that
requires /soc/dma-noncohrent to be set for proper operation of its DMA
masters.

Fixes: fbdea8fd54fe ("of: populate new device_d::dma_coherent attribute")
Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/platform.c | 34 +++++++++++++++++++++++-----------
 1 file changed, 23 insertions(+), 11 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index ec1482b27797..e2c252b1ffee 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -90,6 +90,21 @@ static struct device_node *of_get_next_dma_parent(const struct device_node *np)
 	return args.np;
 }
 
+static enum dev_dma_coherence of_dma_get_coherence(struct device_node *node)
+{
+	if (IS_ENABLED(CONFIG_OF_DMA_COHERENCY)) {
+		while (node) {
+			if (of_property_read_bool(node, "dma-coherent"))
+				return DEV_DMA_COHERENT;
+			if (of_property_read_bool(node, "dma-noncoherent"))
+				return DEV_DMA_NON_COHERENT;
+			node = of_get_next_dma_parent(node);
+		}
+	}
+
+	return DEV_DMA_COHERENCE_DEFAULT;
+}
+
 /**
  * of_dma_is_coherent - Check if device is coherent
  * @np:	device node
@@ -101,17 +116,14 @@ static struct device_node *of_get_next_dma_parent(const struct device_node *np)
  */
 bool of_dma_is_coherent(struct device_node *node)
 {
-	if (IS_ENABLED(CONFIG_OF_DMA_COHERENCY)) {
-		while (node) {
-			if (of_property_read_bool(node, "dma-coherent"))
-				return true;
-			if (of_property_read_bool(node, "dma-noncoherent"))
-				return false;
-			node = of_get_next_dma_parent(node);
-		}
+	switch (of_dma_get_coherence(node)) {
+	case DEV_DMA_COHERENT:
+		return true;
+	case DEV_DMA_NON_COHERENT:
+		return false;
+	case DEV_DMA_COHERENCE_DEFAULT:
+		return IS_ENABLED(CONFIG_ARCH_DMA_DEFAULT_COHERENT);
 	}
-
-	return IS_ENABLED(CONFIG_ARCH_DMA_DEFAULT_COHERENT);
 }
 EXPORT_SYMBOL_GPL(of_dma_is_coherent);
 
@@ -129,7 +141,7 @@ static void of_dma_configure(struct device *dev, struct device_node *np)
 	}
 
 	dev->dma_offset = offset;
-	dev->dma_coherent = of_dma_is_coherent(np);
+	dev->dma_coherent = of_dma_get_coherence(np);
 }
 
 /**
-- 
2.39.2



