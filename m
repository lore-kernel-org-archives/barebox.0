Delivery-date: Wed, 23 Sep 2026 08:16:12 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9GH6-005KnU-34
	for lore@lore.pengutronix.de;
	Wed, 23 Sep 2026 08:16:12 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C2B04201A8D
	for <lore@pengutronix.de>; Wed, 23 Sep 2026 08:16:12 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="YiBx/8om";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=AcO6GOpH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790144172;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=0AZ1Fr8pqQwuUaNmJEMhAmfZiErG2kAjwWZc3F8b9U0=;
	b=Org6f771H2UY+WS/r6qH51RCSrTpPQCFFPG2V8OKgm0fDn/ojyxRTStiSZqUD20OwMmtUX
	0GxixlJhSNmWjiGgSR+0nl2szhCgU747u/9k/pFrTL1Z0gC6aSvhcyavAozNQmsJb8AOCT
	Is1JJhgP5b7GZd+LnozltpDX9o56HKqj0L0QVDC/bJaCrg4acF47y8Lwtz4ELCTtkNTUGC
	0IDOIVf7MMofL5NiJjS9rUUE5uernz2+14LfC9ROSD1KYDV/1vDoqhdmwjeImWvO0tLteE
	5J6nMehPJ1w0GHGjQ2HDJ1XTdeHa6fGQ08hBJCehWaWY/mTOUoR+PAeKP2WSQQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790144172; a=rsa-sha256;
	cv=pass;
	b=KZaAC+HZ2ihHlWH9EBrakqGx+Fr4wCLu4gE8Zw+5stv1sFLUaSLye2L/l9+yInCqOEWb6o
	tSe4jwpjGtrRI5fgOOmEnC5UmBB70O1hvvlDCmmqreaxbOFhC8Wv4GTmcB3nfU0FKFPxkQ
	rDKejxop6RpuCRHQ3VKS9OVgIWscZfZChkJGd8L02fawgFEIfwIbcJGHbOyYMKcDN4dscJ
	h8/moBfdQZ3h2zg9pBURYqegzB2BNGhr6AVfnRt7Jq6gYvhFT3AXTE161y3lUKF8Dv47BE
	yrv3EDqGiheVBCRVQ/5UM1XDfaQzjKJxVlJmQqNiXcQLRtqKQ8Omch7AhxPn1A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="YiBx/8om";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=AcO6GOpH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0AZ1Fr8pqQwuUaNmJEMhAmfZiErG2kAjwWZc3F8b9U0=; b=YiBx/8omRTPBLMplLHPbh4nT1Q
	TUx5VpEosXUzJzL1GXwmNRf6BMcvr72y5UshHXx8rajyOoW6YuIMRXl3X5ggMT0l6WLzVZWltBGkk
	ChYVrdRr4D1v6mpa8hD87AexO3YHmRSPpmx/cV0P+lYAR1f5mIAcbILXL5dMW6++bVOWY+8gNq/pM
	RaATYWWahFiCIRV1tN3hjYVJzpZRwEWBWmvfimjRgu+uaz55kAOA4kLkNKHCTsJj/xEdyTwYPYowN
	lxSVV1QZ84xpxDGJ3VD0sVT0/pN1rWKfKch1xhYtEJrupJsdjaAKWhOngpZDyc2sDDsrT0Ho0ynbH
	FfX4rJ8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9GG3-00000007Fj0-450r;
	Wed, 23 Sep 2026 06:15:07 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9GG0-00000007Fic-29fF
	for barebox@lists.infradead.org;
	Wed, 23 Sep 2026 06:15:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C2B15201A8D;
	Wed, 23 Sep 2026 08:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790144101;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0AZ1Fr8pqQwuUaNmJEMhAmfZiErG2kAjwWZc3F8b9U0=;
	b=AcO6GOpHJuGI9cok9t4zR05iwp7aKpchnxlf3Clt9I1RNHG7XA6KGr7xnZpc7mEmbE9ZIY
	GuS0nSjPCGvtMoGY5QUDg3IgoM38PigwkJQ+2TQZ8UfPlyQkUZiWcs1FN9knBrg2ZplbEC
	WSQGAug62qu56F7w1B4uGphinjTidiXijuHi5nP0TLIzyybamEkJHyVZAV6fMaYnSE04Px
	IjhGd2CGO4Qsqc+z+41M375S44ikG7RN23CfSulzabxbOn0RnhveqHO8N7DofKxJUgLKuo
	eawC6cVDXCU3qL42u3b5K95uYakBLuG2eMridClszD1q0TpIyI5Y144ueqbCcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790144101;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0AZ1Fr8pqQwuUaNmJEMhAmfZiErG2kAjwWZc3F8b9U0=;
	b=NEEjZEj7LuIc3CSakgg01oItX7qj/F1nReJ+kELNQ7uEoHGfCDURDzfdonjpso17tl9wfz
	DE9AdqERocPUBjvjSeQhPZ7NuUMli9WDHLbCi5Cb8bgVl/8sK0j7p9HnuQf67hxZi5fyt3
	wI+TMZxjupGT9N8A8myWeO0nEOHbS3Mv11i2jtq7cFTCes2qyPNSpQy0BWj7YaVjdARLSN
	JLUjh3WPDmy2ITRNq+Zy++QMRCakr+7gW86hx6o98o6PJRj/anHb+hrZRxXFZ5xAXVWTJN
	M7xnpp+sSVo6h0DHUZl+3c/IUNwVK+0qbLLDN0TkGt4cLNLqb0w8E00cEUTyEg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790144101; a=rsa-sha256;
	cv=none;
	b=LauDowiQLEk3gf+IEzV78dgyL2Ibv8pWZcN9Ndghnq5vwj51uNs6v6C+cGsoGlH8haMXkP
	JQN7x5vZ3xWDAyldg1s8OlfDN1mG3veHsIGBv+yBN1yLROhRVI5pxrYgNxOHs3CQ3eBbJd
	j8YnCqG0X6v7bMMIIfPfK73KeBZfq7D7HiVQ8h6SDk4mTFo8gbiAd29I7C30zRfGg7gMMJ
	AQo5Qp/19SgliXT12QNg+UezAy/YhQZXjxssvurjprghVfGkQmLZ7Y7gj7bEZG9XeF3dLn
	hU1YHTQXjhhAgI3rYY68pygQrS25GXHXb3+dD3wRY0MY6351Py6jBaEiUCjIag==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9GFx-002M58-2G;
	Wed, 23 Sep 2026 08:15:01 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9GFx-0000000BpHC-2fDn;
	Wed, 23 Sep 2026 08:15:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260921150243.657613-1-a.fatoum@pengutronix.de>
References: <20260921150243.657613-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] FIT: prefer the default configuration when several
 match equally well
Message-Id: <179014410163.2818660.6426060741840957481.b4-ty@pengutronix.de>
Date: Wed, 23 Sep 2026 08:15:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_231504_734114_7DF3692C 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 21 Sep 2026 17:02:41 +0200, Ahmad Fatoum wrote: >
    fit_find_compatible_unit() keeps the first configuration it walked into >
    when several match the barebox root node equally well and only look [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-60.79 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.98)[99.93%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: C2B04201A8D
X-Stat-Signature: s5ej9taiiwh1kdp6z157sgrk3as1rfwi


On Mon, 21 Sep 2026 17:02:41 +0200, Ahmad Fatoum wrote:
> fit_find_compatible_unit() keeps the first configuration it walked into
> when several match the barebox root node equally well and only looks at
> 'default' when nothing matched at all. A FIT carrying one base devicetree
> plus a couple of overlay combinations for the same board has all of its
> configurations match equally well, so the choice the image author
> expressed in 'default' is silently ignored.
> 
> [...]

Applied, thanks!

[1/1] FIT: prefer the default configuration when several match equally well
      https://git.pengutronix.de/cgit/barebox/commit/?id=fa325d79ed5f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



