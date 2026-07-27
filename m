Delivery-date: Mon, 27 Jul 2026 15:04:34 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1woL0T-003R3u-2a
	for lore@lore.pengutronix.de;
	Mon, 27 Jul 2026 15:04:34 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3D640202057
	for <lore@pengutronix.de>; Mon, 27 Jul 2026 15:04:34 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VXzUrgXK;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZKC3tvflN1KulLNaoFEsVbc9NvuZIt75fBkW9TKSvXQ=; b=VXzUrgXKBlJKCtsnNembTTVW4f
	gdvLZ6+32zCo+Jp9U3L7B6pLp9IYD6kWSX5to3b7f/Ihy9eL2HlT1crfaXETrDKLKk74SnY6wx/Nb
	aVb8Gp8xT5nAbwuGcpj9UoQK1EI+RDZEFHBVb42McHx0wlk4PI0qsRH3m9MTy7punlfIBPhMlVjf9
	ctxeNTkLIvBsFEFeemymA+hrNrJNHF9LrNEWdu/QQ6s9APLvR4DhmGRHhiKxJyN+GX7v1nzQ219db
	WOO1D6mL/5Xl8q2vKUc1pjdByqnAswsjJVa1gX5IWVvaRuKO2VgrqMS0j39lHcQCH4Q3nxMWH3qw4
	mqWbF2ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woKzQ-00000002mzp-2crm;
	Mon, 27 Jul 2026 13:03:28 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woKzI-00000002mv4-3vX5
	for barebox@lists.infradead.org;
	Mon, 27 Jul 2026 13:03:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6DF45202057;
	Mon, 27 Jul 2026 15:03:14 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1woKzC-001Xv8-14;
	Mon, 27 Jul 2026 15:03:14 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1woKzC-00000001ZHr-17L0;
	Mon, 27 Jul 2026 15:03:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260710102638.1640479-1-s.hauer@pengutronix.de>
References: <20260710102638.1640479-1-s.hauer@pengutronix.de>
Subject: Re: [PATCH] net: phy: defer PHY reset settle time off the boot
 path
Message-Id: <178515739426.373880.5458873630053506825.b4-ty@pengutronix.de>
Date: Mon, 27 Jul 2026 15:03:14 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_060321_145973_9DA7A5E1 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 10 Jul 2026 12:26:38 +0200, Sascha Hauer wrote: >
    of_mdiobus_register() reset each PHY by asserting its reset GPIO, waiting
    > the full reset-assert and reset-deassert delays inline, and only [...] 
 
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
X-Spamd-Result: default: False [-6.61 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:c01:1d::a2:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 3D640202057
X-Rspamd-Server: mx1
X-Stat-Signature: restrkokxhn89h1kyjmiwcgqm4nfw4ke


On Fri, 10 Jul 2026 12:26:38 +0200, Sascha Hauer wrote:
> of_mdiobus_register() reset each PHY by asserting its reset GPIO, waiting
> the full reset-assert and reset-deassert delays inline, and only then
> registering the PHY (which reads its ID over MDIO). Waiting for the
> reset deassert adds to the startup time, so do it asynchronously
> 
> Split the reset so the (usually short) assert pulse is still done inline,
> but the potentially long deassert settle time is not waited for at reset
> time. of_mdiobus_reset_phy() now returns the point in time at which the
> PHY becomes usable and the PHY is queued on a per-bus deferred list
> instead of being registered immediately. The actual registration, and
> with it the wait for the remaining settle time, happens on first access
> to the bus via mdiobus_flush_deferred(), hooked into mdiobus_scan() and
> eth_open_all(). This lets the settle time elapse in the background while
> the rest of boot proceeds; by the time the PHY is first accessed the wait
> is usually already over.
> 
> [...]

Applied, thanks!

[1/1] net: phy: defer PHY reset settle time off the boot path
      https://git.pengutronix.de/cgit/barebox/commit/?id=efdbd65cbfd5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



