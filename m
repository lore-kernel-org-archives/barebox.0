Delivery-date: Wed, 22 Nov 2023 18:42:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rFR-004ern-2u
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 18:42:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rFR-0002um-Px
	for lore@pengutronix.de; Wed, 22 Nov 2023 18:42:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FLMpnTJmcrrMRsVvN/2WadCvC1oEosfbl3yYZQsx2VU=; b=NLSGCoQmIPMFYE/ahNQMteY+ZG
	/aYNfj9Y5MPI0aEnqYFIYGsgrBbg3Vv3Stm+8p6iNFLmSLZP5hOKd3KNs0ghJUW3sRQLhfCH323++
	ddm7uY3EDB7ev/kGf63jkamwKWFGY0Kxx93PyCRgJiup+GnIkxnGCFIrxZFgIfklMP2bvpV7byYAO
	HJr9bWdTuTNixQ/InWA2oDwQ7QvqOvsBBf7HJI6XZ8hRjO7GpJNt+vt9cvNJziefLSoE5baVbr91B
	bnnIL3UmqX4NrGLtkOGFfkvOEqvgjdO8a+Ih/T9iyB1A7Dj1CPj1rw33JGp6fn+/WNfX/HDH/qJkD
	rX727HHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rE8-002hlX-1i;
	Wed, 22 Nov 2023 17:41:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rE2-002hgm-1e
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 17:41:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rE1-0002Au-9E; Wed, 22 Nov 2023 18:41:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rE0-00ArWs-Sv; Wed, 22 Nov 2023 18:41:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r34-001lAy-0x;
	Wed, 22 Nov 2023 18:30:02 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 18:29:45 +0100
Message-Id: <20231122172951.376531-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122172951.376531-1-a.fatoum@pengutronix.de>
References: <20231122172951.376531-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_094122_547928_122316F1 
X-CRM114-Status: GOOD (  15.37  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 14/20] test: self: add simple IDR test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The barebox implementation for IDR is very rudimentary compared to the
kernel, consisting just of a linked list compared to Linux' radix tree.

Nevertheless, there is potential for wrong implementation, so add a
self test to verify its operation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 test/self/Kconfig  |   5 ++
 test/self/Makefile |   1 +
 test/self/idr.c    | 119 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 125 insertions(+)
 create mode 100644 test/self/idr.c

diff --git a/test/self/Kconfig b/test/self/Kconfig
index 5850dc95973b..ace01accda7e 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -43,6 +43,7 @@ config SELFTEST_ENABLE_ALL
 	select SELFTEST_SETJMP if ARCH_HAS_SJLJ
 	select SELFTEST_REGULATOR if REGULATOR && OFDEVICE
 	select SELFTEST_TEST_COMMAND if CMD_TEST
+	select SELFTEST_IDR
 	help
 	  Selects all self-tests compatible with current configuration
 
@@ -107,4 +108,8 @@ config SELFTEST_TEST_COMMAND
 	bool "test command selftest"
 	depends on CMD_TEST
 
+config SELFTEST_IDR
+	bool "idr selftest"
+	select IDR
+
 endif
diff --git a/test/self/Makefile b/test/self/Makefile
index c9ecb459c2d3..51131474f333 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -16,6 +16,7 @@ obj-$(CONFIG_SELFTEST_STRING) += string.o
 obj-$(CONFIG_SELFTEST_SETJMP) += setjmp.o
 obj-$(CONFIG_SELFTEST_REGULATOR) += regulator.o test_regulator.dtbo.o
 obj-$(CONFIG_SELFTEST_TEST_COMMAND) += test_command.o
+obj-$(CONFIG_SELFTEST_IDR) += idr.o
 
 ifdef REGENERATE_RSATOC
 
diff --git a/test/self/idr.c b/test/self/idr.c
new file mode 100644
index 000000000000..3d23141e0f03
--- /dev/null
+++ b/test/self/idr.c
@@ -0,0 +1,119 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <printk.h>
+#include <linux/idr.h>
+#include <bselftest.h>
+
+BSELFTEST_GLOBALS();
+
+#define __expect(cond, fmt, ...) ({ \
+	bool __cond = (cond); \
+	total_tests++; \
+	\
+	if (!__cond) { \
+		failed_tests++; \
+		printf("%s failed at %s:%d " fmt "\n", \
+			#cond, __func__, __LINE__, ##__VA_ARGS__); \
+	} \
+	__cond; \
+})
+
+#define expect(ret, ...) __expect((ret), __VA_ARGS__)
+
+static int cmp[3] = { 7, 1, 2};
+static int sorted_cmp[3] = { 1, 2, 7};
+
+static int test_idr_for_each(int id, void *p, void *data)
+{
+	expect(data == &cmp[2]);
+	expect(*(int *)p == id);
+
+	return id == 1 ? 0 : -1;
+}
+
+static int count_idr(int id, void *p, void *data)
+{
+	int *count = data;
+
+	++*count;
+
+	return 0;
+}
+
+static void test_idr(void)
+{
+	void *ptr;
+	int id, count;
+
+	DEFINE_IDR(idr);
+
+	expect(idr_is_empty(&idr));
+
+	expect(!idr_find(&idr, cmp[0]));
+
+	id = idr_alloc_one(&idr, &cmp[0], cmp[0]);
+	expect(id == cmp[0]);
+
+	expect(!idr_is_empty(&idr));
+
+	ptr = idr_find(&idr, cmp[0]);
+	expect(ptr);
+	expect(ptr == &cmp[0]);
+
+	id = idr_alloc_one(&idr, &cmp[1], cmp[1]);
+	expect(id == cmp[1]);
+
+	id = idr_alloc_one(&idr, &cmp[2], cmp[2]);
+	expect(id == cmp[2]);
+
+	count = 0;
+
+	idr_for_each_entry(&idr, ptr, id) {
+		expect(id  ==  sorted_cmp[count]);
+		expect(*(int *)ptr == sorted_cmp[count]);
+
+		count++;
+
+	}
+
+	expect(count == 3);
+
+	expect(idr_for_each(&idr, test_idr_for_each, &cmp[2]) == -1);
+
+	count = 0;
+	expect(idr_for_each(&idr, count_idr, &count) == 0);
+	expect(count == 3);
+
+	idr_remove(&idr, 1);
+
+	count = 0;
+	expect(idr_for_each(&idr, count_idr, &count) == 0);
+	expect(count == 2);
+
+	idr_remove(&idr, 7);
+
+	count = 0;
+	expect(idr_for_each(&idr, count_idr, &count) == 0);
+	expect(count == 1);
+
+	idr_remove(&idr, 2);
+
+	count = 0;
+	expect(idr_for_each(&idr, count_idr, &count) == 0);
+	expect(count == 0);
+
+	expect(idr_is_empty(&idr));
+
+	idr_alloc_one(&idr, &cmp[0], cmp[0]);
+	idr_alloc_one(&idr, &cmp[1], cmp[1]);
+	idr_alloc_one(&idr, &cmp[2], cmp[2]);
+
+	expect(!idr_is_empty(&idr));
+
+	idr_destroy(&idr);
+
+	expect(idr_is_empty(&idr));
+}
+bselftest(core, test_idr);
-- 
2.39.2



