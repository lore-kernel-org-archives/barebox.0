Delivery-date: Thu, 09 Nov 2023 16:31:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1705-004Pmj-1K
	for lore@lore.pengutronix.de;
	Thu, 09 Nov 2023 16:31:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1705-0006T4-EQ
	for lore@pengutronix.de; Thu, 09 Nov 2023 16:31:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xiaL5xQSBL6SIx3BfGTm515K9tdXj+VxwJ7KjDjd1Jk=; b=zKEQZcJ3pj3CbaYazdW/xlQJxX
	TWUIqps0s2zlARQrcQltcYoBOXP9P72LRdxRaN3+86Mbg1ANULYk1yUaBWrlUZYPGhmMC7OOoMkBW
	jaoe3Xz3E2Wk9lVFG/uyh0TZMhizFYjg4f2DGUQr+0Wx8j2GDIIaJEfutc5q48RgdqFA5F19PpDdJ
	OJFtOc5h7kreNxTKbEl9wIm2rq5x5TvA4w5PN/+aGrowP6hBR6IivKI7pWJ+RGapjwLzir3DchEh2
	KEuqErjDZkjx5JQbvWqUeVjyL5i/Uqyv191JW9nmAIqPA9zb9oiB4iDZj9Vzf7pEtlePtH89Np1Mt
	GPy1s8LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r16yj-006ahT-1Y;
	Thu, 09 Nov 2023 15:29:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r16yg-006agY-0Z
	for barebox@lists.infradead.org;
	Thu, 09 Nov 2023 15:29:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r16ya-00064U-Nn; Thu, 09 Nov 2023 16:29:48 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r16ya-007oTb-BU; Thu, 09 Nov 2023 16:29:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r16ya-009eRV-0r;
	Thu, 09 Nov 2023 16:29:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Nov 2023 16:29:46 +0100
Message-Id: <20231109152946.2299755-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_072954_209831_986CF63C 
X-CRM114-Status: GOOD (  14.52  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] test: self: mmu: skip false positive test fail when no RAM at address 0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Testing zero_page_access only makes sense if we actually have RAM at
address 0 that we may read from. If it happens to I/O memory, the SoC
may hang or a data abort may be raised, which would make the test fail.

Avoid this by explicitly checking for that case and skipping the test
without running.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/mmu.c | 33 ++++++++++++++++++++++++++++++---
 1 file changed, 30 insertions(+), 3 deletions(-)

diff --git a/test/self/mmu.c b/test/self/mmu.c
index ca58d718ffb3..58961daaab95 100644
--- a/test/self/mmu.c
+++ b/test/self/mmu.c
@@ -9,6 +9,7 @@
 #include <abort.h>
 #include <zero_page.h>
 #include <linux/sizes.h>
+#include <memory.h>
 
 #define TEST_BUFFER_SIZE		SZ_1M
 #define TEST_BUFFER_ALIGN		SZ_4K
@@ -171,6 +172,34 @@ static void test_remap(void)
 	free(mirror);
 }
 
+static bool zero_page_access_ok(void)
+{
+	struct memory_bank *bank;
+	const char *reason;
+	struct resource null_res = {
+		.name = "null",
+		.flags = IORESOURCE_MEM,
+		.start = 0,
+		.end = sizeof(int) - 1,
+	};
+
+	if (!IS_ENABLED(CONFIG_ARCH_HAS_ZERO_PAGE)) {
+		reason = "CONFIG_ARCH_HAS_ZERO_PAGE=n";
+		goto not_ok;
+	}
+
+	for_each_memory_bank(bank) {
+		if (resource_contains(bank->res, &null_res))
+			return true;
+	}
+
+	reason = "no memory at address zero";
+
+not_ok:
+	pr_info("skipping rest of zero page tests because %s\n", reason);
+	return false;
+}
+
 static void test_zero_page(void)
 {
 	void __iomem *null = NULL;
@@ -197,9 +226,7 @@ static void test_zero_page(void)
 		failed_tests++;
 	}
 
-	if (!IS_ENABLED(CONFIG_ARCH_HAS_ZERO_PAGE)) {
-		pr_info("skipping %s because %s=n\n",
-			"CONFIG_ARCH_HAS_ZERO_PAGE", __func__);
+	if (!zero_page_access_ok()) {
 		skipped_tests += 2;
 		return;
 	}
-- 
2.39.2



