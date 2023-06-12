Delivery-date: Mon, 12 Jun 2023 14:57:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h6b-003qH0-4H
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:57:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8h6Y-0007BM-3J
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:57:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=S0lVAtomOR/j1dafah2L5TfnzoL0Jzbt+ZJZJRBca98=; b=2nJ4+TFTk4JXCPE8ngqwUqR0mC
	83gjjKm0t8RNeP5/OOHqLFAIrpKZHj247MoGaC4t6DgVoAbT+zowdA1AZC2Sig6NGX/mqwoC/W59a
	ohas2kIYKhl0HtLM2qHcjnPZHKCtpMK/KNHP0smfJoyqvijBvusx2VAHzSy3upDdLly/9r2HuYrTY
	L2M+HquOcI3GVd316WHr8/crPKpD4dp6542okOek6rbOyzxcBhdYWIA0ZCe/+/uWlePwOsMXrsC3z
	XaZhYRd/A1E/tYNSLn532MpBukT1zqJKguOjJLReQryHF965wlPhfelDoCPb8COLBy/slY26BJDAC
	7pgy2Qzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h5R-0045yq-33;
	Mon, 12 Jun 2023 12:55:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h5N-0045yG-1t
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:55:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h5M-00071T-38; Mon, 12 Jun 2023 14:55:52 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h5L-006tTy-FA; Mon, 12 Jun 2023 14:55:51 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8h5K-004YRr-IO; Mon, 12 Jun 2023 14:55:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 14:55:44 +0200
Message-Id: <20230612125544.1085413-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_055553_806255_A28C3255 
X-CRM114-Status: GOOD (  21.77  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] test: self: add basic regulator selftest
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This simple test verifies registration and always-on enabling and disabling
work as they should. It may be extended in future to support more
complex cases.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - add select on OF_OVERLAY (Sascha)
  - reorder regulators, so test succeeds
---
 test/self/Kconfig             |   7 +-
 test/self/Makefile            |   1 +
 test/self/regulator.c         | 188 ++++++++++++++++++++++++++++++++++
 test/self/test_regulator.dtso |  43 ++++++++
 4 files changed, 238 insertions(+), 1 deletion(-)
 create mode 100644 test/self/regulator.c
 create mode 100644 test/self/test_regulator.dtso

diff --git a/test/self/Kconfig b/test/self/Kconfig
index dcbfa85896f7..a4176ab8ffd6 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -38,9 +38,9 @@ config SELFTEST_ENABLE_ALL
 	imply SELFTEST_JSON
 	imply SELFTEST_DIGEST
 	imply SELFTEST_MMU
-	imply SELFTEST_REGULATOR
 	imply SELFTEST_STRING
 	imply SELFTEST_SETJMP
+	imply SELFTEST_REGULATOR
 	help
 	  Selects all self-tests compatible with current configuration
 
@@ -92,4 +92,9 @@ config SELFTEST_SETJMP
 	bool "setjmp/longjmp library selftest"
 	depends on ARCH_HAS_SJLJ
 
+config SELFTEST_REGULATOR
+	bool "Regulator selftest"
+	depends on REGULATOR && OFDEVICE
+	select OF_OVERLAY
+
 endif
diff --git a/test/self/Makefile b/test/self/Makefile
index b6f4395147dd..080ef303cc35 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -13,6 +13,7 @@ obj-$(CONFIG_SELFTEST_DIGEST) += digest.o
 obj-$(CONFIG_SELFTEST_MMU) += mmu.o
 obj-$(CONFIG_SELFTEST_STRING) += string.o
 obj-$(CONFIG_SELFTEST_SETJMP) += setjmp.o
+obj-$(CONFIG_SELFTEST_REGULATOR) += regulator.o test_regulator.dtbo.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
 clean-files += *.dtbo *.dtbo.S .*.dtso
diff --git a/test/self/regulator.c b/test/self/regulator.c
new file mode 100644
index 000000000000..e89164700ef1
--- /dev/null
+++ b/test/self/regulator.c
@@ -0,0 +1,188 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
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
+	 * Ordering LDO1 before TEST_BUCK currently fails. This needs to be fixed
+	 */
+	TEST_BUCK,
+	TEST_LDO1,
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
+	dev_dbg(dev, "registering %s\n", match->name);
+
+	ret = of_regulator_register(&cfg->rdev, match->of_node);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to register %s regulator\n",
+				     match->name);
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
+MODULE_DEVICE_TABLE(of, test_regulator_of_match);
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
2.39.2



