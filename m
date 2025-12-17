Delivery-date: Wed, 17 Dec 2025 15:52:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVstN-00CVE5-1X
	for lore@lore.pengutronix.de;
	Wed, 17 Dec 2025 15:52:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVstM-0007O4-No
	for lore@pengutronix.de; Wed, 17 Dec 2025 15:52:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dOuUwdG+b+Zybm5TCU6bGbsRn5JWKf8OeA5exl93OY4=; b=QOi8+EwHm+cRrmLar4pcXWDbpE
	BPrR031pLplMMPP23vKGFmoXWaVTruOg1kHwuMXCIdOTBh24Bn1wz1J1HkiXFzSer+SYy2l5zID/f
	P93GhhT0/tldy1Uo6sqe6YPnOvTtO2TnqhQNMNFCn4Woz3atIoxDKXA+12vqFoSx31e3gcEl9txoU
	GBuo8Hk7wcyVMGeHqInU6P/FOfL+zeCHvHiKkk45wYWsGJvtON/hQ455WVwJ3W6c+lcQiIlVe+lBb
	T9+meVar5bLA+b36P9UNGWJz3hI1soUXWbBtG8j5nrUiR5MFgqF+fE4AHvkuPp4WcGKYZLrcTFhrx
	ngN99vFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVssm-00000006y6P-3Bfv;
	Wed, 17 Dec 2025 14:52:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVssi-00000006y4B-3Guv
	for barebox@lists.infradead.org;
	Wed, 17 Dec 2025 14:52:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vVssf-0007Ey-AZ; Wed, 17 Dec 2025 15:51:57 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vVssf-006824-0R;
	Wed, 17 Dec 2025 15:51:57 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vVssf-00000006dT9-07Dk;
	Wed, 17 Dec 2025 15:51:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 Dec 2025 15:51:53 +0100
Message-ID: <20251217145156.1581678-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_065200_814725_07582F48 
X-CRM114-Status: GOOD (  19.09  )
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
X-Spam-Status: No, score=-1.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] of: replace of_alias_get_highest_id() with of_alias_get_free_id()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_alias_get_highest_id() returns the highest alias id used for a stem.
This return value is not what the callers actually need. They need the
first free ID instead. Replace of_alias_get_highest_id() with
of_alias_get_free_id() which returns that value. This variant doesn't
need to handle the special case when no alias for a stem is found
in the device tree. In this case of_alias_get_highest_id() returned a
negative error code which must be handled. The new function is more
handy for the callers, it just returns 0 which can be used as a free
id.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/eeprom/at24.c |  2 +-
 drivers/i2c/i2c.c     | 16 +---------------
 drivers/of/base.c     | 10 +++++-----
 include/of.h          |  6 +++---
 4 files changed, 10 insertions(+), 24 deletions(-)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 5dc1980097..508ddbc7b3 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -429,7 +429,7 @@ static int at24_probe(struct device *dev)
 	} else {
 		devname = "eeprom";
 		devid = get_free_deviceid_from(devname,
-					       of_alias_get_highest_id(devname) + 1);
+					       of_alias_get_free_id(devname));
 	}
 
 	writable = !(chip.flags & AT24_FLAG_READONLY);
diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 7b11c35039..0f294a93bf 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -685,20 +685,6 @@ void i2c_parse_fw_timings(struct device *dev, struct i2c_timings *t,
 }
 EXPORT_SYMBOL_GPL(i2c_parse_fw_timings);
 
-/**
- * i2c_first_nonreserved_index() - get the first index that is not reserved
- */
-static int i2c_first_nonreserved_index(void)
-{
-	int max;
-
-	max = of_alias_get_highest_id("i2c");
-	if (max < 0)
-		return 0;
-
-	return max + 1;
-}
-
 /**
  * i2c_add_numbered_adapter - declare i2c adapter, use static bus number
  * @adapter: the adapter to register (with adap->nr initialized)
@@ -725,7 +711,7 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 	if (adapter->nr < 0) {
 		int nr;
 
-		for (nr = i2c_first_nonreserved_index();
+		for (nr = of_alias_get_free_id("i2c");
 		     i2c_get_adapter(nr); nr++)
 			;
 
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 0a7704ca10..ebedd7c56f 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -273,16 +273,16 @@ int of_alias_get_id(struct device_node *np, const char *stem)
 EXPORT_SYMBOL_GPL(of_alias_get_id);
 
 /**
- * of_alias_get_highest_id - Get highest alias id for the given stem
+ * of_alias_get_free_id - Get lowest free alias id for the given stem
  * @stem:	Alias stem to be examined
  *
  * The function travels the lookup table to get the highest alias id for the
- * given alias stem.  It returns the alias id if found.
+ * given alias stem. It returns the lowest free alias id.
  */
-int of_alias_get_highest_id(const char *stem)
+int of_alias_get_free_id(const char *stem)
 {
 	struct alias_prop *app;
-	int id = -ENODEV;
+	int id = -1;
 
 	list_for_each_entry(app, &aliases_lookup, link) {
 		if (strcmp(app->stem, stem) != 0)
@@ -292,7 +292,7 @@ int of_alias_get_highest_id(const char *stem)
 			id = app->id;
 	}
 
-	return id;
+	return id + 1;
 }
 EXPORT_SYMBOL_GPL(of_alias_get_highest_id);
 
diff --git a/include/of.h b/include/of.h
index d1efab13c7..a40f8bdd9d 100644
--- a/include/of.h
+++ b/include/of.h
@@ -410,7 +410,7 @@ extern void of_alias_scan(void);
 extern int of_alias_get_id(struct device_node *np, const char *stem);
 extern int of_alias_get_id_from(struct device_node *root, struct device_node *np,
 				const char *stem);
-extern int of_alias_get_highest_id(const char *stem);
+extern int of_alias_get_free_id(const char *stem);
 extern const char *of_alias_get(struct device_node *np);
 extern int of_modalias_node(struct device_node *node, char *modalias, int len);
 
@@ -1084,9 +1084,9 @@ static inline int of_alias_get_id_from(struct device_node *root, struct device_n
 	return -ENOSYS;
 }
 
-static inline int of_alias_get_highest_id(const char *stem)
+static inline int of_alias_get_free_id(const char *stem)
 {
-	return -ENOSYS;
+	return 0;
 }
 
 static inline const char *of_alias_get(struct device_node *np)
-- 
2.47.3



