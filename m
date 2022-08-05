Delivery-date: Fri, 05 Aug 2022 15:02:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJwxz-00CWm5-BP
	for lore@lore.pengutronix.de; Fri, 05 Aug 2022 15:02:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJwy0-0006Zu-6e
	for lore@pengutronix.de; Fri, 05 Aug 2022 15:02:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DjhIA+J2dMzWc59i8FSSdq4srT8xYAXNJ6+lWkJ0SFE=; b=4/D89umH/YCKt3Fg8c0RFigwO+
	qSYOldC8sjp6oMKTHBlO87i+Zbz8AYrnGV476S3Bo3yYICgtNhsM6j34ATs5f7/E1s8R/vvpt8yVC
	1WG5Fkk52OLu9i4Pn650IpJEMdOGAZoBqPlbfmpbZOPSL6LClgTkgyEeHU+fFLifWxBfvNcRkf2JC
	Wms433Ie9BKiuETPXGicQCqcPr/MvoZWZ83l2QCuaUkACTIinEeFhDoHvk5A61Php42qvd595ezNY
	PqucVIbZ84jzTOHYMUlngdgDxJj3r/meG8dB4LUlRxaD5qrWElS23VRGQv/xC1PNk6VP1x5NNN/y8
	LRJTrQ+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJwwb-00FEJ1-FW; Fri, 05 Aug 2022 13:00:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJwvV-00FDVR-LI
	for barebox@lists.infradead.org; Fri, 05 Aug 2022 12:59:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwvS-0005xY-La; Fri, 05 Aug 2022 14:59:38 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwvP-001thZ-Mh; Fri, 05 Aug 2022 14:59:37 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwvR-0055Nb-8y; Fri, 05 Aug 2022 14:59:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  5 Aug 2022 14:59:31 +0200
Message-Id: <20220805125931.1212228-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220805125931.1212228-1-a.fatoum@pengutronix.de>
References: <20220805125931.1212228-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220805_055941_744565_878ECC77 
X-CRM114-Status: GOOD (  12.17  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] reset: implement reset_control_get_count()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have a nearly equivalent of_reset_control_get_count(). Rename it and
adjust the prototype to make kernel code easier to port.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/reset/core.c  | 10 +++++-----
 include/linux/reset.h |  7 +++++++
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index 93fbaeccafd2..b252f94d6eb9 100644
--- a/drivers/reset/core.c
+++ b/drivers/reset/core.c
@@ -157,14 +157,14 @@ int reset_control_deassert(struct reset_control *rstc)
 EXPORT_SYMBOL_GPL(reset_control_deassert);
 
 /**
- * of_reset_control_count - Count reset lines
- * @node: device node
+ * reset_control_get_count - Count reset lines
+ * @dev: device
  *
  * Returns number of resets, 0 if none specified
  */
-static int of_reset_control_count(struct device_node *node)
+int reset_control_get_count(struct device_d *dev)
 {
-	return of_count_phandle_with_args(node, "resets", "#reset-cells");
+	return of_count_phandle_with_args(dev->device_node, "resets", "#reset-cells");
 }
 
 /**
@@ -357,7 +357,7 @@ int device_reset_all(struct device_d *dev)
 	struct reset_control *rstc;
 	int ret, i;
 
-	for (i = 0; i < of_reset_control_count(dev->device_node); i++) {
+	for (i = 0; i < reset_control_get_count(dev); i++) {
 		int ret;
 
 		rstc = of_reset_control_get_by_index(dev->device_node, i);
diff --git a/include/linux/reset.h b/include/linux/reset.h
index 91e9cdfb3279..c1282a84c72c 100644
--- a/include/linux/reset.h
+++ b/include/linux/reset.h
@@ -24,6 +24,8 @@ int __must_check device_reset_us(struct device_d *dev, int us);
 
 int __must_check device_reset_all(struct device_d *dev);
 
+int reset_control_get_count(struct device_d *dev);
+
 #else
 
 static inline int reset_control_status(struct reset_control *rstc)
@@ -71,6 +73,11 @@ static inline int device_reset_all(struct device_d *dev)
 	return 0;
 }
 
+static inline int reset_control_get_count(struct device_d *dev)
+{
+	return 0;
+}
+
 #endif /* CONFIG_RESET_CONTROLLER */
 
 static inline struct reset_control *reset_control_get_optional(struct device_d *dev, const char *id)
-- 
2.30.2



