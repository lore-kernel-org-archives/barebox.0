Delivery-date: Thu, 04 May 2023 10:19:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBe-004LPc-46
	for lore@lore.pengutronix.de; Thu, 04 May 2023 10:19:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBa-00029b-FK
	for lore@pengutronix.de; Thu, 04 May 2023 10:19:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MSLlbKQlSyIHv898q/YhEML/pC7uVEaK0uNxZr6E6WY=; b=LR0m+ZJ+nl/0dlzbF0/v3bs1cd
	ttpblPHyvpqjytfrpqUsW9CvnkcAnhZPU2bOgz/ME2QE+sdSQvU9qf4OuMBKgR53++ZZh82EunQLo
	ws3zHr2ovHCYPYL6nNVUD2DsS2QZ+5fn7nA4DR3Z2q8//2TC5pgbBmp23jPxFS09KeVTMh4ka+DJF
	jGyQINFnthLMMDn95kYFxmHUCV7KL9dzENDcnGFMZbFpIPMynw9etqpwzaVTCY5Ly9zCa6tN+hXSd
	FTZ+VK8kdnqFFRl9Jbg3QKLs7vp16nUdTwvqFtP0cIABGqJsbhNhPdp0JuFIVn2XwKqUEyR3FmzXt
	7tHX/dow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puUAV-0074xq-1n;
	Thu, 04 May 2023 08:18:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puUAT-0074vu-26
	for barebox@bombadil.infradead.org;
	Thu, 04 May 2023 08:18:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=MSLlbKQlSyIHv898q/YhEML/pC7uVEaK0uNxZr6E6WY=; b=b3Lv+bMQfGeyrMezjsZCAyh7+V
	gBOOGqRYAoYJ2/JoiVr7dnGiOVNcePoJfW5NsvNGuHVmDPQRNxe4lwgM2SfYinr9w+/PZhZXiogMS
	PFjpVPG7lsKxpOnvuuiZhw0hzAGZE/uY7j5eK8nl2pwt8TMf2ZmV5Hy5qWDpr/EKefbL65dHK6nwv
	treq5VptQBYwkYS/abDgwNYOUuDkEn9aqh2I1g0BaTaqrqmiVXlI2ShiYn5qa2Cdi9ng5Kudjm5K/
	xNH92ckeijWd1bHRbmdywhmDzXfzq7hor4DZoLwlgUN7NQDdsvO08Y/bN9aMdvzXBx+cIhFqq70bo
	FzYwsgCQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puUAB-001gZH-2o
	for barebox@lists.infradead.org;
	Thu, 04 May 2023 08:18:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9u-0001HL-98; Thu, 04 May 2023 10:17:50 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9t-0011F9-Jr; Thu, 04 May 2023 10:17:49 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9r-001Hba-6Z; Thu, 04 May 2023 10:17:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 May 2023 10:17:38 +0200
Message-Id: <20230504081745.305841-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230504081745.305841-1-s.hauer@pengutronix.de>
References: <20230504081745.305841-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_091821_183022_554C7254 
X-CRM114-Status: GOOD (  18.99  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 11/18] reset: Implement reset array support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add support for reset arrays, needed by the Rockchip PCIe driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/reset/core.c  | 127 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/reset.h |   7 +++
 2 files changed, 134 insertions(+)

diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index 5ab21ac95e..94bfad2067 100644
--- a/drivers/reset/core.c
+++ b/drivers/reset/core.c
@@ -31,6 +31,19 @@ struct reset_control {
 
 	struct device *dev;
 	unsigned int id;
+	bool array;
+};
+
+/**
+ * struct reset_control_array - an array of reset controls
+ * @base: reset control for compatibility with reset control API functions
+ * @num_rstcs: number of reset controls
+ * @rstc: array of reset controls
+ */
+struct reset_control_array {
+	struct reset_control base;
+	unsigned int num_rstcs;
+	struct reset_control *rstc[];
 };
 
 /**
@@ -102,6 +115,65 @@ int reset_control_status(struct reset_control *rstc)
 }
 EXPORT_SYMBOL_GPL(reset_control_status);
 
+static inline struct reset_control_array *
+rstc_to_array(struct reset_control *rstc) {
+	return container_of(rstc, struct reset_control_array, base);
+}
+
+static int reset_control_array_reset(struct reset_control_array *resets)
+{
+	int ret, i;
+
+	for (i = 0; i < resets->num_rstcs; i++) {
+		ret = reset_control_reset(resets->rstc[i]);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int reset_control_array_assert(struct reset_control_array *resets)
+{
+	int ret, i;
+
+	for (i = 0; i < resets->num_rstcs; i++) {
+		ret = reset_control_assert(resets->rstc[i]);
+		if (ret)
+			goto err;
+	}
+
+	return 0;
+
+err:
+	while (i--)
+		reset_control_deassert(resets->rstc[i]);
+	return ret;
+}
+
+static int reset_control_array_deassert(struct reset_control_array *resets)
+{
+	int ret, i;
+
+	for (i = 0; i < resets->num_rstcs; i++) {
+		ret = reset_control_deassert(resets->rstc[i]);
+		if (ret)
+			goto err;
+	}
+
+	return 0;
+
+err:
+	while (i--)
+		reset_control_assert(resets->rstc[i]);
+	return ret;
+}
+
+static inline bool reset_control_is_array(struct reset_control *rstc)
+{
+	return rstc->array;
+}
+
 /**
  * reset_control_reset - reset the controlled device
  * @rstc: reset controller
@@ -111,6 +183,9 @@ int reset_control_reset(struct reset_control *rstc)
 	if (!rstc)
 		return 0;
 
+	if (reset_control_is_array(rstc))
+		return reset_control_array_reset(rstc_to_array(rstc));
+
 	if (rstc->rcdev->ops->reset)
 		return rstc->rcdev->ops->reset(rstc->rcdev, rstc->id);
 
@@ -127,6 +202,9 @@ int reset_control_assert(struct reset_control *rstc)
 	if (!rstc)
 		return 0;
 
+	if (reset_control_is_array(rstc))
+		return reset_control_array_assert(rstc_to_array(rstc));
+
 	if (rstc->gpio >= 0)
 		return gpio_direction_output(rstc->gpio, rstc->gpio_active_high);
 
@@ -146,6 +224,9 @@ int reset_control_deassert(struct reset_control *rstc)
 	if (!rstc)
 		return 0;
 
+	if (reset_control_is_array(rstc))
+		return reset_control_array_deassert(rstc_to_array(rstc));
+
 	if (rstc->gpio >= 0)
 		return gpio_direction_output(rstc->gpio, !rstc->gpio_active_high);
 
@@ -352,6 +433,52 @@ int device_reset(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(device_reset);
 
+/*
+ * APIs to manage an array of reset controls.
+ */
+
+/**
+ * reset_control_array_get - Get a list of reset controls
+ *
+ * @dev: device that requests the reset controls array
+ *
+ * Returns pointer to allocated reset_control on success or error on failure
+ */
+struct reset_control *reset_control_array_get(struct device *dev)
+{
+	struct reset_control_array *resets;
+	struct reset_control *rstc;
+	struct device_node *np = dev->of_node;
+	int num, i;
+
+	num = reset_control_get_count(dev);
+	if (num < 0)
+		return ERR_PTR(num);
+
+	resets = kzalloc(struct_size(resets, rstc, num), GFP_KERNEL);
+	if (!resets)
+		return ERR_PTR(-ENOMEM);
+
+	for (i = 0; i < num; i++) {
+		rstc = of_reset_control_get_by_index(np, i);
+		if (IS_ERR(rstc))
+			goto err_rst;
+		resets->rstc[i] = rstc;
+	}
+	resets->num_rstcs = num;
+	resets->base.array = true;
+
+	return &resets->base;
+
+err_rst:
+	while (--i >= 0)
+		reset_control_put(resets->rstc[i]);
+
+	kfree(resets);
+
+	return rstc;
+}
+
 int device_reset_all(struct device *dev)
 {
 	struct reset_control *rstc;
diff --git a/include/linux/reset.h b/include/linux/reset.h
index 7a08b8f945..7db3d3162a 100644
--- a/include/linux/reset.h
+++ b/include/linux/reset.h
@@ -26,6 +26,8 @@ int __must_check device_reset_all(struct device *dev);
 
 int reset_control_get_count(struct device *dev);
 
+struct reset_control *reset_control_array_get(struct device *dev);
+
 #else
 
 static inline int reset_control_status(struct reset_control *rstc)
@@ -84,6 +86,11 @@ static inline int reset_control_get_count(struct device *dev)
 	return 0;
 }
 
+static inline struct reset_control *reset_control_array_get(struct device *dev)
+{
+	return NULL;
+}
+
 #endif /* CONFIG_RESET_CONTROLLER */
 
 static inline struct reset_control *reset_control_get_optional(struct device *dev,
-- 
2.39.2



