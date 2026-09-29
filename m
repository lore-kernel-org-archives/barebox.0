Delivery-date: Tue, 29 Sep 2026 09:15:15 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBS3X-007ait-32
	for lore@lore.pengutronix.de;
	Tue, 29 Sep 2026 09:15:15 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C3E4B20168E
	for <lore@pengutronix.de>; Tue, 29 Sep 2026 09:15:15 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ijuV+rUE;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=SWTp9QdJ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790666115;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=oSkZLZKiptTiU07873RpJv7BWVp2In53ZvKWStFrfro=;
	b=G7lt/wnjY0JVuY8paeyNiXRrWGpQoPfT0xZf+Da2h7TvmYA8s5cGyqFFZcF3TzzeEym+FP
	Y18sencj9dYu6eMWk2F2D3lSLoJdKtFUKK54UI9Jtc9tbs5PbBJyLBp5YCt8ufDJk+lcKv
	8/k2XA5Uc3giANS3TL+Wod/IIf6N3zeuYx03uQrygbwm3d5rc2Y5wgMaw5nh0DmbR0ydc7
	UrTrxM5qcBuUHHNM7NCG8yxWNbw5Vh2peOIcf1bPfjsO7vf/EcsgRJOVSyVfCHIPAMTVXX
	H0WyaKapoRpuoUyRBvonwNgzqQfYn/LXPmv3jC+6yZzqQvoRw9E2xbqVdsUQQw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790666115; a=rsa-sha256;
	cv=pass;
	b=Z0dQfa3dzx+UasuViKZq2b6WvkuujC4XRFKvsK6B0+d5xQirb1Uw9ayT2Wb2v6p5UKiMhr
	N7Siu0FYzV9WlrRn6dOXmV7RZp25SgTpSxJqWYzIMnXbnb7LebqpJdlWz4IeyIZSWek7rv
	cKRfHPJrqJt9UEJDodRBgOBzfBfibQQNjw1G8PYuFIU5n7QvSlw56frRogKkcP97VBmUn/
	+qYXTDnRyMX12tD3zV3QFgWgCj09ZhXNF0FDDe2irDEl1entnHiMZtWLOyAXYjvFMZOoWu
	ZBnSXXK6Nc+YsekHI1puJ7TDtmNgIpW+xZ/QIStK21b/hiCV0QB4dWAbISTHPA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ijuV+rUE;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=SWTp9QdJ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oSkZLZKiptTiU07873RpJv7BWVp2In53ZvKWStFrfro=; b=ijuV+rUEKaAmph1et8g0YYjzdY
	BNABEmfrH33EJuIBcte4fBoOqJujeQecIjYXMT9g/isxkuN7Rb0Mnx+qI8iLvl20qb74nLdcj94XY
	SruRwlTX+jpu2Pt5an9it4N155lvY31toWRznb7CB7ltUNZp/tjdronPH94OfLWfVy/mCx0PESliQ
	xrd+1DwN6rAWTYEhpJi8+2fyFnSvaphkOjWzejBwbWsK6pI6jNtBcafp/rTOL82BIyujnEPCkTDZm
	7jxd6Sx543hJy7NkLo+8SAn6VqHamIinMBAGvLewIMy3oDcOqHdtjFifhWxfRoBYLFTS2FJHRxN0p
	w1uuRGQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBS2Q-00000002ZM0-3Z7L;
	Tue, 29 Sep 2026 07:14:06 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBS2N-00000002ZKm-1ce9
	for barebox@lists.infradead.org;
	Tue, 29 Sep 2026 07:14:06 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7392F201548;
	Tue, 29 Sep 2026 09:14:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790666041;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oSkZLZKiptTiU07873RpJv7BWVp2In53ZvKWStFrfro=;
	b=SWTp9QdJckUVEoakskL16EPN8fiEWZMlewqRownqBAU2na8F0TDv0dAh93kF6eq5RbD62L
	0yKlWOBB8/vy1nOlBtRb5RCoa2cLK9448ISMjdmWPFgzGV6bwhuzTvciALSIZb/8QBSeJY
	gYutrLPUWC+TDK84aXN4ftHQC1gnTakRgPbr6/PUy/X5qt2jrJEhoWtRShVKQhRmYKFZ6x
	nUUjR4f29F0HZMuMtYQvPuhRAJ72HjXs/oiDXQFLTm+XmdkUAP1DZQadBKVvoASbddfCxJ
	vrMAk5pFbOg3JCijWTxZaIAazv1dqbVS4nhkTa0SMTN17surWdtxrGpWsP3hmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790666041;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oSkZLZKiptTiU07873RpJv7BWVp2In53ZvKWStFrfro=;
	b=BNedOBDLOxEv7BeVyJBiNVxGCPp6OJ6sRw3nGG5sv2B9rXlYS5/WHymu25L2BwYzngo0ck
	t1vmcfMdXOJgqdF0DyHjEH0dY4d5z6OQRBNHglFBVNAmR8buBGBcjxs2jOJX3NpxgtS/Wt
	k8cV5NEkEb7CLYjp+B8BtJyuwxWtgqy2BNABDp8cYyILDJofnt2cfhxP78fwKZTLH00o3O
	i6UeuB8vZ6wWkXvGVlPCqxuhLfo1wv/eq45mzyI/k+/NNiGoTIoNCX+4IYVxJcA/7B2czI
	jSBURGx5kvFR27s1xiM8sfmxvviyQVml30kt7nCGJkP9V5s24dRlNkCxrz3qDw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790666041; a=rsa-sha256;
	cv=none;
	b=bVu/1Omnj34ZpNMcBfjXbaBRazgFZlK1AUQO+uWHVrT2Tt5sos54KjgRgPfQ9FNpzSVaLl
	wNpAVfJ7u8OGTiO8Y3Wl/1NSavwW4PHSqMeqbkVhdOezSjOvm6wsDSpTa6FhIzUwWGrJuT
	j9CICPjc5E85/h60NbJrELrrXyvxHt/qS7GxEV4ruXjFRQVVkjX7fbd49nwzbwngGsuH4Q
	xMJKvlcKTxvCLyyqubnBt/PM9oDv04Nyvfqjx/eGA4JEKcHhjUslcfL2Z5tQYWnsLjR7zx
	Ox6o0FEiVgWdYFnza1/oFT9WwHKQTS+vbp7pZTkw3SeSuO5eHbySnwOreDptyA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 60693FF954;
	Tue, 29 Sep 2026 09:14:01 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Christian Berry via B4 Relay <devnull+christiankbberry.gmail.com@kernel.org>
Cc: Christian Berry <christiankbberry@gmail.com>
In-Reply-To: <20260927-nvme-ready-poll-v1-1-6a3f63b0ea3e@gmail.com>
References: <20260927-nvme-ready-poll-v1-1-6a3f63b0ea3e@gmail.com>
Subject: Re: [PATCH] nvme: check for readiness more quickly to speed up
 boot
Message-Id: <179066604138.724510.3885131411368357735.b4-ty@pengutronix.de>
Date: Tue, 29 Sep 2026 09:14:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_001404_275945_CE558002 
X-CRM114-Status: UNSURE (   6.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, 27 Sep 2026 19:03:49 -0400, Christian Berry via B4
    Relay wrote: > nvme_wait_ready() polls the controller status every 100ms,
    although > the controller may become ready much sooner. Every prob [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Spamd-Result: default: False [-60.55 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.94)[99.75%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[christiankbberry.gmail.com];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: C3E4B20168E
X-Stat-Signature: wkeofzrroamzrezp5ojkhpoje768f4m6


On Sun, 27 Sep 2026 19:03:49 -0400, Christian Berry via B4 Relay wrote:
> nvme_wait_ready() polls the controller status every 100ms, although
> the controller may become ready much sooner. Every probe then waits
> at least 100ms longer than needed, and possibly twice, since both
> nvme_disable_ctrl() and nvme_enable_ctrl() wait for readiness.
> 
> Poll every millisecond instead, as Linux does since commit
> 3e98c2443f5c ("nvme: Check for readiness more quickly, to speed up
> boot time"). The overall timeout is still based on elapsed time, so
> it is unaffected.
> 
> [...]

Applied, thanks!

[1/1] nvme: check for readiness more quickly to speed up boot
      https://git.pengutronix.de/cgit/barebox/commit/?id=22e19b4ec939 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



