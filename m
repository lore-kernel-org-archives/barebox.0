Delivery-date: Wed, 14 Apr 2021 15:02:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWf9w-0002Qx-0Y
	for lore@lore.pengutronix.de; Wed, 14 Apr 2021 15:02:20 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWf9v-0003Hx-6F
	for lore@pengutronix.de; Wed, 14 Apr 2021 15:02:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H6IIwhXCqKL8l+9PtM9Qt7H4juwnXGOqr+S/7IAvHTU=; b=jeni1o0MXCqngZCPP+gkEKUDQ
	f93XWDw6EzWr7GWxBwvn9VykxBUZXM6PYGcXUO9Qab7PRxXwejdqA6ye2kyXBfaT/WuPnN3Im2oek
	SMzhFT7RYC2x/V0dExRE9SKwYe4ugwbIvqb8vjgpP3NcR+rNPFzvlphZpogZVOABYZq82joPNJMuc
	o32elUZ30C36WENkwhmog5frFOb1UX9yQwnrN/Q1Dr5M5GO8Y2unvxDyi6Rs2F1u/NtknVll3qQdb
	xT5Ar7EbeJ7IZ83hexDO+V4hlaJ9ufInUllpXDzB8y5Lctuqo0QxFogNq89lRqGE1wGFvaO19aYID
	pB9cLi3SQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWf8w-00CfO6-CR; Wed, 14 Apr 2021 13:01:19 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWf8n-00CfNQ-8O
 for barebox@desiato.infradead.org; Wed, 14 Apr 2021 13:01:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=2I3B3Hz5kygRJbxzhWynZn1/plDJ29KGmsIG6cRP6/Q=; b=MVZLtljWF4lfLE5Lv5tg9g2tSO
 7HnUJNHzfeZkfYBap78mveWJssEkuudxq+/03bjw/BAnAD9/cdslSynDo5TUkl8Yuq8Qw+FClhlvc
 3IWIqxzmTikFEPKSQ2laMf2zpG0EdSLZnGHhWL8aJx9M4Nes5O/+xG5uRILvmMxAvy28X/8pQ/Zbb
 tuupoYd8rDr30O0AWObK3klqjJArvBSVnoJ0jHPNQ0adUVcM5tJhJEIb5CtjJeVmSwUsfMP+PBFDE
 1DDw6upF/39oe55bSlSAj/fZALso+3wyGqIMTBSPQbaC8oGuhFDOM1iagpgkC88CHJCuVCWj4s5gv
 1E8snyYQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWf8k-007mFd-Ou
 for barebox@lists.infradead.org; Wed, 14 Apr 2021 13:01:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <bst@pengutronix.de>)
 id 1lWf8b-000321-Eq; Wed, 14 Apr 2021 15:00:57 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de,
	Bastian Krause <bst@pengutronix.de>
Date: Wed, 14 Apr 2021 15:00:44 +0200
Message-Id: <20210414130044.6910-2-bst@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210414130044.6910-1-bst@pengutronix.de>
References: <20210414130044.6910-1-bst@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_060106_833660_8E7E5A7D 
X-CRM114-Status: GOOD (  14.34  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] of: introduce global.linux.bootargs_append
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

By default, barebox overwrites the bootargs in the oftree if it itself
has any. Make this behavior configurable by adding a new global
variable.

The new global variable allows either appending barebox' bootargs to the
original oftree bootargs (global.linux.bootargs_append=1) or overwriting
the original oftree bootargs (global.linux.bootargs_append=0) as before.
The default is to overwrite the original bootargs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
[bst: dropped a new line removal, extend commit message]
Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
Changes since (implicit) v1:
- use global.linux.bootargs_append instead of
  global.linux.bootargs_overwrite
- since the meaning is the other way around now, change the default and
  the check in of_write_bootargs()
---
 common/oftree.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/common/oftree.c b/common/oftree.c
index a8e6587a61..ad2eff362d 100644
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
 
+static int bootargs_append = 0;
+BAREBOX_MAGICVAR(global.linux.bootargs_append, "append to original oftree bootargs");
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
+	if (bootargs_append) {
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
+	globalvar_add_simple_bool("linux.bootargs_append", &bootargs_append);
 	return of_register_fixup(of_fixup_bootargs, NULL);
 }
 late_initcall(of_register_bootargs_fixup);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

