Delivery-date: Wed, 02 Jun 2021 16:41:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loS3J-00046s-Hj
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 16:41:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loS3E-0000Ke-Ix
	for lore@pengutronix.de; Wed, 02 Jun 2021 16:41:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WNbAOGk+YyhPiLJ8VsV8/uMasQfOHUvRT42hJxlZiRI=; b=RLceZkocT3oWE0
	LcJ6+Sskqru0neJuqIovvQMJQNuU8h/OzvWnW8Sce/tN0NXGEtma0BsKFGSeaWqYlIsFoPWgWE9VI
	otL/KlZNUooXmzdhK96qAEHirMvhSmgd2WeCcR4JiDo93CiLjEkt1sLigU9gFBAf2i0IskF3cnp8Z
	Th/DRXyl9c8G3hEl/J6WwfMFNKX7sKjX2XVS+rd5wOtyUAYmc0TQaeF84IIPTFoCfAnyhnqKMyb4x
	7E1NJg+VmgaWAFf6QkdjWh4TRhbeSL3pD4eVOZu32QhIYA2hKEVnHkLzR8g9GWRqJbD4DkckHQd1w
	bbtO7/jBk2LB74ZzdMew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loS1R-004czA-0i; Wed, 02 Jun 2021 14:39:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loRxg-004b3n-40
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 14:35:14 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1loRxW-0006tS-KH; Wed, 02 Jun 2021 16:35:02 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1loRxV-0006i6-O0; Wed, 02 Jun 2021 16:35:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Jun 2021 16:34:47 +0200
Message-Id: <20210602143453.23097-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602143453.23097-1-a.fatoum@pengutronix.de>
References: <20210602143453.23097-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_073512_417299_CC93C3C0 
X-CRM114-Status: GOOD (  26.31  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 07/13] test: add basic barebox self-test infrastructure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Self tests is code written to run within barebox to exercise
functionality. They offer flexibility to test specific units of barebox
instead of the program as a whole. Add a very simple infrastructure
for registering and executing self-tests. This is based on the Linux
kselftest modules. We don't utilize modules for this, however, because
we only have module support on ARM, but we need a generic solution.

Selftests can be enabled individually and even tested without shell
support to allow tests to happen for size-restricted barebox images
as well.

Acked-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Kconfig             |  1 +
 Makefile            |  2 +-
 commands/Makefile   |  1 +
 commands/selftest.c | 88 +++++++++++++++++++++++++++++++++++++++++++++
 common/startup.c    |  4 +++
 include/bselftest.h | 74 ++++++++++++++++++++++++++++++++++++++
 test/Kconfig        |  8 +++++
 test/Makefile       |  1 +
 test/self/Kconfig   | 33 +++++++++++++++++
 test/self/Makefile  |  3 ++
 test/self/core.c    | 22 ++++++++++++
 11 files changed, 236 insertions(+), 1 deletion(-)
 create mode 100644 commands/selftest.c
 create mode 100644 include/bselftest.h
 create mode 100644 test/Kconfig
 create mode 100644 test/Makefile
 create mode 100644 test/self/Kconfig
 create mode 100644 test/self/Makefile
 create mode 100644 test/self/core.c

diff --git a/Kconfig b/Kconfig
index 29c32463fb43..7c4cf36881b4 100644
--- a/Kconfig
+++ b/Kconfig
@@ -15,3 +15,4 @@ source "lib/Kconfig"
 source "crypto/Kconfig"
 source "firmware/Kconfig"
 source "scripts/Kconfig"
+source "test/Kconfig"
diff --git a/Makefile b/Makefile
index a1411386f1b3..e856d8672b71 100644
--- a/Makefile
+++ b/Makefile
@@ -581,7 +581,7 @@ endif
 include $(srctree)/scripts/Makefile.lib
 
 # Objects we will link into barebox / subdirs we need to visit
-common-y		:= common/ drivers/ commands/ lib/ crypto/ net/ fs/ firmware/
+common-y		:= common/ drivers/ commands/ lib/ crypto/ net/ fs/ firmware/ test/
 
 include $(srctree)/arch/$(SRCARCH)/Makefile
 
diff --git a/commands/Makefile b/commands/Makefile
index 447349fd157d..4b45d266fd56 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -130,5 +130,6 @@ obj-$(CONFIG_CMD_SEED)		+= seed.o
 obj-$(CONFIG_CMD_IP_ROUTE_GET)  += ip-route-get.o
 obj-$(CONFIG_CMD_BTHREAD)	+= bthread.o
 obj-$(CONFIG_CMD_UBSAN)		+= ubsan.o
+obj-$(CONFIG_CMD_SELFTEST)	+= selftest.o
 
 UBSAN_SANITIZE_ubsan.o := y
diff --git a/commands/selftest.c b/commands/selftest.c
new file mode 100644
index 000000000000..a10f1467fece
--- /dev/null
+++ b/commands/selftest.c
@@ -0,0 +1,88 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#define pr_fmt(fmt) "selftest: " fmt
+
+#include <common.h>
+#include <command.h>
+#include <getopt.h>
+#include <bselftest.h>
+#include <complete.h>
+
+static int run_selftest(const char *match, bool list)
+{
+	struct selftest *test;
+	int matches = 0;
+	int err = 0;
+
+	list_for_each_entry(test, &selftests, list) {
+		if (list) {
+			printf("%s\n", test->name);
+			matches++;
+			continue;
+		}
+
+		if (match && strcmp(test->name, match))
+			continue;
+
+		err |= test->func();
+		matches++;
+	}
+
+	if (!matches) {
+		if (match) {
+			printf("No tests matching '%s' found.\n", match);
+			return -EINVAL;
+		}
+
+		printf("No tests found.\n");
+	}
+
+	return err;
+}
+
+static int do_selftest(int argc, char *argv[])
+{
+	bool list = false;
+	int i, err = 0;
+	int opt;
+
+	while((opt = getopt(argc, argv, "l")) > 0) {
+		switch(opt) {
+		case 'l':
+			list = true;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (optind == argc) {
+		err = run_selftest(NULL, list);
+	} else {
+		for (i = optind; i < argc; i++) {
+			err = run_selftest(argv[i], list);
+			if (err)
+				goto out;
+		}
+	}
+
+out:
+	return err ? COMMAND_ERROR : COMMAND_SUCCESS;
+}
+
+BAREBOX_CMD_HELP_START(selftest)
+BAREBOX_CMD_HELP_TEXT("Run enabled barebox self-tests")
+BAREBOX_CMD_HELP_TEXT("If run without arguments, all tests are run")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-l",     "list available tests")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(selftest)
+	.cmd		= do_selftest,
+	BAREBOX_CMD_DESC("Run selftests")
+	BAREBOX_CMD_OPTS("[-l] [tests..]")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+	BAREBOX_CMD_HELP(cmd_selftest_help)
+BAREBOX_CMD_END
diff --git a/common/startup.c b/common/startup.c
index 080feebf05fd..d170cb8a7c5a 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -37,6 +37,7 @@
 #include <linux/ctype.h>
 #include <watchdog.h>
 #include <glob.h>
+#include <bselftest.h>
 
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 		  __barebox_initcalls_end[];
@@ -417,6 +418,9 @@ void __noreturn start_barebox(void)
 
 	pr_debug("initcalls done\n");
 
+	if (IS_ENABLED(CONFIG_SELFTEST_AUTORUN))
+		selftests_run();
+
 	if (barebox_main)
 		barebox_main();
 
diff --git a/include/bselftest.h b/include/bselftest.h
new file mode 100644
index 000000000000..21eeba0526ef
--- /dev/null
+++ b/include/bselftest.h
@@ -0,0 +1,74 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+#ifndef __BSELFTEST_H
+#define __BSELFTEST_H
+
+#include <linux/compiler.h>
+#include <linux/list.h>
+#include <init.h>
+
+enum bselftest_group {
+	BSELFTEST_core
+};
+
+struct selftest {
+	enum bselftest_group group;
+	const char *name;
+	int (*func)(void);
+	struct list_head list;
+};
+
+static inline int selftest_report(unsigned int total_tests, unsigned int failed_tests,
+				  unsigned int skipped_tests)
+{
+	if (failed_tests == 0) {
+		if (skipped_tests) {
+			pr_info("skipped %u tests\n", skipped_tests);
+			pr_info("remaining %u tests passed\n", total_tests);
+		} else
+			pr_info("all %u tests passed\n", total_tests);
+	} else
+		pr_err("failed %u out of %u tests\n", failed_tests, total_tests);
+
+	return failed_tests ? -EINVAL : 0;
+}
+
+extern struct list_head selftests;
+
+#define BSELFTEST_GLOBALS()			\
+static unsigned int total_tests __initdata;	\
+static unsigned int failed_tests __initdata;	\
+static unsigned int skipped_tests __initdata
+
+#ifdef CONFIG_SELFTEST
+#define __bselftest_initcall(func) late_initcall(func)
+void selftests_run(void);
+#else
+#define __bselftest_initcall(func)
+static inline void selftests_run(void)
+{
+}
+#endif
+
+#define bselftest(_group, _func)				\
+	static int __bselftest_##_func(void)			\
+	{							\
+		total_tests = failed_tests = skipped_tests = 0;	\
+		_func();					\
+		return selftest_report(total_tests,		\
+				failed_tests,			\
+				skipped_tests);			\
+	}							\
+	static __maybe_unused					\
+	int __init _func##_bselftest_register(void)		\
+	{							\
+		static struct selftest this = {			\
+			.group = BSELFTEST_##_group,		\
+			.name = KBUILD_MODNAME,			\
+			.func = __bselftest_##_func,		\
+		};						\
+		list_add_tail(&this.list, &selftests);		\
+		return 0;					\
+	}							\
+	__bselftest_initcall(_func##_bselftest_register);
+
+#endif
diff --git a/test/Kconfig b/test/Kconfig
new file mode 100644
index 000000000000..eece702e68aa
--- /dev/null
+++ b/test/Kconfig
@@ -0,0 +1,8 @@
+menuconfig TEST
+	bool "Testing"
+
+if TEST
+
+source "test/self/Kconfig"
+
+endif
diff --git a/test/Makefile b/test/Makefile
new file mode 100644
index 000000000000..1b9eb2171a82
--- /dev/null
+++ b/test/Makefile
@@ -0,0 +1 @@
+obj-y += self/
diff --git a/test/self/Kconfig b/test/self/Kconfig
new file mode 100644
index 000000000000..720abeffc51b
--- /dev/null
+++ b/test/self/Kconfig
@@ -0,0 +1,33 @@
+# SPDX-License-Identifier: GPL-2.0
+
+config SELFTEST
+	bool "Self-tests"
+	help
+	  Configures support for in-barebox testing
+
+if SELFTEST
+
+config CMD_SELFTEST
+	bool "selftest command"
+	depends on COMMAND_SUPPORT
+	help
+	  Command to run enabled barebox self-tests.
+	  If run without arguments, all tests are run
+
+	  Usage: selftest [-l] [tests...]
+
+	  Options:
+	    -l     list available tests
+
+config SELFTEST_AUTORUN
+	bool "Run self-tests on startup"
+	help
+	  Self tests are run automatically after initcalls are done,
+	  but before barebox_main (shell or board-specific startup).
+
+config SELFTEST_ENABLE_ALL
+	bool "Enable all self-tests"
+	help
+	  Selects all self-tests compatible with current configuration
+
+endif
diff --git a/test/self/Makefile b/test/self/Makefile
new file mode 100644
index 000000000000..78f738c8e210
--- /dev/null
+++ b/test/self/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-$(CONFIG_SELFTEST) += core.o
diff --git a/test/self/core.c b/test/self/core.c
new file mode 100644
index 000000000000..5a309fc8f18d
--- /dev/null
+++ b/test/self/core.c
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#define pr_fmt(fmt) "bselftest: " fmt
+
+#include <common.h>
+#include <bselftest.h>
+
+LIST_HEAD(selftests);
+
+int selftests_run(void)
+{
+	struct selftest *test;
+	int err = 0;
+
+	pr_notice("Configured tests will run now\n");
+
+	list_for_each_entry(test, &selftests, list)
+		err |= test->func();
+
+	if (err)
+		pr_err("Some selftests failed\n");
+}
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

