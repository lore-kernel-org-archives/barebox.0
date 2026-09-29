Delivery-date: Tue, 29 Sep 2026 09:43:46 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBSV7-007b5m-3C
	for lore@lore.pengutronix.de;
	Tue, 29 Sep 2026 09:43:46 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 411362001F2
	for <lore@pengutronix.de>; Tue, 29 Sep 2026 09:43:45 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QzA2q94a;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="QOsVI/Z7";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790667825;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=0hXQeY9fV/lgEBA7BL/pi/3XsNE6fVTcvN7bhSvc+OA=;
	b=cx6Q9Z+E9hCu1HXkGxzYwUGhsVmCRZswYOMeMVYxD8kaMO0hkm1DLxET1vDNGIFHG5VnjB
	UbayU5pkaZV0l2iqOhjCSFiFm91BiZ4GOu9OarFAIteS4LFZmWh1Lx+b4OQwVElWxjkV8t
	KWzI1Q7Xrkdxk+5q8zoFlok+MzQtOGyN7DrAZd/MpHNpEq/8Sf9D5wqTl5PDnXra3Dtpkw
	B16kHJFUebtOMb5/qAn9oOPFO5Qk41K5ph1g/xt39HtD246mF2RaTHhdJgEK6tz49umDw+
	qDaiZGIs87MfC8PyMkQrPUxoYGdTc2pA1c73CpaziLoJBKEzBEdI2ZdTY3LOeQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790667825; a=rsa-sha256;
	cv=pass;
	b=N0Qm/K6KbhKQN9k2MtSHbCkvSWBvpo1yAlh0VKLZTjzz/Tpp0zJ75LeD1k9xsl1vOpxA9R
	tAZwiul8MJer14Ym7FCdyyiOaUJrvX8mQtgVF9TFbR1poOgA/EbFr4y9RSN+ddbAcly/V5
	Z100vduFc7/2FLLKPygf3JkhSXBb10oLaTrDrR7+o87Jovz+pYKjCirguYKLSHonQjY7bT
	i4Ek48s4RLUz01qzX4qsPBVC+wYSg7R0NOhgAo01EUzdOM0EYkolnhoLFZsgZI1daEXrq8
	P3zqToVUCBZpw2QdB3eA8aUBS/3xUl1khbPMlsW13U/0ews8Of70lrO6H0emxw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QzA2q94a;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="QOsVI/Z7";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0hXQeY9fV/lgEBA7BL/pi/3XsNE6fVTcvN7bhSvc+OA=; b=QzA2q94acMIAgmRNXvK689M97I
	N4UFYsYuD5DEnkOokhwqJDs63VmeWBW+YrPaoUCIsyBp7OZmqnllZhfDd6BaQu0z+1eJ2U7JL+xp3
	PlkdAz8UpdlKyTM5oh470thI+/8TZ/816ZRblG3EoepK9Rmx9P8b+wgftAdAsoIrIwVkL49XAkK3V
	0kgRdf7f8btxDIbRdBKelcRN7z/PZh1HICzaPmhYP2lLgeyciuM31XYQlno8QFqj7IO6nwUU/JE4P
	mOujXxcLk5rsIOvarBZnOBrlQ8gkQFbT2YjRN7/bVxlAbuF2x5VgAtN3pJKKeWS6p9l+v3h+WM1XV
	a9JXKDaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBSTs-00000002e2u-41Mf;
	Tue, 29 Sep 2026 07:42:28 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBSTq-00000002e22-0qZ0
	for barebox@lists.infradead.org;
	Tue, 29 Sep 2026 07:42:28 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 509A1201547;
	Tue, 29 Sep 2026 09:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790667744;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0hXQeY9fV/lgEBA7BL/pi/3XsNE6fVTcvN7bhSvc+OA=;
	b=QOsVI/Z7zWzgJsNLXMT15mlf8rMxNaBIbcMW9YswnoFa77Z9zMvsjF7KfHtANmGjPk9JnG
	A34oSqgA1VkiA/RxiLfFoU1YxZsfqTCfAPef9QLFiCNVyBflWliQIk5Uv9qr2mB30MyVtC
	rwAPLebrX9TrSqVoDRsK8Au7lQWfLekMX/8iQi5FNQmiVsmk0/YtpOLy45RK8eil+RH8jK
	94SgDdVtOTjfFuvE8o6gwAraIVsp0hoLRmEUscGY4+jTO6SydyM8sTdfX3WKHCyORfLdMS
	qmjAXaVlgUbkXd7orzQEod5iOyTrGG8zgDi2zgZjjgpoEDHAPxmtaJ0GajEr/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790667744;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0hXQeY9fV/lgEBA7BL/pi/3XsNE6fVTcvN7bhSvc+OA=;
	b=EmG4Zjk+jm8kWAtH1YVxXTrojQiQLMG6HhDb4+lMJcEUZk9sQ7K1diQkvROCWYbPHXk/9w
	MABBUOxZNfORzI8RMjsvqeTQMR8I17KRm7tnQ+Yk0Q68a8LihjMjhckcX58un0tuVosBQs
	mqtgDPUNNGPpxvD9xUBicZKqbfVQaPCInCv+l+HymnLojmJgu6Lf5BtTz29Mng7+08SqvM
	gkrlAvVXz2lW5CmOXC9KsRQq8dHXe4M48M62CySZo9Xo83MMYcbG19MAbqsYrL7hcww4A+
	ef8qCOMO6j0xje4i6vMC5SFDKLdGwG96NHiR2T3dysYIRAfQTUBkRReJWe9Zag==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790667744; a=rsa-sha256;
	cv=none;
	b=GThHdbOgohzEvMYlzDnNlWXhljiekf+kW0rBxCD5+ajtlx9yjMGTP++qET4wAt4nrWjuqC
	Uz8NhGNCmp9pzOrb9EcGFegf0/C1NyTFcfuDXGei/mNVFg8zFs1/rfX5IgzvtrMUhBqpSP
	OyddNNWbvgiy6JuA3pT/xsIbpF6ap/+5sE1+AmZAisrMtMUu/FElctY/Lgj0GinKAOkx3b
	qEd+RgVPZXdM7NqRUdqqYEKH8G2gc2BlM0rJNBw1Pm3EkazuBUF6/QJB49Dq8WY/r/ZMNd
	xFBDCBOHf6xFZ4PI2fpQvRHr45GV8pKL9h9ua0cdcgPcbXfnzqX+U2ztrGIkXg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 3BB3FFF954;
	Tue, 29 Sep 2026 09:42:24 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
References: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH 00/11] Documentation: define a barebox threat model
Message-Id: <179066774422.746017.3999649954446570551.b4-ty@pengutronix.de>
Date: Tue, 29 Sep 2026 09:42:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_004226_395279_6900F4B4 
X-CRM114-Status: UNSURE (   6.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 28 Sep 2026 13:26:55 +0200, Ahmad Fatoum wrote: >
    The security considerations chapter is written for integrators and > tells
    them what to configure. > > Security researchers may not know how [...] 
 
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 411362001F2
X-Stat-Signature: deho93erx1no33e6syj19oxnp6gc6rj4


On Mon, 28 Sep 2026 13:26:55 +0200, Ahmad Fatoum wrote:
> The security considerations chapter is written for integrators and
> tells them what to configure.
> 
> Security researchers may not know how barebox is integrated, so let's
> document what we count as a security vulnerability and what's a normal
> bug.
> 
> [...]

Applied, thanks!

[01/11] Documentation: security: unnest hardening sections from dm-verity section
        https://git.pengutronix.de/cgit/barebox/commit/?id=c0cdd23b4c61 (link may not be stable)
[02/11] Documentation: security: clarify development key insecurity
        https://git.pengutronix.de/cgit/barebox/commit/?id=8dc76a8df393 (link may not be stable)
[03/11] Documentation: security: require signature verification to be pinned
        https://git.pengutronix.de/cgit/barebox/commit/?id=2ed2d9dc91fc (link may not be stable)
[04/11] Documentation: security: document trust for builtin devicetree
        https://git.pengutronix.de/cgit/barebox/commit/?id=19aa2d73e335 (link may not be stable)
[05/11] Documentation: security: clarify the environment section
        https://git.pengutronix.de/cgit/barebox/commit/?id=6f05b3974006 (link may not be stable)
[06/11] Documentation: security: describe shell and environment as trust boundary
        https://git.pengutronix.de/cgit/barebox/commit/?id=e3cf9dcf37a1 (link may not be stable)
[07/11] Documentation: security: document the barebox update attack surface
        https://git.pengutronix.de/cgit/barebox/commit/?id=e970228de462 (link may not be stable)
[08/11] Documentation: security: update for barebox dm-verity support
        https://git.pengutronix.de/cgit/barebox/commit/?id=cdc811322e49 (link may not be stable)
[09/11] Documentation: security: add anchors for the different sections
        https://git.pengutronix.de/cgit/barebox/commit/?id=e6c151d4b3e8 (link may not be stable)
[10/11] Documentation: define a barebox threat model
        https://git.pengutronix.de/cgit/barebox/commit/?id=482b9b909058 (link may not be stable)
[11/11] README, SECURITY.md: link the threat model and security considerations
        https://git.pengutronix.de/cgit/barebox/commit/?id=6c54a2974517 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



