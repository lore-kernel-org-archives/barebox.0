Delivery-date: Mon, 27 Oct 2025 07:39:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDGtG-00CFQR-2J
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 07:39:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDGtF-0000Q8-Qp
	for lore@pengutronix.de; Mon, 27 Oct 2025 07:39:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=do9PAOPhi7yF5LH7vTQtHS+tCYO8qywunlf9Oo6O+WY=; b=oRP0fkAATOC0m53DwtrPTLLhVt
	vD3xM9DVdof2lBt1155QgIF0ZSfd90n55RfEEC4vXZNA6QENSoUYSTQrJZ7thEKIQnhbAk0tQZMBQ
	nM/llyFFKI+3uSBEMzBGGrr9OjUx4FdRiNbigfdTmebUd1x+kXgO1mWbwNSDcmNbgsbcrVpY0/uoh
	0ClRUJXpBc74E5btJmLPqCIgPGkfng8rLbgFaqdAz7Dhji5Jm3k63C3lwDcM6xomo6XPNJrpeEo8/
	meEj83+mEESGxkUGHhrcNHRa1WUi080XMRZd1nsbco4udVqOnaOtvPznUPr9aatWxOAWiWwrtpJQ+
	x0+/6rGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDGsm-0000000DCrz-1CN0;
	Mon, 27 Oct 2025 06:39:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDGsk-0000000DCro-3MJU
	for barebox@bombadil.infradead.org;
	Mon, 27 Oct 2025 06:39:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=do9PAOPhi7yF5LH7vTQtHS+tCYO8qywunlf9Oo6O+WY=; b=ecy8psHn1GD2Xs8q1H8e4NCN0c
	OyukvYPL5dab8eXzQtLgKfxl/qva0f2UisQ1bx7ks5a0RacBIGCnUEO5NlIK0T11tPL15f8GrTnrY
	KnT6/Did4O6cMEGGcQOfSmkuj4oDX5zwVfBaeYyGrRIklmbbd21GiqScpLQ29k1m+AOm5kmSzjo8C
	tNmVCDnx9AGHMm9uhapEaO3R2jsr92Ioza9TYGevbTjDCxyaKzsw2kqqNoQT/FP9STPcF6GKouCdV
	7MPo9YDtJn5sV1L77oW4nPaPmDUrVgKbbP8Z6vY7XlvtU1sAHKGzYxYYzXGVdG+9gr/y8JqnMmfyv
	Gj+l1/5Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDG0x-00000001S8t-47xU
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 05:43:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDGsh-0000MH-BX; Mon, 27 Oct 2025 07:39:03 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 07:39:00 +0100
Message-ID: <20251027063902.2409435-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_054332_122739_E689746A 
X-CRM114-Status: GOOD (  16.90  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] pinctrl: support selecting states from command line
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This can be useful for debugging to exercise pinctrl for nodes that have
no driver yet. Example:

  setenv adc-joystick.of.pinctrl_state=default

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/base/driver.c     |  4 ++
 drivers/pinctrl/Kconfig   |  4 ++
 drivers/pinctrl/pinctrl.c | 92 +++++++++++++++++++++++++++++++++++++++
 include/param.h           |  2 +
 include/pinctrl.h         | 10 +++++
 lib/parameter.c           |  6 ++-
 6 files changed, 116 insertions(+), 2 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 61118385f1df..33d9e2bcde5a 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -268,6 +268,8 @@ int register_device(struct device *new_device)
 
 	bobject_init(&new_device->bobject);
 
+	of_pinctrl_register_consumer(new_device, new_device->device_node);
+
 	if (new_device->bus) {
 		if (!new_device->parent)
 			new_device->parent = &new_device->bus->dev;
@@ -298,6 +300,8 @@ int unregister_device(struct device *old_dev)
 
 	bobject_del(&old_dev->bobject);
 
+	of_pinctrl_unregister_consumer(old_dev);
+
 	if (old_dev->driver)
 		device_remove(old_dev);
 
diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 72ca79aa9880..1d237db106ba 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -10,6 +10,10 @@ config PINCTRL
 	  from the devicetree. Legacy drivers here may not need this core
 	  support but instead provide their own SoC specific APIs
 
+config PINCTRL_STATE_PARAM
+	bool "pinctrl state control via device parameters"
+	depends on PARAMETER && PINCTRL
+
 # The following drivers are needed even without PINCTRL because
 # the either have a legacy iomux interface or also register a gpio
 # chip.
diff --git a/drivers/pinctrl/pinctrl.c b/drivers/pinctrl/pinctrl.c
index 106a4423184c..2f85a0f08f08 100644
--- a/drivers/pinctrl/pinctrl.c
+++ b/drivers/pinctrl/pinctrl.c
@@ -7,6 +7,7 @@
 #include <common.h>
 #include <malloc.h>
 #include <pinctrl.h>
+#include <linux/overflow.h>
 #include <errno.h>
 #include <of.h>
 
@@ -14,10 +15,20 @@ struct pinctrl {
 	struct device_node consumer_np;
 };
 
+static LIST_HEAD(pinctrl_consumer_list);
+
 struct pinctrl_state {
 	struct property prop;
 };
 
+struct pinctrl_consumer_info {
+	struct device *dev;
+	struct device_node *np;
+	int state;
+	struct list_head list;
+	const char *states[];
+};
+
 LIST_HEAD(pinctrl_list);
 
 static struct pinctrl_device *pin_to_pinctrl(unsigned int pin)
@@ -104,6 +115,33 @@ of_property_pinctrl_get_state(struct property *prop)
 	return container_of(prop, struct pinctrl_state, prop);
 }
 
+static void pinctrl_update_state_param(struct pinctrl *pinctrl,
+				       struct pinctrl_state *state)
+{
+	struct device_node *np = &pinctrl->consumer_np;
+	struct property *prop = &state->prop;
+	struct pinctrl_consumer_info *info;
+	u16 idx;
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_PINCTRL_STATE_PARAM))
+		return;
+
+	if (!strstarts(prop->name, "pinctrl-"))
+		return;
+
+	ret = kstrtou16(&prop->name[sizeof("pinctrl-") - 1], 10, &idx);
+	if (ret)
+		return;
+
+	list_for_each_entry(info, &pinctrl_consumer_list, list) {
+		if (info->np != np)
+			continue;
+
+		info->state = idx;
+	}
+}
+
 struct pinctrl_state *pinctrl_lookup_state(struct pinctrl *pinctrl,
 					   const char *name)
 {
@@ -173,6 +211,8 @@ int pinctrl_select_state(struct pinctrl *pinctrl, struct pinctrl_state *state)
 		if (ret < 0)
 			goto err;
 	}
+
+	pinctrl_update_state_param(pinctrl, state);
 err:
 	return ret;
 }
@@ -238,3 +278,55 @@ void pinctrl_unregister(struct pinctrl_device *pdev)
 {
 	list_del(&pdev->list);
 }
+
+
+#ifdef CONFIG_PINCTRL_STATE_PARAM
+static int pinctrl_state_param_set(struct param_d *p, void *priv)
+{
+	struct pinctrl_consumer_info *info = priv;
+
+	return of_pinctrl_select_state(info->np, info->states[info->state]);
+}
+
+void of_pinctrl_register_consumer(struct device *dev,
+				  struct device_node *np)
+{
+	struct pinctrl_consumer_info *info;
+	int ret, nstates;
+
+	nstates = of_property_count_strings(np, "pinctrl-names");
+	if (nstates <= 0)
+		return;
+
+	info = malloc(struct_size(info, states, nstates));
+	if (!info)
+		return;
+
+	info->dev = dev;
+	info->np = np;
+	info->state = PARAM_ENUM_UNKNOWN;
+
+	ret = of_property_read_string_array(np, "pinctrl-names", info->states, nstates);
+	if (ret < 0)
+		return;
+
+	list_add(&info->list, &pinctrl_consumer_list);
+
+	dev_add_param_enum(dev, "pinctrl_state",
+			   pinctrl_state_param_set, NULL,
+			   &info->state, info->states, nstates, info);
+}
+
+void of_pinctrl_unregister_consumer(struct device *dev)
+{
+	struct pinctrl_consumer_info *info;
+
+	list_for_each_entry(info, &pinctrl_consumer_list, list) {
+		if (info->dev != dev)
+			continue;
+
+		list_del(&info->list);
+		return;
+	}
+}
+#endif
diff --git a/include/param.h b/include/param.h
index 59aa8a3a385f..1713a18c378e 100644
--- a/include/param.h
+++ b/include/param.h
@@ -42,6 +42,8 @@ struct param_d {
 	enum param_type type;
 };
 
+#define PARAM_ENUM_UNKNOWN	(-1000000)
+
 enum param_tristate { PARAM_TRISTATE_UNKNOWN, PARAM_TRISTATE_TRUE, PARAM_TRISTATE_FALSE };
 
 #ifdef CONFIG_PARAMETER
diff --git a/include/pinctrl.h b/include/pinctrl.h
index 4ba7b489345b..5c031fb4008b 100644
--- a/include/pinctrl.h
+++ b/include/pinctrl.h
@@ -25,4 +25,14 @@ struct pinctrl_device {
 int pinctrl_register(struct pinctrl_device *pdev);
 void pinctrl_unregister(struct pinctrl_device *pdev);
 
+#ifdef CONFIG_PINCTRL_STATE_PARAM
+void of_pinctrl_register_consumer(struct device *dev, struct device_node *np);
+void of_pinctrl_unregister_consumer(struct device *dev);
+#else
+static inline void of_pinctrl_register_consumer(struct device *dev, struct device_node *np)
+{
+}
+static inline void of_pinctrl_unregister_consumer(struct device *dev) {}
+#endif
+
 #endif /* PINCTRL_H */
diff --git a/lib/parameter.c b/lib/parameter.c
index f36d77d119fa..b9a449c32657 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -612,7 +612,9 @@ static const char *param_enum_get(struct bobject *bobj, struct param_d *p)
 
 	free(p->value);
 
-	if (*pe->value >= pe->num_names)
+	if (*pe->value == PARAM_ENUM_UNKNOWN)
+		p->value = strdup("unknown");
+	else if (*pe->value >= pe->num_names)
 		p->value = basprintf("invalid:%d", *pe->value);
 	else
 		p->value = strdup(pe->names[*pe->value]);
@@ -625,7 +627,7 @@ static void param_enum_info(struct param_d *p)
 	struct param_enum *pe = to_param_enum(p);
 	int i;
 
-	if (pe->num_names <= 1)
+	if (pe->num_names <= 1 && *pe->value != PARAM_ENUM_UNKNOWN)
 		return;
 
 	printf(" (values: ");
-- 
2.47.3



