Delivery-date: Mon, 01 Sep 2025 16:55:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ut5wt-006wSn-2n
	for lore@lore.pengutronix.de;
	Mon, 01 Sep 2025 16:55:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ut5ws-0002NE-Nb
	for lore@pengutronix.de; Mon, 01 Sep 2025 16:55:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bPWReroPpZ9qEi01wrddYUPNuALKeEUBxpeYO7NxS20=; b=Q2c2Xt5M/dQ1bmkfmn+GzhyqC0
	2wnW4KL9iU3KbupNrMtb0xu5JwnbH+NgEBbbJXEJw5mylp1PmbsNJ2ggYNZWvlIqS9ecuRYskZE68
	/1lWFerknp5MUeTUzoH+GqexdVdLTaf0M6lXSXV5SqzzI5GDBwr9KwXBH3Zw5aOFSasqfLjvqMyHA
	XjYOjaSi0DXZ22qw7XBtzSdRSEhSxwbul5OMsmdiCqsvSaZ8L9lsQ38cjHLUmeQph6DaQmVQTQW39
	MC8KBvdcbCiNpkNKNObuj9SWDnsNbILNnoQmd3TR6/VNYjF3vhytw4IPFq9T1XBRhosSXMKGGtNfm
	GgEgl9pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut5wP-0000000CwMS-0laL;
	Mon, 01 Sep 2025 14:55:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut33p-0000000C6uO-1ldf
	for barebox@lists.infradead.org;
	Mon, 01 Sep 2025 11:50:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut33n-0008G6-SQ; Mon, 01 Sep 2025 13:50:55 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut33n-003DOB-2F;
	Mon, 01 Sep 2025 13:50:55 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut33n-0000000AYEz-2XK0;
	Mon, 01 Sep 2025 13:50:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Sep 2025 13:50:53 +0200
Message-ID: <20250901115054.2514841-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_045057_457953_2D4951C6 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] vsprintf: drop printf hexstr fuzzer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This fuzzer was an early proof of concept as can be seen by the
useless initialized variable and its name is misleading:
It only tests the hexstr feature.

Unlike other tests, it also spams stdout. Let's just drop it for now and
perhaps bring it back in future in a more complete form.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile.sandbox |  1 -
 lib/vsprintf.c          | 15 ---------------
 2 files changed, 16 deletions(-)

diff --git a/images/Makefile.sandbox b/images/Makefile.sandbox
index d13ffb0124b1..5f94b6e589e8 100644
--- a/images/Makefile.sandbox
+++ b/images/Makefile.sandbox
@@ -9,7 +9,6 @@ fuzzer-$(CONFIG_FITIMAGE)	+= fit
 fuzzer-$(CONFIG_OFTREE)		+= dtb
 fuzzer-$(CONFIG_OFTREE)		+= fdt-compatible
 fuzzer-$(CONFIG_PARTITION)	+= partitions
-fuzzer-$(CONFIG_PRINTF_HEXSTR)	+= printf
 
 ifeq ($(CONFIG_SANDBOX),y)
 
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 66b2f4641874..409a8f02dec9 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -22,7 +22,6 @@
 #include <wchar.h>
 #include <of.h>
 #include <efi.h>
-#include <fuzz.h>
 
 #include <common.h>
 #include <pbl.h>
@@ -1006,17 +1005,3 @@ int asprintf(char **strp, const char *fmt, ...)
 	return len;
 }
 EXPORT_SYMBOL(asprintf);
-
-static int __maybe_unused fuzz_printf(const uint8_t *data, size_t size)
-{
-	static bool initialized = false;
-
-	if (!initialized) {
-		printf("initializing\n");
-		initialized = true;
-	}
-
-	printf("%*ph\n", (int)size, data);
-	return 0;
-}
-fuzz_test("printf", fuzz_printf);
-- 
2.47.2



