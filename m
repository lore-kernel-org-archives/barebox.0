Delivery-date: Wed, 25 Mar 2026 12:48:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5Min-004uFa-05
	for lore@lore.pengutronix.de;
	Wed, 25 Mar 2026 12:48:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5Mim-0000JU-98
	for lore@pengutronix.de; Wed, 25 Mar 2026 12:48:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z419+v5eDr07kN37AIflbXZ56DxwmK3i1qBoNFP3YtE=; b=qXLN35SHaL6ODhvAmCk7ZtDlfn
	ySRu876c4y72foJUgo5ABGl0oOdktgSlH/ox6jV5FOS8DzgJE9YlN3BgAgLmsHyqRvxte0Qzi6VCK
	vkzbV3uHGBB4SrucM3rCHiueP2OoKiliduHRIfwgDE7ASHbokq8Mv9QSt2MNCUwHEkyoCNfPb1dzd
	45erQYIHJsjcdKYI2d8rek1XFhCAhpPKxUXCFy4HUnftn+EqI6HKxdQO9wwB2d94irlSsDON5qV6h
	rfHzeig6U7NseXhrC5PVznbZSKZ/4iraEc9VjcMc3J4srfHkFdzJUJGhX0SVyqVrKRgwJI3gpoi7i
	jDFgYH9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5MiN-00000003IhU-0srv;
	Wed, 25 Mar 2026 11:47:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5MiK-00000003Ifi-1Xbk
	for barebox@lists.infradead.org;
	Wed, 25 Mar 2026 11:47:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w5MiI-00005e-LS; Wed, 25 Mar 2026 12:47:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w5MiI-0023MC-1W;
	Wed, 25 Mar 2026 12:47:54 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w5MiI-00000009hXd-1Wzr;
	Wed, 25 Mar 2026 12:47:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 25 Mar 2026 12:42:46 +0100
Message-ID: <20260325114753.2249763-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260325114753.2249763-1-a.fatoum@pengutronix.de>
References: <20260325114753.2249763-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_044756_406034_42011922 
X-CRM114-Status: GOOD (  14.64  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] serial: introduce clk_get_enabled_for_console()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For all serial drivers that call clk_get_for_console() followed
by clk_enable(), while checking both for errors, switch over to
a new clk_get_enabled_for_console().

This makes code more concise and allows ignoring a specific clk_enable
error code in the next commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/serial_lpuart.c   | 12 +++---------
 drivers/serial/serial_lpuart32.c | 12 +++---------
 drivers/serial/serial_ns16550.c  |  9 +++------
 drivers/serial/serial_stm32.c    | 10 ++--------
 include/console.h                | 15 +++++++++++++++
 include/linux/clk.h              | 28 ++++++++++++++++++++++++++++
 6 files changed, 54 insertions(+), 32 deletions(-)

diff --git a/drivers/serial/serial_lpuart.c b/drivers/serial/serial_lpuart.c
index 8bbef08309f9..d9416d538cc5 100644
--- a/drivers/serial/serial_lpuart.c
+++ b/drivers/serial/serial_lpuart.c
@@ -131,16 +131,10 @@ static int lpuart_serial_probe(struct device *dev)
 	}
 	lpuart->base = IOMEM(lpuart->io->start);
 
-	lpuart->clk = clk_get_for_console(dev, NULL);
+	lpuart->clk = clk_get_enabled_for_console(dev, NULL);
 	if (IS_ERR(lpuart->clk)) {
-		ret = PTR_ERR(lpuart->clk);
-		dev_err(dev, "Failed to get UART clock %d\n", ret);
-		goto io_release;
-	}
-
-	ret = clk_enable(lpuart->clk);
-	if (ret) {
-		dev_err(dev, "Failed to enable UART clock %d\n", ret);
+		ret = dev_errp_probe(dev, lpuart->clk,
+				     "Failed to get/enable UART clock\n");
 		goto io_release;
 	}
 
diff --git a/drivers/serial/serial_lpuart32.c b/drivers/serial/serial_lpuart32.c
index 25f0782e026e..e1ba872849ac 100644
--- a/drivers/serial/serial_lpuart32.c
+++ b/drivers/serial/serial_lpuart32.c
@@ -119,16 +119,10 @@ static int lpuart32_serial_probe(struct device *dev)
 	}
 	lpuart32->base = IOMEM(lpuart32->io->start) + devtype->reg_offs;
 
-	lpuart32->clk = clk_get_for_console(dev, NULL);
+	lpuart32->clk = clk_get_enabled_for_console(dev, NULL);
 	if (IS_ERR(lpuart32->clk)) {
-		ret = PTR_ERR(lpuart32->clk);
-		dev_err(dev, "Failed to get UART clock %d\n", ret);
-		goto io_release;
-	}
-
-	ret = clk_enable(lpuart32->clk);
-	if (ret) {
-		dev_err(dev, "Failed to enable UART clock %d\n", ret);
+		ret = dev_errp_probe(dev, lpuart32->clk,
+				     "Failed to get/enable UART clock\n");
 		goto io_release;
 	}
 
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 61e294a38c4c..b220982450dd 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -529,15 +529,12 @@ static int ns16550_probe(struct device *dev)
 		priv->plat.clock = devtype->clk_default;
 
 	if (!priv->plat.clock) {
-		priv->clk = clk_get_for_console(dev, NULL);
+		priv->clk = clk_get_enabled_for_console(dev, NULL);
 		if (IS_ERR(priv->clk)) {
-			ret = PTR_ERR(priv->clk);
-			dev_err(dev, "failed to get clk (%d)\n", ret);
+			ret = dev_errp_probe(dev, priv->clk,
+					     "failed to get/enable clk\n");
 			goto release_region;
 		}
-		ret = clk_enable(priv->clk);
-		if (ret)
-			goto clk_put;
 		priv->plat.clock = clk_get_rate(priv->clk);
 	}
 
diff --git a/drivers/serial/serial_stm32.c b/drivers/serial/serial_stm32.c
index f61d04aed440..1cf58be09e2f 100644
--- a/drivers/serial/serial_stm32.c
+++ b/drivers/serial/serial_stm32.c
@@ -165,16 +165,10 @@ static int stm32_serial_probe(struct device *dev)
 	stm32->stm32f4 = info->stm32f4;
 	stm32->uart_enable_bit = info->uart_enable_bit;
 
-	stm32->clk = clk_get_for_console(dev, NULL);
+	stm32->clk = clk_get_enabled_for_console(dev, NULL);
 	if (IS_ERR(stm32->clk)) {
 		ret = dev_err_probe(dev, PTR_ERR(stm32->clk),
-				    "Failed to get UART clock\n");
-		goto io_release;
-	}
-
-	ret = clk_enable(stm32->clk);
-	if (ret) {
-		dev_err_probe(dev, ret, "Failed to enable UART clock\n");
+				    "Failed to get/enable UART clock\n");
 		goto io_release;
 	}
 
diff --git a/include/console.h b/include/console.h
index b163c6684ee1..d5e18bde61c8 100644
--- a/include/console.h
+++ b/include/console.h
@@ -282,4 +282,19 @@ static inline struct clk *clk_get_for_console(struct device *dev, const char *id
 	return clk;
 }
 
+static inline struct clk *clk_get_enabled_for_console(struct device *dev, const char *id)
+{
+	__always_unused unsigned baudrate;
+	struct clk *clk;
+
+	if (!IS_ENABLED(CONFIG_DEBUG_LL) || !of_device_is_stdout_path(dev, &baudrate))
+		return clk_get_enabled(dev, id);
+
+	clk = clk_get_enabled_if_available(dev, id);
+	if (clk == NULL)
+		dev_warn(dev, "couldn't get/enable clock (ignoring)\n");
+
+	return clk;
+}
+
 #endif
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 655e7a52e9b9..1cb8a1898e10 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -1270,4 +1270,32 @@ static inline struct clk *clk_get_if_available(struct device *dev, const char *i
 	return clk;
 }
 
+/**
+ * clk_get_enabled_if_available - get & enable clock, ignoring known unavailable clock controller
+ * @dev: device for clock "consumer"
+ * @id: clock consumer ID
+ *
+ * Return: a struct clk corresponding to the clock producer after enabling it, a
+ * valid IS_ERR() condition containing errno or NULL if it could
+ * be determined that the clock producer will never be probed in
+ * absence of modules.
+ */
+static inline struct clk *clk_get_enabled_if_available(struct device *dev,
+						       const char *id)
+{
+	struct clk *clk = clk_get_if_available(dev, id);
+	int ret;
+
+	if (IS_ERR_OR_NULL(clk))
+		return clk;
+
+	ret = clk_enable(clk);
+	if (ret) {
+		clk_put(clk);
+		return ERR_PTR(ret);
+	}
+
+	return clk;
+}
+
 #endif
-- 
2.47.3



