Delivery-date: Mon, 17 Aug 2026 08:05:58 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvqTt-0041U5-0W
	for lore@lore.pengutronix.de;
	Mon, 17 Aug 2026 08:05:57 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B7E3F200F4F
	for <lore@pengutronix.de>; Mon, 17 Aug 2026 08:05:57 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=uS9APMpP;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6uc5SxaTPXJomuiu5SR3aHiJCru8GDSE7QEd+atx6sE=; b=uS9APMpP9TyLCxaXkvpvGzyCx8
	xTK1EQ4F+mGkBGtA0PqOkFaK6KvwZnF0njh0eZcST6/dR6dtfqmpvW/WDnqxOAvY3ON6K6Q2LMkyM
	0uSce5VVf/W2k8FmODVHqn59CYOlJs902lKvZBOBw8GBO84bMKQezc4ymGC1csOb09aRYtcdzPpMn
	ToDJYlTjc568jrS47bXdC45DUohneV93UP7nLgIfnI1tFjqLRecJm6VYfGzqLTdqIJOSI9HfAtUsp
	M1YXT9VZaHjmRKi9uqAY5lCXKqwDKfuZzbOIHBmUk8A/vhtnC06qujBhFvxFwLAbWUyKMwwwojrkP
	OS+AmKKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvqTY-00000005SH7-2q0f;
	Mon, 17 Aug 2026 06:05:36 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvqTU-00000005SGf-24ia
	for barebox@lists.infradead.org;
	Mon, 17 Aug 2026 06:05:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7DDDA20075B;
	Mon, 17 Aug 2026 08:05:30 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvqTS-001ti9-1O;
	Mon, 17 Aug 2026 08:05:30 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvqTS-00000004HRs-1Vio;
	Mon, 17 Aug 2026 08:05:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: =?utf-8?q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>
In-Reply-To: <20260810122034.1966679-1-a.fatoum@pengutronix.de>
References: <20260810122034.1966679-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] Documentation: security: mention long term stable
 release
Message-Id: <178694673035.1020377.3949602081245208652.b4-ty@pengutronix.de>
Date: Mon, 17 Aug 2026 08:05:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_230532_693083_71CEE18E 
X-CRM114-Status: UNSURE (   4.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 10 Aug 2026 14:20:33 +0200, Ahmad Fatoum wrote: >
    We occasionally backport changes to v2026.04.0, so adapt the README.rst >
    and SECURITY.md accordingly. > > Applied, thanks! [1/1] Documentation: security:
    mention long term stable release https://git.pengutronix.de/cgit/barebox/commit/?id=ac43bf2ed998
    (link may not be stable) 
 
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
X-Stat-Signature: dfenktgaqoqg7rcp8f84aijrxjqfwoar
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: B7E3F200F4F


On Mon, 10 Aug 2026 14:20:33 +0200, Ahmad Fatoum wrote:
> We occasionally backport changes to v2026.04.0, so adapt the README.rst
> and SECURITY.md accordingly.
> 
> 

Applied, thanks!

[1/1] Documentation: security: mention long term stable release
      https://git.pengutronix.de/cgit/barebox/commit/?id=ac43bf2ed998 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



