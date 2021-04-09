Delivery-date: Fri, 09 Apr 2021 10:18:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lUmL2-0007dG-Rn
	for lore@lore.pengutronix.de; Fri, 09 Apr 2021 10:18:00 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lUmL2-0004SI-3V
	for lore@pengutronix.de; Fri, 09 Apr 2021 10:18:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7dAdSk2Wq1Le+kANcjvmiYyrF1UOdOdd5pzmvLIgqyk=; b=M98MVZTS/Wcqdc9Fm7/aLVZj0
	iQWWFoxxFA+CdA1AGm0oCox2CJPDyE8yaVsmrYFnOJv/SJMI5PmA/JUimhpzYlvDbUATeZ1lGGapE
	ZaAuEbxOa5aBbl1hS7fAHIhdx01RvaM14FLyokHXgN9537s1x9FLS5OTa0KLxIueEaxJMNLHDpq/2
	Yzz7fq1nkquZIHI2YeozemxFQUWsyGdqrBn/pq6cCfMXmGejhRHul6U/QOcttL2L8PbBjEqgAgsdR
	fsyM+tvQDvnVdiKnQsK43OpYVFAHx11kCVbwvhXHZECyI9IXITLVY+USanZAVA3EmnR1dDasShnEB
	olUjjZqXQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUmIj-0000jk-Vq; Fri, 09 Apr 2021 08:15:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUmIH-0000gQ-My
 for barebox@lists.infradead.org; Fri, 09 Apr 2021 08:15:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <bst@pengutronix.de>)
 id 1lUmIG-0003rn-6A; Fri, 09 Apr 2021 10:15:08 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de,
	Bastian Krause <bst@pengutronix.de>
Date: Fri,  9 Apr 2021 10:15:03 +0200
Message-Id: <20210409081503.6926-2-bst@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210409081503.6926-1-bst@pengutronix.de>
References: <20210409081503.6926-1-bst@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210409_091510_002371_5C3E7D48 
X-CRM114-Status: GOOD (  12.21  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] of: introduce global.linux.bootargs_overwrite
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

By default, barebox overwrites the bootargs in the oftree if it itself
has any. Make this behavior configurable by adding a new global
variable. It allows either overwriting the oftree bootargs
(global.linux.bootargs_overwrite=1) or appending barebox' bootargs to
the oftree bootargs (global.linux.bootargs_overwrite=0).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
[bst: dropped a new line removal, extend commit message]
Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 common/oftree.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/common/oftree.c b/common/oftree.c
index aaeb199a9e..f3a5d9c5d1 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -16,6 +16,7 @@
 #include <reset_source.h>
 #include <watchdog.h>
 #include <globalvar.h>
+#include <magicvar.h>
 
 #define MAX_LEVEL	32		/* how deeply nested we will go */
 
@@ -161,9 +162,14 @@ static void watchdog_build_bootargs(struct watchdog *watchdog, struct device_nod
 	free(buf);
 }
 
+static int bootargs_overwrite = 1;
+BAREBOX_MAGICVAR(global.linux.bootargs_overwrite, "overwrite original oftree bootargs");
+
 static int of_write_bootargs(struct device_node *node)
 {
 	const char *str;
+	char *buf = NULL;
+	int ret;
 
 	if (IS_ENABLED(CONFIG_SYSTEMD_OF_WATCHDOG))
 		watchdog_build_bootargs(boot_get_enabled_watchdog(), of_get_parent(node));
@@ -176,7 +182,20 @@ static int of_write_bootargs(struct device_node *node)
 	if (strlen(str) == 0)
 		return 0;
 
-	return of_property_write_string(node, "bootargs", str);
+	if (!bootargs_overwrite) {
+		const char *oldstr;
+
+		ret = of_property_read_string(node, "bootargs", &oldstr);
+		if (!ret) {
+			str = buf = basprintf("%s %s", oldstr, str);
+			if (!buf)
+				return -ENOMEM;
+		}
+	}
+
+	ret = of_property_write_string(node, "bootargs", str);
+	free(buf);
+	return ret;
 }
 
 static int of_fixup_bootargs(struct device_node *root, void *unused)
@@ -218,6 +237,7 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
 
 static int of_register_bootargs_fixup(void)
 {
+	globalvar_add_simple_bool("linux.bootargs_overwrite", &bootargs_overwrite);
 	return of_register_fixup(of_fixup_bootargs, NULL);
 }
 late_initcall(of_register_bootargs_fixup);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

