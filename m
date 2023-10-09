Delivery-date: Mon, 09 Oct 2023 13:54:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpoq4-001qb8-O0
	for lore@lore.pengutronix.de; Mon, 09 Oct 2023 13:54:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpoq1-0002QU-6T
	for lore@pengutronix.de; Mon, 09 Oct 2023 13:54:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/iv7UIoI8Luawz5F7fbqWTREvXJPqO31c8LlkIfuBi0=; b=gyL4Zipc2QqG/ocwcaBehA5RFb
	/WR78fmerTQXzw8leTAll8AzwQb/QGWQfceP3AwgTBjhmL64H19mhTBKB3wAHpo86BvgVEasOSzFM
	z0pYuiJwe+DAFZdcVLrExbW2N/r3unzygqp+y1GxQZT/VAAfxLcGvAaBG1Au2dBgCjroGTZ0Yhrtc
	v6aH12MTHwhZ25oI+dP1YSdL8JENErlnOl5XR9Dp+1aFA2jgoB2zqaAKsgMWbDgJuWTQbRvwWRDNh
	UAxuc9UfcHXntdeXj9J9+rHXbh7rPsfOVn70Hg5nob5gIn+EKsSRcBkROYjihUXvci1OJilYumcUd
	QIAUAyaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpooq-00AWLw-0I;
	Mon, 09 Oct 2023 11:53:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpool-00AWJN-2O
	for barebox@lists.infradead.org;
	Mon, 09 Oct 2023 11:53:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qpook-0001nI-GZ; Mon, 09 Oct 2023 13:52:58 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qpook-000P3q-18; Mon, 09 Oct 2023 13:52:58 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qpook-009yso-00;
	Mon, 09 Oct 2023 13:52:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Oct 2023 13:52:54 +0200
Message-Id: <20231009115257.2371076-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_045259_781656_F5E82EC1 
X-CRM114-Status: GOOD (  10.37  )
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
Subject: [PATCH 1/4] test: self: mmu: use constants for the hardcoded buffer sizes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The code hardcodes the SZ_8M and SZ_2M constants for size and alignment
at a number of places. In preparation for making them smaller, factor
them out as TEST_BUFFER_SIZE and TEST_BUFFER_ALIGN.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/mmu.c | 45 +++++++++++++++++++++++++--------------------
 1 file changed, 25 insertions(+), 20 deletions(-)

diff --git a/test/self/mmu.c b/test/self/mmu.c
index 4ca10affddd2..850c9f336f89 100644
--- a/test/self/mmu.c
+++ b/test/self/mmu.c
@@ -10,6 +10,9 @@
 #include <zero_page.h>
 #include <linux/sizes.h>
 
+#define TEST_BUFFER_SIZE		SZ_8M
+#define TEST_BUFFER_ALIGN		SZ_2M
+
 BSELFTEST_GLOBALS();
 
 #define __expect(ret, cond, fmt, ...) do { \
@@ -64,33 +67,33 @@ static void test_remap(void)
 	phys_addr_t buffer_phys;
 	int i, ret;
 
-	buffer = memalign(SZ_2M, SZ_8M);
+	buffer = memalign(TEST_BUFFER_ALIGN, TEST_BUFFER_SIZE);
 	if (WARN_ON(!buffer))
 		goto out;
 
 	buffer_phys = virt_to_phys(buffer);
 
-	mirror = memalign(SZ_2M, SZ_8M);
+	mirror = memalign(TEST_BUFFER_ALIGN, TEST_BUFFER_SIZE);
 	if (WARN_ON(!mirror))
 		goto out;
 
 	pr_debug("allocated buffer = 0x%p, mirror = 0x%p\n", buffer, mirror);
 
-	memtest(buffer, SZ_8M, "cached buffer");
-	memtest(mirror, SZ_8M, "cached mirror");
+	memtest(buffer, TEST_BUFFER_SIZE, "cached buffer");
+	memtest(mirror, TEST_BUFFER_SIZE, "cached mirror");
 
 	if (!arch_can_remap()) {
 		skipped_tests += 18;
 		goto out;
 	}
 
-	ret = remap_range(buffer, SZ_8M, MAP_UNCACHED);
-	memtest(buffer, SZ_8M, "uncached buffer");
+	ret = remap_range(buffer, TEST_BUFFER_SIZE, MAP_UNCACHED);
+	memtest(buffer, TEST_BUFFER_SIZE, "uncached buffer");
 
-	ret = remap_range(mirror, SZ_8M, MAP_UNCACHED);
-	memtest(mirror, SZ_8M, "uncached mirror");
+	ret = remap_range(mirror, TEST_BUFFER_SIZE, MAP_UNCACHED);
+	memtest(mirror, TEST_BUFFER_SIZE, "uncached mirror");
 
-	for (i = 0; i < SZ_8M; i += sizeof(u32)) {
+	for (i = 0; i < TEST_BUFFER_SIZE; i += sizeof(u32)) {
 		int m = i, b = i;
 		writel(0xDEADBEEF, &mirror[m]);
 		writel(i, &buffer[b]);
@@ -101,10 +104,10 @@ static void test_remap(void)
 
 	expect_success(ret, "asserting no mirror before remap");
 
-	ret = arch_remap_range(mirror, buffer_phys, SZ_8M, MAP_UNCACHED);
+	ret = arch_remap_range(mirror, buffer_phys, TEST_BUFFER_SIZE, MAP_UNCACHED);
 	expect_success(ret, "remapping with mirroring");
 
-	for (i = 0; i < SZ_8M; i += sizeof(u32)) {
+	for (i = 0; i < TEST_BUFFER_SIZE; i += sizeof(u32)) {
 		int m = i, b = i;
 		writel(0xDEADBEEF, &mirror[m]);
 		writel(i, &buffer[b]);
@@ -115,10 +118,11 @@ static void test_remap(void)
 
 	expect_success(ret, "asserting mirroring after remap");
 
-	ret = arch_remap_range(mirror, buffer_phys + SZ_4K, SZ_4M, MAP_UNCACHED);
+	ret = arch_remap_range(mirror, buffer_phys + SZ_4K,
+			       TEST_BUFFER_SIZE / 2, MAP_UNCACHED);
 	expect_success(ret, "remapping with mirroring (phys += 4K)");
 
-	for (i = 0; i < SZ_4M; i += sizeof(u32)) {
+	for (i = 0; i < TEST_BUFFER_SIZE / 2; i += sizeof(u32)) {
 		int m = i, b = i + SZ_4K;
 		writel(0xDEADBEEF, &mirror[m]);
 		writel(i, &buffer[b]);
@@ -129,10 +133,11 @@ static void test_remap(void)
 
 	expect_success(ret, "asserting mirroring after remap (phys += 4K)");
 
-	ret = arch_remap_range(mirror + SZ_4K, buffer_phys, SZ_4M, MAP_UNCACHED);
+	ret = arch_remap_range(mirror + SZ_4K, buffer_phys,
+			       TEST_BUFFER_SIZE / 2, MAP_UNCACHED);
 	expect_success(ret, "remapping with mirroring (virt += 4K)");
 
-	for (i = 0; i < SZ_4M; i += sizeof(u32)) {
+	for (i = 0; i < TEST_BUFFER_SIZE / 2; i += sizeof(u32)) {
 		int m = i + SZ_4K, b = i;
 		writel(0xDEADBEEF, &mirror[m]);
 		writel(i, &buffer[b]);
@@ -143,15 +148,15 @@ static void test_remap(void)
 
 	expect_success(ret, "asserting mirroring after remap (virt += 4K)");
 
-	ret = remap_range(buffer, SZ_8M, MAP_DEFAULT);
+	ret = remap_range(buffer, TEST_BUFFER_SIZE, MAP_DEFAULT);
 	expect_success(ret, "remapping buffer with default attrs");
-	memtest(buffer, SZ_8M, "newly cached buffer");
+	memtest(buffer, TEST_BUFFER_SIZE, "newly cached buffer");
 
-	ret = remap_range(mirror, SZ_8M, MAP_DEFAULT);
+	ret = remap_range(mirror, TEST_BUFFER_SIZE, MAP_DEFAULT);
 	expect_success(ret, "remapping mirror with default attrs");
-	memtest(mirror, SZ_8M, "newly cached mirror");
+	memtest(mirror, TEST_BUFFER_SIZE, "newly cached mirror");
 
-	for (i = 0; i < SZ_8M; i += sizeof(u32)) {
+	for (i = 0; i < TEST_BUFFER_SIZE; i += sizeof(u32)) {
 		int m = i, b = i;
 		writel(0xDEADBEEF, &mirror[m]);
 		writel(i, &buffer[b]);
-- 
2.39.2



