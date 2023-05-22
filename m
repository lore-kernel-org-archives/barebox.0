Delivery-date: Mon, 22 May 2023 07:30:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7c-009JE5-DM
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:30:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7Y-00030n-Qq
	for lore@pengutronix.de; Mon, 22 May 2023 07:30:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FHYS8F0QPjnrExdht4wuha5F5dd10KIrnaaoPnX/KZs=; b=AnUQ3baUx9BOBE
	Lb/28UwtXQRGoVcBNmrwzR8ioT9Wh69PIo78NuL+OJo8wjiLH+vTuCCB83vPEffyvUGo2ZsZEZf6h
	LnkJsx707DV7dDQbn1esZi/B2pop7iFxYSSUikgFXyefnE5pnbzTPXnpg52PpIdwuOs80M2Kgi4ch
	PsLZfJWvpZ7a6tKFSZDSb7ZHBvL4E2J/LFWrFwQJaZGt0ysVTuFtTBs4CAzN3C1Vvko2bcZ8CMjJm
	6M78h/gXyXLBLYBNnATtoO3ryWJiMacgaR8IsX1OZ7fTlqaugAnTWZhuwLnT9yhzOE5pP++mVrpl/
	uLmzKunJd/fdQ6ZpZXJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y6M-005OfO-24;
	Mon, 22 May 2023 05:28:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y6E-005OYY-2U
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:28:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y64-0002Mw-Do; Mon, 22 May 2023 07:28:40 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y63-001vw3-F6; Mon, 22 May 2023 07:28:39 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y60-004MLg-N6; Mon, 22 May 2023 07:28:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 22 May 2023 07:28:34 +0200
Message-Id: <20230522052835.1039143-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
References: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_222850_968306_6A4E53FA 
X-CRM114-Status: GOOD (  18.14  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, lst@pengutronix.de, rcz@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 10/11] test: self: add MMU remapping self test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

ARM mmu code in barebox has recently seen some changes to enhance
remapping. Add a self test that exercises this a bit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/Kconfig  |   6 ++
 test/self/Makefile |   1 +
 test/self/mmu.c    | 233 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 240 insertions(+)
 create mode 100644 test/self/mmu.c

diff --git a/test/self/Kconfig b/test/self/Kconfig
index ce5048c70ec9..c130209748aa 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -36,6 +36,7 @@ config SELFTEST_ENABLE_ALL
 	imply SELFTEST_FS_RAMFS
 	imply SELFTEST_TFTP
 	imply SELFTEST_JSON
+	imply SELFTEST_MMU
 	help
 	  Selects all self-tests compatible with current configuration
 
@@ -69,4 +70,9 @@ config SELFTEST_JSON
 	bool "JSON selftest"
 	depends on JSMN
 
+config SELFTEST_MMU
+	bool "MMU remapping selftest"
+	select MEMTEST
+	depends on MMU
+
 endif
diff --git a/test/self/Makefile b/test/self/Makefile
index 98ebd1fd66c1..8c816c4299f6 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -9,6 +9,7 @@ obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.
 obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
 obj-$(CONFIG_SELFTEST_FS_RAMFS) += ramfs.o
 obj-$(CONFIG_SELFTEST_JSON) += json.o
+obj-$(CONFIG_SELFTEST_MMU) += mmu.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
 clean-files += *.dtbo *.dtbo.S .*.dtso
diff --git a/test/self/mmu.c b/test/self/mmu.c
new file mode 100644
index 000000000000..ee6c1cd45e7e
--- /dev/null
+++ b/test/self/mmu.c
@@ -0,0 +1,233 @@
+// SPDX-License-Identifier: GPL-2.0-onl
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <common.h>
+#include <bselftest.h>
+#include <mmu.h>
+#include <memtest.h>
+#include <abort.h>
+#include <zero_page.h>
+#include <linux/sizes.h>
+
+BSELFTEST_GLOBALS();
+
+#define __expect(ret, cond, fmt, ...) do { \
+	bool __cond = (cond); \
+	int __ret = (ret); \
+	total_tests++; \
+	\
+	if (!__cond) { \
+		failed_tests++; \
+		printf("%s:%d error %pe: " fmt "\n", \
+		       __func__, __LINE__, ERR_PTR(__ret), ##__VA_ARGS__); \
+	} \
+} while (0)
+
+#define expect_success(ret, ...) __expect((ret), ((ret) >= 0), __VA_ARGS__)
+
+static void memtest(void __iomem *start, size_t size, const char *desc)
+{
+	int ret;
+
+	ret = mem_test_bus_integrity((resource_size_t)start,
+				     (resource_size_t)start + size - 1, 0);
+	expect_success(ret, "%s bus test", desc);
+
+	ret = mem_test_moving_inversions((resource_size_t)start,
+					 (resource_size_t)start + size - 1, 0);
+	expect_success(ret, "%s moving inverstions test", desc);
+}
+
+static inline int __check_mirroring(void __iomem *a, void __iomem *b, bool is_mirror,
+				    const char *func, int line)
+{
+	if ((readl(a) == readl(b)) == (is_mirror))
+		return 0;
+
+	printf("%s:%d: mirroring unexpectedly %s: (*%p = 0x%x) %s (*%p = 0x%x)\n", func, line,
+	       is_mirror ? "failed" : "succeeded",
+	       a, readl(a), is_mirror ? "!=" : "==", b, readl(b));
+
+	mmuinfo(a);
+	mmuinfo(b);
+
+	return -EILSEQ;
+}
+
+#define check_mirroring(a, b, is_mirror) \
+	__check_mirroring((a), (b), (is_mirror), __func__, __LINE__)
+
+static void test_remap(void)
+{
+	u8 __iomem *buffer = NULL, *mirror = NULL;
+	phys_addr_t buffer_phys;
+	int i, ret;
+
+	buffer = memalign(SZ_2M, SZ_8M);
+	if (WARN_ON(!buffer))
+		goto out;
+
+	buffer_phys = virt_to_phys(buffer);
+
+	mirror = memalign(SZ_2M, SZ_8M);
+	if (WARN_ON(!mirror))
+		goto out;
+
+	pr_debug("allocated buffer = 0x%p, mirror = 0x%p\n", buffer, mirror);
+
+	memtest(buffer, SZ_8M, "cached buffer");
+	memtest(mirror, SZ_8M, "cached mirror");
+
+	if (__is_defined(ARCH_HAS_REMAP)) {
+		skipped_tests += 10;
+		goto out;
+	}
+
+	ret = remap_range(buffer, SZ_8M, MAP_UNCACHED);
+	memtest(buffer, SZ_8M, "uncached buffer");
+
+	ret = remap_range(mirror, SZ_8M, MAP_UNCACHED);
+	memtest(mirror, SZ_8M, "uncached mirror");
+
+	for (i = 0; i < SZ_8M; i += sizeof(u32)) {
+		int m = i, b = i;
+		writel(0xDEADBEEF, &mirror[m]);
+		writel(i, &buffer[b]);
+		ret = check_mirroring(&mirror[m], &buffer[b], false);
+		if (ret)
+			break;
+	}
+
+	expect_success(ret, "asserting no mirror before remap");
+
+	ret = arch_remap_range(mirror, buffer_phys, SZ_8M, MAP_UNCACHED);
+	expect_success(ret, "remapping with mirroring");
+
+	for (i = 0; i < SZ_8M; i += sizeof(u32)) {
+		int m = i, b = i;
+		writel(0xDEADBEEF, &mirror[m]);
+		writel(i, &buffer[b]);
+		ret = check_mirroring(&mirror[m], &buffer[b], true);
+		if (ret)
+			break;
+	}
+
+	expect_success(ret, "asserting mirroring after remap");
+
+	ret = arch_remap_range(mirror, buffer_phys + SZ_4K, SZ_4M, MAP_UNCACHED);
+	expect_success(ret, "remapping with mirroring (phys += 4K)");
+
+	for (i = 0; i < SZ_4M; i += sizeof(u32)) {
+		int m = i, b = i + SZ_4K;
+		writel(0xDEADBEEF, &mirror[m]);
+		writel(i, &buffer[b]);
+		ret = check_mirroring(&mirror[m], &buffer[b], true);
+		if (ret)
+			break;
+	}
+
+	expect_success(ret, "asserting mirroring after remap (phys += 4K)");
+
+	ret = arch_remap_range(mirror + SZ_4K, buffer_phys, SZ_4M, MAP_UNCACHED);
+	expect_success(ret, "remapping with mirroring (virt += 4K)");
+
+	for (i = 0; i < SZ_4M; i += sizeof(u32)) {
+		int m = i + SZ_4K, b = i;
+		writel(0xDEADBEEF, &mirror[m]);
+		writel(i, &buffer[b]);
+		ret = check_mirroring(&mirror[m], &buffer[b], true);
+		if (ret)
+			break;
+	}
+
+	expect_success(ret, "asserting mirroring after remap (virt += 4K)");
+	return;
+
+	ret = remap_range(buffer, SZ_8M, MAP_DEFAULT);
+	expect_success(ret, "remapping buffer with default attrs");
+	memtest(buffer, SZ_8M, "newly cached buffer");
+
+	ret = remap_range(mirror, SZ_8M, MAP_DEFAULT);
+	expect_success(ret, "remapping mirror with default attrs");
+	memtest(mirror, SZ_8M, "newly cached mirror");
+
+	for (i = 0; i < SZ_8M; i += sizeof(u32)) {
+		int m = i, b = i;
+		writel(0xDEADBEEF, &mirror[m]);
+		writel(i, &buffer[b]);
+		ret = check_mirroring(&mirror[m], &buffer[b], false);
+		if (ret)
+			break;
+	}
+
+	expect_success(ret, "asserting no mirror after remap restore");
+out:
+	free(buffer);
+	free(mirror);
+}
+
+static void test_zero_page(void)
+{
+	void __iomem *null = NULL;
+
+	total_tests += 3;
+
+	if (!IS_ENABLED(CONFIG_ARCH_HAS_DATA_ABORT_MASK)) {
+		pr_info("skipping %s because %s=n\n",
+			"CONFIG_ARCH_HAS_DATA_ABORT_MASK", __func__);
+		skipped_tests += 3;
+		return;
+	}
+
+	OPTIMIZER_HIDE_VAR(null);
+
+	/* Check if *NULL traps and data_abort_mask works */
+
+	data_abort_mask();
+
+	(void)readl(null);
+
+	if (!data_abort_unmask()) {
+		printf("%s: NULL pointer access did not trap\n", __func__);
+		failed_tests++;
+	}
+
+	if (!IS_ENABLED(CONFIG_ARCH_HAS_ZERO_PAGE)) {
+		pr_info("skipping %s because %s=n\n",
+			"CONFIG_ARCH_HAS_ZERO_PAGE", __func__);
+		skipped_tests += 2;
+		return;
+	}
+
+	/* Check if zero_page_access() works */
+
+	data_abort_mask();
+
+	zero_page_access();
+	(void)readl(null);
+	zero_page_faulting();
+
+	if (data_abort_unmask()) {
+		printf("%s: unexpected fault on zero page access\n", __func__);
+		failed_tests++;
+	}
+
+	/* Check if zero_page_faulting() works */
+
+	data_abort_mask();
+
+	(void)readl(null);
+
+	if (!data_abort_unmask()) {
+		printf("%s NULL pointer access did not trap\n", __func__);
+		failed_tests++;
+	}
+}
+
+static void test_mmu(void)
+{
+	test_zero_page();
+	test_remap();
+}
+bselftest(core, test_mmu);
-- 
2.39.2



