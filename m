Delivery-date: Mon, 05 Jun 2023 08:29:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63iZ-00BRq2-Bw
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 08:29:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63iW-00021A-VG
	for lore@pengutronix.de; Mon, 05 Jun 2023 08:29:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2R3EZe/E8UjK3LfjDMdiMWsPRx+vTLcY/WIeAfgSQ68=; b=BLeq3cicJbRvX8804GcxJstrBE
	9oPI12GAkGBAXdqcV1LBUXSsasD57w2y8J1FtUR382N78VMkHzAhar971dJBsVPpKCWpIGrpdWZju
	zsSODPbl5yjOQX6jj44w2pVi4Lt86wIMbjOa5c8Fel4DiaP34nHm0BblU+mCVrxR0mO01CNZQDxgA
	3VIirVcsPfyA05YhybvxDRvCN5JpucjJlrq8HECcxkfeTuJCvqdYBQ8kqGXIyz9r5Zi5j1cOnVuJ3
	1va3A4PSDSVN4cvCL5fdZNwcgzt08cH7fyroz6Trztv8r7l+9ut5IN3/YP1aDdgT8KJ91wPaF0xBx
	yWJh+7xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q63hG-00ELGy-2U;
	Mon, 05 Jun 2023 06:28:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q63hC-00ELGA-21
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 06:28:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q63h7-0001tQ-OX; Mon, 05 Jun 2023 08:27:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63h7-005Cov-3P; Mon, 05 Jun 2023 08:27:57 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63h6-00Gkzo-Hf; Mon, 05 Jun 2023 08:27:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jun 2023 08:27:55 +0200
Message-Id: <20230605062755.3993563-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_232802_689587_FBFDC887 
X-CRM114-Status: GOOD (  17.17  )
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
Subject: [PATCH] test: self: add setjmp/longjmp/initjmp test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We depend on sjlj for OP-TEE early loading on ARM32 as well as for
the bthread infrastructure, which powers the state machine behind the
non-blocking USB mass storage gadget implementation.

Let's add a simple test to verify everything continues to work as
expected.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/Kconfig  |  5 +++
 test/self/Makefile |  1 +
 test/self/setjmp.c | 98 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 104 insertions(+)
 create mode 100644 test/self/setjmp.c

diff --git a/test/self/Kconfig b/test/self/Kconfig
index d1ca6a701df3..dcbfa85896f7 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -40,6 +40,7 @@ config SELFTEST_ENABLE_ALL
 	imply SELFTEST_MMU
 	imply SELFTEST_REGULATOR
 	imply SELFTEST_STRING
+	imply SELFTEST_SETJMP
 	help
 	  Selects all self-tests compatible with current configuration
 
@@ -87,4 +88,8 @@ config SELFTEST_STRING
 	bool "String library selftest"
 	select VERSION_CMP
 
+config SELFTEST_SETJMP
+	bool "setjmp/longjmp library selftest"
+	depends on ARCH_HAS_SJLJ
+
 endif
diff --git a/test/self/Makefile b/test/self/Makefile
index a66f34671e5a..b6f4395147dd 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -12,6 +12,7 @@ obj-$(CONFIG_SELFTEST_JSON) += json.o
 obj-$(CONFIG_SELFTEST_DIGEST) += digest.o
 obj-$(CONFIG_SELFTEST_MMU) += mmu.o
 obj-$(CONFIG_SELFTEST_STRING) += string.o
+obj-$(CONFIG_SELFTEST_SETJMP) += setjmp.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
 clean-files += *.dtbo *.dtbo.S .*.dtso
diff --git a/test/self/setjmp.c b/test/self/setjmp.c
new file mode 100644
index 000000000000..1cbb44bdf941
--- /dev/null
+++ b/test/self/setjmp.c
@@ -0,0 +1,98 @@
+// SPDX-License-Identifier: MIT
+// SPDX-FileCopyrightText: Copyright (C) 2003 Hewlett-Packard
+/*
+ * Code contributed by David Mosberger-Tang <davidm@hpl.hp.com>
+ * to libunwind - a platform-independent unwind library
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <common.h>
+#include <bselftest.h>
+#include <string.h>
+#include <asm/setjmp.h>
+
+BSELFTEST_GLOBALS();
+
+static __noreturn void raise_longjmp(jmp_buf jbuf, int i, int n)
+{
+	while (i < n)
+		raise_longjmp(jbuf, i + 1, n);
+
+	longjmp(jbuf, n);
+}
+
+static jmp_buf jbuf;
+
+static void __noreturn initjmp_entry(void)
+{
+	volatile u32 arr[256];
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(arr); i++)
+		writel(i, &arr[i]);
+
+	/* ensure arr[] is allocated on stack */
+	OPTIMIZER_HIDE_VAR(i);
+	if (i == 0)
+		initjmp_entry();
+
+	longjmp(jbuf, 0x1337);
+}
+
+static void test_setjmp(void)
+{
+	void *stack;
+	jmp_buf ijbuf;
+	volatile int i;
+	int ret;
+
+	total_tests += 20;
+
+	for (i = 0; i < 10; ++i) {
+		if ((ret = setjmp(jbuf))) {
+			pr_debug("%s: secondary setjmp() return, ret=%d\n",
+				 __func__, ret);
+
+			if (ret != i + 1) {
+				printf("%s: setjmp() returned %d, expected %d\n",
+					 __func__, ret, i + 1);
+				failed_tests += 2;
+			}
+			continue;
+		}
+
+		pr_debug("%s.%d: done with setjmp(); calling children\n",
+			 __func__, i + 1);
+
+		raise_longjmp(jbuf, 0, i + 1);
+
+		printf("%s: raise_longjmp() returned unexpectedly\n", __func__);
+		failed_tests++;
+	}
+
+	stack = memalign(16, CONFIG_STACK_SIZE);
+	if (WARN_ON(!stack)) {
+		skipped_tests++;
+		return;
+	}
+
+	pr_debug("%s: testing initjmp\n", __func__);
+
+	total_tests += 1;
+
+	/* initialize new context with fresh stack */
+	initjmp(ijbuf, initjmp_entry, stack + CONFIG_STACK_SIZE);
+
+	switch (setjmp(jbuf)) {
+	case 0x1337:
+		break;
+	case 0:
+		longjmp(ijbuf, 0x42);
+	default:
+		failed_tests++;
+	}
+
+	free(stack);
+}
+bselftest(core, test_setjmp);
-- 
2.39.2



