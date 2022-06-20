Delivery-date: Mon, 20 Jun 2022 09:25:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3Bmd-007qPQ-HD
	for lore@lore.pengutronix.de; Mon, 20 Jun 2022 09:25:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3Bmd-0002Xs-8P
	for lore@pengutronix.de; Mon, 20 Jun 2022 09:25:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lRhqKJb6uYYkr/JkhJocoUHV9rlgYMAiD3TfNk3fnLw=; b=zWLf497DSoKILLYX4qsChFyc7g
	vW6WBbkfB3/f3LTEq2jZDmj/9wuDe/SOxgSo1bqcLJC1Z0ek5NugDuVUaclYvlBr9a2KWyp4TWVV4
	ue0OobQzpFJ0ASC3yE/xcQa67Tw1o3ZsaVRjtAeagicrFvwpbIpkJ5xDs5rdpTz6mVhry7PW1TpmL
	/dcMG0ITQ8qoFoRFKUePDaR3gGp8T4k8VEeOu1qPVH653zEvPRchulDGD1TCrKQiApCxtFPqHrvRK
	HkZJHIb/VzAqJwMI7KWn9JbzCrcAc3GU7y8rFBSKKUsAxwrozVzYysIyqbTvoSxjEk517dScaCmfk
	vkfkeirg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3BlG-00Gf0S-Vj; Mon, 20 Jun 2022 07:23:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3BlA-00Geyb-Al
	for barebox@lists.infradead.org; Mon, 20 Jun 2022 07:23:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o3Bl9-00028C-4x; Mon, 20 Jun 2022 09:23:43 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o3Bl7-001bCl-2E; Mon, 20 Jun 2022 09:23:42 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o3Bl7-0068FK-Rf; Mon, 20 Jun 2022 09:23:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 20 Jun 2022 09:23:39 +0200
Message-Id: <20220620072340.1461618-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_002344_407291_20BDD013 
X-CRM114-Status: GOOD (  14.71  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] test: self: add simple environment variable test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

setenv can now accept a format string. Add some tests for the old and
new usage.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/Kconfig  |  4 +++
 test/self/Makefile |  1 +
 test/self/envvar.c | 82 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 87 insertions(+)
 create mode 100644 test/self/envvar.c

diff --git a/test/self/Kconfig b/test/self/Kconfig
index cf11efe54486..a5eac85646b7 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -29,6 +29,7 @@ config SELFTEST_ENABLE_ALL
 	bool "Enable all self-tests"
 	select SELFTEST_PRINTF
 	select SELFTEST_PROGRESS_NOTIFIER
+	select SELFTEST_ENVIRONMENT_VARIABLES if ENVIRONMENT_VARIABLES
 	help
 	  Selects all self-tests compatible with current configuration
 
@@ -51,4 +52,7 @@ config SELFTEST_OF_MANIPULATION
 config SELFTEST_PROGRESS_NOTIFIER
 	bool "progress notifier selftest"
 
+config SELFTEST_ENVIRONMENT_VARIABLES
+	bool "environment variable selftest"
+
 endif
diff --git a/test/self/Makefile b/test/self/Makefile
index 65d01596b806..ca9f9c34d1e5 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -5,3 +5,4 @@ obj-$(CONFIG_SELFTEST_MALLOC) += malloc.o
 obj-$(CONFIG_SELFTEST_PRINTF) += printf.o
 obj-$(CONFIG_SELFTEST_PROGRESS_NOTIFIER) += progress-notifier.o
 obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.o
+obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
diff --git a/test/self/envvar.c b/test/self/envvar.c
new file mode 100644
index 000000000000..a686c6c2e206
--- /dev/null
+++ b/test/self/envvar.c
@@ -0,0 +1,82 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <common.h>
+#include <environment.h>
+#include <bselftest.h>
+#include <linux/sizes.h>
+
+BSELFTEST_GLOBALS();
+
+static int strequal(const char *a, const char *b)
+{
+	if (!a || !b)
+		return a == b;
+
+	return !strcmp(a, b);
+}
+
+static void __expect_getenv(const char *var, const char *expect,
+			    const char *func, int line)
+{
+	const char *val;
+
+	total_tests++;
+
+	val = getenv(var);
+	if (!IS_ENABLED(CONFIG_ENVIRONMENT_VARIABLES)) {
+		if (val == NULL) {
+			skipped_tests++;
+			return;
+		}
+	}
+
+	if (!strequal(val, expect)) {
+		failed_tests++;
+		printf("%s:%d: failure: getenv(%s) == \"%s\", but \"%s\" expected\n",
+		       func, line, var, val ?: "<NULL>", expect ?: "<NULL>");
+	}
+}
+
+#define expect_getenv(v, e) __expect_getenv(v, e, __func__, __LINE__)
+
+static void test_envvar(void)
+{
+
+	if (IS_ENABLED(CONFIG_ENVIRONMENT_VARIABLES))
+		pr_info("built without environment variable support: Skipping tests\n");
+
+	expect_getenv("__TEST_VAR1", NULL);
+
+	setenv("__TEST_VAR1", "VALUE1");
+
+	expect_getenv("__TEST_VAR1", "VALUE1");
+
+	unsetenv("__TEST_VAR1");
+
+	expect_getenv("__TEST_VAR1", NULL);
+
+	setenv("__TEST_VAR1", "VALUE1");
+
+	expect_getenv("__TEST_VAR1", "VALUE1");
+
+	setenv("__TEST_VAR1", "VALUE2");
+
+	expect_getenv("__TEST_VAR1", "VALUE2");
+
+	setenv("__TEST_VAR1", "1337");
+
+	expect_getenv("__TEST_VAR1", "1337");
+
+	setenv("__TEST_VAR1", "0x%s", "1337");
+
+	expect_getenv("__TEST_VAR1", "0x1337");
+
+	setenv("__TEST_VAR1", "%ux1%c%x", 0, '3', 0x37);
+
+	expect_getenv("__TEST_VAR1", "0x1337");
+
+	unsetenv("__TEST_VAR1");
+}
+bselftest(core, test_envvar);
-- 
2.30.2



