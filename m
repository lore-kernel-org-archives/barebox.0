Delivery-date: Wed, 09 Sep 2026 12:39:46 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x4FiU-000A4Z-00
	for lore@lore.pengutronix.de;
	Wed, 09 Sep 2026 12:39:46 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=vNSztIW5;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9DE6A202042
	for <lore@pengutronix.de>; Wed, 09 Sep 2026 12:39:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BvjNKRAP9kE8uA79H6UvrEjPAOgsrUecRV1fMErHa60=; b=vNSztIW5WiTiOARGXdTT3KhBy4
	G1O7FJsM4J/Hym2arHiscTzchRBWEruDE7YSvjGWK7Bl/QyLF2/vSxQShNZ9oknXVypxhEy06D+vu
	MNWzNDEE6+Oy+QKM9vmFiKusFBDHEzC7PwMgGqp3J/4i2r2zCiwHjDptZ1KWunpdLgsVrmjrtVfHQ
	spR5EpiSWyRg+vwKK/JsiEktDlx0lsqdfZsMxNz8LiBdXvWmBkLU18oVmfjHdSfjYKud13IPgww6h
	D635i61ifz+TNODU2vbf5KLUtxjOBJMZqE0iOaNi2MNFkVbjgyp1+woJqmQqownzzEY80SE77u12a
	C6pSJtAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4FhK-0000000BS6c-3wgn;
	Wed, 09 Sep 2026 10:38:34 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4FhH-0000000BS5p-0Sid
	for barebox@lists.infradead.org;
	Wed, 09 Sep 2026 10:38:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 28303200883;
	Wed, 09 Sep 2026 12:38:29 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x4FhF-0004lX-0C;
	Wed, 09 Sep 2026 12:38:29 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x4FhF-0000000Dw1i-22Ku;
	Wed, 09 Sep 2026 12:38:29 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] Documentation: security: note FIT configuration choice being unsigned
Date: Wed,  9 Sep 2026 12:38:26 +0200
Message-ID: <20260909103827.3321304-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_033831_316778_429E4E83 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  /configurations/default is not covered by any signature and
    is thus trivially modifiable by an attacker. Point that out in the docs.
   Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de> --- Documentation/user/security.rst
    | 13 +++++++++++++ 1 file changed, 13 insertions(+) 
 
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
X-Stat-Signature: fxtmcwwmr7imjww9tmzeerpo3i1916qa
X-Rspamd-Queue-Id: 9DE6A202042
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

/configurations/default is not covered by any signature and is thus
trivially modifiable by an attacker. Point that out in the docs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/security.rst | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/user/security.rst b/Documentation/user/security.rst
index f8cd6bd090f2..ec42664d1e8b 100644
--- a/Documentation/user/security.rst
+++ b/Documentation/user/security.rst
@@ -83,6 +83,19 @@ can be used to compile in well known development keys into the barebox binary.
 The private keys for these keys can be found
 `[here] <https://git.pengutronix.de/cgit/ptx-code-signing-dev>`__
 
+Pinning the FIT configuration
+-----------------------------
+
+A FIT signature covers the configuration node it is placed in, the images
+that configuration refers to and their hashes. It does not cover the
+``default`` property of the top-level ``/configurations`` node, which is
+what barebox falls back to when no configuration matches the board compatible.
+
+An attacker can therefore select which of the signed configurations of a FIT is
+booted without altering any image. If that matters, ship only one configuration
+per FIT, or name the configuration explicitly, e.g.
+``bootm /dev/mmc0.kernel@conf-production``.
+
 Prevent the kernel from booting the rootfs in verity boots
 ----------------------------------------------------------
 
-- 
2.47.3



