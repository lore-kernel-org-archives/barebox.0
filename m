Delivery-date: Mon, 24 Apr 2023 14:00:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pqus1-00FXPT-UV
	for lore@lore.pengutronix.de; Mon, 24 Apr 2023 14:00:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pqus1-0001KF-Hj
	for lore@pengutronix.de; Mon, 24 Apr 2023 14:00:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x/extJiuBlgY/lCXnf5oVxv9O0BeU3iQueIOfKeqARE=; b=JiLw+ye23FP1i7SZh0+QDbyMz5
	NrpNjXZMTVXjZLLVzKLFJyxiJr957qVXmrq1q188RFT95UesicMN27PlGBpOPHtHKiExCl5YTKR6/
	U867FYkgXl0X1tbNjbMq8iF5O7yRpvBuA++vBbh/L8fMFbnOgAu48PQEZqiaMtz1oHvAdlo/cgR6X
	HcKXnpKECmw+L/MV6A970OIjxzIFjY/StKkvvleIE1EZ/eTqwMBEkXt9ye9ICE49LxrEPP03f4iIp
	JWn9pPTY9rf6bOTazAE7ZsJMaU/3KXBH5wyerkJ0VxitoYYkeKy1qTfFzbCimxiW5h9/nbg5azuJI
	h5GGXfoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pquqs-00GFTw-1I;
	Mon, 24 Apr 2023 11:59:26 +0000
Received: from relay2-d.mail.gandi.net ([2001:4b98:dc4:8::222])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pquqo-00GFSz-1I
	for barebox@lists.infradead.org;
	Mon, 24 Apr 2023 11:59:24 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 7330540003;
	Mon, 24 Apr 2023 11:59:18 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 24 Apr 2023 13:59:08 +0200
Message-Id: <20230424115908.115474-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.4
In-Reply-To: <20230424115908.115474-1-ahmad@a3f.at>
References: <20230424115908.115474-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230424_045922_733889_541F2B2B 
X-CRM114-Status: GOOD (  19.92  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] test: self: add basic regulator selftest
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This simple test verifies registration and always-on enabling and disabling
work as they should. It may be extended in future to support more
complex cases.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 test/self/Kconfig             |   5 +
 test/self/Makefile            |   1 +
 test/self/regulator.c         | 188 ++++++++++++++++++++++++++++++++++
 test/self/test_regulator.dtso |  43 ++++++++
 4 files changed, 237 insertions(+)
 create mode 100644 test/self/regulator.c
 create mode 100644 test/self/test_regulator.dtso

diff --git a/test/self/Kconfig b/test/self/Kconfig
index ce5048c70ec9..ea436aa34664 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -36,6 +36,7 @@ config SELFTEST_ENABLE_ALL
 	imply SELFTEST_FS_RAMFS
 	imply SELFTEST_TFTP
 	imply SELFTEST_JSON
+	imply SELFTEST_REGULATOR
 	help
 	  Selects all self-tests compatible with current configuration
 
@@ -69,4 +70,8 @@ config SELFTEST_JSON
 	bool "JSON selftest"
 	depends on JSMN
 
+config SELFTEST_REGULATOR
+	bool "Regulator selftest"
+	depends on REGULATOR && OFDEVICE
+
 endif
diff --git a/test/self/Makefile b/test/self/Makefile
index 98ebd1fd66c1..a5dc1531dc11 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -9,6 +9,7 @@ obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.
 obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
 obj-$(CONFIG_SELFTEST_FS_RAMFS) += ramfs.o
 obj-$(CONFIG_SELFTEST_JSON) += json.o
+obj-$(CONFIG_SELFTEST_REGULATOR) += regulator.o test_regulator.dtbo.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
 clean-files += *.dtbo *.dtbo.S .*.dtso
diff --git a/test/self/regulator.c b/test/self/regulator.c
new file mode 100644
index 000000000000..cfbfd0490385
--- /dev/null
+++ b/test/self/regulator.c
@@ -0,0 +1,188 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+#define DEBUG 1
+#include <common.h>
+#include <bselftest.h>
+#include <driver.h>
+#include <of.h>
+#include <regulator.h>
+#include <linux/regulator/of_regulator.h>
+
+struct test_regulator {
+	struct device *dev;
+};
+
+struct test_regulator_cfg {
+	struct regulator_desc desc;
+	struct regulator_dev rdev;
+};
+
+BSELFTEST_GLOBALS();
+
+static bool __ok(bool cond, const char *func, int line)
+{
+	total_tests++;
+	if (!cond) {
+		failed_tests++;
+		printf("%s:%d: assertion failure\n", func, line);
+		return false;
+	}
+
+	return true;
+}
+
+#define ok(cond) \
+	__ok(cond, __func__, __LINE__)
+
+static void test_regulator_selfref_always_on(struct device *dev)
+{
+	ok(1 == 1);
+}
+
+static int test_regulator_enable_noop(struct regulator_dev *rdev)
+{
+	dev_dbg(rdev->dev, "enabling %s-supply\n", rdev->desc->supply_name);
+	failed_tests--;
+	return 0;
+}
+
+static int test_regulator_disable_noop(struct regulator_dev *rdev)
+{
+	dev_dbg(rdev->dev, "disabling %s-supply\n", rdev->desc->supply_name);
+	failed_tests--;
+	return 0;
+}
+
+static const struct regulator_ops test_regulator_ops_range = {
+	.enable		= test_regulator_enable_noop,
+	.disable	= test_regulator_disable_noop,
+};
+
+enum {
+	/*
+	 * This is intentionally ordered that way to test registering
+	 * an always-on regulator before its sibling that it depends on
+	 */
+	TEST_LDO1,
+	TEST_BUCK,
+	TEST_LDO2,
+	TEST_REGULATORS_NUM
+};
+
+static struct test_regulator_cfg test_pmic_reg[] = {
+	[TEST_BUCK] = {{
+		 .supply_name = "buck",
+		 .ops = &test_regulator_ops_range,
+	}},
+	[TEST_LDO1] = {{
+		 .supply_name = "ldo1",
+		 .ops = &test_regulator_ops_range,
+	}},
+	[TEST_LDO2] = {{
+		.supply_name = "ldo2",
+		.ops = &test_regulator_ops_range,
+	}},
+};
+
+static struct of_regulator_match test_reg_matches[] = {
+	[TEST_BUCK] = { .name = "BUCK", .desc = &test_pmic_reg[TEST_BUCK].desc },
+	[TEST_LDO1] = { .name = "LDO1", .desc = &test_pmic_reg[TEST_LDO1].desc },
+	[TEST_LDO2] = { .name = "LDO2", .desc = &test_pmic_reg[TEST_LDO2].desc },
+};
+
+static int test_regulator_register(struct test_regulator *priv, int id,
+				    struct of_regulator_match *match,
+				    struct test_regulator_cfg *cfg)
+{
+	struct device *dev = priv->dev;
+	int ret;
+
+	if (!match->of_node) {
+		dev_warn(dev, "Skip missing DTB regulator %s\n", match->name);
+		return 0;
+	}
+
+	cfg->rdev.desc = &cfg->desc;
+	cfg->rdev.dev = dev;
+
+	ret = of_regulator_register(&cfg->rdev, match->of_node);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to register %s regulator\n",
+				     match->name);
+
+	dev_dbg(dev, "registered %s\n", match->name);
+
+	return 0;
+}
+
+static int regulator_probe(struct device *dev)
+{
+	size_t nregulators = ARRAY_SIZE(test_pmic_reg);
+	struct device_node *np = dev->of_node;
+	struct test_regulator *priv;
+	int ret, i;
+
+	priv = xzalloc(sizeof(*priv));
+	priv->dev = dev;
+
+	total_tests += 2;
+	failed_tests += 2;
+
+	np = of_get_child_by_name(np, "regulators");
+	if (!np)
+		return -ENOENT;
+
+	ret = of_regulator_match(dev, np, test_reg_matches, nregulators);
+	if (ret < 0)
+		return ret;
+
+	ok(ret == TEST_REGULATORS_NUM);
+
+	for (i = 0; i < nregulators; i++) {
+		ret = test_regulator_register(priv, i, &test_reg_matches[i],
+					      &test_pmic_reg[i]);
+		ok(ret == 0);
+		if (ret < 0)
+			return ret;
+	}
+
+	return 0;
+}
+
+static const struct of_device_id test_regulator_of_match[] = {
+	{ .compatible = "barebox,regulator-self-test" },
+	{ /* sentintel */ },
+};
+
+static struct driver regulator_test_driver = {
+	.name = "regulator-test",
+	.probe = regulator_probe,
+	.of_match_table = test_regulator_of_match,
+};
+
+static struct device_d *dev;
+
+static void test_regulator(void)
+{
+	extern char __dtbo_test_regulator_start[];
+	struct device_node *overlay;
+	int ret;
+
+	if (!dev) {
+		ret = platform_driver_register(&regulator_test_driver);
+		if (ret)
+			return;
+
+		overlay = of_unflatten_dtb(__dtbo_test_regulator_start, INT_MAX);
+		of_overlay_apply_tree(of_get_root_node(), overlay);
+		of_probe();
+
+		dev = of_find_device_by_node_path("/regulator-self-test-pmic");
+
+		ok(dev->driver != NULL);
+	}
+
+	test_regulator_selfref_always_on(dev);
+}
+bselftest(core, test_regulator);
diff --git a/test/self/test_regulator.dtso b/test/self/test_regulator.dtso
new file mode 100644
index 000000000000..65d2b130988d
--- /dev/null
+++ b/test/self/test_regulator.dtso
@@ -0,0 +1,43 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+/dts-v1/;
+/plugin/;
+
+&{/} {
+	regulator_test_fixed: regulator-self-test-fixed {
+		compatible = "regulator-fixed";
+		regulator-name = "test_fixed";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	regulator-self-test-pmic {
+		compatible = "barebox,regulator-self-test";
+
+		buck-supply = <&regulator_test_fixed>;
+		ldo1-supply = <&test_pmic_buck>;
+		ldo2-supply = <&test_pmic_buck>;
+
+		regulators {
+			test_pmic_buck: BUCK {
+				regulator-name = "buck";
+				regulator-min-microvolt = <330000>;
+				regulator-max-microvolt = <330000>;
+			};
+
+			test_pmic_ldo1: LDO1 {
+				regulator-name = "ldo1";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <180000>;
+				regulator-max-microvolt = <180000>;
+			};
+
+			test_pmic_ldo2: LDO2 {
+				regulator-name = "ldo2";
+				regulator-min-microvolt = <180000>;
+				regulator-max-microvolt = <180000>;
+			};
+		};
+	};
+};
-- 
2.38.4



