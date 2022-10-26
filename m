Delivery-date: Wed, 26 Oct 2022 08:43:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ona8Y-002guS-6q
	for lore@lore.pengutronix.de; Wed, 26 Oct 2022 08:43:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ona8W-0000Jq-W9
	for lore@pengutronix.de; Wed, 26 Oct 2022 08:43:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uN9y88zS++fNZUwvINc2QT57dZ2+7947GaddXfEaapo=; b=AUY+9/rNf2JlSFEP3k9cTYs+V9
	TQArdwiGc8RYR6gkpG1sDfk06mMPKcdNJD8WaHDn9ezzHjj5VqBgyyA0LfFq8MkALD4WhywrHIEGE
	KQSifm5yWEUVsDSBVoO+58U/CXJJ7ZfPGBl8z9zuDhBpcVNG3uxOmWUVwHX3GMlom28cGesoQVTIT
	MYacK7RPmnHLJL2gaJk/G+JQ7jPfYX3WCWHjswQYL/Faxt99OOaXcSTGcsd4fkvumYoSPQ5BRu0hk
	qMBUdHZBAS6Vb8xhdcmIAJ3RmtEJgMjsPBlKE3GQhzaLE63RJ2m7DbAsa5COViwa77qzKWYUdWSTa
	vwPzUPSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ona7C-008IHm-B7; Wed, 26 Oct 2022 06:42:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ona76-008IFb-KX
	for barebox@lists.infradead.org; Wed, 26 Oct 2022 06:42:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ona75-0008W7-Do; Wed, 26 Oct 2022 08:42:07 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ona75-000SHe-M8; Wed, 26 Oct 2022 08:42:06 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ona73-009tyc-OO; Wed, 26 Oct 2022 08:42:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Oct 2022 08:42:03 +0200
Message-Id: <20221026064205.2360041-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221026064205.2360041-1-a.fatoum@pengutronix.de>
References: <20221026064205.2360041-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221025_234208_690502_1BBCC5E1 
X-CRM114-Status: GOOD (  13.42  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/6] test: self: add strjoin tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Just to make sure strjoin works as intended, add some simple unit tests.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/Kconfig  |  5 +++++
 test/self/Makefile |  1 +
 test/self/string.c | 46 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 52 insertions(+)
 create mode 100644 test/self/string.c

diff --git a/test/self/Kconfig b/test/self/Kconfig
index f3cb6601e3b8..3a5e7795fea8 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -38,6 +38,11 @@ config SELFTEST_ENABLE_ALL
 	help
 	  Selects all self-tests compatible with current configuration
 
+config SELFTEST_STRING
+	bool "string selftest"
+	help
+	  Tests some of the string library functions
+
 config SELFTEST_MALLOC
 	bool "malloc() selftest"
 	help
diff --git a/test/self/Makefile b/test/self/Makefile
index 6f2c0d394034..5d9d772d13b0 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 
 obj-$(CONFIG_SELFTEST) += core.o
+obj-$(CONFIG_SELFTEST_STRING) += string.o
 obj-$(CONFIG_SELFTEST_MALLOC) += malloc.o
 obj-$(CONFIG_SELFTEST_PRINTF) += printf.o
 obj-$(CONFIG_SELFTEST_PROGRESS_NOTIFIER) += progress-notifier.o
diff --git a/test/self/string.c b/test/self/string.c
new file mode 100644
index 000000000000..b5785da20d8d
--- /dev/null
+++ b/test/self/string.c
@@ -0,0 +1,46 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <common.h>
+#include <bselftest.h>
+#include <malloc.h>
+#include <string.h>
+
+BSELFTEST_GLOBALS();
+
+static void __expect_streq(const char *is, const char *expect,
+			   const char *func, int line)
+{
+	total_tests++;
+	if (strcmp(is, expect)) {
+		failed_tests++;
+		printf("%s:%d: got %s, but %s expected\n", func, line, is, expect);
+	}
+}
+
+#define expect_streq(is, expect) \
+	__expect_streq(is, expect, __func__, __LINE__)
+
+static void test_string(void)
+{
+	char *strs[] = { "ayy", "bee", "cee" };
+	char *buf;
+
+	buf = strjoin("", strs, ARRAY_SIZE(strs));
+	expect_streq(buf, "ayybeecee");
+	free(buf);
+
+	buf = strjoin(" ", strs, ARRAY_SIZE(strs));
+	expect_streq(buf, "ayy bee cee");
+	free(buf);
+
+	buf = strjoin(", ", strs, ARRAY_SIZE(strs));
+	expect_streq(buf, "ayy, bee, cee");
+	free(buf);
+
+	buf = strjoin(" ", strs, 1);
+	expect_streq(buf, "ayy");
+	free(buf);
+}
+bselftest(core, test_string);
-- 
2.30.2



