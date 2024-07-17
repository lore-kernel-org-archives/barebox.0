Delivery-date: Wed, 17 Jul 2024 09:29:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTz6Q-0006T2-1S
	for lore@lore.pengutronix.de;
	Wed, 17 Jul 2024 09:29:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTz6P-0007NK-Rs
	for lore@pengutronix.de; Wed, 17 Jul 2024 09:29:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Dv5x/Qaz+xJOhnXGuPRJhZ7grQccYqCqlPgjXMByZDo=; b=D97t57hL3tCkFcULBCcBtsR3vU
	KlCh1cMUDIa7KCMXvwc7mFOXIiCzRDnPmcCycywrwVAPHwSjoMbgCMPNvhCiAtn30Pe7uhPg0eY9e
	/Dp0hEs/ma6biTGPIM6xJJU3PCApoTVqt9CA4zmwKo+2l5DmW/Co2zeTdjfWMQHuHbTQLUlSuvHbE
	zIJ5gkjvXwOSlM8Ne/6M+zi4nws35+xvTFPd1JPFNCWzV8nszIVl6H9HC5jhgtq6iCUhkuevYTM7y
	uUcwOzu3Z2zqjVYRAane2CRShioOiuRRk2Al+jOuuG9E/4pN8qwwaO4T5Q3MTXrL1jGKINOJ+ae9c
	oaCQFtbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTz5n-0000000Cyf7-3JYX;
	Wed, 17 Jul 2024 07:28:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTz5j-0000000CydI-0nz4
	for barebox@lists.infradead.org;
	Wed, 17 Jul 2024 07:28:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTz5h-0007FL-E6
	for barebox@lists.infradead.org; Wed, 17 Jul 2024 09:28:45 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTz5h-000A1d-0p
	for barebox@lists.infradead.org; Wed, 17 Jul 2024 09:28:45 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTz5g-00BruL-31
	for barebox@lists.infradead.org;
	Wed, 17 Jul 2024 09:28:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 17 Jul 2024 09:28:42 +0200
Message-Id: <20240717072843.2828788-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_002847_261957_98EF76D4 
X-CRM114-Status: UNSURE (   9.66  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] xfuncs: return NULL from xstrdup_wchar(NULL)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

strdup_wchar, strdup_char_to_wchar and xstrdup_wchar_to_char all return
NULL when passed a NULL pointer. It's thus misleading for the xfunc
version of them to trigger an enomem_panic in that case.

Fix this by passing along the NULL pointer unchanged.
xstrdup() already behaves exactly this way.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
v1 -> v2:
  - new patch
---
 lib/xfuncs.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/lib/xfuncs.c b/lib/xfuncs.c
index ac67bf4f5584..d4beecddf5aa 100644
--- a/lib/xfuncs.c
+++ b/lib/xfuncs.c
@@ -146,8 +146,12 @@ EXPORT_SYMBOL(xasprintf);
 
 wchar_t *xstrdup_wchar(const wchar_t *s)
 {
-	wchar_t *p = strdup_wchar(s);
+	wchar_t *p;
 
+	if (!s)
+		return NULL;
+
+	p = strdup_wchar(s);
 	if (!p)
 		enomem_panic((wcslen(s) + 1) * sizeof(wchar_t));
 
@@ -157,8 +161,12 @@ EXPORT_SYMBOL(xstrdup_wchar);
 
 wchar_t *xstrdup_char_to_wchar(const char *s)
 {
-	wchar_t *p = strdup_char_to_wchar(s);
+	wchar_t *p;
 
+	if (!s)
+		return NULL;
+
+	p = strdup_char_to_wchar(s);
 	if (!p)
 		enomem_panic((strlen(s) + 1) * sizeof(wchar_t));
 
@@ -168,8 +176,12 @@ EXPORT_SYMBOL(xstrdup_char_to_wchar);
 
 char *xstrdup_wchar_to_char(const wchar_t *s)
 {
-	char *p = strdup_wchar_to_char(s);
+	char *p;
 
+	if (!s)
+		return NULL;
+
+	p = strdup_wchar_to_char(s);
 	if (!p)
 		enomem_panic((wcslen(s) + 1) * sizeof(wchar_t));
 
-- 
2.39.2



