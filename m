Delivery-date: Thu, 18 Aug 2022 07:22:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXz2-002dTD-5e
	for lore@lore.pengutronix.de; Thu, 18 Aug 2022 07:22:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXyz-0000vz-Ek
	for lore@pengutronix.de; Thu, 18 Aug 2022 07:22:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jUD+EE8WVYcLrKMjQ/D+Sxl2/rIBUXGcHFLFEdlKrfY=; b=RziGUfP3ojvOG0OBC4/RQdlHrN
	M3PlQkRZxO1pth4pt1f+l84pNHBTQk9y67M3VL/LI9JNt4EqH8Cr+fo5OnwC6bn6P60iiQPoLLFus
	/2bpNjfWx9z9vW8xA6jhNt2z00Val5g+x7fuUTR7nSgiv1jviuJpJQPQ9dX4wcRx0XfyucZKxPxU6
	1YBfs3LDWBljUz4vetK69F8kP1GWL6xhWZ4tY+jaoDCYXw5O87uYlrCo83xAqmK6fZrsPFLs1bA7Y
	+TuT99BhfqfmBfYtA9HwIe8Zwo3HeUn7PByl5L2l8sVVySMJeQtS9izQ3ZV3Wb7ochvsDvGzOMhST
	pEAkJNHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXxa-00Fodb-HU; Thu, 18 Aug 2022 05:20:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXwu-00FnKR-7e
	for barebox@lists.infradead.org; Thu, 18 Aug 2022 05:20:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwk-0008H5-JI; Thu, 18 Aug 2022 07:19:58 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwj-000S3L-QI; Thu, 18 Aug 2022 07:19:57 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwi-008lHS-Kn; Thu, 18 Aug 2022 07:19:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	ukl@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Aug 2022 07:19:46 +0200
Message-Id: <20220818051955.2088238-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
References: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_222008_342171_94536045 
X-CRM114-Status: GOOD (  26.17  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 01/10] driver: add feature controller framework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Many SoCs feature hardware that controls or reports access restrictions
to specific devices, e.g. a TrustZone firewall controller can limit
which devices are accessible to the non-secure world and a fusebank
can report that some peripherals are gated and unusable.

A feature controller is an abstraction that covers both cases.
Nodes that are dependent on a feature (e.g. exception level or
SoC type) get a barebox,feature-gates property that references
a feature controller with a feature index. The feature controller
registers a callback with the framework that checks whether
a device is accessible.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/Kconfig    |   3 +
 drivers/base/Makefile   |   1 +
 drivers/base/featctrl.c | 120 ++++++++++++++++++++++++++++++++++++++++
 include/featctrl.h      |  29 ++++++++++
 4 files changed, 153 insertions(+)
 create mode 100644 drivers/base/featctrl.c
 create mode 100644 include/featctrl.h

diff --git a/drivers/base/Kconfig b/drivers/base/Kconfig
index 5bc70aa1e525..eebb60ce9193 100644
--- a/drivers/base/Kconfig
+++ b/drivers/base/Kconfig
@@ -2,3 +2,6 @@
 
 config PM_GENERIC_DOMAINS
 	bool
+
+config FEATURE_CONTROLLER
+	bool "Feature controller support" if COMPILE_TEST
diff --git a/drivers/base/Makefile b/drivers/base/Makefile
index 59645c6f5359..e8e354cdaabc 100644
--- a/drivers/base/Makefile
+++ b/drivers/base/Makefile
@@ -6,3 +6,4 @@ obj-y	+= resource.o
 obj-y	+= regmap/
 
 obj-$(CONFIG_PM_GENERIC_DOMAINS) += power.o
+obj-$(CONFIG_FEATURE_CONTROLLER) += featctrl.o
diff --git a/drivers/base/featctrl.c b/drivers/base/featctrl.c
new file mode 100644
index 000000000000..a5d06323c221
--- /dev/null
+++ b/drivers/base/featctrl.c
@@ -0,0 +1,120 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2022 Ahmad Fatoum, Pengutronix
+
+#define pr_fmt(fmt) "featctrl: " fmt
+
+#include <common.h>
+#include <driver.h>
+#include <errno.h>
+#include <of.h>
+
+#include <featctrl.h>
+
+/* List of registered feature controllers */
+static LIST_HEAD(of_feature_controllers);
+
+/**
+ * feature_controller_register() - Register a feature controller
+ * @feat: Pointer to feature controller
+ */
+int feature_controller_register(struct feature_controller *feat)
+{
+	struct device_node *np = dev_of_node(feat->dev);
+
+	if (!np)
+		return -EINVAL;
+
+	list_add(&feat->list, &of_feature_controllers);
+	dev_dbg(feat->dev, "Registering feature controller\n");
+	return 0;
+}
+EXPORT_SYMBOL_GPL(feature_controller_register);
+
+/**
+ * featctrl_get_from_provider() - Look-up feature gate
+ * @spec: OF phandle args to use for look-up
+ * @gateid: ID of feature controller gate populated on successful lookup
+ *
+ * Looks for a feature controller under the node specified by @spec.
+ *
+ * Returns a valid pointer to struct feature_controller on success or ERR_PTR()
+ * on failure.
+ */
+static struct feature_controller *featctrl_get_from_provider(struct of_phandle_args *spec,
+							     unsigned *gateid)
+{
+	struct feature_controller *featctrl;
+	int ret;
+
+	if (!spec)
+		return ERR_PTR(-EINVAL);
+
+	ret = of_device_ensure_probed(spec->np);
+	if (ret < 0)
+		return ERR_PTR(ret);
+
+	/* Check if we have such a controller in our array */
+	list_for_each_entry(featctrl, &of_feature_controllers, list) {
+		if (dev_of_node(featctrl->dev) == spec->np) {
+			*gateid = spec->args[0];
+			return featctrl;
+		}
+	}
+
+	return ERR_PTR(-ENOENT);
+}
+
+/**
+ * of_feature_controller_check - Check whether a feature controller gates the device
+ * @np: Device node to check
+ *
+ * Parse device's OF node to find a feature controller specifier. If such is
+ * found, checks it to determine whether device is gated.
+ *
+ * Returns FEATCTRL_GATED if a specified feature controller gates the device
+ * and FEATCTRL_OKAY if none do. On error a negative error code is returned.
+ */
+int of_feature_controller_check(struct device_node *np)
+{
+	struct of_phandle_args featctrl_args;
+	struct feature_controller *featctrl;
+	int ret, err = 0, i, ngates;
+
+	ngates = of_count_phandle_with_args(np, "barebox,feature-gates",
+					    "#feature-cells");
+	if (ngates <= 0)
+		return FEATCTRL_OKAY;
+
+	for (i = 0; i < ngates; i++) {
+		unsigned gateid = 0;
+
+		ret = of_parse_phandle_with_args(np, "barebox,feature-gates",
+						 "#feature-cells", i, &featctrl_args);
+		if (ret < 0)
+			return ret;
+
+		featctrl = featctrl_get_from_provider(&featctrl_args, &gateid);
+		if (IS_ERR(featctrl)) {
+			ret = PTR_ERR(featctrl);
+			pr_debug("%s() failed to find feature controller: %pe\n",
+				 __func__, ERR_PTR(ret));
+			/*
+			 * Assume that missing featctrls are unresolved
+			 * dependency are report them as deferred
+			 */
+			return (ret == -ENOENT) ? -EPROBE_DEFER : ret;
+		}
+
+		ret = featctrl->check(featctrl, gateid);
+
+		dev_dbg(featctrl->dev, "checking %s: %d\n", np->full_name, ret);
+
+		if (ret == FEATCTRL_OKAY)
+			return FEATCTRL_OKAY;
+		if (ret != FEATCTRL_GATED)
+			err = ret;
+	}
+
+	return err ?: FEATCTRL_GATED;
+}
+EXPORT_SYMBOL_GPL(of_feature_controller_check);
diff --git a/include/featctrl.h b/include/featctrl.h
new file mode 100644
index 000000000000..fb9e4156bdc2
--- /dev/null
+++ b/include/featctrl.h
@@ -0,0 +1,29 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __FEATCTRL_H_
+#define __FEATCTRL_H_
+
+#include <linux/list.h>
+
+struct feature_controller;
+struct device_node;
+
+struct feature_controller {
+	struct device_d *dev;
+	int (*check)(struct feature_controller *, int idx);
+	struct list_head list;
+};
+
+enum { FEATCTRL_GATED = 0, FEATCTRL_OKAY = 1 };
+
+int feature_controller_register(struct feature_controller *);
+
+#ifdef CONFIG_FEATURE_CONTROLLER
+int of_feature_controller_check(struct device_node *np);
+#else
+static inline int of_feature_controller_check(struct device_node *np)
+{
+	return FEATCTRL_OKAY;
+}
+#endif
+
+#endif /* PINCTRL_H */
-- 
2.30.2



