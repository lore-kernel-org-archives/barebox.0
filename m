Delivery-date: Mon, 11 Aug 2025 14:29:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRew-009KeI-1m
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:29:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulReg-0005fO-Cx
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:29:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cIC0wxf7Bv1fvimBJxQHnNwBLbcJKc4bM1o9eg1r3Eo=; b=KWuHAik8qE3HIWRyKARD5oRjPK
	p8IUXN+iK+slUXlLItS9zRRTm18p/X7Zm3kZLAfwEr3sxEeSmgR4DjDKTP220azA8XdzcVm1rOiZy
	JD6jy8OrNM1QlRwfO4jEq7BatqjMNGsW7W0M2aRE8NkXXktRLG22osqNpUFM8UByNXvLX/Pux4FrU
	FAAgbuNgEUE0lq02pdS5ON5rE9RSb/oh10UEPHqyRyi0PjlTEi38/sHoY7L+BA+mb1djiRq4PRn9F
	ej4L8guaywr7B3U4AI77SahEiDzPUIKOdIetMEXcnd9su2uM8fpmzX/rr5tuZ3qO+1Mt9axJ0zb1c
	4xvDJOzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdl-00000007df2-1XkG;
	Mon, 11 Aug 2025 12:28:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRde-00000007dVq-2U52
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdb-0004WP-0H; Mon, 11 Aug 2025 14:28:27 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:27:41 +0200
Message-Id: <20250811122824.1667791-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052830_650126_792B7B37 
X-CRM114-Status: GOOD (  10.83  )
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
Subject: [PATCH 01/44] driver: move device name definition into device.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These definitions are not tied to the driver support, so move them into
the better matching device.h header.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/device.h | 21 +++++++++++++++++++++
 include/driver.h | 20 --------------------
 2 files changed, 21 insertions(+), 20 deletions(-)

diff --git a/include/device.h b/include/device.h
index 965251e55240..7ef807f7d6b1 100644
--- a/include/device.h
+++ b/include/device.h
@@ -168,6 +168,27 @@ static inline struct device_node *dev_of_node(struct device *dev)
 	return IS_ENABLED(CONFIG_OFDEVICE) ? dev->of_node : NULL;
 }
 
+/* dynamically assign the next free id */
+#define DEVICE_ID_DYNAMIC	-2
+/* do not use an id (only one device available) */
+#define DEVICE_ID_SINGLE	-1
+
+static inline const char *dev_id(const struct device *dev)
+{
+	if (!dev)
+		return NULL;
+	return (dev->id != DEVICE_ID_SINGLE) ? dev->unique_name : dev->name;
+}
+
+static inline const char *dev_name(const struct device *dev)
+{
+	if (!dev)
+		return NULL;
+	return dev_id(dev) ?: dev->name;
+}
+
+int dev_set_name(struct device *dev, const char *fmt, ...) __printf(2, 3);
+
 static inline bool dev_is_dma_coherent(struct device *dev)
 {
 	if (dev) {
diff --git a/include/driver.h b/include/driver.h
index e1493177e435..c130a3cd63fd 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -60,11 +60,6 @@ struct driver {
 #define device_d device
 #define driver_d driver
 
-/* dynamically assign the next free id */
-#define DEVICE_ID_DYNAMIC	-2
-/* do not use an id (only one device available) */
-#define DEVICE_ID_SINGLE	-1
-
 /* Register devices and drivers.
  */
 int register_driver(struct driver *);
@@ -131,21 +126,6 @@ struct device *find_device(const char *str);
  */
 int get_free_deviceid(const char *name_template);
 
-static inline const char *dev_id(const struct device *dev)
-{
-	if (!dev)
-		return NULL;
-	return (dev->id != DEVICE_ID_SINGLE) ? dev->unique_name : dev->name;
-}
-
-static inline const char *dev_name(const struct device *dev)
-{
-	if (!dev)
-		return NULL;
-	return dev_id(dev) ?: dev->name;
-}
-
-int dev_set_name(struct device *dev, const char *fmt, ...) __printf(2, 3);
 int dev_add_alias(struct device *dev, const char *fmt, ...) __printf(2, 3);
 
 /*
-- 
2.39.5



