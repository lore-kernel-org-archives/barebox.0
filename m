Delivery-date: Sat, 19 Jun 2021 07:42:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luTkb-0005hH-6v
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 07:42:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luTka-0006Au-6U
	for lore@pengutronix.de; Sat, 19 Jun 2021 07:42:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B/l8O4uOigVCptgikaIIaoBJmUrspyLwO0br3Lpd4OA=; b=DrMLo3lUXDCKmH
	6ZWAEU1zRuKmh/cIawn0RxSqFcG8KkKd4dhAN8nhVosBpsoBpEfibwDJ6daPIPqI0Z5KqH/MhhkeZ
	3RhV2/AJ/NLLyzttwbvex5ib8jspcU+HeD2ARps7CgcepvCTKyTQuVk6eVzx/vSyJddJ0mwT9KnyU
	qWJADW0h7Vou55dpmfs+MwPP9cA/ZC/Eki4I1DB/vEsTjzvboZS+7dbwwmcepL3iWhsCU7mon3I/O
	tWpykfbOrEusSekL8Fyglr5Hba0xYj5zEnwJT5kfDR0STv8Ce8N1kV92pr06I+ejw0DyHQoxvikv2
	hWDZr5F+XXvJyVHUzH4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luTj4-00GPlp-QG; Sat, 19 Jun 2021 05:41:02 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luTiy-00GPlN-SW
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 05:40:58 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id AD461100003;
 Sat, 19 Jun 2021 05:40:52 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 19 Jun 2021 07:40:48 +0200
Message-Id: <20210619054048.498826-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.32.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_224057_240990_4D69964A 
X-CRM114-Status: GOOD (  15.33  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] test: self: add tests for progress notifier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We don't yet have any boards upstream that make use of the progress
notifier, but at least have some tests, so we know it's working.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 lib/Kconfig                   |  2 +-
 test/kconfig/base.cfg         |  1 +
 test/kconfig/full.cfg         |  1 +
 test/self/Kconfig             |  4 ++
 test/self/Makefile            |  1 +
 test/self/progress-notifier.c | 79 +++++++++++++++++++++++++++++++++++
 6 files changed, 87 insertions(+), 1 deletion(-)
 create mode 100644 test/self/progress-notifier.c

diff --git a/lib/Kconfig b/lib/Kconfig
index 922710e106b3..ea6de76a22f9 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -155,7 +155,7 @@ source "lib/logo/Kconfig"
 source "lib/bootstrap/Kconfig"
 
 config PROGRESS_NOTIFIER
-	bool
+	bool "Progress Notifier" if COMPILE_TEST
 	help
 	  This is selected by boards that register a notifier to visualize
 	  progress, like blinking a LED during an update.
diff --git a/test/kconfig/base.cfg b/test/kconfig/base.cfg
index 6a9f68349816..80b9c68f023b 100644
--- a/test/kconfig/base.cfg
+++ b/test/kconfig/base.cfg
@@ -1,3 +1,4 @@
+CONFIG_COMPILE_TEST=y
 CONFIG_TEST=y
 CONFIG_SELFTEST=y
 CONFIG_CMD_SELFTEST=y
diff --git a/test/kconfig/full.cfg b/test/kconfig/full.cfg
index 39275768ea1f..547100bacc39 100644
--- a/test/kconfig/full.cfg
+++ b/test/kconfig/full.cfg
@@ -1,2 +1,3 @@
 CONFIG_BTHREAD=y
 CONFIG_CMD_BTHREAD=y
+CONFIG_PROGRESS_NOTIFIER=y
diff --git a/test/self/Kconfig b/test/self/Kconfig
index 73dc6c7b4f03..dfaa32dda009 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -28,6 +28,7 @@ config SELFTEST_AUTORUN
 config SELFTEST_ENABLE_ALL
 	bool "Enable all self-tests"
 	select SELFTEST_PRINTF
+	select SELFTEST_PROGRESS_NOTIFIER
 	help
 	  Selects all self-tests compatible with current configuration
 
@@ -36,4 +37,7 @@ config SELFTEST_PRINTF
 	help
 	  Tests barebox vsnprintf() functionality
 
+config SELFTEST_PROGRESS_NOTIFIER
+	bool "progress notifier selftest"
+
 endif
diff --git a/test/self/Makefile b/test/self/Makefile
index b4aa49d6f817..e78ccc3cfb90 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -2,3 +2,4 @@
 
 obj-$(CONFIG_SELFTEST) += core.o
 obj-$(CONFIG_SELFTEST_PRINTF) += printf.o
+obj-$(CONFIG_SELFTEST_PROGRESS_NOTIFIER) += progress-notifier.o
diff --git a/test/self/progress-notifier.c b/test/self/progress-notifier.c
new file mode 100644
index 000000000000..af65b0900e42
--- /dev/null
+++ b/test/self/progress-notifier.c
@@ -0,0 +1,79 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <common.h>
+#include <bselftest.h>
+#include <progress.h>
+
+BSELFTEST_GLOBALS();
+
+static void __ok(bool cond, const char *func, int line)
+{
+	total_tests++;
+	if (!cond) {
+		failed_tests++;
+		printf("%s:%d: assertion failure\n", func, line);
+	}
+}
+
+#define ok(cond) \
+	__ok(cond, __func__, __LINE__)
+
+static unsigned long stage;
+static const void *prefix;
+static int counter;
+
+static int dummy_notifier(struct notifier_block *r, unsigned long _stage, void *_prefix)
+{
+       prefix = _prefix;
+       stage = _stage;
+       counter++;
+       return 0;
+}
+
+static struct notifier_block dummy_nb =  {
+       .notifier_call = dummy_notifier
+};
+
+static void test_dummy_notifier(void)
+{
+	const char *arg = "ARGUMENT";
+	int local_counter = 0;
+
+	stage = 0;
+	prefix = NULL;
+	counter = 0;
+
+	progress_register_client(&dummy_nb);
+	ok(stage == 0);
+	ok(prefix == NULL);
+	ok(counter == local_counter);
+	progress_notifier_call_chain(1, arg);
+
+	if (IS_ENABLED(CONFIG_PROGRESS_NOTIFIER)) {
+		ok(stage == 1);
+		ok(prefix == arg);
+		ok(counter == ++local_counter);
+		progress_notifier_call_chain(0, NULL);
+		local_counter++;
+	} else {
+		total_tests += 2;
+		skipped_tests += 2;
+	}
+
+	ok(stage == 0);
+	ok(prefix == NULL || *(const char *)prefix == '\0');
+	ok(counter == local_counter);
+	progress_unregister_client(&dummy_nb);
+
+	ok(stage == 0);
+	ok(prefix == NULL || *(const char *)prefix == '\0');
+	ok(counter == local_counter);
+}
+
+static void test_notifier(void)
+{
+	test_dummy_notifier();
+}
+bselftest(core, test_notifier);
-- 
2.32.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

