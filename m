Delivery-date: Mon, 16 Feb 2026 10:17:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrujn-002Gxb-1I
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:17:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruji-0007gq-Tk
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:17:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4c3XFSgiTZYqqHcpGRAmlDKCpI8JFGS/Vc2tH96rju4=; b=TIrlT+YbB7U+jOt9mJYdYGUphI
	S6SlApPrMis/Oz/c19G5be2tXPm2KnnpFcOJRgO+ALOm+hhnRD3gCzM5sHrNzUwstx2irWwL53rnx
	jFhMHegLj9V9CZFnlWzN/IR+23vktlckKqF/GBHSy2U8aRy4b/Pd8TMU57XyWZXkErLJJeEXThWuc
	w1kc+V5lSkyhiMNNAxyTglxRpFZZXx2ViEn5ck0AGU/Tu9C+qmksMKOdlVx+sRlv+1zHjb2e7fJa/
	35PapsAUc052kX+nIsyWY5y/9y6IiEgUUrmqVBjerV8y8Gku5G6bWw3Ah1rrus+/zyJhemq1WFOIC
	nOgzZXhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruir-00000006Egm-2uBt;
	Mon, 16 Feb 2026 09:16:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruih-00000006ERu-0Dnu
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruif-0006VV-Bx; Mon, 16 Feb 2026 10:16:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruid-0012X9-2I;
	Mon, 16 Feb 2026 10:16:41 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH1-0000000Eudd-1JYV;
	Mon, 16 Feb 2026 09:48:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Feb 2026 09:44:35 +0100
Message-ID: <20260216084758.3548990-36-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_011643_089458_0B16147D 
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 35/39] efi: loader: fix co-existence with EFI payload support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We can enable both EFI loader and payload support at the same time,
so we should take care at runtime to skip initialization that's not
applicable. On the payload side, this is taken care of by EFI payload
specific initcalls, but on the EFI loader side, we are missing some
explicit handling for defaultvars and deferred protocol inits.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/defaultvars.c | 4 ++++
 efi/loader/setup.c       | 6 +++++-
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/efi/loader/defaultvars.c b/efi/loader/defaultvars.c
index 4d8ec72d9166..906a68a47cf7 100644
--- a/efi/loader/defaultvars.c
+++ b/efi/loader/defaultvars.c
@@ -8,6 +8,7 @@
 #include <efi/error.h>
 #include <efi/guid.h>
 #include <efi/loader.h>
+#include <efi/mode.h>
 #include <efi/variable.h>
 #include <linux/printk.h>
 #include <linux/string.h>
@@ -109,6 +110,9 @@ static char *efi_lang_codes;
 
 static int efi_defaultvars_init(void)
 {
+	if (efi_is_payload())
+		return 0;
+
 	efi_lang_codes = xstrdup("en-US");
 	dev_add_param_string(&efidev, "lang.codes", NULL, NULL,
 			     &efi_lang_codes, NULL);
diff --git a/efi/loader/setup.c b/efi/loader/setup.c
index e27929aaeae9..8309c0338b8f 100644
--- a/efi/loader/setup.c
+++ b/efi/loader/setup.c
@@ -97,8 +97,12 @@ static LIST_HEAD(efi_deferred_cbs);
 
 void efi_register_deferred_init(efi_status_t (*init)(void *), void *data)
 {
-	struct efi_deferred_cb *deferred = xzalloc(sizeof(*deferred));
+	struct efi_deferred_cb *deferred;
 
+	if (efi_is_payload())
+		return;
+
+	deferred = xzalloc(sizeof(*deferred));
 	deferred->cb = init;
 	deferred->data = data;
 	list_add_tail(&deferred->list, &efi_deferred_cbs);
-- 
2.47.3



