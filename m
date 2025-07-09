Delivery-date: Wed, 09 Jul 2025 14:08:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZTb2-00Fh9I-2h
	for lore@lore.pengutronix.de;
	Wed, 09 Jul 2025 14:08:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZTb2-0001IR-A7
	for lore@pengutronix.de; Wed, 09 Jul 2025 14:08:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ati7OOyktPOK77Cl4pAQRd4SEgt20sjK4OKGmTqSvAM=; b=el+lANWitWMEb2yD9XkiTKGHr9
	EnWXDc80gD1cx/gRB/ShIP11GkVw2ie1KKTE5BvwK32bBrLk89HOM096BmjpKcX/US6JOkse7gT0v
	QcZ4d4b5wIbLJiJMsBd8BbpflKqEIC8QqFxAyGPnHNg5Y/lU6b/MelIGgxYO8kvPY1SD8hL1MpK5a
	9lf9+6aNNho1aJgdbIQrus572v9gO1sO76PtiV8umJhNpxhQEN/qj5W4SbS4oEjjlxkrrSZw+Bili
	Bc0JIsbRDIpBeV1Xa4CzeEDEpeUpQ8UxlB3hMbGbFZv3cDaZ+Ko6ak3OsKWloOGq2DuSlnmtfLSMm
	wmiiOwqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZTad-00000008aOO-1zhS;
	Wed, 09 Jul 2025 12:07:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZRt5-00000008HmL-1bI2
	for barebox@lists.infradead.org;
	Wed, 09 Jul 2025 10:18:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uZRt4-00044t-1F; Wed, 09 Jul 2025 12:18:50 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uZRt3-007ZCL-2l;
	Wed, 09 Jul 2025 12:18:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uZRt3-00Gx1j-0n;
	Wed, 09 Jul 2025 12:18:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Jul 2025 12:18:47 +0200
Message-Id: <20250709101848.4039929-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_031851_421512_0CCF7119 
X-CRM114-Status: UNSURE (   7.40  )
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
Subject: [PATCH 1/2] hardening: make stack guard page the default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have had guard page support for close to two years now and it's time
we start enabling it by default to catch stack overflows.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/Kconfig.hardening | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/Kconfig.hardening b/lib/Kconfig.hardening
index 658de4953aa1..53bf4d5bb956 100644
--- a/lib/Kconfig.hardening
+++ b/lib/Kconfig.hardening
@@ -153,6 +153,7 @@ config FORTIFY_SOURCE
 config STACK_GUARD_PAGE
 	bool "Place guard page to catch stack overflows"
 	depends on ARM && MMU
+	default y
 	help
 	  When enabled, barebox places a faulting guard page to catch total
 	  stack usage exceeding CONFIG_STACK_SIZE. On overflows, that hit
-- 
2.39.5



