Delivery-date: Mon, 25 Nov 2024 09:38:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUbs-00085E-1t
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 09:38:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUbs-0002dL-Au
	for lore@pengutronix.de; Mon, 25 Nov 2024 09:38:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i94oxLOk8ZVy/br0yUBYQHOwu4QxtwoUJ6hqsqZhNLQ=; b=Hh/STnguOZcz3EPWdoFxHDOLWZ
	LPYPYQZAODTrRgpk7ydNfc1RrwIWJfxZzO55UCnpEXnRrBRXR23zUjZIfIcYJFObQu3Jbvxoa2IcW
	Vcj/Z2ZgLN06xJ7NdYskAxf0mOQNjGNDeRj3FMfzyQ+n25HRZAC/LU/VkBl1mboFVZIV5TRYTfe2d
	drUYI8sZo4pby3D5xYsHnEZdonPzOZsGeaeGK6SPCZGXKFQo2GefFL6UEW51NyDDx3DpoDIALhGO8
	2IY6Xv0mOoCI3lcB5wKbZxg+4TR+qmVs9FK0ksD0VRDMAQrgPQGDZjMgdvVqQ3VVI6H77uQqhMgoO
	Czknc0vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUbU-00000007PUr-1e5m;
	Mon, 25 Nov 2024 08:37:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUUY-00000007Nu7-2sCf
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 08:30:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFUUV-0001SM-Tv; Mon, 25 Nov 2024 09:30:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFUUU-00033R-35;
	Mon, 25 Nov 2024 09:30:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFUUV-002IvD-02;
	Mon, 25 Nov 2024 09:30:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 09:30:42 +0100
Message-Id: <20241125083042.482415-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125083042.482415-1-a.fatoum@pengutronix.de>
References: <20241125083042.482415-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_003046_733148_2D9E7092 
X-CRM114-Status: GOOD (  14.60  )
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
Subject: [PATCH v2 3/3] reset_source: give reset_source_set_device a priority parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All users of reset_source_set_device() are PMICs, which should set a
higher reset priority that the default anyway, therefore let's give the
function a priority parameter and set a default priority of 200 as
opposed to RESET_SOURCE_DEFAULT_PRIORITY, which expands to 100.

Setting a higher priority is important as PMICs tend to power cycle the
SoC, so asking the SoC about the reset source would then always return
POR.

In my particular case, the i.MX watchdog driver sees that the reset
source is WDG and then it sets POR with a priority of 101, overriding
what the PMIC determined.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 common/reset_source.c  | 5 ++---
 drivers/mfd/da9053.c   | 2 +-
 drivers/mfd/da9063.c   | 2 +-
 drivers/mfd/pca9450.c  | 2 +-
 include/reset_source.h | 6 ++++--
 5 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/common/reset_source.c b/common/reset_source.c
index 495f3d527a84..bd1efe073664 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -74,10 +74,9 @@ void reset_source_set_prinst(enum reset_src_type st,
 }
 EXPORT_SYMBOL(reset_source_set_prinst);
 
-void reset_source_set_device(struct device *dev, enum reset_src_type st)
+void reset_source_set_device(struct device *dev, enum reset_src_type st,
+			     unsigned int priority)
 {
-	unsigned int priority = RESET_SOURCE_DEFAULT_PRIORITY;
-
 	of_property_read_u32(dev->of_node, "reset-source-priority", &priority);
 
 	__reset_source_set(dev, st, priority, -1);
diff --git a/drivers/mfd/da9053.c b/drivers/mfd/da9053.c
index cbfb62cef9cd..c8ad8aa0eeed 100644
--- a/drivers/mfd/da9053.c
+++ b/drivers/mfd/da9053.c
@@ -224,7 +224,7 @@ static void da9053_detect_reset_source(struct da9053_priv *da9053)
 	else
 		return;
 
-	reset_source_set_device(da9053->dev, type);
+	reset_source_set_device(da9053->dev, type, 200);
 
 	ret = da9053_reg_write(da9053, DA9053_FAULTLOG_REG, val);
 	if (ret < 0)
diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index 04bcad88040c..4842ead6f8b9 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -309,7 +309,7 @@ static void da9063_detect_reset_source(struct da9063 *priv)
 	else
 		return;
 
-	reset_source_set_device(priv->dev, type);
+	reset_source_set_device(priv->dev, type, 200);
 }
 
 static void da9063_restart(struct restart_handler *rst)
diff --git a/drivers/mfd/pca9450.c b/drivers/mfd/pca9450.c
index 744d529faf93..2511e662c3df 100644
--- a/drivers/mfd/pca9450.c
+++ b/drivers/mfd/pca9450.c
@@ -58,7 +58,7 @@ static int pca9450_get_reset_source(struct device *dev, struct regmap *map)
 		type = RESET_UKWN;
 	}
 
-	reset_source_set_device(dev, type);
+	reset_source_set_device(dev, type, 200);
 
 	return 0;
 };
diff --git a/include/reset_source.h b/include/reset_source.h
index 3766208b6d11..cc1fe60d4615 100644
--- a/include/reset_source.h
+++ b/include/reset_source.h
@@ -28,7 +28,8 @@ const char *reset_source_to_string(enum reset_src_type st);
 int reset_source_get_instance(void);
 struct device *reset_source_get_device(void);
 
-void reset_source_set_device(struct device *dev, enum reset_src_type st);
+void reset_source_set_device(struct device *dev, enum reset_src_type st,
+			     unsigned int priority);
 void reset_source_set_prinst(enum reset_src_type,
 			     unsigned int priority, int instance);
 
@@ -55,7 +56,8 @@ static inline struct device *reset_source_get_device(void)
 }
 
 static inline void reset_source_set_device(struct device *dev,
-					   enum reset_src_type st)
+					   enum reset_src_type st,
+					   unsigned int priority)
 {
 }
 
-- 
2.39.5



