Delivery-date: Mon, 09 Feb 2026 10:09:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNHF-00AVA3-05
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 10:09:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNHD-0005Kx-P6
	for lore@pengutronix.de; Mon, 09 Feb 2026 10:09:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SXQuwn/7UPpAIDhVHSBiSCOgbuk27z3kBdmZHL1s6zc=; b=4Rt2TnyWLvJuRvepW2ftF7CdFb
	a/grCSrEa4ZEzzCnak/DyILUDqIPr1heJC8VLrpucCLo8+w3VOqCBj6oF9qmmfFw6eda4z1BnwmhL
	ges+4zvLC6mYlcUAlyF9pQLTqCP0uxEXWyQrj+uYqILHzDIK9185eFpx3Lb1RB5VI+EeUeJzpcLnI
	ZCZoI+ICwUPAQNgxNr99muhn8Xrx8PxAZEfME0K8xo7hM8kNO4wg7noyBAWr5CbPCOJWYoQJZG3u+
	KTf8TZglCfYVloOE20z+tCa0soXsABZDlx4JAU3qY0FUTWhcgRtf8yGnrsuxi+CFw1TQJqTfpCj21
	8xkXZvnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNGk-0000000F5nu-46Ul;
	Mon, 09 Feb 2026 09:09:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNGg-0000000F5l9-06o0
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 09:09:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vpNGe-0004wQ-Dr; Mon, 09 Feb 2026 10:09:16 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  9 Feb 2026 10:08:55 +0100
Message-ID: <20260209090911.3561875-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260209090911.3561875-1-a.fatoum@barebox.org>
References: <20260209090911.3561875-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_010918_081867_6CF5FB4D 
X-CRM114-Status: GOOD (  16.05  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] test: self: add bootloader spec files test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With spec-conformant sorting added for bootloader specification entries,
add a simple self test that verifies that the sort order is as one would
expect.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/bselftest.h                           | 20 ++++++++
 test/self/Kconfig                             |  5 ++
 test/self/Makefile                            |  2 +
 test/self/blspec.c                            | 46 +++++++++++++++++++
 .../data/test/boot/boot.sh                    |  3 ++
 .../data/test/loader/entries/boarda.conf      |  6 +++
 .../data/test/loader/entries/boardb.conf      |  6 +++
 .../data/test/loader/entries/boardc.conf      |  6 +++
 .../data/test/loader/entries/boardd.conf      |  5 ++
 9 files changed, 99 insertions(+)
 create mode 100644 test/self/blspec.c
 create mode 100755 test/self/defaultenv-blspec-test/data/test/boot/boot.sh
 create mode 100644 test/self/defaultenv-blspec-test/data/test/loader/entries/boarda.conf
 create mode 100644 test/self/defaultenv-blspec-test/data/test/loader/entries/boardb.conf
 create mode 100644 test/self/defaultenv-blspec-test/data/test/loader/entries/boardc.conf
 create mode 100644 test/self/defaultenv-blspec-test/data/test/loader/entries/boardd.conf

diff --git a/include/bselftest.h b/include/bselftest.h
index c3f323864358..fc698d7c5c0c 100644
--- a/include/bselftest.h
+++ b/include/bselftest.h
@@ -78,4 +78,24 @@ static inline void selftests_run(void)
 int selftest_run(struct selftest *test);
 bool selftest_is_running(struct selftest *test);
 
+#define __assert_cond(cond) ({ total_tests++; cond || (failed_tests++, false); })
+
+#define assert_cond(cond) ({ \
+	bool __cond = __assert_cond(cond); \
+	if (!__cond) \
+		pr_warn("%s:%d: condition %s unexpectedly false\n", \
+			__func__, __LINE__, #cond); \
+	__cond; \
+})
+
+#define assert_inteq(a, b) assert_cond(a == b)
+
+#define assert_streq(a, b) ({ \
+	bool __cond = __assert_cond(strcmp(a, b) == 0); \
+	if (!__cond) \
+		pr_warn("%s:%d: %s and %s unexpectedly unequal\n", \
+			__func__, __LINE__, a, b); \
+	__cond; \
+})
+
 #endif
diff --git a/test/self/Kconfig b/test/self/Kconfig
index 2ccdfe621821..85a3ef790116 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -51,6 +51,7 @@ config SELFTEST_ENABLE_ALL
 	select SELFTEST_TLV
 	select SELFTEST_DM
 	select SELFTEST_TALLOC
+	select SELFTEST_BLSPEC if BLSPEC && DEFAULT_ENVIRONMENT
 	help
 	  Selects all self-tests compatible with current configuration
 
@@ -127,6 +128,10 @@ config SELFTEST_SETJMP
 	bool "setjmp/longjmp library selftest"
 	depends on ARCH_HAS_SJLJ
 
+config SELFTEST_BLSPEC
+	bool "bootloader spec selftest"
+	depends on BLSPEC && DEFAULT_ENVIRONMENT
+
 config SELFTEST_REGULATOR
 	bool "Regulator selftest"
 	depends on REGULATOR_FIXED
diff --git a/test/self/Makefile b/test/self/Makefile
index 9f839fc0d07a..2bfdbb9949df 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -25,6 +25,8 @@ obj-$(CONFIG_SELFTEST_TEST_COMMAND) += test_command.o
 obj-$(CONFIG_SELFTEST_IDR) += idr.o
 obj-$(CONFIG_SELFTEST_TLV) += tlv.o tlv.dtb.o
 obj-$(CONFIG_SELFTEST_DM) += dm.o
+obj-$(CONFIG_SELFTEST_BLSPEC) += blspec.o
+bbenv-$(CONFIG_SELFTEST_BLSPEC) += defaultenv-blspec-test
 
 ifdef REGENERATE_KEYTOC
 
diff --git a/test/self/blspec.c b/test/self/blspec.c
new file mode 100644
index 000000000000..0e9eca4d06e9
--- /dev/null
+++ b/test/self/blspec.c
@@ -0,0 +1,46 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <common.h>
+#include <bselftest.h>
+#include <boot.h>
+#include <envfs.h>
+#include <init.h>
+
+BSELFTEST_GLOBALS();
+
+static void test_blspec(void)
+{
+	struct bootentries *entries;
+	struct bootentry *entry;
+	int ret, i = 0;
+	const char *expected[] = {
+		"/env/data/test/loader/entries/boardb.conf",
+		"/env/data/test/loader/entries/boardc.conf",
+		"/env/data/test/loader/entries/boarda.conf",
+		"/env/data/test/loader/entries/boardd.conf",
+	};
+
+	entries = bootentries_alloc();
+
+	ret = bootentry_create_from_name(entries, "/env/data/test");
+	if (!assert_inteq(ret, 4))
+		return;
+
+	if (!assert_cond(!list_empty(&entries->entries)))
+		return;
+
+	bootentries_for_each_entry(entries, entry) {
+		assert_streq(expected[i], entry->path);
+		i++;
+	}
+}
+bselftest(parser, test_blspec);
+
+static int test_blspec_env_init(void)
+{
+	defaultenv_append_directory(defaultenv_blspec_test);
+	return 0;
+}
+late_initcall(test_blspec_env_init);
diff --git a/test/self/defaultenv-blspec-test/data/test/boot/boot.sh b/test/self/defaultenv-blspec-test/data/test/boot/boot.sh
new file mode 100755
index 000000000000..19ba0024098b
--- /dev/null
+++ b/test/self/defaultenv-blspec-test/data/test/boot/boot.sh
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+echo boot test
diff --git a/test/self/defaultenv-blspec-test/data/test/loader/entries/boarda.conf b/test/self/defaultenv-blspec-test/data/test/loader/entries/boarda.conf
new file mode 100644
index 000000000000..a0b8356476be
--- /dev/null
+++ b/test/self/defaultenv-blspec-test/data/test/loader/entries/boarda.conf
@@ -0,0 +1,6 @@
+title		barebox - Test Image - v6.1-rc2 A
+version		Dummy v6.1-rc2
+options		rootwait
+linux		/boot/boot.sh
+sort-key        blspec-test
+linux-appendroot	true
diff --git a/test/self/defaultenv-blspec-test/data/test/loader/entries/boardb.conf b/test/self/defaultenv-blspec-test/data/test/loader/entries/boardb.conf
new file mode 100644
index 000000000000..93d5ab5f0fac
--- /dev/null
+++ b/test/self/defaultenv-blspec-test/data/test/loader/entries/boardb.conf
@@ -0,0 +1,6 @@
+title		barebox - Test Image - v6.19 B
+version		Dummy v6.19
+options		rootwait
+linux		/boot/boot.sh
+sort-key        blspec-test
+linux-appendroot	true
diff --git a/test/self/defaultenv-blspec-test/data/test/loader/entries/boardc.conf b/test/self/defaultenv-blspec-test/data/test/loader/entries/boardc.conf
new file mode 100644
index 000000000000..8df597d4f251
--- /dev/null
+++ b/test/self/defaultenv-blspec-test/data/test/loader/entries/boardc.conf
@@ -0,0 +1,6 @@
+title		barebox - Test Image - v6.9 C
+version		Dummy v6.9
+options		rootwait
+linux		/boot/boot.sh
+sort-key        blspec-test
+linux-appendroot	true
diff --git a/test/self/defaultenv-blspec-test/data/test/loader/entries/boardd.conf b/test/self/defaultenv-blspec-test/data/test/loader/entries/boardd.conf
new file mode 100644
index 000000000000..b2581147c3d7
--- /dev/null
+++ b/test/self/defaultenv-blspec-test/data/test/loader/entries/boardd.conf
@@ -0,0 +1,5 @@
+title		barebox - Test Image - v9999 (no sort-key) D
+version		v9999
+options		rootwait
+linux		/boot/boot.sh
+linux-appendroot	true
-- 
2.47.3



