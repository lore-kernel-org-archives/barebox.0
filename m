Delivery-date: Wed, 21 Oct 2026 21:37:20 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJc7j-001a0J-1n
	for lore@lore.pengutronix.de;
	Wed, 21 Oct 2026 21:37:19 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5C169201B9F
	for <lore@pengutronix.de>; Wed, 21 Oct 2026 21:37:15 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=F50k2BH6;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=AZFwqJ0s;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792611435; a=rsa-sha256;
	cv=pass;
	b=a2efjLktTTaH4Ex1Uv3/VkxshOkQ+IpbiRJJAXKXi68044lMdel61MD+kIAqlnvbq73a2M
	o+SQ/QrSzGNYBPVT0/QPYmnUu+iANXywDu0BSGkc3KiKKautAr3ZIlun1vq0Wt3ppq3zPh
	UdIXzzy7RaiHnkXRnfYd0+hCYXIKTklpg/sa0qxXSH4WI0GS8AwL7YDEd1UDHKbM5dwf71
	KM7G9vrwFH+t62tvQyAvEw+Bp2EFeov6ghM9UqDWDylstN7e77UChcN1bKqa79oEx3oElR
	25uVIWYxuV55LnGldt2DOCk8wml/9dUbpMRSEPC54aWjzWxzgGkiQdOaEY5xWQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=F50k2BH6;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=AZFwqJ0s;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792611435;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=xKswjXytpw5beDduKrEU+JR8ZlazvC+wIZZSXeKNypo=;
	b=RGnkFwWBkN8NKJO6h+BwgbI8h4xGtGSHvOIvRLrAKa/InQK5DpTB7Ea81RKKa9y/MQmVpq
	/rKGWrkaOoG2FNXprF6I2BSxrvuwPOPTh57z/GM60AZ2EmWW1ii8HfC1x+5zqhEdjUboi3
	CKco5A58GAb49l9Ec4oKhcr3aHPVDtIHEpCoxR+9bxXxr8Xz7H9llRA25MZg9uXQiNkKnC
	3JP4mXO4HlFlBnr+DbnsJ6PliSqy31cStm+znRlh1m2zhK4dSXHMiaO+q/fn8pPUiJlf8c
	VmedV0nooL2Z3lvA314BoBXwOV3qLvJ68HIWNePzBk5zftfLcmfEgxGXQVM3rg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xKswjXytpw5beDduKrEU+JR8ZlazvC+wIZZSXeKNypo=; b=F50k2BH6sQANJCiprrNJI320mh
	2cawyFMADTau2X3GTQ62r0gWJPQupfrU20hEqoqhrb1r3/vLtlv5Y41Z55SSp9WF290GdLTUkQtlh
	OtmcmOB6RMXac0Nw3GvABHGYTiKjdGTlldvheA10mDotWmh7NKgmqlkHfgmPR9Ul4bonklAThM+3X
	yjX96XjFelQt91g26pxXSq4nVYt2wc2/siWKyfyju9UciZYSY/FCWg/4VbIMNPAAJALUdj9rOpXSZ
	t3srZHPsNxB7gWVxU3MYlztfqd9hDKrjE6uwihCwcYbk+ggp9/AcdUn5WNsGyhgDVA8RMwPdiYnsS
	aW1YnmrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJc6m-0000000CkPD-3q9n;
	Wed, 21 Oct 2026 19:36:20 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJc6j-0000000CkNq-11Ck
	for barebox@lists.infradead.org;
	Wed, 21 Oct 2026 19:36:18 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CE5C1201B9F;
	Wed, 21 Oct 2026 21:36:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792611368;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=xKswjXytpw5beDduKrEU+JR8ZlazvC+wIZZSXeKNypo=;
	b=AZFwqJ0sEmK90iANYi3C6VG36SKAXHLbcSU/aeuEL0lgLs1HrHm6aEJGHGx3WBJZ8TcMdU
	lZe7P5ud3k9FW9mSx4mgBOo25D/Rsfza/84EbILfwHMluJ/fgLDISxNqxixCM9gvvbOhOy
	DPEPZMeoYcrBTvHHQdXO/9DlM2qPd8m7aPrl0v7FyIepxIDgwi4e1uicyEiBCRjpjPSFo0
	PTRwrnv1JpB9CWFSUSU2kKyn0+91Wom6TBD5TtJA7Ec1EKe0qHATO1GW+0iMSQU2KmalCO
	oEMsrRMoIyjWxuadrG0gcyrIQhZlcQ4mR2mxOjThmXrbCfqF1i+bCst0QRL7ww==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792611368; a=rsa-sha256;
	cv=none;
	b=P+ZBSx41PEtccJZMJUN1jIqksN2kFSQkuefvSGnJQ29uipKltwU0KrWWQA9Ac96A4zA86L
	LE5tvmHphyrsIBYx4SIEHX3GwaKLHlDniQz3W3Gx0Hhbu9z6B/13DkGZxxGlRMSblc28C5
	Vof6vPGKccIksTtwaA7/NzsvBRaVk5y5A3uB61DXhUvBjcCSDV02uQFvagmSBtSIXgdXGf
	RLTdsVCEtDNBSD3j3ksslhPjrPsgO8jxRec5uiALia99TAp0mV14oV4HDdmFSkTWvwsF+b
	bPR8MJxup/Vgbu2pPYdpc1ARB6dJ1TF2g4jVsTMjRCAZx388X3OqbV6A+yiJcQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792611368;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=xKswjXytpw5beDduKrEU+JR8ZlazvC+wIZZSXeKNypo=;
	b=b181uYx+ZDONytky9OXko2NEmAek8Q7sV1TVPpqYVxZLTM1rbyrPg6+vWsa7Z4epng7g+C
	BfKkgkCWkXQ0xQMB5T5VD12sHcSxJzlbKcqaJkLUafjAQZ5PP+Lc+I43BWDwNAZU2YBhA7
	LyImAniiJnzkmfXUzIqkfMHaH6orU7KbG2ceEp1VKkVZZZIXHXunbegmiQC+ULxExG4uQY
	nrMm5/CHR1zwEgXP0gNQi/aYi4FxrA5jQuAs3pXTnuNdlOu4YayNVmSphq4Klb5J/3Y0Yp
	8o1v2FoE7aPLEtkJe39I/gDlBgp9cFSCxRhh9vsYIx7DlNOQBO0Lv56VOhP5rA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id BA03E740665;
	Wed, 21 Oct 2026 21:36:08 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH RESEND] Documentation: migration-guides: turn migration-master into directory
Date: Wed, 21 Oct 2026 21:36:01 +0200
Message-ID: <20261021193607.1108006-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_123617_441538_E3F95E68 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This allows us to avoid conflicts, especially when basing
   on master and targeting merge into next. An extra benefit is that the upcoming
    migration guides are no longer hidden and thus easier to review after a local
    build. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Rspamd-Queue-Id: 5C169201B9F
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: ci7jdn3bgy76riti16iwb9c4ox9phaih

This allows us to avoid conflicts, especially when basing on master and
targeting merge into next.

An extra benefit is that the upcoming migration guides are no longer
hidden and thus easier to review after a local build.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Sending again after rebase on newest master.
---
 Documentation/migration-guides/index.rst         |  1 +
 .../migration-guides/migration-master.rst        | 16 ++++++++++------
 .../migration-master/stm32mp-deep-probe.rst      |  6 ++++++
 3 files changed, 17 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/migration-guides/migration-master/stm32mp-deep-probe.rst

diff --git a/Documentation/migration-guides/index.rst b/Documentation/migration-guides/index.rst
index 5e1a0cfbc7a0..ded638639e1e 100644
--- a/Documentation/migration-guides/index.rst
+++ b/Documentation/migration-guides/index.rst
@@ -12,3 +12,4 @@ causes build errors is generally out-of-scope for these documents.
    :glob:
 
    migration-20*
+   migration-master
diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
index 75c4880aa6d4..a5ca0a7f3b46 100644
--- a/Documentation/migration-guides/migration-master.rst
+++ b/Documentation/migration-guides/migration-master.rst
@@ -1,8 +1,12 @@
-:orphan:
+Pending changes
+===============
 
-Deep probe is now the default on STM32MP13 and STM32MP15
---------------------------------------------------------
+This sections lists possibly backwards-incompatible changes that have been committed
+to the barebox source tree, but have not yet been included into a release.
+If you have concerns about any of them, now's a good time to reach out to the
+:ref:`mailing list <feedback>`.
 
-barebox now enables deep probe for every ``st,stm32mp1xx`` compatible, even
-over ``barebox,disable-deep-probe``. Report to the mailing list if that
-breaks your board.
+.. toctree::
+   :glob:
+
+   migration-master/*
diff --git a/Documentation/migration-guides/migration-master/stm32mp-deep-probe.rst b/Documentation/migration-guides/migration-master/stm32mp-deep-probe.rst
new file mode 100644
index 000000000000..8ff966a4dcf5
--- /dev/null
+++ b/Documentation/migration-guides/migration-master/stm32mp-deep-probe.rst
@@ -0,0 +1,6 @@
+Deep probe is now the default on STM32MP13 and STM32MP15
+--------------------------------------------------------
+
+barebox now enables deep probe for every ``st,stm32mp1xx`` compatible, even
+over ``barebox,disable-deep-probe``. Report to the mailing list if that
+breaks your board.
-- 
2.47.3



