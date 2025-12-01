Delivery-date: Mon, 01 Dec 2025 15:10:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ4bN-006q7U-1z
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 15:10:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ4bN-0007jj-0o
	for lore@pengutronix.de; Mon, 01 Dec 2025 15:10:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m9Vpn3Msryqb+dabNwtEfqk+DiR2YIocFPOI3EMCGtw=; b=ae+miMB4ICy2egC3MK6lmbQ/wQ
	aOYj5cKjiR5/BvTtweyleA4brzCcpLzD88R57Nu7yCIXtawuICPCs+15qy4BBGAIlah0o7O13FAwP
	Er1n8ymqq239n14eU8AD9fb6d42mcAcEPu3rH4agfZoEX5QxGTWuAnJzOigtc/voLbW8tfqd42wtr
	AGjnUjxQi27u4UEtrnXjCXCqrG6vVG2rRTn0Fg2RBgqxgPQRDe6W9YB6YMW68Vl8qE5hiALDSKX/p
	RmwwIhVarFaXhUCSICgABQUrYPpcMB0GnoeOYaC0uFvj+XbyVqcknzkMKShym/3fbYgci3JU21k8q
	1ikW+E9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ4al-000000043UZ-30b4;
	Mon, 01 Dec 2025 14:09:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ4ai-000000043TM-0WkW
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 14:09:26 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vQ4ae-0007a4-SW; Mon, 01 Dec 2025 15:09:20 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 01 Dec 2025 15:09:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251201-base64-bounds-v1-2-3ae2b2e8b7cb@pengutronix.de>
References: <20251201-base64-bounds-v1-0-3ae2b2e8b7cb@pengutronix.de>
In-Reply-To: <20251201-base64-bounds-v1-0-3ae2b2e8b7cb@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=2719; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=IGamFGBu8f9ge5fHfS5NT5lIc0QBAfSmb59sLEBKzr4=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjUXdivkVwi7cR21UpB3WJuVYeVjQ1fQMDnwsq3m1SnN
 d0Q5w7sKGVhEONikBVTZIlVk1MQMva/blZpFwszh5UJZAgDF6cATCRyBcN/R2sGnYhYr1/Nad5O
 Eqp7u9JUpN1uO+68teN/RNr7kOMZDP/dV59R/3bw5KeNk274+ypkX9e+7sad7pb26+42D4Pg9GY
 mAA==
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_060924_172299_5DBF55C2 
X-CRM114-Status: GOOD (  10.22  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] test: self: add base64 selftests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These tests are specifically tailored around respecting the dst_len
parameter.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 test/self/Kconfig  |  7 +++++++
 test/self/Makefile |  1 +
 test/self/base64.c | 45 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 53 insertions(+)

diff --git a/test/self/Kconfig b/test/self/Kconfig
index 936b12072e..adef8609ef 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -28,6 +28,7 @@ config SELFTEST_AUTORUN
 
 config SELFTEST_ENABLE_ALL
 	bool "Enable all self-tests"
+	select SELFTEST_BASE64
 	select SELFTEST_RANGE
 	select SELFTEST_PRINTF
 	select SELFTEST_MALLOC
@@ -52,6 +53,12 @@ config SELFTEST_ENABLE_ALL
 	help
 	  Selects all self-tests compatible with current configuration
 
+config SELFTEST_BASE64
+	bool "base64 selftest"
+	select BASE64
+	help
+	  Tests base64 implementation
+
 config SELFTEST_RANGE
 	bool "range.h selftest"
 	help
diff --git a/test/self/Makefile b/test/self/Makefile
index 0bd947928a..d244c19052 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 
 obj-$(CONFIG_SELFTEST) += core.o
+obj-$(CONFIG_SELFTEST_BASE64) += base64.o
 obj-$(CONFIG_SELFTEST_RANGE) += range.o
 obj-$(CONFIG_SELFTEST_MALLOC) += malloc.o
 obj-$(CONFIG_SELFTEST_TALLOC) += talloc.o
diff --git a/test/self/base64.c b/test/self/base64.c
new file mode 100644
index 0000000000..aedd5c6b58
--- /dev/null
+++ b/test/self/base64.c
@@ -0,0 +1,45 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <common.h>
+#include <bselftest.h>
+#include <base64.h>
+#include <string.h>
+
+BSELFTEST_GLOBALS();
+
+static void __expect_streq(const char *func, int line, int dst_len,
+			   const char *src, int expect_len, const char *expect)
+{
+	int ret;
+	char *buf = strdup("canary");
+	bool fail = false;
+
+	total_tests++;
+	ret = decode_base64(buf, dst_len, src);
+	if (!streq_ptr(buf, expect)) {
+		fail = true;
+		printf("%s:%d: got '%s', but '%s' expected\n", func, line, buf,
+		       expect);
+	}
+	if (ret != expect_len) {
+		fail = true;
+		printf("%s:%d: got length %i, but %i expected\n", func, line,
+		       ret, expect_len);
+	}
+	if (fail)
+		failed_tests++;
+	free(buf);
+}
+
+#define expect_base64(dst_len, src, expect_len, expect) \
+	__expect_streq(__func__, __LINE__, dst_len, src, expect_len, expect)
+
+static void test_base64(void)
+{
+	expect_base64(1, "QUJD", 1, "Aanary");
+	expect_base64(5, "QUJD", 3, "ABCary");
+	expect_base64(5, "$UJD", 0, "canary");
+}
+bselftest(parser, test_base64);

-- 
2.51.2.535.g419c72cb8a



