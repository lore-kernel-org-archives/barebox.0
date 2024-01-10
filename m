Delivery-date: Wed, 10 Jan 2024 17:02:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb2Z-00BoL3-0K
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 17:02:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb2Y-0002pb-DL
	for lore@pengutronix.de; Wed, 10 Jan 2024 17:02:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MbqkKq1U1Vr8JqfOq9XEbudmEUBCoH2FfO7XoOJBGos=; b=seXBOtQse46y1W4fAqQfP/Mhvf
	bQkfhGiW+vlMNg/Ecdti/Z+deOxkghRTIg9d2wgJ3R7y9IbHjkmIhJbN6tC5TqQJHeiRt8dYYqp3C
	jOo7pyjZM66zH4oI4+LyIDw5ONXvF5CBiMQQ6r+Q6D3TO49wkWaaOGS91sadHBb1FHRVqHmVfjCuL
	JnuM4WRxgKTvVzse4ICSq3aOoP6HRyo1TUaxOaLe92kzsrcjmADMZty1hdKcdLIt3JH+dWipHgOQH
	5UczPVGNf8r+czNnculnirkH2C8OrMkUB12rjDa8Y3rdiYIi72DMR4BiW5L/ToUWZ0YPakKucJG7d
	DDEm+Lsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb1S-00Cknb-0i;
	Wed, 10 Jan 2024 16:01:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb1E-00Ckav-1r
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 16:01:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1D-0002CB-Cr; Wed, 10 Jan 2024 17:01:27 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1C-001jv1-W2; Wed, 10 Jan 2024 17:01:27 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1C-00HLtL-2v;
	Wed, 10 Jan 2024 17:01:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Jan 2024 17:01:09 +0100
Message-Id: <20240110160112.4134162-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
References: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_080128_648173_27D38B95 
X-CRM114-Status: GOOD (  14.96  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 07/11] of: populate new device_d::dma_coherent attribute
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far, whether device DMA is coherent was a one-time global decision.
This is insufficient, because some platforms:

 - are cache coherent, while the architecture isn't in general, e.g.
   barebox support for ARM with CONFIG_MMU=y assumes non-coherent DMA,
   but LS1046A can be fully coherent.

 - have a mix of devices that snoop caches and devices that don't
   (StarFive JH7100).

To enable dev_dma_(map|unmap)_single to take the correct device-specific
action with regards to cache maintenance, provide dev_is_dma_coherent()
with semantics similar to what Linux provides.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - make dma_coherent a boolean (Sascha)
  - add dma_coherent unconditionally (Sascha)
  - Only print dma_coherent status for devices with OF node
---
 commands/devinfo.c    |  4 ++++
 drivers/of/platform.c |  1 +
 include/driver.h      | 22 ++++++++++++++++++++++
 3 files changed, 27 insertions(+)

diff --git a/commands/devinfo.c b/commands/devinfo.c
index aeb9c5533931..6001b00cfac8 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -105,6 +105,10 @@ static int do_devinfo(int argc, char *argv[])
 		if (dev->of_node) {
 			struct device *main_dev = dev->of_node->dev;
 
+			printf("DMA Coherent: %s%s\n",
+			       dev_is_dma_coherent(dev) ? "true" : "false",
+			       dev->dma_coherent == DEV_DMA_COHERENCE_DEFAULT ? " (default)" : "");
+
 			printf("Device node: %pOF", dev->of_node);
 			if (!main_dev) {
 			       printf(" (unpopulated)\n");
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index edfeb192d434..060fa3458bd2 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -129,6 +129,7 @@ static void of_dma_configure(struct device *dev, struct device_node *np)
 	}
 
 	dev->dma_offset = offset;
+	dev->dma_coherent = of_dma_is_coherent(np);
 }
 
 /**
diff --git a/include/driver.h b/include/driver.h
index b37b0ab192a3..c23404ca16fb 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -25,6 +25,12 @@ struct platform_device_id {
 	unsigned long driver_data;
 };
 
+enum dev_dma_coherence {
+	DEV_DMA_COHERENCE_DEFAULT = 0,
+	DEV_DMA_COHERENT,
+	DEV_DMA_NON_COHERENT,
+};
+
 /** @brief Describes a particular device present in the system */
 struct device {
 	/*! This member (and 'type' described below) is used to match
@@ -45,6 +51,8 @@ struct device {
 	 * something like eth0 or nor0. */
 	int id;
 
+	enum dev_dma_coherence dma_coherent;
+
 	struct resource *resource;
 	int num_resources;
 
@@ -720,6 +728,20 @@ static inline struct device_node *dev_of_node(struct device *dev)
 	return IS_ENABLED(CONFIG_OFDEVICE) ? dev->of_node : NULL;
 }
 
+static inline bool dev_is_dma_coherent(struct device *dev)
+{
+	switch (dev->dma_coherent) {
+	case DEV_DMA_NON_COHERENT:
+		return false;
+	case DEV_DMA_COHERENT:
+		return true;
+	case DEV_DMA_COHERENCE_DEFAULT:
+		break;
+	}
+
+	return IS_ENABLED(CONFIG_ARCH_DMA_DEFAULT_COHERENT);
+}
+
 static inline void *dev_get_priv(const struct device *dev)
 {
 	return dev->priv;
-- 
2.39.2



