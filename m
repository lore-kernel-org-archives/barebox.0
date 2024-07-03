Delivery-date: Wed, 03 Jul 2024 20:56:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP59i-001GM2-0G
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 20:56:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP59h-0004gT-Gm
	for lore@pengutronix.de; Wed, 03 Jul 2024 20:56:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VQ+vHnaFnsYgVEMb5Pcq1IrHwHKUBapFLMGLL6IiCZs=; b=46kWJxxChMVboUI2GnUii9Qb/P
	rtMzVOCDYLlOckUDd9UF7bbtVnbYFzBFgV7r1kHKzYGYB0Bqa3RB0CEMWPTJNwDiPKHOQC+q+JyEP
	7rSJZYNGcHbiLhZ5h6DYrBjewfRijkVnLz/fR37fHmnzNWyMRhv9G+G+F7YplMWSbthV8esgCthRC
	0XdnNpJ4rORNHGZ4n8xPEvMSFn0E4k7PmMdu+cgo0fkA5qEQZ2H7qaspWDYInNfEERt1SFR12vVjI
	o2Iz7RyNh8bTHM9uyTyc7fcRavOPuNMopwsh/xVz2zwHOregYxPhqpfnmcCPUdhvTASheTTN4v3V5
	CvmUvYFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP59G-0000000BD8G-0Gwk;
	Wed, 03 Jul 2024 18:56:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP59C-0000000BD7f-2dBO
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 18:56:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sP599-0004dW-I5; Wed, 03 Jul 2024 20:56:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sP599-006uaR-5X; Wed, 03 Jul 2024 20:56:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sP599-002rkq-0G;
	Wed, 03 Jul 2024 20:56:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jul 2024 20:56:02 +0200
Message-Id: <20240703185602.683272-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_115606_692155_50736F04 
X-CRM114-Status: GOOD (  12.10  )
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
Subject: [PATCH] globalvar: align parameter names in prototype with definition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The prototype disagreed with the definition, possibly confusing users.
Fix it and while at it, add some missing commas, so the patch diff shows
the definition in the context.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/globalvar.c  | 4 ++--
 include/globalvar.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 79624adcfe6f..ab224a27a130 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -309,9 +309,9 @@ static LIST_HEAD(globalvar_deprecated_list);
  *
  * This function is a helper for globalvars that are renamed from one
  * release to another. when a variable @oldname is found in the persistent
- * environment a warning is issued and its value is written to @newname.
+ * environment, a warning is issued and its value is written to @newname.
  *
- * Note that when both @oldname and @newname contain values then the values
+ * Note that when both @oldname and @newname contain values, then the values
  * existing in @newname are overwritten.
  */
 void globalvar_alias_deprecated(const char *oldname, const char *newname)
diff --git a/include/globalvar.h b/include/globalvar.h
index 5fdb70fca911..5b4c168b9170 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -44,7 +44,7 @@ int nvvar_remove(const char *name);
 void globalvar_print(void);
 
 void dev_param_init_from_nv(struct device *dev, const char *name);
-void globalvar_alias_deprecated(const char *newname, const char *oldname);
+void globalvar_alias_deprecated(const char *oldname, const char *newname);
 
 #else
 static inline const char *globalvar_get(const char *name)
-- 
2.39.2



