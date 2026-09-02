Delivery-date: Wed, 02 Sep 2026 10:35:36 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x1gRT-009weq-27
	for lore@lore.pengutronix.de;
	Wed, 02 Sep 2026 10:35:36 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3D60A20582F
	for <lore@pengutronix.de>; Wed, 02 Sep 2026 10:35:36 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=UqGzO6me;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+ynhsfh7X874JCV2GqkyfTVVesFHkq9ByRD14EXaFlk=; b=UqGzO6me+nQ1PG0ZJRyXYMX7Pu
	4a8Q2iUhOmVJ1qLhH6w8Mm+7jwR+GLvLUAHdt8d9kVBOChC3u+xrxoF7PMgNZll+3SjoWCTTJJtJc
	SsPebhMhcAwFeOdBAamqkgngyg2GGcugAduSeI2PpPZi2oNuQqeheH3OM0oBoY44XAR0epW20LXyy
	CYAn2XCmGDresMZRJaWMxDUziG76nxM/4utdejjA6gTw02Ss2gVyUkuU1BLWDGU3zAjPTDiM5cUOO
	aehO1GyXcIN5HbrUNvilQKYqvk7TmeGX6+80wGx5kcfFwhkAYRm6b+d23ZWbba//eueJLI5kwsEoi
	pe0hFx6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1gQQ-0000000E6mJ-0e37;
	Wed, 02 Sep 2026 08:34:30 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1gQL-0000000E6ls-3fVb
	for barebox@lists.infradead.org;
	Wed, 02 Sep 2026 08:34:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 159F0201BCA;
	Wed, 02 Sep 2026 10:34:24 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x1gQK-004YqY-01;
	Wed, 02 Sep 2026 10:34:24 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x1gQJ-0000000E3n0-3qqR;
	Wed, 02 Sep 2026 10:34:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20260831173116.232488-1-eagle.alexander923@gmail.com>
References: <20260831173116.232488-1-eagle.alexander923@gmail.com>
Subject: Re: [PATCH] amba: simplify amba_lookup function
Message-Id: <178833806391.3350486.10716161846627482937.b4-ty@pengutronix.de>
Date: Wed, 02 Sep 2026 10:34:23 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_013426_079841_5CAD846C 
X-CRM114-Status: UNSURE (   6.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 31 Aug 2026 20:31:16 +0300, Alexander Shiyan wrote:
    > Remove the unnecessary 'ret' variable and return the matching amba_id >
    entry directly when the condition is met. This makes the code sho [...] 
 
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
X-Rspamd-Queue-Id: 3D60A20582F
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::28:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[lists.infradead.org,gmail.com];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: n5z3rdrzgkxp5eqyzjjmp3bzj31s4igd
X-Rspamd-Server: mx1


On Mon, 31 Aug 2026 20:31:16 +0300, Alexander Shiyan wrote:
> Remove the unnecessary 'ret' variable and return the matching amba_id
> entry directly when the condition is met. This makes the code shorter
> and more readable without changing any functional behavior.
> 
> 

Applied, thanks!

[1/1] amba: simplify amba_lookup function
      https://git.pengutronix.de/cgit/barebox/commit/?id=611a63bcfaf8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



