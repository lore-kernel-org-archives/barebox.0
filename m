Delivery-date: Fri, 07 Nov 2025 15:41:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHNf3-00GKIm-0a
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 15:41:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHNf2-0008T0-Dz
	for lore@pengutronix.de; Fri, 07 Nov 2025 15:41:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xRsT4V++hxicamc/PS3LAjxhWMlcHGeB/zcj6DR3gm0=; b=4mr+uI1D3nCtHfZzvhcB0MRxf9
	spELjG+K9pcZGXLGTc6k2CuKspu6iBQj9o7wk2uYRDJUzUGMGHk07OBo3IYr1M0Rh1U27F/Q3ZQu2
	TbwLgLLgt+uso0aBJxYJ1zSpUtQtG04LOkQmru8C9yHjlHaQ/0hj0i0RynWQEvLPStxag84AQBofX
	tGrx8j3w4zebxxcTMWF4jJdm4o8hACL+6id/SXMI1MTUHh2wfKfymokejFn+1BqI9ADzF1ZWu7Mm6
	t059AWfnP2A4RTZ4a1aMK2GnmmUZ1V7XTPbcwBb4FveD5qawJq73mlPxFrvy0lzHIvxJ0AA7A7l2v
	hyZ7iXUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHNeV-0000000HWAg-3c1p;
	Fri, 07 Nov 2025 14:41:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHNeS-0000000HWAK-48kU
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 14:41:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHNeQ-0008Gl-Kt; Fri, 07 Nov 2025 15:41:18 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHNeP-007Xpk-28;
	Fri, 07 Nov 2025 15:41:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHNeQ-0000000BST9-01Gy;
	Fri, 07 Nov 2025 15:41:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 07 Nov 2025 15:41:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-talloc-v2-2-e47bfd0e5667@pengutronix.de>
References: <20251107-talloc-v2-0-e47bfd0e5667@pengutronix.de>
In-Reply-To: <20251107-talloc-v2-0-e47bfd0e5667@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762526477; l=5483;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=RmFN9T6WUznsliBXCiemdDCS0r2BGzuReqAobGSCyVk=;
 b=39Xm2pSrfhgestTXwJHJTlEfpwpKLsEvuQOMUSPIOpDBp6ebqV1KrPWTiXRHIU2bYwjhGvJ46
 xedYRNEFWUdDtmL5LsL46gdUyS08152v8HnH3wMG4okypSBj3KMJvsv
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_064121_038344_E3FB93A6 
X-CRM114-Status: GOOD (  17.01  )
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
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/4] test: self: add talloc selftest
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

This self test exercises the hierarchical properties of talloc.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Link: https://lore.barebox.org/20251027075438.2480311-2-a.fatoum@barebox.org
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 test/self/Kconfig  |   6 +++
 test/self/Makefile |   1 +
 test/self/talloc.c | 153 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 160 insertions(+)

diff --git a/test/self/Kconfig b/test/self/Kconfig
index f46253afc034486833da5696e9df76294f2504d3..936b12072e60fc8d946ecd488af20eae8e8aa950 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -48,6 +48,7 @@ config SELFTEST_ENABLE_ALL
 	select SELFTEST_IDR
 	select SELFTEST_TLV
 	select SELFTEST_DM
+	select SELFTEST_TALLOC
 	help
 	  Selects all self-tests compatible with current configuration
 
@@ -61,6 +62,11 @@ config SELFTEST_MALLOC
 	help
 	  Tests barebox memory allocator
 
+config SELFTEST_TALLOC
+	bool "talloc() selftest"
+	help
+	  Tests barebox talloc allocator
+
 config SELFTEST_PRINTF
 	bool "printf selftest"
 	help
diff --git a/test/self/Makefile b/test/self/Makefile
index 124607b375d84a59a1e650eb2d39ac533e4a3ff1..0bd947928a50f1fb0620bb9cc8c2e0d7c846237f 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -3,6 +3,7 @@
 obj-$(CONFIG_SELFTEST) += core.o
 obj-$(CONFIG_SELFTEST_RANGE) += range.o
 obj-$(CONFIG_SELFTEST_MALLOC) += malloc.o
+obj-$(CONFIG_SELFTEST_TALLOC) += talloc.o
 obj-$(CONFIG_SELFTEST_PRINTF) += printf.o
 CFLAGS_printf.o += -Wno-format-security -Wno-format
 obj-$(CONFIG_SELFTEST_PROGRESS_NOTIFIER) += progress-notifier.o
diff --git a/test/self/talloc.c b/test/self/talloc.c
new file mode 100644
index 0000000000000000000000000000000000000000..1322269af498eef3b64cfe4226b82d39bbd853b8
--- /dev/null
+++ b/test/self/talloc.c
@@ -0,0 +1,153 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) "talloc: " fmt
+
+#include <common.h>
+#include <stdlib.h>
+#include <bselftest.h>
+#include <talloc.h>
+#include <linux/sizes.h>
+#include <linux/bitops.h>
+
+BSELFTEST_GLOBALS();
+
+static bool __selftest_check(bool cond, const char *func, int line)
+{
+	total_tests ++;
+	if (cond)
+		return true;
+
+	pr_err("assertion failure at %s:%d\n", func, line);
+
+	failed_tests++;
+	return false;
+}
+#define selftest_check(cond) __selftest_check((cond), __func__, __LINE__)
+
+#define STRESS_ALLOCS  1024
+#define STRESS_ITERS   5000
+
+static void talloc_basic_tests(void)
+{
+	void *root, *a, *b, *c;
+	void *tmp;
+
+	root = talloc_size(NULL, 0);
+	selftest_check(root == ZERO_SIZE_PTR);
+
+	root = talloc_new(NULL);
+	if (!selftest_check(!ZERO_OR_NULL_PTR(root)))
+		return;
+
+	a = talloc_size(root, 128);
+	selftest_check(a);
+
+	selftest_check(talloc_parent(a) == root);
+
+	b = talloc_zero_size(root, 256);
+	selftest_check(b && memchr_inv(b, 0x00, 256) == NULL);
+
+	c = talloc_strdup(root, "barebox talloc test");
+	selftest_check(c);
+
+	tmp = talloc_realloc_size(talloc_parent(a), a, 512);
+	if (selftest_check(tmp))
+		a = tmp;
+
+	selftest_check(talloc_parent(a) == root);
+
+	selftest_check(talloc_total_blocks(root) == 4);
+
+	/* Free child and verify parent is intact */
+	talloc_free(a);
+	selftest_check(talloc_total_blocks(root) == 3);
+
+	talloc_free(b);
+	selftest_check(talloc_total_blocks(root) == 2);
+
+	talloc_free(c);
+	selftest_check(talloc_total_blocks(root) == 1);
+
+	talloc_free(root);
+}
+
+static void talloc_hierarchy_tests(void)
+{
+	void *root = talloc_new(NULL);
+	void *lvl1, *lvl2, *lvl3;
+
+	lvl1 = talloc_new(root);
+	lvl2 = talloc_new(lvl1);
+	lvl3 = talloc_size(lvl2, 64);
+
+	selftest_check(lvl1 && lvl2 && lvl3);
+
+	selftest_check(talloc_parent(lvl3) == lvl2);
+
+	talloc_free(lvl1); /* should free all children */
+	selftest_check(talloc_total_blocks(root) == 1);
+
+	talloc_free(root);
+}
+
+static void talloc_stress_tests(void)
+{
+	void *root = talloc_new(NULL);
+	void *ptrs[STRESS_ALLOCS];
+
+	memset(ptrs, 0, sizeof(ptrs));
+
+	for (int iter = 0; iter < STRESS_ITERS; iter++) {
+		int idx = prandom_u32_max(STRESS_ALLOCS);
+		if (ptrs[idx]) {
+			talloc_free(ptrs[idx]);
+			ptrs[idx] = NULL;
+		} else {
+			size_t sz = prandom_u32_max(4096) + 1;
+			ptrs[idx] = talloc_size(root, sz);
+			if (selftest_check(ptrs[idx]) &&
+			    prandom_u32_max(8) == 0) {
+				/* Occasionally realloc to a different size */
+				size_t new_sz = prandom_u32_max(8192) + 1;
+				void *tmp = talloc_realloc_size(NULL,
+								ptrs[idx], new_sz);
+				if (selftest_check(tmp))
+					ptrs[idx] = tmp;
+			}
+		}
+	}
+
+	for (int i = 0; i < STRESS_ALLOCS; i++) {
+		if (ptrs[i])
+			talloc_free(ptrs[i]);
+	}
+	talloc_free(root);
+}
+
+static void talloc_corner_cases(void)
+{
+	void *root = talloc_new(NULL);
+	void *large;
+
+	talloc_free(NULL);
+
+	void *realloc_null = talloc_realloc_size(NULL, NULL, 128);
+	selftest_check(realloc_null);
+	talloc_free(realloc_null);
+
+	/* Large alloc test (may fail gracefully if memory-constrained) */
+	large = talloc_size(root, 1024 * 1024 * 10);
+	if (selftest_check(large))
+		talloc_free(large);
+
+	talloc_free(root);
+}
+
+static void test_talloc(void)
+{
+	talloc_basic_tests();
+	talloc_hierarchy_tests();
+	talloc_stress_tests();
+	talloc_corner_cases();
+}
+bselftest(core, test_talloc);

-- 
2.47.3



