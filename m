Delivery-date: Fri, 03 Jul 2026 16:38:24 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wff28-00Cdgq-25
	for lore@lore.pengutronix.de;
	Fri, 03 Jul 2026 16:38:24 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7A3C0202617
	for <lore@pengutronix.de>; Fri, 03 Jul 2026 16:38:24 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Oj6rT13S;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nW4ss1Mocu4iNK6DTBSwO8GjtAY9o4xrvJSW944PZAU=; b=Oj6rT13SlyQkkdLDbEUa3hvDlJ
	qZV97fXdzB9DFYoxNE6z27p+5nu/WvRZITvE2ijYf2RniFCnJwkbBY2gQe7WZYTUhmLHD6jJzbOlM
	g2yqAe5fsPRnrysXiZ5Z1sVzzT2csd+5eeiUtdmebXXVbKP82/uYTEea4F4PWp9/YmS0VDJUnBbQk
	X+w2M4E0Dm1xuCfYBkI0cuy3zV/u0lacs2a4VdKECJm/8oJSc1F4yhMaAVuuyeSVmhYeSosJhUPxH
	6ogMAfJm/Cq6fF0uqOgI3Yx0JASSg7g+9igVuBkzKPCDKfl4/rJaTIFyqnwKpNQ+WJcwc9o4rxB2F
	8NZLvwiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfb3r-00000006al7-3oG4;
	Fri, 03 Jul 2026 10:23:55 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfb3o-00000006akO-3qz4
	for barebox@lists.infradead.org;
	Fri, 03 Jul 2026 10:23:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id ADE3E20262F;
	Fri, 03 Jul 2026 12:23:49 +0200 (CEST)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <uol@pengutronix.de>)
	id 1wfb3l-005tSv-1u;
	Fri, 03 Jul 2026 12:23:49 +0200
Received: from uol by dude03.red.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <uol@pengutronix.de>)
	id 1wfb3l-00000008D8w-2Co2;
	Fri, 03 Jul 2026 12:23:49 +0200
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH 2/2] security: Kconfig.policy: fix typos
Date: Fri,  3 Jul 2026 12:23:44 +0200
Message-ID: <20260703102344.1957129-2-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260703102344.1957129-1-u.oelmann@pengutronix.de>
References: <20260703102344.1957129-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_032353_105273_EB53A03E 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de> ---
    security/Kconfig.policy | 6 +++--- 1 file changed, 3 insertions(+), 3 deletions(-)
    diff --git a/security/Kconfig.policy b/security/Kconfig.policy index 2c8e8399a0ec..d4ca4300504d
    100644 --- a/security/Kconfig.policy +++ b/security/Kconfig.policy @@ -5,9
    +5,9 @@ menuconfig SECURITY_P [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Rspamd-Queue-Id: 7A3C0202617
X-Spamd-Result: default: False [-5.51 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:1101:1d::39:received];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[u.oelmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_ONE(0.00)[1]
X-Rspamd-Action: no action
X-Stat-Signature: tj9a9mignjj4c5wbdikjzas3etmrd1gf

Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
---
 security/Kconfig.policy | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/security/Kconfig.policy b/security/Kconfig.policy
index 2c8e8399a0ec..d4ca4300504d 100644
--- a/security/Kconfig.policy
+++ b/security/Kconfig.policy
@@ -5,9 +5,9 @@
 menuconfig SECURITY_POLICY
 	bool "Security Policy Support"
 	help
-	  A Security policy is a collection of security configuration options
+	  A security policy is a collection of security configuration options
 	  that can be activated together at runtime.
-	  Together, the describe a security state that barebox should operate in.
+	  Together, they describe a security state that barebox should operate in.
 
 	  Policies can be registered by board code or supplied by
 	  an external build system. The policy name must be unique across
@@ -32,7 +32,7 @@ menuconfig SECURITY_POLICY
 	    lockdown  Factory bring up is done and device is ready for use
 	              in the field with barebox as part of the secure boot
 	              chain. This policy usually disallows booting unsigned
-	              images
+	              images.
 
 	    tamper    Tampering attempt was detected. The security policy would
 	              take steps to protect secrets (up to bricking the device).
-- 
2.47.3



