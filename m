Delivery-date: Wed, 13 Sep 2023 14:01:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgOYd-00Djip-IA
	for lore@lore.pengutronix.de; Wed, 13 Sep 2023 14:01:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgOYb-0008JE-Ms
	for lore@pengutronix.de; Wed, 13 Sep 2023 14:01:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MQ7PACEB9z96zjQbqLVkZ6Ll/vmat25aXSg8ljyL3Io=; b=KOqkK1Ez1ddFq1u8az7OmONPH4
	cC/6tC9Egp3UQUDb0tFSNPW3aTac5uuWrxZukP6rwUd+ej/PxA/MCMC5rVNqrKTHpUyFXHT+ykZ6S
	WMrdHifP2MSzE3q6bf5sMxRWPgpoa1ydFAKOqqHzCREdkvw/B9ZXa0z7gjv8jSr65w8PfeSlxUpXY
	1C/wLRhP9hMs039RnjjkKl20x8bLvr0dDJSE67ttUHuCmCvE6ekCHHPyGK2gznYCOtE+hraOzHnG3
	nGJwHfNNe8QkCbMPz5Y1nmUKIzUgu8Q2C6bCtRtzdusjgbFdwPkbSIV77ALct4Dmyfg4NVjduResb
	pxDpTG2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgOXM-005nZu-39;
	Wed, 13 Sep 2023 12:00:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgOXJ-005nYu-10
	for barebox@lists.infradead.org;
	Wed, 13 Sep 2023 12:00:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qgOXH-0007pK-Sg; Wed, 13 Sep 2023 13:59:59 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qgOXH-0063YV-9B; Wed, 13 Sep 2023 13:59:59 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qgOXH-007nTl-0m;
	Wed, 13 Sep 2023 13:59:59 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Sep 2023 13:59:58 +0200
Message-Id: <20230913115958.1858470-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230913115958.1858470-1-a.fatoum@pengutronix.de>
References: <20230913115958.1858470-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_050001_345933_22D04B3E 
X-CRM114-Status: GOOD (  13.83  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] test: self: add some test cases for test command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With the rework to how arithmetic comparisons are conducted in the test
command, some tests are in order.

Prior to the rework, following test cases failed:

  test_test_command:42: [ -1 -le  1 ]: assertion failure, ret=1
  test_test_command:45: [ -9223372036854775808 -lt 9223372036854775807 ]: assertion failure, ret=1
  test_test_command:46: [ -9223372036854775808 -gt 9223372036854775807 ]: assertion failure, ret=0

But now they all succeed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/Kconfig        |  4 +++
 test/self/Makefile       |  1 +
 test/self/test_command.c | 64 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 69 insertions(+)
 create mode 100644 test/self/test_command.c

diff --git a/test/self/Kconfig b/test/self/Kconfig
index a4176ab8ffd6..15e00f0244b5 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -97,4 +97,8 @@ config SELFTEST_REGULATOR
 	depends on REGULATOR && OFDEVICE
 	select OF_OVERLAY
 
+config SELFTEST_TEST_COMMAND
+	bool "test command selftest"
+	depends on CMD_TEST
+
 endif
diff --git a/test/self/Makefile b/test/self/Makefile
index 78a337810d1f..8168abf26278 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -14,6 +14,7 @@ obj-$(CONFIG_SELFTEST_MMU) += mmu.o
 obj-$(CONFIG_SELFTEST_STRING) += string.o
 obj-$(CONFIG_SELFTEST_SETJMP) += setjmp.o
 obj-$(CONFIG_SELFTEST_REGULATOR) += regulator.o test_regulator.dtbo.o
+obj-$(CONFIG_SELFTEST_TEST_COMMAND) += test_command.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
 clean-files += *.dtbo *.dtbo.S .*.dtso
diff --git a/test/self/test_command.c b/test/self/test_command.c
new file mode 100644
index 000000000000..7a26f724f3ce
--- /dev/null
+++ b/test/self/test_command.c
@@ -0,0 +1,64 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <bselftest.h>
+#include <command.h>
+
+BSELFTEST_GLOBALS();
+
+#if __LONG_MAX__ == 0x7ffffffff
+#define LONG_MIN_STR		"-2147483648"
+#define LONG_MIN_PLUS_1_STR	"-2147483647"
+#define LONG_MAX_STR		 "2147483647"
+#define LONG_MAX_PLUS_1_STR	 "2147483648"
+#else
+#define LONG_MIN_STR		"-9223372036854775808"
+#define LONG_MIN_PLUS_1_STR	"-9223372036854775807"
+#define LONG_MAX_STR		 "9223372036854775807"
+#define LONG_MAX_PLUS_1_STR	 "9223372036854775808"
+#endif
+
+static void __assert_eq(const char *expr, bool result, const char *func, int line)
+{
+	int ret;
+
+	total_tests++;
+
+	ret = run_command(expr);
+	if ((result && ret != 0) || (!result && ret != 1)) {
+		failed_tests++;
+		printf("%s:%d: %s: assertion failure, ret=%d\n", func, line, expr, ret);
+	}
+}
+
+#define assert_eq(expr, result) __assert_eq(expr, result, __func__, __LINE__)
+
+static void test_test_command(void)
+{
+	assert_eq("[  0 -eq  0 ]", true);
+	assert_eq("[  0 -eq  1 ]", false);
+	assert_eq("[ -1 -le  1 ]", true);
+	assert_eq("[ -1 -ge -5 ]", true);
+
+	assert_eq("[ " LONG_MIN_STR " -lt " LONG_MAX_STR " ]", true);
+	assert_eq("[ " LONG_MIN_STR " -gt " LONG_MAX_STR " ]", false);
+
+	assert_eq("[ " LONG_MIN_STR " -eq " LONG_MIN_STR " ]", true);
+	assert_eq("[ " LONG_MAX_STR " -eq " LONG_MAX_STR " ]", true);
+	assert_eq("[ " LONG_MIN_STR " -ne " LONG_MIN_STR " ]", false);
+	assert_eq("[ " LONG_MAX_STR " -ne " LONG_MAX_STR " ]", false);
+
+	assert_eq("[ " LONG_MIN_PLUS_1_STR " -eq " LONG_MIN_PLUS_1_STR " ]", true);
+	assert_eq("[ " LONG_MAX_PLUS_1_STR " -eq " LONG_MAX_PLUS_1_STR " ]", true);
+	assert_eq("[ " LONG_MIN_PLUS_1_STR " -ne " LONG_MIN_PLUS_1_STR " ]", false);
+	assert_eq("[ " LONG_MAX_PLUS_1_STR " -ne " LONG_MAX_PLUS_1_STR " ]", false);
+
+	assert_eq("[ " LONG_MIN_PLUS_1_STR " -gt " LONG_MIN_STR " ]", true);
+	assert_eq("[ " LONG_MAX_PLUS_1_STR " -gt " LONG_MAX_STR " ]", true);
+	assert_eq("[ " LONG_MIN_PLUS_1_STR " -lt " LONG_MIN_STR " ]", false);
+	assert_eq("[ " LONG_MAX_PLUS_1_STR " -lt " LONG_MAX_STR " ]", false);
+	assert_eq("[ " LONG_MIN_STR " -le " LONG_MIN_PLUS_1_STR " ]", true);
+	assert_eq("[ " LONG_MAX_STR " -le " LONG_MAX_PLUS_1_STR " ]", true);
+}
+bselftest(core, test_test_command);
-- 
2.39.2



