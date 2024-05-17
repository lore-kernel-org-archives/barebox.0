Delivery-date: Fri, 17 May 2024 07:57:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7qaW-000rHN-0P
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 07:57:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7qaV-0007ZS-0o
	for lore@pengutronix.de; Fri, 17 May 2024 07:57:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mcegu0SDZM50iImp8HhzjTjlkLcEY/3s16d2cL91oxc=; b=EYZuBgvXiR/vYsURRRDyfpKFff
	6kuIYpQfiqlHruXuXlACHnzQDekwiN/mOsQiZq0U28J95i/QxuVaEaSyBjjz5cpHl0wyAGwbq94BH
	wp4/m1hsRM1K3V4G9OQbIBj8SISKDol5L3pj3bOrxP4nwR7X/xCDFJK5Jxv0qO9nCC1ycSkGcq+qR
	qYp5R5E6PoMCcYfUfUu7QP5hh5QtO3AROIJP4+AZHdgKD40nIC2lBHqFUcY4mcMeeIkTf3pN4GoNQ
	ihN71OXPbD/reQljMxGN9sDx4eXQxlUDlOaN+V+OX9yMOaN/C03/V8aDsogDJWQTXZPhX5cGqVry0
	32zrE6Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7qZs-00000006tcO-2fhj;
	Fri, 17 May 2024 05:56:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7qZn-00000006taO-3Zoq
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 05:56:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qZi-0007Ms-9N; Fri, 17 May 2024 07:56:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qZh-001pKX-TI; Fri, 17 May 2024 07:56:13 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qZh-0075X6-2e;
	Fri, 17 May 2024 07:56:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 07:56:12 +0200
Message-Id: <20240517055612.1685978-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240517055612.1685978-1-a.fatoum@pengutronix.de>
References: <20240517055612.1685978-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_225619_923377_277C732A 
X-CRM114-Status: GOOD (  18.71  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] pinctrl: implement pinctrl_lookup_state/select_state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Besides pinctrl_get_select, the Linux API provides separate functions to
lookup a state and verify its existence and activating a state.

To make porting code easier that calls the former during probe and the
latter at runtime, define these functions and implement
of_pinctrl_select_state on top of them.

No functional change intended.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pinctrl/pinctrl.c        | 98 ++++++++++++++++++++++----------
 include/linux/pinctrl/consumer.h | 23 ++++++++
 2 files changed, 90 insertions(+), 31 deletions(-)

diff --git a/drivers/pinctrl/pinctrl.c b/drivers/pinctrl/pinctrl.c
index 2d331211f71c..dd0ed156ec9e 100644
--- a/drivers/pinctrl/pinctrl.c
+++ b/drivers/pinctrl/pinctrl.c
@@ -10,6 +10,14 @@
 #include <errno.h>
 #include <of.h>
 
+struct pinctrl {
+	struct device_node consumer_np;
+};
+
+struct pinctrl_state {
+	struct property prop;
+};
+
 static LIST_HEAD(pinctrl_list);
 
 static struct pinctrl_device *pin_to_pinctrl(unsigned int pin)
@@ -90,30 +98,28 @@ static int pinctrl_config_one(struct device_node *for_node, struct device_node *
 		return -ENODEV;
 }
 
-int of_pinctrl_select_state(struct device_node *np, const char *name)
+static inline struct pinctrl_state *
+of_property_pinctrl_get_state(struct property *prop)
 {
+	return container_of(prop, struct pinctrl_state, prop);
+}
+
+struct pinctrl_state *pinctrl_lookup_state(struct pinctrl *pinctrl,
+					   const char *name)
+{
+	struct device_node *np = &pinctrl->consumer_np;
 	int state, ret;
 	char propname[sizeof("pinctrl-4294967295")];
-	const __be32 *list;
-	int size, config;
-	phandle phandle;
-	struct device_node *np_config;
+	struct property *prop;
 	const char *statename;
 
-	if (!of_find_property(np, "pinctrl-0", NULL))
-		return 0;
-
 	/* For each defined state ID */
 	for (state = 0; ; state++) {
 		/* Retrieve the pinctrl-* property */
 		sprintf(propname, "pinctrl-%d", state);
-		list = of_get_property(np, propname, &size);
-		if (!list) {
-			ret = -ENODEV;
-			break;
-		}
-
-		size /= sizeof(*list);
+		prop = of_find_property(np, propname, NULL);
+		if (!prop)
+			return ERR_PTR(-ENODEV);
 
 		/* Determine whether pinctrl-names property names the state */
 		ret = of_property_read_string_index(np, "pinctrl-names",
@@ -131,31 +137,61 @@ int of_pinctrl_select_state(struct device_node *np, const char *name)
 		if (strcmp(name, statename))
 			continue;
 
-		/* For every referenced pin configuration node in it */
-		for (config = 0; config < size; config++) {
-			phandle = be32_to_cpup(list++);
+		return of_property_pinctrl_get_state(prop);
+	}
 
-			/* Look up the pin configuration node */
-			np_config = of_find_node_by_phandle(phandle);
-			if (!np_config) {
-				pr_err("prop %pOF %s index %i invalid phandle\n",
-					np, propname, config);
-				ret = -EINVAL;
-				goto err;
-			}
+	return ERR_PTR(ret);
+}
 
-			/* Parse the node */
-			ret = pinctrl_config_one(np, np_config);
-			if (ret < 0)
-				goto err;
+int pinctrl_select_state(struct pinctrl *pinctrl, struct pinctrl_state *state)
+{
+	int ret = -ENODEV;
+	const __be32 *list;
+	int size, config;
+	phandle phandle;
+	struct device_node *np = &pinctrl->consumer_np, *np_config;
+	struct property *prop = &state->prop;
+
+	list = of_property_get_value(prop);
+	size = prop->length / sizeof(*list);
+
+	/* For every referenced pin configuration node in it */
+	for (config = 0; config < size; config++) {
+		phandle = be32_to_cpup(list++);
+
+		/* Look up the pin configuration node */
+		np_config = of_find_node_by_phandle(phandle);
+		if (!np_config) {
+			pr_err("prop %pOF %s index %i invalid phandle\n",
+				np, prop->name, config);
+			ret = -EINVAL;
+			goto err;
 		}
 
-		return 0;
+		/* Parse the node */
+		ret = pinctrl_config_one(np, np_config);
+		if (ret < 0)
+			goto err;
 	}
 err:
 	return ret;
 }
 
+int of_pinctrl_select_state(struct device_node *np, const char *name)
+{
+	struct pinctrl *pinctrl = of_pinctrl_get(np);
+	struct pinctrl_state *state;
+
+	if (!of_find_property(np, "pinctrl-0", NULL))
+		return 0;
+
+	state = pinctrl_lookup_state(pinctrl, name);
+	if (IS_ERR(state))
+		return PTR_ERR(state);
+
+	return pinctrl_select_state(pinctrl, state);
+}
+
 int of_pinctrl_select_state_default(struct device_node *np)
 {
 	return of_pinctrl_select_state(np, "default");
diff --git a/include/linux/pinctrl/consumer.h b/include/linux/pinctrl/consumer.h
index 33d5c1b19a89..faa2c0e15724 100644
--- a/include/linux/pinctrl/consumer.h
+++ b/include/linux/pinctrl/consumer.h
@@ -3,6 +3,7 @@
 #define LINUX_PINCTRL_CONSUMER_H
 
 #include <linux/errno.h>
+#include <device.h>
 
 struct device;
 struct device_node;
@@ -10,6 +11,9 @@ struct device_node;
 struct pinctrl;
 
 #ifdef CONFIG_PINCTRL
+struct pinctrl_state *pinctrl_lookup_state(struct pinctrl *pinctrl,
+					   const char *name);
+int pinctrl_select_state(struct pinctrl *pinctrl, struct pinctrl_state *state);
 struct pinctrl *pinctrl_get_select(struct device *dev, const char *state);
 int pinctrl_select_state_default(struct device *dev);
 int of_pinctrl_select_state(struct device_node *np, const char *state);
@@ -19,6 +23,15 @@ int pinctrl_gpio_direction_output(unsigned int pin);
 int pinctrl_gpio_get_direction(unsigned pin);
 int pinctrl_single_probe(struct device *dev);
 #else
+static inline struct pinctrl_state *pinctrl_lookup_state(struct pinctrl *pinctrl,
+							 const char *name);
+{
+        return NULL;
+}
+static inline int pinctrl_select_state(struct pinctrl *pinctrl, struct pinctrl_state *state)
+{
+	return 0;
+}
 static inline struct pinctrl *pinctrl_get_select(struct device *dev, const char *state)
 {
 	return ERR_PTR(-ENODEV);
@@ -62,4 +75,14 @@ static inline int pinctrl_single_probe(struct device *dev)
 
 static inline void pinctrl_put(struct pinctrl *pinctrl) {}
 
+static inline struct pinctrl *of_pinctrl_get(struct device_node *np)
+{
+	return (struct pinctrl *)np;
+}
+
+static inline struct pinctrl *pinctrl_get(struct device *dev)
+{
+	return of_pinctrl_get(dev_of_node(dev));
+}
+
 #endif /* LINUX_PINCTRL_CONSUMER_H */
-- 
2.39.2



