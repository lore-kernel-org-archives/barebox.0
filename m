Delivery-date: Tue, 04 Oct 2022 17:56:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkHe-005iDV-PJ
	for lore@lore.pengutronix.de; Tue, 04 Oct 2022 17:56:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkHd-0006Ms-Dh
	for lore@pengutronix.de; Tue, 04 Oct 2022 17:56:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YBN3vu1FQksRgTk6GK6O5TPyQJhAVYOi0/KXy2cM+84=; b=wV0UB447TcfLT2q93DaukDqAry
	9SbtoXwPwPDL70nKXXHheo9r5A+6f9D21F8foHvliPoGI2eHCq6rkjT4bAoBP9C6gQ/uz5TSWEZ1U
	tkrYarp4lMUFMTlUs+hbX3s5WI1VM6iKYtX+pJMVemO1WEZm7vrO/0Qojipp682ek/4ICxx3GSrs1
	uhzcCbp36bYfa5lyp1bfpUYwpDTXGVnSLnFKdQmox54scVc27bJyxsgV2xY8pRjCb4KnVwyz2z81V
	PiBRUi/hlsSZKP5pM55cHR4M13GDk+gKqDPblMff0OcsacqgqhHqUMoB8TFJ6H/UIL8WAXpZBg9ZZ
	S6M1SvrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofkGN-00A7rB-Pc; Tue, 04 Oct 2022 15:55:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofkG7-00A7mH-6P
	for barebox@lists.infradead.org; Tue, 04 Oct 2022 15:55:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG4-0005gf-W3; Tue, 04 Oct 2022 17:55:01 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG5-004alv-PF; Tue, 04 Oct 2022 17:55:00 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG2-00EW87-9i; Tue, 04 Oct 2022 17:54:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  4 Oct 2022 17:54:00 +0200
Message-Id: <20221004155405.3458479-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221004155405.3458479-1-a.fatoum@pengutronix.de>
References: <20221004155405.3458479-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_085503_319638_18BEF455 
X-CRM114-Status: GOOD (  12.30  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/9] tlsf: use bselftest for testing ffs/fls
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The driver has two instances of #ifdef _DEBUG, but when the symbol is
actually defined, we get a build error because of the old-style C
function definition. Fix this and while at it, turn it into a
bselftest.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/tlsf.c | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/common/tlsf.c b/common/tlsf.c
index 3ca58e3abbfb..8dbb41077cad 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -1,14 +1,19 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
+#define pr_fmt(fmt) "tlsf: " fmt
+
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
 #include <tlsf.h>
+#include <bselftest.h>
 #include "tlsfbits.h"
 #include <linux/kasan.h>
 
 #define CHAR_BIT	8
 
+BSELFTEST_GLOBALS();
+
 #ifndef CONFIG_KASAN
 #define __memcpy memcpy
 #endif
@@ -870,11 +875,13 @@ void tlsf_remove_pool(tlsf_t tlsf, pool_t pool)
 ** TLSF main interface.
 */
 
-#ifdef _DEBUG
-int test_ffs_fls()
+static int test_tlfs_ffs_fls(void)
 {
-	/* Verify ffs/fls work properly. */
 	int rv = 0;
+
+	total_tests = 8;
+
+	/* Verify ffs/fls work properly. */
 	rv += (tlsf_ffs(0) == -1) ? 0 : 0x1;
 	rv += (tlsf_fls(0) == -1) ? 0 : 0x2;
 	rv += (tlsf_ffs(1) == 0) ? 0 : 0x4;
@@ -885,28 +892,21 @@ int test_ffs_fls()
 	rv += (tlsf_fls(0x7FFFFFFF) == 30) ? 0 : 0x80;
 
 #if defined (TLSF_64BIT)
+	total_tests += 3;
 	rv += (tlsf_fls_sizet(0x80000000) == 31) ? 0 : 0x100;
 	rv += (tlsf_fls_sizet(0x100000000) == 32) ? 0 : 0x200;
 	rv += (tlsf_fls_sizet(0xffffffffffffffff) == 63) ? 0 : 0x400;
+#else
+	skipped_tests += 3;
 #endif
 
-	if (rv)
-	{
-		printf("test_ffs_fls: %x ffs/fls tests failed.\n", rv);
-	}
-	return rv;
+	failed_tests = rv;
+	return 0;
 }
-#endif
+bselftest(core, test_tlfs_ffs_fls);
 
 tlsf_t tlsf_create(void* mem)
 {
-#ifdef _DEBUG
-	if (test_ffs_fls())
-	{
-		return 0;
-	}
-#endif
-
 	if (((tlsfptr_t)mem % ALIGN_SIZE) != 0)
 	{
 		printf("tlsf_create: Memory must be aligned to %u bytes.\n",
-- 
2.30.2



