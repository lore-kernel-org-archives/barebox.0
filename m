Delivery-date: Sat, 19 Jun 2021 06:53:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSyk-0004W1-EO
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:53:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSyh-0000ka-Op
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:53:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tDlLakJ5V11AM949nEy5+pP41UXuBrQvEZWSwT1iCFI=; b=IyISTxTA7Et2at
	mB41sufcEn7EQIjqeFchSErV61IMbz9HTc0xGAKqKDYKUHo01iAT5Dwc8Ybv78I21nEMxXCdvP02b
	DPeA5OIADxWqaHFCGBg0jmf669MM0X/9iTNAcBjY9ANCWBnnfCIg54Zfo30QGdb9Udf8pmzAiRcBA
	tuD7bXUp6aIfdhxK50pn0J38Nbs5N/HSRoMNb6md5mOOXrysxdrbAWujBp71+qr20UHch2WqY+DBH
	IemPRr19rKs7hxxWFmtsU17vBZqr3YKWR6gzlUEJQrGpk3wxeaI0+shb6elk1BnRcYWhaz+t+MLsM
	Nc9BGm7gVAs+0YgF1dag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luSxL-00GI1k-Bz; Sat, 19 Jun 2021 04:51:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSwi-00GHft-SE
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwh-0008MN-C9; Sat, 19 Jun 2021 06:51:03 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwb-0001Lh-1B; Sat, 19 Jun 2021 06:50:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:52 +0200
Message-Id: <20210619045055.779-27-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215105_026522_2F9072E3 
X-CRM114-Status: GOOD (  17.98  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 26/29] reset: add device_reset_all helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some StarFive peripherals have 5 resets that need to be triggered in
order. Add a helper to simplify this. The Linux way of doing this would
be to import the reset_control_array API, but device_reset_all as
implemented here saves us from this boilerplate.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/reset/core.c  | 78 +++++++++++++++++++++++++++++++++++++------
 include/linux/reset.h |  7 ++++
 2 files changed, 75 insertions(+), 10 deletions(-)

diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index 26a54f21dff0..940b46d4b4bd 100644
--- a/drivers/reset/core.c
+++ b/drivers/reset/core.c
@@ -139,30 +139,35 @@ int reset_control_deassert(struct reset_control *rstc)
 EXPORT_SYMBOL_GPL(reset_control_deassert);
 
 /**
- * of_reset_control_get - Lookup and obtain a reference to a reset controller.
+ * of_reset_control_count - Count reset lines
+ * @node: device node
+ *
+ * Returns number of resets, 0 if none specified
+ */
+static int of_reset_control_count(struct device_node *node)
+{
+	return of_count_phandle_with_args(node, "resets", "#reset-cells");
+}
+
+/**
+ * of_reset_control_get_by_index - Lookup and obtain a reference to a reset controller.
  * @node: device to be reset by the controller
- * @id: reset line name
+ * @index: reset line index
  *
  * Returns a struct reset_control or IS_ERR() condition containing errno.
- *
- * Use of id names is optional.
  */
-static struct reset_control *of_reset_control_get(struct device_node *node,
-						  const char *id)
+static struct reset_control *of_reset_control_get_by_index(struct device_node *node,
+							   int index)
 {
 	struct reset_control *rstc;
 	struct reset_controller_dev *r, *rcdev;
 	struct of_phandle_args args;
-	int index = 0;
 	int rstc_id;
 	int ret;
 
 	if (!of_get_property(node, "resets", NULL))
 		return NULL;
 
-	if (id)
-		index = of_property_match_string(node,
-						 "reset-names", id);
 	ret = of_parse_phandle_with_args(node, "resets", "#reset-cells",
 					 index, &args);
 	if (ret)
@@ -195,6 +200,26 @@ static struct reset_control *of_reset_control_get(struct device_node *node,
 	return rstc;
 }
 
+/**
+ * of_reset_control_get - Lookup and obtain a reference to a reset controller.
+ * @node: device to be reset by the controller
+ * @id: reset line name
+ *
+ * Returns a struct reset_control or IS_ERR() condition containing errno.
+ *
+ * Use of id names is optional.
+ */
+static struct reset_control *of_reset_control_get(struct device_node *node,
+						  const char *id)
+{
+	int index = 0;
+
+	if (id)
+		index = of_property_match_string(node, "reset-names", id);
+
+	return of_reset_control_get_by_index(node, index);
+}
+
 static struct reset_control *
 gpio_reset_control_get(struct device_d *dev, const char *id)
 {
@@ -302,6 +327,39 @@ int device_reset(struct device_d *dev)
 }
 EXPORT_SYMBOL_GPL(device_reset);
 
+int device_reset_all(struct device_d *dev)
+{
+	struct reset_control *rstc;
+	int ret, i;
+
+	for (i = 0; i < of_reset_control_count(dev->device_node); i++) {
+		int ret;
+
+		rstc = of_reset_control_get_by_index(dev->device_node, i);
+		if (IS_ERR(rstc))
+			return PTR_ERR(rstc);
+
+		ret = reset_control_reset(rstc);
+		if (ret)
+			return ret;
+
+		reset_control_put(rstc);
+	}
+
+	if (i == 0) {
+		rstc = gpio_reset_control_get(dev, NULL);
+
+		ret = reset_control_reset(rstc);
+		if (ret)
+			return ret;
+
+		reset_control_put(rstc);
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(device_reset_all);
+
 int device_reset_us(struct device_d *dev, int us)
 {
 	struct reset_control *rstc;
diff --git a/include/linux/reset.h b/include/linux/reset.h
index a166fe1cfe04..0a98ea6bacdf 100644
--- a/include/linux/reset.h
+++ b/include/linux/reset.h
@@ -17,6 +17,8 @@ int __must_check device_reset(struct device_d *dev);
 
 int __must_check device_reset_us(struct device_d *dev, int us);
 
+int __must_check device_reset_all(struct device_d *dev);
+
 #else
 
 static inline int reset_control_reset(struct reset_control *rstc)
@@ -54,6 +56,11 @@ static inline int device_reset(struct device_d *dev)
 	return 0;
 }
 
+static inline int device_reset_all(struct device_d *dev)
+{
+	return 0;
+}
+
 #endif /* CONFIG_RESET_CONTROLLER */
 
 #endif
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

