Delivery-date: Tue, 08 Sep 2026 07:24:08 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x3oJU-001Q8E-1P
	for lore@lore.pengutronix.de;
	Tue, 08 Sep 2026 07:24:08 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=mkdFWKQZ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 079802018B6
	for <lore@pengutronix.de>; Tue, 08 Sep 2026 07:24:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ju0KK5sb7Pl2pbnZ2/CfAEoKVs+06pd7NvzSvpw1CQM=; b=mkdFWKQZ5YEzxLyns5TF8RLJ6K
	wwFOPvAwTvlbAwCAFDEju98J36fcQGbyLBJfsxMYUuG2UemO8mosnLci+VDrtT+cGx9oL48Dsu7IV
	1xebLbYYsf1KqfNyx/FbU+MRzZOaNDaMQpYVdXzBJqoMCpPtRo50A4Ib2EV7k3QQ1jh9+dnN+L6Fq
	sJ07Vl08H4KaWz4UCoBPco1z4ab76ogpL0YS1Q4U+QO57i7d1NPf2aYsgvt2rIOmFSYaovWPl1Qqh
	j+mTJI8AKE6xyohimSRKeP93OK9l19MXwLkeI3TryyZ9PDHNLcNJwOsrV7mRap6SFCtzBXzdTC1td
	FUq3RgSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3oI9-000000083QM-0brC;
	Tue, 08 Sep 2026 05:22:45 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3oI5-000000083Q3-1Lqb
	for barebox@lists.infradead.org;
	Tue, 08 Sep 2026 05:22:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DAE97200975;
	Tue, 08 Sep 2026 07:22:38 +0200 (CEST)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <uol@pengutronix.de>)
	id 1x3oI2-000f5J-2b;
	Tue, 08 Sep 2026 07:22:38 +0200
Received: from uol by dude03.red.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <uol@pengutronix.de>)
	id 1x3oI2-00000009tNa-2hvp;
	Tue, 08 Sep 2026 07:22:38 +0200
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH] common: Sconfig: fix help text of BOOT_UNSIGNED_IMAGES
Date: Tue,  8 Sep 2026 07:22:36 +0200
Message-ID: <20260908052236.2357822-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_222241_534598_0D89EE5E 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Enabling this option relaxes the requirements for boot artifacts.
    For secure boot, however, it must be disabled unless signed images are enforced
    at build time via CONFIG_BOOTM_FORCE_SIGNED_IMAGES. Signed-off-by: Ulrich
    Ölmann <u.oelmann@pengutronix.de> --- common/Sconfig | 4 ++-- 1 file changed,
    2 insertions(+), 2 deletions(-) 
 
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
X-Stat-Signature: 67k46ufk4sws3g8bng4sqxcnmj6f8ii4
X-Rspamd-Queue-Id: 079802018B6
X-Spamd-Result: default: False [-56.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:1101:1d::39:received];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[u.oelmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

Enabling this option relaxes the requirements for boot artifacts. For secure
boot, however, it must be disabled unless signed images are enforced at build
time via CONFIG_BOOTM_FORCE_SIGNED_IMAGES.

Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
---
 common/Sconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/Sconfig b/common/Sconfig
index b5c585b11b20..e5bfb63cfcb3 100644
--- a/common/Sconfig
+++ b/common/Sconfig
@@ -56,8 +56,8 @@ config BOOT_UNSIGNED_IMAGES
 	  Say y here if you want to allow booting of images with
 	  an invalid signature or no signature at all.
 
-	  Systems with verified boot chains should say y here
+	  Systems with verified boot chains should say n here
 	  or force it at compile time irrespective of policy
-	  with CONFIG_BOOTM_FORCE_SIGNED_IMAGES
+	  with CONFIG_BOOTM_FORCE_SIGNED_IMAGES.
 
 endmenu
-- 
2.47.3



