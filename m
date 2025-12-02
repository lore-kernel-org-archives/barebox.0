Delivery-date: Tue, 02 Dec 2025 10:23:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQMbm-0077Gc-1V
	for lore@lore.pengutronix.de;
	Tue, 02 Dec 2025 10:23:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQMbl-0004rF-Rl
	for lore@pengutronix.de; Tue, 02 Dec 2025 10:23:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C4T1iXfM+Gyf6RYGXreo053s68aX+5kDTEjVCMMOrG0=; b=oTc3SZXHv7KgxdOM9r+8gee/5B
	/yROZv/j4F7bI8DVNbkBTYKFiZOinM3kI+BfZajgHMN4EOIZwUFNGK99turzruJ5sM1VM4UHFlwGi
	iJWfPfo/CzbC3CNdIop870N7fbvdGPR312CMPHP2DbBHWLKQhnmvkE+JSPHdYDf4gunamlkU2y6JX
	mmJk17OC04xa1JYeAzhCaMHE59nRcqGywTW/VUc5o1wS3a7U67P9GRgUOvndyZZ274ce5tiIvP07R
	M8+3oVJsOsso38dWO69vR1YB4I8BUULcfm2dA6OWL1Z6uUQPzyHaAWR8Rb2Idb2ogAWtqmrZagXl7
	DUwQpwQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQMbA-0000000568I-1H7f;
	Tue, 02 Dec 2025 09:23:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQMay-0000000566x-1HdQ
	for barebox@lists.infradead.org;
	Tue, 02 Dec 2025 09:23:03 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vQMaw-0004cr-Ou; Tue, 02 Dec 2025 10:22:50 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 02 Dec 2025 10:22:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251202-base64-bounds-v2-2-34d3716c3f55@pengutronix.de>
References: <20251202-base64-bounds-v2-0-34d3716c3f55@pengutronix.de>
In-Reply-To: <20251202-base64-bounds-v2-0-34d3716c3f55@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=2721; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=Lz5u9jp9oR3TbZtyLlmXJ2ruiAs0+WRdsPC1KAxYfqA=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjUW//qzf1TAVpuusuLDp98fNzldvrq9U+2bXA3ipwgK
 nBplcic+x2lLAxiXAyyYoossWpyCkLG/tfNKu1iYeawMoEMYeDiFICJTJ3J8L/UUYBvd5SGh/bB
 gj9T9GdEP33h3r72e4DrjCXNB++eXnGH4b/7xFg28RnX5z071Bh5rLx3pfmq5KvHPoZL739iwiV
 4tJoNAA==
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_012252_347088_D03A7BB8 
X-CRM114-Status: GOOD (  10.26  )
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
Subject: [PATCH v2 2/2] test: self: add base64 selftests
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
index 0000000000..c9140aedb9
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
+static void __expect_base64(const char *func, int line, int dst_len,
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
+	__expect_base64(__func__, __LINE__, dst_len, src, expect_len, expect)
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



