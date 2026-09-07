Delivery-date: Mon, 07 Sep 2026 14:55:00 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x3YsG-0017d5-0l
	for lore@lore.pengutronix.de;
	Mon, 07 Sep 2026 14:55:00 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=XkzvioKV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id EBFCE2010BD
	for <lore@pengutronix.de>; Mon, 07 Sep 2026 14:54:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HPjq6sd7tS1sHfcksRePG83LE9VCO2mJWUcrRazClCQ=; b=XkzvioKVbYr4wl65cCMkQRUnnN
	nExkEF1dxXjTLlom6/nWvU7sIRY/ldwUBDAIPgREANgKgyRCzlxmd1UvCfstvtUWeoz1SbHRWx9oJ
	pIU1pk+liJxNNPdvhrzBGQtVLAV46KNF8a2S+LwSDXIqe/NOEYQAcb+nSra0TYFga03V0ukS5jMSi
	I8BHNl9WDb+dIcG9PI/30HcMSFYs6/b/LTOUgjCR7iNcMuwMbnMCww3aFdKX/oti3D1SuFexW8WnR
	Pu319dz7GwWMIWAllqUZwmOPywm8nbKXtpkn4fsIVE5Ctukthy9LPdv0qZAlCS1cQUwV+hUwfJCv8
	OHeECFAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3YqZ-00000006qzA-3Izf;
	Mon, 07 Sep 2026 12:53:15 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3YqW-00000006qxh-2eIn
	for barebox@lists.infradead.org;
	Mon, 07 Sep 2026 12:53:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CA8692018B6;
	Mon, 07 Sep 2026 14:53:04 +0200 (CEST)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <uol@pengutronix.de>)
	id 1x3YqO-000XUH-2Q;
	Mon, 07 Sep 2026 14:53:04 +0200
Received: from uol by dude03.red.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <uol@pengutronix.de>)
	id 1x3YqO-00000008POX-2qaN;
	Mon, 07 Sep 2026 14:53:04 +0200
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH] security: Kconfig.policy: fix typos
Date: Mon,  7 Sep 2026 14:53:03 +0200
Message-ID: <20260907125303.2004233-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_055312_813411_20FEB7AB 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de> ---
    security/Kconfig.policy | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-)
    diff --git a/security/Kconfig.policy b/security/Kconfig.policy index d4ca4300504d..ff3dc2301016
    100644 --- a/security/Kconfig.policy +++ b/security/Kconfig.policy @@ -90,7
    +90,7 @@ config SECURITY_POL [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Stat-Signature: 95a79qerncoe6hhtccejpeer4m6wi3up
X-Rspamd-Queue-Id: EBFCE2010BD
X-Spamd-Result: default: False [-55.98 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	R_MIXED_CHARSET(0.63)[subject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:1101:1d::39:received];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[u.oelmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_ONE(0.00)[1]
X-Rspamd-Action: no action

Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
---
 security/Kconfig.policy | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/security/Kconfig.policy b/security/Kconfig.policy
index d4ca4300504d..ff3dc2301016 100644
--- a/security/Kconfig.policy
+++ b/security/Kconfig.policy
@@ -90,7 +90,7 @@ config SECURITY_POLICY_PATH
 	  compiled into barebox and registered. This option currently
 	  requires each security policy to match security/*.sconfig, i.e.
 	  be directly located in the security/ directory of the source
-	  source tree and have the .sconfig extension.
+	  tree and have the .sconfig extension.
 	  If left empty, only security policies explicitly provided
 	  and registered by board code will be available.
 
-- 
2.47.3



