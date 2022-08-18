Delivery-date: Thu, 18 Aug 2022 07:21:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXyK-002dP0-E0
	for lore@lore.pengutronix.de; Thu, 18 Aug 2022 07:21:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXyH-0000ez-MU
	for lore@pengutronix.de; Thu, 18 Aug 2022 07:21:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zjHB7BQ31dpP1iwtKPiivBGt5EXD+uFJQY4Dkev4MdY=; b=PlC5tdL4Fx8VpT3O/YIeV+Doye
	iVU/bvhLz39AlfOterSR71aY6NcrB7lqdvNhz9x9LLJa1dBSsGx3Xxz0/+kMEFdodQD4+79XG7P7W
	QW9uEzlgYveQFJdBnJE0j+5gP4jp5tmG32DlpQ1fJTXNvDo+dpmFH3u3+XbIQBrHDgM/y+YmJ+wFO
	jmgo37qVIrpR2TThm+poRIaCd4fNwGdcj7sXLN1PVyuf0hAGqZ6VfbivpgKFHRd8skO8xHFjr9FBx
	x2KIcFb+smvTlQWRsT/calqYbOhtsUCTqzWCEW9HyavNL/brm7X3VopaiXVCMWsPihDhY483qM+1q
	1hr4w5qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXwv-00FnIn-VO; Thu, 18 Aug 2022 05:20:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXwm-00Fn3O-S3
	for barebox@lists.infradead.org; Thu, 18 Aug 2022 05:20:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwl-0008HC-0B; Thu, 18 Aug 2022 07:19:59 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwk-000S3R-6a; Thu, 18 Aug 2022 07:19:58 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwi-008lHe-MM; Thu, 18 Aug 2022 07:19:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	ukl@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Aug 2022 07:19:50 +0200
Message-Id: <20220818051955.2088238-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
References: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_222001_022895_68613463 
X-CRM114-Status: GOOD (  18.65  )
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
Subject: [PATCH 05/10] soc: imx: add i.MX8M feature controller driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The tester4 fuse bank of the i.MX8M is a 32-bit collection of fuses,
apaprently fused during test, which contains information about the
available IPs: How many cores are available and whether a VPU and GPU
is available an usable. Add a imx8m_feat_ctrl_init() function
that initializes a bitmap of supported features using tester4's value
and registers a feature controller with a check callback that just
looks up the relevant bit.

This function can then be called from a standalone driver or from the
fuse bank (ocotp) driver itself.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/soc/imx/Kconfig          |  6 +++
 drivers/soc/imx/Makefile         |  1 +
 drivers/soc/imx/imx8m-featctrl.c | 64 ++++++++++++++++++++++++++++++++
 include/soc/imx8m/featctrl.h     | 25 +++++++++++++
 4 files changed, 96 insertions(+)
 create mode 100644 drivers/soc/imx/imx8m-featctrl.c
 create mode 100644 include/soc/imx8m/featctrl.h

diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
index 742d13c4f5d7..eabe4a06d22c 100644
--- a/drivers/soc/imx/Kconfig
+++ b/drivers/soc/imx/Kconfig
@@ -7,4 +7,10 @@ config IMX_GPCV2_PM_DOMAINS
 	select PM_GENERIC_DOMAINS
 	default y if ARCH_IMX7 || ARCH_IMX8MQ
 
+config IMX8M_FEATCTRL
+        bool "i.MX8M feature controller"
+	depends on ARCH_IMX8M
+	select FEATURE_CONTROLLER
+	default y
+
 endmenu
diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
index 3a8a8d0b00db..bd1717b03883 100644
--- a/drivers/soc/imx/Makefile
+++ b/drivers/soc/imx/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
+obj-$(CONFIG_IMX8M_FEATCTRL) += imx8m-featctrl.o
diff --git a/drivers/soc/imx/imx8m-featctrl.c b/drivers/soc/imx/imx8m-featctrl.c
new file mode 100644
index 000000000000..480c80e6c1d9
--- /dev/null
+++ b/drivers/soc/imx/imx8m-featctrl.c
@@ -0,0 +1,64 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2022 Ahmad Fatoum, Pengutronix
+
+#include <common.h>
+#include <linux/bitmap.h>
+#include <featctrl.h>
+#include <soc/imx8m/featctrl.h>
+
+#include <dt-bindings/features/imx8m.h>
+
+struct imx_feat {
+	struct feature_controller feat;
+	unsigned long features[BITS_TO_LONGS(IMX8M_FEAT_END)];
+};
+
+static struct imx_feat *to_imx_feat(struct feature_controller *feat)
+{
+	return container_of(feat, struct imx_feat, feat);
+}
+
+static int imx8m_feat_check(struct feature_controller *feat, int idx)
+{
+	struct imx_feat *priv = to_imx_feat(feat);
+
+	if (idx > IMX8M_FEAT_END)
+		return -EINVAL;
+
+	return test_bit(idx, priv->features) ? FEATCTRL_OKAY : FEATCTRL_GATED;
+}
+
+int imx8m_feat_ctrl_init(struct device_d *dev, u32 tester4,
+			 const struct imx8m_featctrl_data *data)
+{
+	unsigned long *features;
+	struct imx_feat *priv;
+
+	if (!dev || !data)
+		return -ENODEV;
+
+	dev_dbg(dev, "tester4 = 0x%08x\n", tester4);
+
+	priv = xzalloc(sizeof(*priv));
+	features = priv->features;
+
+	bitmap_fill(features, IMX8M_FEAT_END);
+
+	if (tester4 & data->vpu_bitmask)
+		clear_bit(IMX8M_FEAT_VPU, features);
+	if (tester4 & data->gpu_bitmask)
+		clear_bit(IMX8M_FEAT_GPU, features);
+
+	switch (tester4 & 3) {
+	case 0b11:
+		clear_bit(IMX8M_FEAT_CPU_DUAL, features);
+		fallthrough;
+	case 0b10:
+		clear_bit(IMX8M_FEAT_CPU_QUAD, features);
+	}
+
+	priv->feat.dev = dev;
+	priv->feat.check = imx8m_feat_check;
+
+	return feature_controller_register(&priv->feat);
+}
diff --git a/include/soc/imx8m/featctrl.h b/include/soc/imx8m/featctrl.h
new file mode 100644
index 000000000000..af94995a916a
--- /dev/null
+++ b/include/soc/imx8m/featctrl.h
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* SPDX-FileCopyrightText: 2022 Ahmad Fatoum, Pengutronix */
+
+#ifndef __IMX8M_FEATCTRL_H_
+#define __IMX8M_FEATCTRL_H_
+
+#include <linux/types.h>
+
+struct imx8m_featctrl_data {
+	u32 vpu_bitmask;
+	u32 gpu_bitmask;
+};
+
+#ifdef CONFIG_IMX8M_FEATCTRL
+int imx8m_feat_ctrl_init(struct device_d *dev, u32 tester4,
+			 const struct imx8m_featctrl_data *data);
+#else
+static inline int imx8m_feat_ctrl_init(struct device_d *dev, u32 tester4,
+				       const struct imx8m_featctrl_data *data)
+{
+	return -ENODEV;
+}
+#endif
+
+#endif
-- 
2.30.2



