Delivery-date: Mon, 27 Oct 2025 08:55:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDI4P-00CGe1-2d
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 08:55:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDI4P-0000Kd-3K
	for lore@pengutronix.de; Mon, 27 Oct 2025 08:55:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6erSTtvTz/EsAvKUDznUKJ9y9fce4YjXSqbw8xWiDeg=; b=acBwl5h9ptjfnOiq4vxzwoWZdM
	MuveC0OVzwQNHgxIXfbxfu8msCiNC97eQvaZkWt7cKSCt+hyX0UWZ5IyTiWd6Mu+SwxaRtDwqtIyM
	u7UvTFDr9hhoKxvwv/7QlmZ6MqTZaF9TK2h94logphqVXVTA+OYtYyg1YV2PEaJpeFbUY983Ngyiw
	Xu9Rb/E0toqsaPU4jfZ4atv72K8xhBoxlD/kz7pCDwxNiaJ1fNlXnpqphMeAsGgGqGKrZtBB8mr6L
	36vUpvSwNVX+APfVJ6RujXRng9alND4yLPatMPWaekZifj3a7vKP/vbwv/vIgQByMpaSs5wa+A0NH
	aqtsPi4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDI3w-0000000DJBV-0lVq;
	Mon, 27 Oct 2025 07:54:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDI3t-0000000DJAE-37We
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 07:54:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDI3s-0000B3-55; Mon, 27 Oct 2025 08:54:40 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 08:54:33 +0100
Message-ID: <20251027075438.2480311-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251027075438.2480311-1-a.fatoum@barebox.org>
References: <20251027075438.2480311-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_005441_786224_7DCB556F 
X-CRM114-Status: GOOD (  15.97  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH RFC 2/3] test: self: add talloc selftest
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This self test exercises the hierarchical properties of talloc.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/self/Kconfig  |   6 ++
 test/self/Makefile |   1 +
 test/self/talloc.c | 153 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 160 insertions(+)
 create mode 100644 test/self/talloc.c

diff --git a/test/self/Kconfig b/test/self/Kconfig
index fa2911fa649a..23c82b4f2c93 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -47,6 +47,7 @@ config SELFTEST_ENABLE_ALL
 	select SELFTEST_IDR
 	select SELFTEST_TLV
 	select SELFTEST_DM
+	select SELFTEST_TALLOC
 	help
 	  Selects all self-tests compatible with current configuration
 
@@ -55,6 +56,11 @@ config SELFTEST_MALLOC
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
index 3d74bf9e98ad..3afaada5f54a 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -2,6 +2,7 @@
 
 obj-$(CONFIG_SELFTEST) += core.o
 obj-$(CONFIG_SELFTEST_MALLOC) += malloc.o
+obj-$(CONFIG_SELFTEST_TALLOC) += talloc.o
 obj-$(CONFIG_SELFTEST_PRINTF) += printf.o
 CFLAGS_printf.o += -Wno-format-security -Wno-format
 obj-$(CONFIG_SELFTEST_PROGRESS_NOTIFIER) += progress-notifier.o
diff --git a/test/self/talloc.c b/test/self/talloc.c
new file mode 100644
index 000000000000..1322269af498
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



