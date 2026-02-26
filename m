Delivery-date: Thu, 26 Feb 2026 11:21:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvYUq-005qkY-0w
	for lore@lore.pengutronix.de;
	Thu, 26 Feb 2026 11:21:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvYUq-0002TL-In
	for lore@pengutronix.de; Thu, 26 Feb 2026 11:21:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ynrLZUXnvXWkTufLJs57YQHnzSXmA+hpI9W7LmD75iY=; b=J3ynJ2IO8U5vX69nR2+qKM7hLy
	QHa5/kHpJ+N0xZwfHJe1ohn5WOk1oZ1MfOjpH47sW+3vaLpvQ9ehmEieLLPh6pF02nKPDkClABZ5h
	OC1o4nRx9ZpW3WPPioUxRdKCefrLAmwX8fyu+DxcHM+YYypEDerNn7kgh8JvhdxzuKuRqLNBtlYFR
	28LtY8o4fNzs4GcID5WPJ8NjUXuIAbgY9GtEdvOOnPZcoAgh2k4nQTRfVl5ty7s3O9jNedfDCyr/v
	dF7gvw9B7mB4EMM0VwtSJPIHG7oGm1zx0GTWGPhzW//GPZ+Sndw+1gMceDxCzOKvyZoXqFZjOIyMt
	mbC8J1eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvYUL-00000005sy2-2NiR;
	Thu, 26 Feb 2026 10:20:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvYUI-00000005srO-3YYi
	for barebox@lists.infradead.org;
	Thu, 26 Feb 2026 10:20:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvYUG-0002JZ-Cs; Thu, 26 Feb 2026 11:20:52 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvYUE-002iHQ-2n;
	Thu, 26 Feb 2026 11:20:52 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vvYUG-00000007KHj-0T27;
	Thu, 26 Feb 2026 11:20:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 26 Feb 2026 11:20:41 +0100
Message-ID: <20260226102044.1746261-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_022055_418102_9831F615 
X-CRM114-Status: UNSURE (   7.58  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! security: optee: add helpers to register OF overlays
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

security: optee: fixup: emit stubs if CONFIG_OF_FIXUP_OPTEE disabled

sandbox allyesconfig build fails, because it has CONFIG_HAVE_OPTEE=y,
but no CONFIG_OF_FIXUP_OPTEE.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/tee/optee.h | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/include/tee/optee.h b/include/tee/optee.h
index 535811278d21..c25a9922e3d8 100644
--- a/include/tee/optee.h
+++ b/include/tee/optee.h
@@ -38,8 +38,6 @@ int optee_verify_header (const struct optee_header *hdr);
 void optee_set_membase(const struct optee_header *hdr);
 int optee_get_membase(u64 *membase);
 void optee_handoff_overlay(void *ovl, unsigned int ovl_sz);
-void optee_register_overlay(void);
-bool optee_overlay_registered(void);
 
 #else
 
@@ -56,6 +54,12 @@ static inline void optee_handoff_overlay(void *ovl, unsigned int ovl_sz)
 {
 }
 
+#endif /* CONFIG_HAVE_OPTEE */
+
+#ifdef CONFIG_OF_FIXUP_OPTEE
+void optee_register_overlay(void);
+bool optee_overlay_registered(void);
+#else
 static inline void optee_register_overlay(void)
 {
 }
@@ -64,8 +68,7 @@ static inline bool optee_overlay_registered(void)
 {
 	return false;
 }
-
-#endif /* CONFIG_HAVE_OPTEE */
+#endif /* CONFIG_OF_FIXUP_OPTEE */
 
 #ifdef __PBL__
 
-- 
2.47.3



