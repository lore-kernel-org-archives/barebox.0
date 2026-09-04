Delivery-date: Fri, 04 Sep 2026 14:44:47 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2THj-00AjY0-0G
	for lore@lore.pengutronix.de;
	Fri, 04 Sep 2026 14:44:47 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=buMSFzSa;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A157A20591C
	for <lore@pengutronix.de>; Fri, 04 Sep 2026 14:44:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iQIBwggnPBS87VK9R2IgpAGMqePF87PiAGglTfcmsjY=; b=buMSFzSaZXArZoF/hmRcmS0oYg
	6mTJ1ZXLBDsK3XfQB4dTeB/R6meUApzGiruropwLf4MW9bi57EagqatY8XmspyRUVgD6SdZK/oUKF
	6mSOLKEw7Ne6C/wOW1N8HqeXcyNWwEOUkEnlKux8p55kP7N07uYWDisT98qcELPcimk6jM0zNWjhw
	CUramB6stBRjhUpe3DI7jVY3dPoMk7uZX8DT3EQXFFOn/uPE36Nrw/BWjF1YJUrw4F3y2l8nQwKCd
	VuCJyG17lYoelk3qUWHFmtJQjSvuCXYiv34Ef+SdnpLmaV8tosRqxanjIyoO4N6d2p/nrDh0V9aMU
	EBXH8vGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2TFy-000000023sp-0Nok;
	Fri, 04 Sep 2026 12:42:58 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2TFu-000000023ro-463f
	for barebox@lists.infradead.org;
	Fri, 04 Sep 2026 12:42:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A6ABB2058BD;
	Fri, 04 Sep 2026 14:42:46 +0200 (CEST)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <uol@pengutronix.de>)
	id 1x2TFm-004vIK-1w;
	Fri, 04 Sep 2026 14:42:46 +0200
Received: from uol by dude03.red.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <uol@pengutronix.de>)
	id 1x2TFm-0000000GHNp-23kO;
	Fri, 04 Sep 2026 14:42:46 +0200
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH] common: Kconfig.debug: fix typos
Date: Fri,  4 Sep 2026 14:42:44 +0200
Message-ID: <20260904124244.3877981-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_054255_163811_D3A6145E 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de> ---
    common/Kconfig.debug | 4 ++-- 1 file changed, 2 insertions(+), 2 deletions(-)
    diff --git a/common/Kconfig.debug b/common/Kconfig.debug index 6f3ddca30758..54bdf9799ce1
    100644 --- a/common/Kconfig.debug +++ b/common/Kconfig.debug @@ -39,11 +39,11
    @@ config DEFAULT_LOGLEVEL confi [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: tbbrzob9m3s64jik1xenbqiatc9ixxhf
X-Rspamd-Queue-Id: A157A20591C
X-Spamd-Result: default: False [-55.98 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	R_MIXED_CHARSET(0.63)[subject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u.oelmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:1101:1d::39:received];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]

Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
---
 common/Kconfig.debug | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/Kconfig.debug b/common/Kconfig.debug
index 6f3ddca30758..54bdf9799ce1 100644
--- a/common/Kconfig.debug
+++ b/common/Kconfig.debug
@@ -39,11 +39,11 @@ config DEFAULT_LOGLEVEL
 config DEBUG_INFO
 	bool "Debug information in ELF"
 	help
-	  Say here if the ELF files produced by the build
+	  Say Y here if the ELF files produced by the build
 	  (barebox and images/*.pbl) should contain debug symbols.
 
 	  This is needed if you intend to use binary object tools like
-	  gdb, decode-stacktrace.sh, ... etc on the kernel.
+	  gdb, decode-stacktrace.sh, ... etc. on the barebox binary.
 
 if DEBUG_INFO
 
-- 
2.47.3



