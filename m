Delivery-date: Sun, 15 Dec 2024 10:55:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMlLC-008MWg-1K
	for lore@lore.pengutronix.de;
	Sun, 15 Dec 2024 10:55:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMlLC-0005pY-8l
	for lore@pengutronix.de; Sun, 15 Dec 2024 10:55:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jndj0lyejrS+23t/9EEhtdey7IA2ZG1aW8/t4oc5JDw=; b=K7KQEQtoldTElyfPD3mqCfqJTv
	uu8jI5/ICVSsTgyR1QTseBw1/twtBw83p3TlZS+vHPvEvRphQ0Yx+ovb/e04fd8XZ2NiYSwjnPXuV
	w/tyCWfiy9eXop5pnjYkATbfDpShJxZPqGmRn4xdl0hpsVR+8BqDwbVH4Z4EMV5K4peTMgabtWYlq
	t6fpCGiEyR4pHVs+gqPUYoCi3U0+tdi8SxpUFBL9qrRBv8holcvdD++QCG+kuzqsiycshLFraKvtD
	yoUjMcZYbfrPfYkJtDv/Q0jrFacG+8lNG9qAt6+XCGjkTAwWwau7ZPg3e7O06iIrt5HQO1iqsBeUb
	aIBmPPIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMlKU-00000007iF7-3yUa;
	Sun, 15 Dec 2024 09:54:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tMlKS-00000007iEJ-2EmK
	for barebox@lists.infradead.org;
	Sun, 15 Dec 2024 09:54:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tMlKJ-0005cl-3v; Sun, 15 Dec 2024 10:54:15 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tMlKG-003VUj-1T;
	Sun, 15 Dec 2024 10:54:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tMlKH-00FlD9-0S;
	Sun, 15 Dec 2024 10:54:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 15 Dec 2024 10:54:12 +0100
Message-Id: <20241215095412.3756337-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241215095412.3756337-1-a.fatoum@pengutronix.de>
References: <20241215095412.3756337-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241215_015424_569197_443BA5FA 
X-CRM114-Status: GOOD (  14.51  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/3] i2c: order dynamically numbered adapter after highest alias id
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of assuming there is at most 32 aliased adapters, let's
determine at runtime how many aliases we have and assign unaliased
adapters IDs directly following the highest aliased id.

This has the added benefit that we may avoid moving around adapter
numbers for many boards.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/i2c.c | 21 ++++++++++++++++++---
 drivers/of/base.c | 24 ++++++++++++++++++++++++
 include/of.h      |  6 ++++++
 3 files changed, 48 insertions(+), 3 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 017842f026dd..0d11a61593d8 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -685,6 +685,20 @@ void i2c_parse_fw_timings(struct device *dev, struct i2c_timings *t,
 }
 EXPORT_SYMBOL_GPL(i2c_parse_fw_timings);
 
+/**
+ * i2c_first_nonreserved_index() - get the first index that is not reserved
+ */
+static int i2c_first_nonreserved_index(void)
+{
+	int max;
+
+	max = of_alias_get_highest_id("i2c");
+	if (max < 0)
+		return 0;
+
+	return max + 1;
+}
+
 /**
  * i2c_add_numbered_adapter - declare i2c adapter, use static bus number
  * @adapter: the adapter to register (with adap->nr initialized)
@@ -711,9 +725,10 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 	if (adapter->nr < 0) {
 		int nr;
 
-		for (nr = 32;; nr++)
-			if (!i2c_get_adapter(nr))
-				break;
+		for (nr = i2c_first_nonreserved_index();
+		     i2c_get_adapter(nr); nr++)
+			;
+
 		adapter->nr = nr;
 	} else {
 		if (i2c_get_adapter(adapter->nr))
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 97b2306a75b1..125f24056eec 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -270,6 +270,30 @@ int of_alias_get_id(struct device_node *np, const char *stem)
 }
 EXPORT_SYMBOL_GPL(of_alias_get_id);
 
+/**
+ * of_alias_get_highest_id - Get highest alias id for the given stem
+ * @stem:	Alias stem to be examined
+ *
+ * The function travels the lookup table to get the highest alias id for the
+ * given alias stem.  It returns the alias id if found.
+ */
+int of_alias_get_highest_id(const char *stem)
+{
+	struct alias_prop *app;
+	int id = -ENODEV;
+
+	list_for_each_entry(app, &aliases_lookup, link) {
+		if (strcmp(app->stem, stem) != 0)
+			continue;
+
+		if (app->id > id)
+			id = app->id;
+	}
+
+	return id;
+}
+EXPORT_SYMBOL_GPL(of_alias_get_highest_id);
+
 int of_alias_get_id_from(struct device_node *root, struct device_node *np,
 			 const char *stem)
 {
diff --git a/include/of.h b/include/of.h
index c0577404c320..bc8afd9cf540 100644
--- a/include/of.h
+++ b/include/of.h
@@ -311,6 +311,7 @@ extern void of_alias_scan(void);
 extern int of_alias_get_id(struct device_node *np, const char *stem);
 extern int of_alias_get_id_from(struct device_node *root, struct device_node *np,
 				const char *stem);
+extern int of_alias_get_highest_id(const char *stem);
 extern const char *of_alias_get(struct device_node *np);
 extern int of_modalias_node(struct device_node *node, char *modalias, int len);
 
@@ -941,6 +942,11 @@ static inline int of_alias_get_id_from(struct device_node *root, struct device_n
 	return -ENOSYS;
 }
 
+static inline int of_alias_get_highest_id(const char *stem)
+{
+	return -ENOSYS;
+}
+
 static inline const char *of_alias_get(struct device_node *np)
 {
 	return NULL;
-- 
2.39.5



