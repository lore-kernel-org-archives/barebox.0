Delivery-date: Mon, 24 Aug 2026 15:00:12 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyUHb-006hnW-2l
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 15:00:12 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6765E201288
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 15:00:12 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=c1TZowbH;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q6y27stuVV5R2YOhZB4gPIT0P9DJa/5g5rs7fI7O2C0=; b=c1TZowbHZHi8etOOBlmMksbRSd
	q7I6radP0l+2NzTsEdsDf2/kOJj1jY21xgNlEp2eAKfy5O7xdy0IsTQUVLhnVmtnI/uStxX44Vhaz
	MDKE/uA2x3BDp0agf4Lw8pyA5YgDEPLbQg0Gj8RJhc0siegy7x2OGfqAW+AaEFMQcm43o1WEiV/Ln
	J7noTYyUw+FzoUrI2xLS3JGpgGBZqf+j6f6RCvUnvldUHF7jyke71kRJNpp60IKBNgjBoxpzh3uX0
	n53yZnCy9EEYex19DS1yVByknifNjFsL7oluK+4tw7A5pGzLgBVJ517k5xzDkqa9N12qv94kN7Q2H
	HzU5+m9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyUGQ-0000000GeRA-3Z8V;
	Mon, 24 Aug 2026 12:58:58 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyUGM-0000000GeQG-3XPn
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 12:58:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C9AC1201288;
	Mon, 24 Aug 2026 14:58:52 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wyUGK-0036j9-2P;
	Mon, 24 Aug 2026 14:58:52 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wyUGK-0000000C98q-2r9o;
	Mon, 24 Aug 2026 14:58:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260824120022.3299742-1-a.fatoum@pengutronix.de>
References: <20260824120022.3299742-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH master 1/4] of: only replace a device tree that is
 actually tentative
Message-Id: <178757633267.2895045.1254430196517569226.b4-ty@pengutronix.de>
Date: Mon, 24 Aug 2026 14:58:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_055855_284049_6B0895EA 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 24 Aug 2026 13:59:55 +0200, Ahmad Fatoum wrote: >
    barebox_register_of() is called a second time when the EFI payload > registers
    a device tree read from the EFI system partition on top of the [...] 
 
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
X-Stat-Signature: 46n18xgcxyk5mddynoym5cj1ebs3geho
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
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 6765E201288


On Mon, 24 Aug 2026 13:59:55 +0200, Ahmad Fatoum wrote:
> barebox_register_of() is called a second time when the EFI payload
> registers a device tree read from the EFI system partition on top of the
> tentative empty device tree registered earlier at core_initcall.
> 
> The check that is meant to allow this looks at the children of the newly
> passed device tree instead of those of the already registered one, so it
> rejects exactly the case it was added for: registering a populated
> device tree over the empty placeholder returns -EBUSY, while an empty
> device tree may silently replace a fully populated one.
> 
> [...]

Applied, thanks!

[1/4] of: only replace a device tree that is actually tentative
      https://git.pengutronix.de/cgit/barebox/commit/?id=1408da582445 (link may not be stable)
[2/4] tlsf: unpoison whole block in malloc_usable_size()
      https://git.pengutronix.de/cgit/barebox/commit/?id=89489cc0f45d (link may not be stable)
[3/4] partitions: dos: bound extended partition chain
      https://git.pengutronix.de/cgit/barebox/commit/?id=ddbe5e709988 (link may not be stable)
[4/4] of: fdt: bound node nesting depth in __of_unflatten_dtb
      https://git.pengutronix.de/cgit/barebox/commit/?id=05b6373a0fda (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



