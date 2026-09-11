Delivery-date: Fri, 11 Sep 2026 14:02:34 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x4zxi-000wLd-1C
	for lore@lore.pengutronix.de;
	Fri, 11 Sep 2026 14:02:34 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=UBzTMzjA;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3286D2001FC
	for <lore@pengutronix.de>; Fri, 11 Sep 2026 14:02:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u1imMa3q2vN2Q4T5xeet9BSVbKQIUMvj/Qec5iC0Lsk=; b=UBzTMzjAcMyJoAB+YcSXcoS5w9
	R2cqFulf7gFNKbTyskh406Kc8GIUg/c8TwZxb++pGvC1hE4wpcoGXFC30e/68dj6ruyLoejzRraeO
	TVbkuyweD2bn5iq+T22qamN/HJ8f/9OFyrUzp4sIPmS2U6S/+UXl2muGHK2lfRo2Am6RZqNDBNWPW
	XKl5XUfwjQGJw8EHhdB/cJ4CME2OSbyCgb12Ubs5UAMA3uQsLd26u3fUzo+5zi+IgGXRKpD3uj/aH
	wxgEaW1mu4TXtA/UJXZZKfr8B/HApYC7chg5qGVZXOTPEpAuV5FlnVl4G6pbO45wpY4Em/03s2dbN
	tZhij+MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4zwC-0000000GZ6a-0CBh;
	Fri, 11 Sep 2026 12:01:00 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4zw1-0000000GZ4b-1csL
	for barebox@lists.infradead.org;
	Fri, 11 Sep 2026 12:00:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A8D502059FE;
	Fri, 11 Sep 2026 14:00:47 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x4zvz-000Pcq-1m;
	Fri, 11 Sep 2026 14:00:47 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x4zvz-0000000A3Ls-22qZ;
	Fri, 11 Sep 2026 14:00:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 =?utf-8?q?Ulrich_=C3=96lmann?= <u.oelmann@pengutronix.de>
In-Reply-To: <20260908052236.2357822-1-u.oelmann@pengutronix.de>
References: <20260908052236.2357822-1-u.oelmann@pengutronix.de>
Subject: Re: [PATCH] common: Sconfig: fix help text of BOOT_UNSIGNED_IMAGES
Message-Id: <178912804748.2396152.201343009283286616.b4-ty@pengutronix.de>
Date: Fri, 11 Sep 2026 14:00:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_050056_485744_823A6C8B 
X-CRM114-Status: UNSURE (   4.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 08 Sep 2026 07:22:36 +0200, Ulrich Ölmann wrote:
    > Enabling this option relaxes the requirements for boot artifacts. For secure
    > boot, however, it must be disabled unless signed images are [...] 
 
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
X-Stat-Signature: ih6mxumianmq4srtzwhowu5kw4e13gw9
X-Rspamd-Queue-Id: 3286D2001FC
X-Spamd-Result: default: False [-57.80 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.99)[99.97%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_ALL(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action


On Tue, 08 Sep 2026 07:22:36 +0200, Ulrich Ölmann wrote:
> Enabling this option relaxes the requirements for boot artifacts. For secure
> boot, however, it must be disabled unless signed images are enforced at build
> time via CONFIG_BOOTM_FORCE_SIGNED_IMAGES.
> 
> 

Applied, thanks!

[1/1] common: Sconfig: fix help text of BOOT_UNSIGNED_IMAGES
      https://git.pengutronix.de/cgit/barebox/commit/?id=bc5aefa619f2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



