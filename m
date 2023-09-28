Delivery-date: Thu, 28 Sep 2023 13:00:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qloku-00F2Nu-Ot
	for lore@lore.pengutronix.de; Thu, 28 Sep 2023 13:00:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlokr-0003g9-1b
	for lore@pengutronix.de; Thu, 28 Sep 2023 13:00:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h836TSYMbK5WUfq8Gu3ADZEuw1lapkqaU2VPK2npum4=; b=NcmWTeXj207Hc2PZ5KY++6t4eP
	9NZoRrY2M36bE/OiLELkNt9TDaGgFoVOmqpQ1/06qIbKH04TA980ZFHS5IH8D9UcOM87Ec0oj4TMG
	+R8SbJFkZq0rLvK+zKj/p5NVaVoJu4MISfQ+igrroCukp3kt0rEJ+usQsjGxQoBWAlThe+tW4+veY
	aonY7plJjDhZ/1u4xwoN55vwNYshp4LMh6XtylajQFl8sN8CPl0Hdl5jbbr4VohuSDoZ097sjlaE0
	BmAO9PxeB34qGfe8ZSJxV4rHkWzBNvdn+jXhsrTml9KqxVT9l35XJK7xafouBpi4fCKj/4j+doTcY
	M8EUGafA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlojU-0030J1-2d;
	Thu, 28 Sep 2023 10:59:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlojE-00305s-2D
	for barebox@lists.infradead.org;
	Thu, 28 Sep 2023 10:58:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qloj8-000331-T1; Thu, 28 Sep 2023 12:58:38 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qloj8-009Yax-Dc; Thu, 28 Sep 2023 12:58:38 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qloj8-00AXe2-1A;
	Thu, 28 Sep 2023 12:58:38 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 28 Sep 2023 12:58:37 +0200
Message-Id: <20230928105837.2512555-7-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928105837.2512555-1-o.rempel@pengutronix.de>
References: <20230928105837.2512555-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_035844_751619_EA87C3E3 
X-CRM114-Status: GOOD (  17.06  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 7/7] ARM: i.MX8MP: skov: Add hardware variant support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Introduce hardware variant detection in skov-imx8mp board. This
addition uses GPIOs to identify hardware versions and set the
appropriate device tree compatible strings accordingly.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx8mp/board.c | 128 ++++++++++++++++++++++++++++
 1 file changed, 128 insertions(+)

diff --git a/arch/arm/boards/skov-imx8mp/board.c b/arch/arm/boards/skov-imx8mp/board.c
index 58aca69236..3a1cd83bbd 100644
--- a/arch/arm/boards/skov-imx8mp/board.c
+++ b/arch/arm/boards/skov-imx8mp/board.c
@@ -1,14 +1,30 @@
 // SPDX-License-Identifier: GPL-2.0
 
+#include "linux/kernel.h"
 #include <bootsource.h>
 #include <common.h>
 #include <deep-probe.h>
 #include <envfs.h>
+#include <environment.h>
+#include <globalvar.h>
+#include <gpio.h>
 #include <init.h>
 #include <io.h>
 #include <mach/imx/bbu.h>
+#include <mach/imx/generic.h>
 #include <mach/imx/iomux-mx8mp.h>
 
+#define GPIO_HW_VARIANT  {\
+	{IMX_GPIO_NR(1, 8), GPIOF_DIR_IN | GPIOF_ACTIVE_HIGH, "var0"}, \
+	{IMX_GPIO_NR(1, 9), GPIOF_DIR_IN | GPIOF_ACTIVE_HIGH, "var1"}, \
+	{IMX_GPIO_NR(1, 10), GPIOF_DIR_IN | GPIOF_ACTIVE_HIGH, "var2"}, \
+	{IMX_GPIO_NR(1, 11), GPIOF_DIR_IN | GPIOF_ACTIVE_HIGH, "var3"}, \
+	{IMX_GPIO_NR(1, 12), GPIOF_DIR_IN | GPIOF_ACTIVE_HIGH, "var4"}, \
+	{IMX_GPIO_NR(1, 13), GPIOF_DIR_IN | GPIOF_ACTIVE_HIGH, "var5"}, \
+	{IMX_GPIO_NR(1, 14), GPIOF_DIR_IN | GPIOF_ACTIVE_HIGH, "var6"}, \
+	{IMX_GPIO_NR(1, 15), GPIOF_DIR_IN | GPIOF_ACTIVE_HIGH, "var7"}, \
+}
+
 struct skov_imx8mp_storage {
 	const char *name;
 	const char *env_path;
@@ -43,6 +59,116 @@ static const struct skov_imx8mp_storage skov_imx8mp_storages[] = {
 	},
 };
 
+struct board_description {
+	const char *dts_compatible;
+	const char *dts_compatible_hdmi;
+	unsigned flags;
+};
+
+#define SKOV_IMX8MP_HAS_HDMI	BIT(0)
+
+static const struct board_description imx8mp_variants[] = {
+	[0] = {
+		.dts_compatible = "skov,imx8mp-skov-revb-lt6",
+	},
+	[1] = {
+		.dts_compatible = "skov,imx8mp-skov-revb-mi1010ait-1cp1",
+		.dts_compatible_hdmi = "skov,imx8mp-skov-revb-hdmi",
+		.flags = SKOV_IMX8MP_HAS_HDMI,
+	},
+};
+
+static int skov_imx8mp_get_variant_id(uint *id)
+{
+	struct gpio gpios_rev[] = GPIO_HW_VARIANT;
+	struct device_node *gpio_np;
+	u32 hw_rev;
+	int ret;
+
+	gpio_np = of_find_node_by_name_address(NULL, "gpio@30200000");
+	if (!gpio_np)
+		return -ENODEV;
+
+	ret = of_device_ensure_probed(gpio_np);
+	if (ret)
+		return ret;
+
+	ret = gpio_array_to_id(gpios_rev, ARRAY_SIZE(gpios_rev), &hw_rev);
+	if (ret)
+		goto exit_get_id;
+
+	*id = hw_rev;
+
+	return 0;
+exit_get_id:
+	pr_err("Failed to read gpio ID: %pe\n", ERR_PTR(ret));
+	return ret;
+}
+
+static int skov_imx8mp_get_hdmi(struct device *dev)
+{
+	const char *env = "state.display.external";
+	struct device_node *state_np;
+	unsigned int val = 0;
+	int ret;
+
+	state_np = of_find_node_by_name_address(NULL, "state");
+	if (!state_np) {
+		dev_err(dev, "Failed to find state node\n");
+		return -ENODEV;
+	}
+
+	ret = of_device_ensure_probed(state_np);
+	if (ret) {
+		dev_err(dev, "Failed to probe state node: %pe\n", ERR_PTR(ret));
+		return ret;
+	}
+
+	ret = getenv_uint(env, &val);
+	if (ret) {
+		dev_err(dev, "Failed to read %s: %pe\n", env, ERR_PTR(ret));
+		return ret;
+	}
+
+	return val;
+}
+
+static int skov_imx8mp_init_variant(struct device *dev)
+{
+	const struct board_description *variant;
+	const char *compatible;
+	unsigned int v = 0;
+	int ret;
+
+	ret = skov_imx8mp_get_variant_id(&v);
+	if (ret)
+		return ret;
+
+	if (v >= ARRAY_SIZE(imx8mp_variants)) {
+		dev_err(dev, "Invalid variant %u\n", v);
+		return -EINVAL;
+	}
+
+	variant = &imx8mp_variants[v];
+
+	if (variant->flags & SKOV_IMX8MP_HAS_HDMI) {
+		ret = skov_imx8mp_get_hdmi(dev);
+		if (ret < 0)
+			return ret;
+
+		if (ret)
+			compatible = variant->dts_compatible_hdmi;
+		else
+			compatible = variant->dts_compatible;
+	} else {
+		compatible = variant->dts_compatible;
+	}
+
+	of_prepend_machine_compatible(NULL, compatible);
+
+	return 0;
+}
+
 static void skov_imx8mp_enable_env(struct device *dev,
 				   const struct skov_imx8mp_storage *st,
 				   bool *enabled)
@@ -110,6 +236,8 @@ static int skov_imx8mp_probe(struct device *dev)
 {
 	skov_imx8mp_init_storage(dev);
 
+	skov_imx8mp_init_variant(dev);
+
 	return 0;
 }
 
-- 
2.39.2



