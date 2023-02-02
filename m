Delivery-date: Thu, 02 Feb 2023 14:35:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNZka-00BQuB-8X
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 14:35:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNZkX-0003tH-C6
	for lore@pengutronix.de; Thu, 02 Feb 2023 14:35:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Nrsfs9ni6/vOZSoS24fv7jZpW2Cp7HN9djCOPWwsJ90=; b=fJ6fHsgR7/qKDNBg7YulPOVstK
	wGDWpNFT1e9oxw2hrAHV8fsRqkhQchXGGRHQYRd1Hstp8AjLvhEItW8BYgPRBZv/rRQWdGysuRN+9
	khACBDEVlJom6JHaeo5W6TIQfniODJtEujV/WlvhtMt7vgNrMEVdXEYqRmqJvli4dSQ790jg1kMt6
	CauK3qr+45ydwZt75OlVMvm0O0rihZpKJYhujtCAhJfT9uP97cExB7S+dXNXP5algxZxG3hlC19m6
	k1gswfDWHNriUnzutgTTCWcBNc/hh9jRt3K3FQH7mNsHskGmDF5byiICAc88Cyk3aLDaK2SqQfUKg
	XLHjubpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZjM-00G1hy-UC; Thu, 02 Feb 2023 13:34:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZjI-00G1gY-Ex
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 13:34:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pNZjH-0003e2-1W; Thu, 02 Feb 2023 14:34:19 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pNZjF-002BUP-6m; Thu, 02 Feb 2023 14:34:18 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pNZjF-001Mdx-Jl; Thu, 02 Feb 2023 14:34:17 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Christian Melki <christian.melki@t2data.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Feb 2023 14:34:15 +0100
Message-Id: <20230202133415.319020-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230202133415.319020-1-a.fatoum@pengutronix.de>
References: <20230202133415.319020-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_053420_518741_0EA2F284 
X-CRM114-Status: GOOD (  11.80  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/3] include: printk: retire printk_once for pr_debug_once
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

printk is just printf and KERN_DEBUG is just "", so printk_once(KERN_DEBUG
doesn't do what's promised. Replace instead with pr_debug_once, which
does what one would expect.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  no change
--
 include/printk.h     | 10 ----------
 lib/list_sort.c      |  5 ++---
 scripts/bareboxenv.c |  2 +-
 3 files changed, 3 insertions(+), 14 deletions(-)

diff --git a/include/printk.h b/include/printk.h
index 90c45afd9fc7..6f8635fae2c0 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -31,16 +31,6 @@ void __attribute__((noreturn)) panic(const char *fmt, ...);
 
 #define printk			printf
 
-#define printk_once(fmt, ...)					\
-({								\
-	static bool __print_once	;			\
-								\
-	if (!__print_once) {					\
-		__print_once = true;				\
-		printk(fmt, ##__VA_ARGS__);			\
-	}							\
-})
-
 enum {
 	DUMP_PREFIX_NONE,
 	DUMP_PREFIX_ADDRESS,
diff --git a/lib/list_sort.c b/lib/list_sort.c
index 77ddadb3d6ac..eea87f834ca4 100644
--- a/lib/list_sort.c
+++ b/lib/list_sort.c
@@ -4,6 +4,7 @@
 #include <linux/kernel.h>
 #define EXPORT_SYMBOL(x)
 #else
+#define pr_fmt(fmt) "list_sort: " fmt
 #include <common.h>
 #include <malloc.h>
 #endif
@@ -129,9 +130,7 @@ void list_sort(void *priv, struct list_head *head,
 		}
 		if (lev > max_lev) {
 			if (unlikely(lev >= ARRAY_SIZE(part)-1)) {
-				printk_once(KERN_DEBUG "list passed to"
-					" list_sort() too long for"
-					" efficiency\n");
+				pr_debug_once("list passed to too long for efficient sorting\n");
 				lev--;
 			}
 			max_lev = lev;
diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
index f1706a5e175b..e954447015c5 100644
--- a/scripts/bareboxenv.c
+++ b/scripts/bareboxenv.c
@@ -20,7 +20,7 @@
 #include "compiler.h"
 
 #define debug(...)
-#define printk_once(...)
+#define pr_debug_once(...)
 
 /* Find out if the last character of a string matches the one given.
  * Don't underrun the buffer if the string length is 0.
-- 
2.30.2



