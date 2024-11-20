Delivery-date: Wed, 20 Nov 2024 14:07:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDkQd-004Enl-2J
	for lore@lore.pengutronix.de;
	Wed, 20 Nov 2024 14:07:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDkQd-0001V4-1q
	for lore@pengutronix.de; Wed, 20 Nov 2024 14:07:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RXdBYugA669S0Dh0WmkF8VGNSDErGvwR1V6aWTCIedg=; b=MWjPm4ZM1JHh50baCDXStHOR4m
	OkFgVRrGOvcecYK6kKwHlnA1Fl6Z+Vg459blboev5XkCg4AvzK8kFiFb9pO/PzaTyyycCTXLaMX6F
	EZxdOSW2Cdwr/Oo2FASGO/oiG+75A6SWwYeTBKjqCzoDqlLlgeb+e6/FRelwRNybK95yz1F+6GF9B
	lexk8GprSeVOlDdl1rvVlWy4x9uutMpPK2xCrfHHAlJovf/I8PBppeUk9/EfJm1OT9GaJSFhV2v0Z
	94Rl99OPSeCB6DeLuQquT2T0oC+MsNNwPqTBoRS3Ox7WsdhIM7trINjUJsNk156Wvm+6Ay5mGbLbu
	IwZ82a9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDkQ0-0000000FNQj-0knp;
	Wed, 20 Nov 2024 13:06:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDkPt-0000000FNP3-0acp
	for barebox@lists.infradead.org;
	Wed, 20 Nov 2024 13:06:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDkPq-0001DM-HK; Wed, 20 Nov 2024 14:06:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDkPq-001kPD-18;
	Wed, 20 Nov 2024 14:06:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDkPq-00GDq2-0s;
	Wed, 20 Nov 2024 14:06:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 20 Nov 2024 14:06:40 +0100
Message-Id: <20241120130640.3866362-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241120130640.3866362-1-a.fatoum@pengutronix.de>
References: <20241120130640.3866362-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241120_050645_197256_67FE13C8 
X-CRM114-Status: GOOD (  13.51  )
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
Subject: [PATCH 3/3] reset_source: give reset_source_set_device a priority parameter
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
index 89eca9f890e3..73b5cecbeda5 100644
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



