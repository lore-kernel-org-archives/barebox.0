Delivery-date: Tue, 29 Sep 2026 10:03:20 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBSo4-007bLf-23
	for lore@lore.pengutronix.de;
	Tue, 29 Sep 2026 10:03:20 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 029B6201551
	for <lore@pengutronix.de>; Tue, 29 Sep 2026 10:03:20 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=u7BfFG0R;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=RyHJ5CMK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790669000;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=i0B6QGqppC7iTeoRzx6sCzP23c972NY7Yuw5xr9lJVg=;
	b=W6O8SGsvunWZFyYgPjzF9fngltlmHN0VmsXwIlZCAW1miSLcgDIw4q4i874UWBUnSJpOai
	1dVcUrFkeNCxwZJKbPcsyusiFVcuVe1EQxG+BSOHClVtWrSOCNMv00rfUw2dTn8D+axL38
	P8aeohhAnpKeQZlWwJc7Ox76WaUjg+gU7vX/JrXK88TMUvCzsOlGd6z/H0xQa92mA2m/yj
	W2FavIVsIQveO6Tm4yonMmQFHIK3JFxcVP3G8tgb5+pIXQSo7beiRAD7jDhGtkJBQdMG9O
	wX1VGD94TNT+fOkvI15qKIZ48NrwYb+FHzv3JjRhpv9TOOARsvXMsVIJwgMKjw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790669000; a=rsa-sha256;
	cv=fail;
	b=eRxsYlP5VhyBTE0MIkKlwvnbs2X2Mfcdi9j9lS4Oos+nyji6o8hmr5Iy4p9HlwsHl8cSVw
	6ofqzrupYISFOD8CA3s2OHCYRd9CuylFwJG+ekoTTburpa55TLTf95wYmSJ18hugaxaUp9
	UTXdYu7c/6du/u/7CyJtswVRxagkug7ULnDTYnk9B+nX1GHvl80wZ/9RiKfKOS/Syrkevk
	2yKXXZztJzbHtSR+ZQh0bfnHI37EVRkIkUf81t51QVeRLptVXg7Uo9xPi9qGFhhdk7pGJQ
	IDwpXVdHWpCq85DWBfYEBXXzO0NMdpi4LD7TlgrQHd1qHdledAArWIaeqcWmUA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=u7BfFG0R;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=RyHJ5CMK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=i0B6QGqppC7iTeoRzx6sCzP23c972NY7Yuw5xr9lJVg=; b=u7BfFG0R7flDhwyybA2/WY+U/U
	0gEOBdDSTSIywNa8oDdFWsmS3anz4oH+fWDuvt20MIlubm3agOUFTVILg6PtKW1qgtPwHYfjNz2nV
	Q4u++8MttYLCYFehP7N2KhTJzL8+8b5+eCH+xSBRrARbaYiOuB6Is1XpXxr7v7sTO9paQfgGY9Kmr
	FuCIZoNRU4atB1QnAvU68HW7+g2l7G4t7oVdpjZet947IjGHvTHwhAz20o6z6uKjfP2XgQpT4vrYQ
	F2/6nVPlO52igqUBGQyHRKGdSsU09fPK/dQ8m95fcsQyOPinknDzFg5DJ5fZMdE8zjSnNl7RKlHLu
	6qyL/+sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBSmn-00000002gTC-1FeR;
	Tue, 29 Sep 2026 08:02:01 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBSmk-00000002gSG-3VG3
	for barebox@lists.infradead.org;
	Tue, 29 Sep 2026 08:02:00 +0000
Received: from dude03.red.stw.pengutronix.de (dude03.red.stw.4.pengutronix.de [10.17.1.7])
	(Authenticated sender: relay-from-dude03.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 74AB82001F2;
	Tue, 29 Sep 2026 10:01:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790668915;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=i0B6QGqppC7iTeoRzx6sCzP23c972NY7Yuw5xr9lJVg=;
	b=RyHJ5CMKEiW7qXdJr4NnX0DfaQ5K9U9whkolSazym7JRTfd5oCF1cnFNvriXSaMVNPFJPS
	42U6am47UaSRMCsXMm+DBK6Pntb8tnvfo5wi08FrTg/U6rf7RQLYcxHgbuJ7bix1Qwgwlc
	M1vcdfYACUgYLoqPGphZ1K+mVDRiyy9NtLpWH5nxwiFszgflJ9LAKgWayo0O3hA+tABT1S
	abq2M9iCnFqK0foZuW4PJLXgHTKnb97vrlR0D0D655F19ZxvI11S5e8aEoHPIj2P7qSoAN
	JfsfUcZjGkrY/Wi/Vng6PkdTA9AsYmgQtQ85+5yoF4fPDDah+0is+bQA96UicA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790668915;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=i0B6QGqppC7iTeoRzx6sCzP23c972NY7Yuw5xr9lJVg=;
	b=WWzg/ndFjkG7H9JTDxP0ybIV0Yz69f53JD9y32axyCMAcZzmCv4p5v1wvbFR9Ns31nWeUg
	Q+edYZQUqi+VMhuTeApQReVlX8OAToUB7L2kGvSaDMtNNOFPqHbP5xdSPvtRaWG/JsLAdw
	cjC94sKzQFqNcojGOsvupQJBVi9fPN5sZxnQgK734UG2ZR4JAFIzU7ZkJZLXRTJgiuo2NR
	+ebKbbexyGpff62DPkOPQaBbGlX/CU6IQ/zlxlmlteYR0ikBL1cfB70TMVVEdsNPCkZvot
	+XF1F93IQXW3/U2iVubOtZsgdlPt0MEHNlOhVTIdzNlERj5Ja4+Q4vl2nlY9jA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790668915; a=rsa-sha256;
	cv=none;
	b=VYDom8r97q0JhKoEA0XtM4V2R5MSmhNwR+kozKD6uUhWTWvGkPCazd9Bp2PzzA5wD9FwSr
	XyEnTVpPmH/i+TpgNwt0mgkx6i6RKYKNGFAdwSQfnVUqbO3VmpzN7fUB7mRo4l0SF2K/pE
	9wQiYWkTkTR8Qi+GLUGqIQSxpGO6m+N7EK3fefyhIRB0nQ+Sx9rq6lKOHNT2Tn7VDs5lz1
	aXUwwF0xh/xFJJomPm0ImiVLvgomJhiQ590FhEjhZ0i9OhoyMiH+shHgno72SGo8zVwo8m
	8KAmU1HlFONT3Ld6Ve9wtMyuTbqo4k5Pn5/j1/CxIa8itmjnFyoTuWAVP1b9Cg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude03.red.stw.pengutronix.de smtp.mailfrom=uol@pengutronix.de
Received: by dude03.red.stw.pengutronix.de (Postfix, from userid 1052)
	id 661122BEB22; Tue, 29 Sep 2026 10:01:55 +0200 (CEST)
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH] commands: sconfig: fix command description
Date: Tue, 29 Sep 2026 10:01:53 +0200
Message-ID: <20260929080153.2606828-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_010159_304344_FAD444BB 
X-CRM114-Status: UNSURE (   6.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Align help texts with the implementation. Signed-off-by: Ulrich
    Ölmann <u.oelmann@pengutronix.de> --- commands/sconfig.c | 9 +++++++-- 1
    file changed, 7 insertions(+), 2 deletions(-) diff --git a/commands/sconfig.c
    b/commands/sconfig.c index 7afb24366b81..1067fc04c540 100644 --- a/commands/sconfig.c
    +++ b/commands/sconfig.c @@ -214,7 +214,7 @@ static int do_sconfig(int argc,
    char [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Spamd-Result: default: False [-54.85 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	R_MIXED_CHARSET(0.56)[subject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[u.oelmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 029B6201551
X-Stat-Signature: u5dr1fwzjgu8iq8zsr5d5edn964x1so4

Align help texts with the implementation.

Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
---
 commands/sconfig.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/commands/sconfig.c b/commands/sconfig.c
index 7afb24366b81..1067fc04c540 100644
--- a/commands/sconfig.c
+++ b/commands/sconfig.c
@@ -214,7 +214,7 @@ static int do_sconfig(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(sconfig)
-BAREBOX_CMD_HELP_TEXT("Interact with security policies")
+BAREBOX_CMD_HELP_TEXT("Interact with security policies.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-l",  "list registered security policies")
@@ -222,13 +222,18 @@ BAREBOX_CMD_HELP_OPT ("-i POLICY",  "show security options of specified POLICY")
 #ifdef CONFIG_CMD_SCONFIG_MODIFY
 BAREBOX_CMD_HELP_OPT ("-v",  "verbose output: report options as they are modified")
 BAREBOX_CMD_HELP_OPT ("-s POLICY",  "select specified POLICY")
+BAREBOX_CMD_HELP_OPT ("<+->SCONFIG_*",  "enable/disable listed SCONFIG symbol")
 #endif
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(sconfig)
         .cmd            = do_sconfig,
         BAREBOX_CMD_DESC("interact with security policies")
-        BAREBOX_CMD_OPTS("[-vlsi] [<+->SCONFIG_*]...")
+#ifdef CONFIG_CMD_SCONFIG_MODIFY
+        BAREBOX_CMD_OPTS("[-l] [-i POLICY] [-v] [-s POLICY]  |  [<+->SCONFIG_*]...")
+#else
+        BAREBOX_CMD_OPTS("[-l] [-i POLICY]")
+#endif
         BAREBOX_CMD_GROUP(CMD_GRP_SECURITY)
         BAREBOX_CMD_HELP(cmd_sconfig_help)
 BAREBOX_CMD_END
-- 
2.47.3



