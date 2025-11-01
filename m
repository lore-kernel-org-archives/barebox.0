Delivery-date: Sat, 01 Nov 2025 11:56:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vF9Hq-00E6zA-1q
	for lore@lore.pengutronix.de;
	Sat, 01 Nov 2025 11:56:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vF9Hp-0008OP-RN
	for lore@pengutronix.de; Sat, 01 Nov 2025 11:56:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FJu+QmBec938yjVHbjUl3S7WHdloOedyEYos+GH8uMI=; b=UA+5LdjACo7fKlaV61hlMRIsns
	9JP7OnosbrSZikkq9w1H8723+9M88f+8EOmk2Khu+2CJLXB6sgzdYUXGBQHkOPXyx9sG9AiYZNhtG
	U2xkD1LwRgJF0/6UVydVuajKzrSrvrv4wSpeFygnA2nl9MuWU6Q49mGIMwg/+Q2JuLBHhtStMfh3F
	mLX41DH7btSV3A2k91Me+XhOPxvpqSJaFv8ay64IR9CKbiMmmN/BYy8N/DnwU3QPlzOBKxHEctHQR
	7bwT7N5ohJ5s05A7VSHccjFldSV4abkZk4iGRQ66BrIge24/98S1zIvGx458dKN/V9R/1vjmRuTjF
	DhBGLZwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vF9Gz-00000007HIN-27GJ;
	Sat, 01 Nov 2025 10:55:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vF9Gv-00000007HHV-0xkp
	for barebox@lists.infradead.org;
	Sat, 01 Nov 2025 10:55:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vF9Gq-0008GX-HV; Sat, 01 Nov 2025 11:55:44 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sat,  1 Nov 2025 11:55:39 +0100
Message-ID: <20251101105542.3830943-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251101105542.3830943-1-a.fatoum@barebox.org>
References: <20251101105542.3830943-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251101_035549_330566_B648A313 
X-CRM114-Status: GOOD (  12.97  )
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
Subject: [PATCH master 2/2] test: self: add range.h test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Due to the subtle bug in range.h breaking the MMU code, it's probably a
good idea to have some tests that exercise the corner cases of the
range.h utility functions.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/self/Kconfig  |   6 +++
 test/self/Makefile |   1 +
 test/self/range.c  | 105 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 112 insertions(+)
 create mode 100644 test/self/range.c

diff --git a/test/self/Kconfig b/test/self/Kconfig
index fa2911fa649a..f46253afc034 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -28,6 +28,7 @@ config SELFTEST_AUTORUN
 
 config SELFTEST_ENABLE_ALL
 	bool "Enable all self-tests"
+	select SELFTEST_RANGE
 	select SELFTEST_PRINTF
 	select SELFTEST_MALLOC
 	select SELFTEST_PROGRESS_NOTIFIER
@@ -50,6 +51,11 @@ config SELFTEST_ENABLE_ALL
 	help
 	  Selects all self-tests compatible with current configuration
 
+config SELFTEST_RANGE
+	bool "range.h selftest"
+	help
+	  Tests range functions
+
 config SELFTEST_MALLOC
 	bool "malloc() selftest"
 	help
diff --git a/test/self/Makefile b/test/self/Makefile
index 3d74bf9e98ad..124607b375d8 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 
 obj-$(CONFIG_SELFTEST) += core.o
+obj-$(CONFIG_SELFTEST_RANGE) += range.o
 obj-$(CONFIG_SELFTEST_MALLOC) += malloc.o
 obj-$(CONFIG_SELFTEST_PRINTF) += printf.o
 CFLAGS_printf.o += -Wno-format-security -Wno-format
diff --git a/test/self/range.c b/test/self/range.c
new file mode 100644
index 000000000000..82b19239eac8
--- /dev/null
+++ b/test/self/range.c
@@ -0,0 +1,105 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) "range: " fmt
+
+#include <common.h>
+#include <bselftest.h>
+#include <linux/types.h>
+#include <linux/sizes.h>
+#include <stdio.h>
+#include <range.h>
+
+BSELFTEST_GLOBALS();
+
+static void __expect_bool(const char *msg, bool got, bool want)
+{
+	total_tests++;
+
+	if (got != want) {
+		failed_tests++;
+		pr_err("FAIL: %s — got %d want %d\n", msg, got, want);
+	}
+}
+
+#define expect_bool(got, want, type, a, b, c, d) do {		\
+	char _buf[256];						\
+	snprintf(_buf, sizeof(_buf), "%d: " type		\
+		 " [%#llx, %#llx] vs [%#llx, %#llx]", __LINE__,	\
+		 (u64)(a), (u64)(b), (u64)(c), (u64)(d));	\
+	__expect_bool(_buf, got, want);				\
+} while (0)
+
+#define TEST_INCL(a, b, c, d, expect)				\
+	expect_bool(region_overlap_end_inclusive(a, b, c, d),	\
+		    expect, "incl", a, b, c, d);
+
+#define TEST_EXCL(a, b, c, d, expect)				\
+	expect_bool(region_overlap_end_exclusive(a, b, c, d),	\
+		    expect, "excl", a, b, c, d);
+
+#define TEST_SIZE(a, lena, b, lenb, expect) \
+	expect_bool(region_overlap_size(a, lena, b, lenb),	\
+		    expect, "size", a, lena, b, lenb)
+
+static void test_region_overlap(void)
+{
+	TEST_INCL(0u, 5u, 5u, 10u, true);
+	TEST_INCL(0u, 4u, 5u, 10u, false);
+	TEST_INCL(10u, 20u, 12u, 15u, true);
+	TEST_INCL(20u, 10u, 12u, 15u, false);
+
+	TEST_EXCL(0ull, 5ull, 5ull, 10ull, false);
+	TEST_EXCL(0u, 6u, 5u, 10u, true);
+	TEST_EXCL(5u, 5u, 5u, 10u, false);
+	TEST_EXCL(5u, 10u, 7u, 7u, false);
+	TEST_EXCL(3u, 8u, 3u, 8u, true);
+	TEST_EXCL(0u, 0u, 0u, 1u, true);
+	TEST_EXCL(0xFFFFFF00, 0xFFFFFF10,
+		  0xFFFFF000, 0xFFFFFFF0, true);
+	TEST_EXCL(0u, 1u, 1u, 1u, false);
+
+	TEST_SIZE(0u, 0u, 0u, 10u, false);
+	TEST_SIZE(0u, 10u, 5u, 0u, false);
+	TEST_SIZE(0u, 5u, 5u, 5u, false);
+	TEST_SIZE(0u, 6u, 5u, 5u, true);
+	TEST_SIZE(0u, U64_MAX, 123u, 1u, true);
+
+	TEST_EXCL(0u, 0u, 0u, 0u, true);
+	TEST_EXCL(0ull, 0ull, 0ull, 0ull, true);
+
+
+	TEST_EXCL(0xF0000000u, 0u,
+		  (u32)(SZ_4G + SZ_1G), (u32)(SZ_4G + SZ_2G), false);
+	TEST_EXCL(0xF0000000ul, 0ul,
+		  (ulong)(SZ_4G + SZ_1G), (ulong)(SZ_4G + SZ_2G),
+		  sizeof(ulong) == sizeof(u64));
+	TEST_EXCL(0xF0000000ull, 0ull,
+		  SZ_4G + SZ_1G, SZ_4G + SZ_2G, true);
+
+	TEST_EXCL(1u, 1u, 1u, 1u, false);
+
+	TEST_EXCL(0xFFFFFFFEu, 0u, 0u, 1u, false);
+
+	TEST_EXCL(U32_MAX / 2, U32_MAX + 1,
+		  U32_MAX / 2 + 0x10, U32_MAX / 2 + 0x100, true);
+
+	TEST_SIZE(1u, U64_MAX, 1u, 1u, true);
+	TEST_SIZE(1u, U64_MAX, 10u, 10u, true);
+
+	TEST_SIZE(0xFFFFFFFFFFFFFFE0ull, 0x20ull,
+		  0xFFFFFFFFFFFFFFFFull, 0x0ull, false);
+
+	TEST_SIZE(0xFFFFFFFFFFFFFFE0ull, 0x20ull,
+		  0xFFFFFFFFFFFFFFFFull, 0x0ull, false);
+
+	TEST_SIZE(0xFFFFFFFFFFFFFFE0ull, 0x20ull,
+		  0xFFFFFFFFFFFFFFFCull, 0x1ull, true);
+
+	TEST_SIZE(0xFFFFFFFFFFFFFFE0ull, 0x20ull,
+		  0xFFFFFFFFFFFFFFFEull, 0x1ull, true);
+
+	TEST_SIZE(0xFFFFFFFFFFFFFFE0ull, 0x20ull,
+		  0ull, 10ull, false);
+}
+
+bselftest(core, test_region_overlap);
-- 
2.47.3



