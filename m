Delivery-date: Mon, 07 Feb 2022 09:29:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGzOv-00852D-DC
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 09:29:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGzOt-0007nT-Id
	for lore@pengutronix.de; Mon, 07 Feb 2022 09:29:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/lvhrFjVF3r5k57slJX3JYKgUiv6xdHTtQANjV+zA8U=; b=trl54wXNAPVN9i
	ytnZhcrN52ELU2GAJ50BCgd+vd0u4CEF/7ScQLrFyGLB7bH1nnHgr06G63BBF4xV6KTByvhYqoaHp
	XvfMzIpAWTwcJz27RD9D6yLFw+N8C0TZjbSICr9df/x2OnGIf+ZVRPevVaVogTZZ6b7IUfstP9cmh
	uzDIH+/GR8l+tBhhAwUp+9pN0nLy3Uyc6vNjFqBGJRQxHep8gZZ9+8knXr965IX5s0LDXI/7Fhv2Q
	2ZGQqe+qeAIAdKHzjZ6WMNKfldaA5YweKOcG3+TYD5S68T0BKQp3/0es3Pv6TqNQ6Z5Q+gJmhftra
	vlJ+9bPziCuUBqI/1Ujg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGzNj-009LGN-W4; Mon, 07 Feb 2022 08:28:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGzNV-009LC4-4a
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 08:28:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nGzNT-0007Y5-PF; Mon, 07 Feb 2022 09:28:03 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nGzNT-004Pw6-7Z; Mon, 07 Feb 2022 09:28:03 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  7 Feb 2022 09:28:01 +0100
Message-Id: <20220207082801.1052894-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220207082801.1052894-1-a.fatoum@pengutronix.de>
References: <20220207082801.1052894-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_002805_263947_6EA47690 
X-CRM114-Status: GOOD (  14.92  )
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
Subject: [PATCH v2 5/5] test: self: add device tree manipulation test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We had recently gained support for two extra helpers:

of_property_sprintf and of_property_write_strings. Add tests for them as
well as for general OF creation and unflattening.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - s/of_property_write_string/of_property_write_strings/ in commit
    message
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

