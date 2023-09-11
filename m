Delivery-date: Mon, 11 Sep 2023 14:57:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfgTr-00BVhM-35
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 14:57:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfgTo-0007Ru-Uz
	for lore@pengutronix.de; Mon, 11 Sep 2023 14:57:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mWrgzDpgbqvnyyha3f8hHdoUrjBXBLwiihkETtmPorA=; b=AP0ekl5iemq22AE/F2zk71vJyD
	AqN7SuuzsH0I1paLSCKpm/wtQgCme3RNAS+P9DpxHPYY4Lj0QxjwSGHrsPBPIJ62UfNba9v36KS9R
	qIANcDv8QgheZdpSdUMQ8o6wtypHj3HlWOaS8UiS6bAFdnlG9tVDNk5ICmWFmTpRZqS+bWltQx73B
	43f0ot+1I1EBymghgFzrx6GweESlAaNwhx7eXMefUPsVDVbgic9puc8q3euMuPhjNnnaBzqHtxXvY
	DWEQ1na+scNX/5YVQDt/jNlF7M7yxq3JJ8lL53Ez0pd99EI+JBJT3fpQctrlY3kqc+cUbE+GO4BBH
	CqdGG9lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfgSo-000XBF-2R;
	Mon, 11 Sep 2023 12:56:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfgSl-000X9W-1n
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 12:56:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfgSk-00079w-E2; Mon, 11 Sep 2023 14:56:22 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfgSk-005YTY-0W; Mon, 11 Sep 2023 14:56:22 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfgSj-00Bg1W-21;
	Mon, 11 Sep 2023 14:56:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 14:56:19 +0200
Message-Id: <20230911125619.2782229-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911125619.2782229-1-a.fatoum@pengutronix.de>
References: <20230911125619.2782229-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_055623_592652_F911DBB0 
X-CRM114-Status: GOOD (  12.07  )
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
Subject: [PATCH 4/4] KASan: don't allocate memory while printing report
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The logging functions call the pr_* family of functions, which not only
add pretty-colored prefix, but also allocate memory appending to the
log.

While KASAN protects against recursion while printing the log, this can
falsify debugging results, so let's ensure, we only print to stderr and
nothing more.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/kasan/generic.c |  2 --
 lib/kasan/report.c  | 20 ++++++++++----------
 2 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/lib/kasan/generic.c b/lib/kasan/generic.c
index 1eccacf2b4b0..3709b8da9aae 100644
--- a/lib/kasan/generic.c
+++ b/lib/kasan/generic.c
@@ -14,8 +14,6 @@
  *
  */
 
-#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
-
 #include <common.h>
 
 #include "kasan.h"
diff --git a/lib/kasan/report.c b/lib/kasan/report.c
index 3d8f0c3b5162..f701e5fa2ac9 100644
--- a/lib/kasan/report.c
+++ b/lib/kasan/report.c
@@ -48,9 +48,9 @@ EXPORT_SYMBOL_GPL(kasan_restore_multi_shot);
 
 static void print_error_description(struct kasan_access_info *info)
 {
-	pr_err("BUG: KASAN: %s in %pS\n",
+	eprintf("BUG: KASAN: %s in %pS\n",
 		get_bug_type(info), (void *)info->ip);
-	pr_err("%s of size %zu at addr %px\n",
+	eprintf("%s of size %zu at addr %px\n",
 		info->is_write ? "Write" : "Read", info->access_size,
 		info->access_addr);
 }
@@ -67,12 +67,12 @@ static void start_report(unsigned long *flags)
 	 * Make sure we don't end up in loop.
 	 */
 	kasan_disable_current();
-	pr_err("==================================================================\n");
+	eprintf("==================================================================\n");
 }
 
 static void end_report(unsigned long *flags)
 {
-	pr_err("==================================================================\n");
+	eprintf("==================================================================\n");
 	kasan_enable_current();
 }
 
@@ -86,11 +86,11 @@ static inline bool kernel_or_module_addr(const void *addr)
 static void print_address_description(void *addr, u8 tag)
 {
 	dump_stack();
-	pr_err("\n");
+	eprintf("\n");
 
 	if (kernel_or_module_addr(addr)) {
-		pr_err("The buggy address belongs to the variable:\n");
-		pr_err(" %pS\n", addr);
+		eprintf("The buggy address belongs to the variable:\n");
+		eprintf(" %pS\n", addr);
 	}
 }
 
@@ -118,7 +118,7 @@ static void print_shadow_for_address(const void *addr)
 					SHADOW_BYTES_PER_ROW)
 		- SHADOW_ROWS_AROUND_ADDR * SHADOW_BYTES_PER_ROW;
 
-	pr_err("Memory state around the buggy address:\n");
+	eprintf("Memory state around the buggy address:\n");
 
 	for (i = -SHADOW_ROWS_AROUND_ADDR; i <= SHADOW_ROWS_AROUND_ADDR; i++) {
 		const void *kaddr = kasan_shadow_to_mem(shadow_row);
@@ -181,11 +181,11 @@ static void __kasan_report(unsigned long addr, size_t size, bool is_write,
 	start_report(&flags);
 
 	print_error_description(&info);
-	pr_err("\n");
+	eprintf("\n");
 
 	if (addr_has_shadow(untagged_addr)) {
 		print_address_description(untagged_addr, get_tag(tagged_addr));
-		pr_err("\n");
+		eprintf("\n");
 		print_shadow_for_address(info.first_bad_addr);
 	} else {
 		dump_stack();
-- 
2.39.2



