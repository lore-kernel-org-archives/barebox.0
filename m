Delivery-date: Mon, 23 May 2022 10:06:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt350-006Hci-2W
	for lore@lore.pengutronix.de; Mon, 23 May 2022 10:06:18 +0200
Received: from [2607:7c80:54:3::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt34x-00006P-Sr
	for lore@pengutronix.de; Mon, 23 May 2022 10:06:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6orHQiU2Rowa4VBJPQs4fIeg11zBIZiOXoPKuoK2J5g=; b=LjtlvHAaJTp4w3
	T8t+LaAIrO+6mgWi9BrugOVxLlf8Lxrn/kacnH0PehHmO3xAiSSHL/NLoZHismSfVj9xouvtYcAAb
	M/1GVGLyXQ4ZLsZiUBmn0uOca1NfzhccuPKsfnNBs4tCLhj+xYsgh12AtoJJCb5j/m7l4U30IfQt1
	uzw0xdfnHkEuzXG+ebj3ksazD6CyOQYY3B2aP7/N5hyuFNF7WKB938cSwR0FwMaIzoPw4yw5x3sNq
	O2JP6Kc8K5hiFiC8Zfup2bgOOI1aGK5olXjiuviuNQuvLtVuczLyOICurwYB3EzfNjpEnzCaTV9b9
	/Q6gQzn7rPYwkOOPBfxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt33X-002HCm-UF; Mon, 23 May 2022 08:04:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt2o6-002A7b-QE
 for barebox@bombadil.infradead.org; Mon, 23 May 2022 07:48:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=gAM2kd2Sx/OZM/4tPP52jjvZxUP1VNCP+VjyFEl8lCg=; b=ghwwGiyjxYzvcI6fpjdac7dlUy
 b7Nob37tqFMnuHsoMMoN2qaI33HkwoQHIEJTUCqqUrMBoDOSLY0HJfhB+8sIq8P4zqpie4xTLyRxR
 lKL4vlDHElVZvRVmvWjbUVtRxXqonrUuBJJnNgcBMOGeMruGSv++Ft1v/REWgI3Bew84GsoRz4TKr
 XoceTycnHj7d0DmHc9BdgLh3oGh2d2IsIwqWgcYYkCDP4edrmCN+vzMLwrF2RifIzb59A0Cgl1ete
 Nbc0pcewEtxOjLNqObt0lCaU4QpP4VzuO4VGLyzSHShbOM3ERPCmROa95r3RRsaFHZ7ehh2K50HWp
 AAEy6eYA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt1c8-000tdl-W7
 for barebox@lists.infradead.org; Mon, 23 May 2022 06:32:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nt1Xr-0005DJ-BV; Mon, 23 May 2022 08:27:59 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nt1Xr-0041tc-S1; Mon, 23 May 2022 08:27:58 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nt1Xp-003FPB-IN; Mon, 23 May 2022 08:27:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: j.martin@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 May 2022 08:27:55 +0200
Message-Id: <20220523062756.774153-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_073225_484415_C2610E93 
X-CRM114-Status: GOOD (  16.27  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:3::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:3::133
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] test: self: add basic testing for malloc()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Surprisingly, the TLSF allocator is prone to overflow. Add some tests
that trigger this behavior. These tests run to success with dlmalloc,
but some of them fail under tlsf when compiled for 32-bit:

  test_malloc:40: unexpectedly succeeded to malloc(SIZE_MAX)
  test_malloc:61: unexpectedly succeeded to (tmp = realloc(p, 0xf0000000))
  test_malloc:63: unexpectedly succeeded to tmp = realloc(p, SIZE_MAX)
  ERROR: malloc: failed 3 out of 12 tests

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/Kconfig  |  5 +++
 test/self/Makefile |  1 +
 test/self/malloc.c | 91 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 97 insertions(+)
 create mode 100644 test/self/malloc.c

diff --git a/test/self/Kconfig b/test/self/Kconfig
index 3340a9146ee2..cf11efe54486 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -32,6 +32,11 @@ config SELFTEST_ENABLE_ALL
 	help
 	  Selects all self-tests compatible with current configuration
 
+config SELFTEST_MALLOC
+	bool "malloc() selftest"
+	help
+	  Tests barebox memory allocator
+
 config SELFTEST_PRINTF
 	bool "printf selftest"
 	help
diff --git a/test/self/Makefile b/test/self/Makefile
index 05a2a6a236ec..65d01596b806 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 
 obj-$(CONFIG_SELFTEST) += core.o
+obj-$(CONFIG_SELFTEST_MALLOC) += malloc.o
 obj-$(CONFIG_SELFTEST_PRINTF) += printf.o
 obj-$(CONFIG_SELFTEST_PROGRESS_NOTIFIER) += progress-notifier.o
 obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.o
diff --git a/test/self/malloc.c b/test/self/malloc.c
new file mode 100644
index 000000000000..c25b416b9751
--- /dev/null
+++ b/test/self/malloc.c
@@ -0,0 +1,91 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <common.h>
+#include <bselftest.h>
+#include <malloc.h>
+#include <memory.h>
+#include <linux/sizes.h>
+
+BSELFTEST_GLOBALS();
+
+static void __expect(bool cond, bool expect,
+		     const char *condstr, const char *func, int line)
+{
+	total_tests++;
+	if (cond != expect) {
+		failed_tests++;
+		printf("%s:%d: %s to %s\n", func, line,
+		       expect ? "failed" : "unexpectedly succeeded",
+		       condstr);
+	}
+}
+
+#define expect_alloc_ok(cond) \
+	__expect((cond), true, #cond, __func__, __LINE__)
+
+#define expect_alloc_fail(cond) \
+	__expect((cond), false, #cond, __func__, __LINE__)
+
+static void test_malloc(void)
+{
+	size_t mem_malloc_size = mem_malloc_end() - mem_malloc_start();
+	u8 *p, *tmp;
+
+	pr_debug("mem_malloc_size = %zu\n", mem_malloc_size);
+
+	/* System libc when built for sandbox may have overcommit, so
+	 * doing very big allocations without actual use may succeed
+	 * unlike in-barebox allocators, so skip these tests in that
+	 * case
+	 */
+	if (IS_ENABLED(CONFIG_MALLOC_LIBC)) {
+		pr_info("built with host libc allocator: Skipping tests that may trigger overcommit\n");
+		mem_malloc_size = 0;
+	}
+
+	expect_alloc_ok(p = malloc(1));
+	free(p);
+
+	if (mem_malloc_size) {
+		expect_alloc_fail(malloc(SIZE_MAX));
+
+		if (0xf0000000 > mem_malloc_size) {
+			expect_alloc_fail((tmp = malloc(0xf0000000)));
+			free(tmp);
+		}
+	} else {
+		skipped_tests += 2;
+	}
+
+	p = realloc(NULL, 1);
+	expect_alloc_ok(p = realloc(NULL, 1));
+
+	*p = 0x42;
+
+	expect_alloc_ok(tmp = realloc(p, 2));
+
+	p = tmp;
+	__expect(*p == 0x42, true, "reread after realloc", __func__, __LINE__);
+
+	if (mem_malloc_size) {
+		expect_alloc_fail(tmp = realloc(p, mem_malloc_size));
+
+		if (0xf0000000 > mem_malloc_size)
+			expect_alloc_fail((tmp = realloc(p, 0xf0000000)));
+
+		expect_alloc_fail(tmp = realloc(p, SIZE_MAX));
+
+	} else {
+		skipped_tests += 3;
+	}
+
+	free(p);
+
+	expect_alloc_ok(p = malloc(0));
+	expect_alloc_ok(tmp = malloc(0));
+
+	__expect(p != tmp, true, "allocate distinct 0-size buffers", __func__, __LINE__);
+}
+bselftest(core, test_malloc);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

