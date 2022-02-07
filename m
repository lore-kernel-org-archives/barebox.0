Delivery-date: Mon, 07 Feb 2022 08:58:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGyuO-0083Xo-Qm
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 08:58:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGyuM-0002kV-Hc
	for lore@pengutronix.de; Mon, 07 Feb 2022 08:58:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+EzQcsz88S5hNi7SMgkIrMOh3VEITdyp15/vk6h5SE=; b=AHvW5OOj3tPr0U
	lvIDUfWzP/2Cs/aj632amNNxyhG3SzOYn/LCDL/ftcu9NTmSID0F+SSkgm15DLqL6XURLYGgkoXv3
	84QyVJ8MtTT0tYrJrdK2vgf+9PtaQhZ9303gqAJg8UEtpAphJip6YEDKg1kbdnZTgLUaC7ArXFRt4
	V401vWlRNWNmKXblUrv9iDyIt8dmgKpGgIc2tKjByq0izNlJjB65fyUIOkgKaMoRPsGA7SI6JJkmy
	lwFk6++b5EOy0EB22CYMY0bygXUICXeE11cJ407qTZwCVytKVCxL1mQ37SSXwtu82l8cAJRVnzrOZ
	yKPXFX5DXK7fdeGnf5Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGyt3-009Gi3-AO; Mon, 07 Feb 2022 07:56:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGysq-009Gbx-6U
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 07:56:27 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nGyso-0002B4-Vs; Mon, 07 Feb 2022 08:56:22 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nGyso-004Fu6-Df; Mon, 07 Feb 2022 08:56:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  7 Feb 2022 08:56:21 +0100
Message-Id: <20220207075621.1014381-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220207075621.1014381-1-a.fatoum@pengutronix.de>
References: <20220207075621.1014381-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220206_235624_281082_6D2A71FF 
X-CRM114-Status: GOOD (  14.25  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/5] test: self: add device tree manipulation test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We had recently gained support for two extra helpers:

of_property_sprintf and of_property_write_string. Add tests for them as
well as for general OF creation and unflattening.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/Kconfig             |   6 ++
 test/self/Makefile            |   1 +
 test/self/of_manipulation.c   | 111 ++++++++++++++++++++++++++++++++++
 test/self/of_manipulation.dts |  30 +++++++++
 4 files changed, 148 insertions(+)
 create mode 100644 test/self/of_manipulation.c
 create mode 100644 test/self/of_manipulation.dts

diff --git a/test/self/Kconfig b/test/self/Kconfig
index dfaa32dda009..3340a9146ee2 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -37,6 +37,12 @@ config SELFTEST_PRINTF
 	help
 	  Tests barebox vsnprintf() functionality
 
+config SELFTEST_OF_MANIPULATION
+	bool "OF manipulation selftest"
+	select OFTREE
+	help
+	  Tests barebox device tree manipulation functionality
+
 config SELFTEST_PROGRESS_NOTIFIER
 	bool "progress notifier selftest"
 
diff --git a/test/self/Makefile b/test/self/Makefile
index e78ccc3cfb90..05a2a6a236ec 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -3,3 +3,4 @@
 obj-$(CONFIG_SELFTEST) += core.o
 obj-$(CONFIG_SELFTEST_PRINTF) += printf.o
 obj-$(CONFIG_SELFTEST_PROGRESS_NOTIFIER) += progress-notifier.o
+obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.o
diff --git a/test/self/of_manipulation.c b/test/self/of_manipulation.c
new file mode 100644
index 000000000000..1bcd593c8628
--- /dev/null
+++ b/test/self/of_manipulation.c
@@ -0,0 +1,111 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <common.h>
+#include <bselftest.h>
+#include <linux/kernel.h>
+#include <module.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <linux/string.h>
+#include <errno.h>
+#include <of.h>
+
+BSELFTEST_GLOBALS();
+
+static void assert_different(struct device_node *a, struct device_node *b, int expect)
+{
+	int ret;
+
+	total_tests++;
+
+	ret = of_diff(a, b, -1);
+	if (ret == expect)
+		return;
+
+	pr_warn("comparison of %s and %s failed: %u differences expected, %u found.\n",
+		a->full_name, b->full_name, expect, ret);
+	of_diff(a, b, 1);
+	failed_tests++;
+}
+
+#define assert_equal(a, b) assert_different(a, b, 0)
+
+static void test_of_basics(struct device_node *root)
+{
+	struct device_node *node1, *node2, *node21;
+
+	node1 = of_new_node(root, "node1");
+	node2 = of_new_node(root, "node2");
+
+	assert_equal(node1, node2);
+
+	of_property_write_bool(node2, "property1", true);
+
+	assert_different(node1, node2, 1);
+
+	node21 = of_new_node(node2, "node21");
+
+	assert_different(node1, node2, 2);
+	assert_equal(node1, node21);
+
+	of_new_node(node1, "node21");
+
+	assert_different(node1, node2, 1);
+
+	of_property_write_bool(node1, "property1", true);
+
+	assert_equal(node1, node2);
+}
+
+static void test_of_property_strings(struct device_node *root)
+{
+	struct device_node *np1, *np2, *np3;
+	char properties[] = "ayy\0bee\0sea";
+
+	np1 = of_new_node(root, "np1");
+	np2 = of_new_node(root, "np2");
+	np3 = of_new_node(root, "np3");
+
+	of_property_sprintf(np1, "property-single", "%c%c%c", 'a', 'y', 'y');
+
+	of_property_write_string(np2, "property-single", "ayy");
+
+	assert_equal(np1, np2);
+
+	of_set_property(np2, "property-multi", properties, sizeof(properties), 1);
+
+	of_property_write_strings(np3, "property-single", "ayy", NULL);
+	of_property_write_strings(np3, "property-multi",
+				  "ayy", "bee", "sea", NULL);
+
+	assert_equal(np2, np3);
+
+	of_set_property(np1, "property-multi", properties, sizeof(properties), 1);
+
+	assert_equal(np1, np2);
+
+	of_set_property(np1, "property-multi", properties, sizeof(properties) - 1, 0);
+
+	assert_different(np1, np2, 1);
+}
+
+static void __init test_of_manipulation(void)
+{
+	extern char __dtb_of_manipulation_start[], __dtb_of_manipulation_end[];
+	struct device_node *root = of_new_node(NULL, NULL);
+	struct device_node *expected;
+
+	test_of_basics(root);
+	test_of_property_strings(root);
+
+	expected = of_unflatten_dtb(__dtb_of_manipulation_start,
+				    __dtb_of_manipulation_end - __dtb_of_manipulation_start);
+
+	assert_equal(root, expected);
+
+	of_delete_node(root);
+	of_delete_node(expected);
+}
+bselftest(core, test_of_manipulation);
diff --git a/test/self/of_manipulation.dts b/test/self/of_manipulation.dts
new file mode 100644
index 000000000000..3b690bb7f0fe
--- /dev/null
+++ b/test/self/of_manipulation.dts
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+/dts-v1/;
+
+/ {
+	node1 {
+		property1;
+		node21 { };
+	};
+
+	node2 {
+		property1;
+		node21 { };
+	};
+
+	np1 {
+		property-single = "ayy";
+		property-multi = [61 79 79 00 62 65 65 00 73 65 61];
+	};
+
+	np2 {
+		property-single = "ayy";
+		property-multi = "ayy", "bee", "sea";
+	};
+
+	np3 {
+		property-single = "ayy";
+		property-multi = "ayy", "bee", "sea";
+	};
+};
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

