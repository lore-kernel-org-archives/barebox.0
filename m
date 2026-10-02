Delivery-date: Fri, 02 Oct 2026 08:00:29 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCWJp-008jSg-1B
	for lore@lore.pengutronix.de;
	Fri, 02 Oct 2026 08:00:29 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 282DF200758
	for <lore@pengutronix.de>; Fri, 02 Oct 2026 08:00:29 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Nl1F32ar;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=eIvXO4kR;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790920829; a=rsa-sha256;
	cv=pass;
	b=G9lmzd2+g598A+ySBLltDusphmvpImSYzeE8wP/GpQ5gy0j7a1RaXmTKI13TSNa0BwYPSL
	Cp9pQf3k/Txq5sjj6edKuV9CNr3l4rNvfd24u3dPYOLIiJMy6ytZINR1Yy7UNGDvCU7DN+
	HlhXibpE/lkVBM4ac84VLYeRk20Aj/A9QrNtfOo8bNlZffW2rktt3vvROb6Ub4tdgUWOJX
	K3MSfbS5dqoLHGqwt34Dxx0SzSOi5VolVr92VBSS+ij49HaoXQyvH/plNv7IfbmwY6pHmJ
	n4BkHb7YicEW3KRtq2Ky3O0NEuiEWcq6ZLlsx3LZLoto25NZEXwWq01QkbYB1A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Nl1F32ar;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=eIvXO4kR;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790920829;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=xPwNXu1RnCVk1xhgoTd2jK9YBkIqICEUjZGntp5UQfY=;
	b=Ig//vRjkvt1gpXDly2Aav/4YGinAHVDYafRrkCg1UILdm7R6NH+5r0MHPs/IDB5zPJQ3om
	8XTY25wAP3NlyNHwt88klnwqA6TsNX44rTbJilkF1/ER4TdXonSzLn+OyZDbMVsHjNuCmT
	+xcnF1u64CM1LFbAHFHwpid6+T5udC65/VJzZLpedNa6okpHaZoI8BGF6t+Qu54GLVTCfg
	TJleXpgjgK7vQ7KB3WnFfXniAKy90xdCpvpGaUiBUPt7D3CWjV2+cPGmpAfB4bsNwtALd6
	yA5KZ3kroQ+mVkkkb1Zb0N8k2B4eHGR86o+OZLoNCZBYE4L9feps3wk9miJGSg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xPwNXu1RnCVk1xhgoTd2jK9YBkIqICEUjZGntp5UQfY=; b=Nl1F32ara2QpXb7Q9K5Q+Khwi/
	oJEJ7oasqPbzgwy1TmqXEIj03/43qJLm9huoHOhLh2fS4tmy76ipud5g8p8FXHi9Zyu22Dn7Viy2r
	i4wVHF9QTDO4ZUJir3Mmr9OylOXWzAdg9l/PRVkJW0P8OfOVg94O458lcLdTbHCJwAMmF7DQYT+gQ
	ArAxuiYcevSBFHdA0dtvK0EfAVqpnVoYy0EIpIkBTS25XwX8Qy1A8+35eccK5Au0oDSnub6zoufmd
	WC28Nef1F3b8+2+05I5WUBU4x38o/aoHcKWWejruBTCXadC4zEA++dww1M8Ez6i8uIEmMvH39TPoi
	XqSSUpaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCWIl-0000000AgAe-16dr;
	Fri, 02 Oct 2026 05:59:23 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCWIi-0000000AgAH-0HKQ
	for barebox@lists.infradead.org;
	Fri, 02 Oct 2026 05:59:21 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 57A49201547;
	Fri, 02 Oct 2026 07:59:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790920758;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xPwNXu1RnCVk1xhgoTd2jK9YBkIqICEUjZGntp5UQfY=;
	b=eIvXO4kR3fguix7ahja52eU3bV++Q6hD4rAMI4QQyBmaKWuKRPiHBIqyupcjUHliagiU6Y
	+JUFoHXsDxp1jXVJE1ROkq4eeXF3sNaygptEnOhoaZyS+OhGM1KSDfFKogzXyTIN5B3OP+
	vRAZjs27sgJ+UXIJ169Lc/zyUp+uG/Fv1EJLQ88FgUinjdSTc2TdyP6hF3m/k1pQrPAimT
	KfHk+Xanl5hxs5LUVBaHi38ea4826hhTdH8+Cstk/7y3Ci3kMWYuhtIlCSpAYfY1T0mufA
	D/oGr6yCm4G42iw6HTIP0xySyYflpkosLoRTN1hKSIwqGPuxcetv2kc/uiB1ww==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790920758; a=rsa-sha256;
	cv=none;
	b=IyAdzuytEFqwBrfXVLawqmblkVPVIbgLl9wBBWqVkfO807cdMdAwILH9jJ6xMpKUuCXZBO
	l9QzCKcy9e1YFtDnOa6sD2P8ZexdWvxAogOBkF90WUTrQWllyku/3IMfzsuRVCR3F4qRLw
	b2gqWkduPnqS5KWzCeti6DDMsrFO0CgtspWvEbBjKiQbvs6TbaIO9IvHrAiyxoVVNaUWDE
	ecpUC7RDWcGjaLpJKnKPSiE6TOlEl8j3fS/VthJCJfXANpamt1GygvrX+omZAkvdKRRawN
	kM/ZmbLaKyuQ3yO9lTq5+KU6PILUyVdVT7R7VG/OGRNPU5KFaAfKwEUitUeCuQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790920758;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xPwNXu1RnCVk1xhgoTd2jK9YBkIqICEUjZGntp5UQfY=;
	b=fFyCGi1cJjLq+Ai2mov6jophdAwgIQWDyFhcalrunuU81z9MTBHGjBCf8K2PEiK10tDRGC
	tJq5ru8lzHVS0b4PvWtKIrh6oxeUrBx895LfDtECKInCFzbPtdDDDoqDuBmWed9mH6XtXI
	DDKjlf59c16IJzYWRsccNw5VHIVgVDByN4D3YPK+cgsAA8+VP/LE65jjGeNzvloqo5I+mD
	mEHepcFIWabOKnltrrbq0A/P9+OTRKcQ479t72Nwm9YqxMUkVjy4fYE9I3+yFcqRjI4lWi
	KjXR+F1RaG7wpXwvaWXhbA1QDDiMzWzmGxxpKxLTJRf0ANmEtfEQ/Zd83RpsEQ==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 4632DFF876;
	Fri, 02 Oct 2026 07:59:18 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20260928095913.1102079-1-a.fatoum@pengutronix.de>
References: <20260928095913.1102079-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] ARM: lib32: bootm: always pass a device tree to
 barebox images
Message-Id: <179092075826.3102160.12065452192797773692.b4-ty@pengutronix.de>
Date: Fri, 02 Oct 2026 07:59:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_225920_273256_9A8A00A7 
X-CRM114-Status: UNSURE (   5.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 28 Sep 2026 11:59:12 +0200, Ahmad Fatoum wrote: >
    Since commit 828ffad14177 ("bootm: make fallback to barebox internal > tree
    optional"), disabling CONFIG_BOOTM_OFTREE_FALLBACK doesn't only > [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 282DF200758
X-Stat-Signature: usabw3d93ygxc3x1atuxt9czewb9mmyn


On Mon, 28 Sep 2026 11:59:12 +0200, Ahmad Fatoum wrote:
> Since commit 828ffad14177 ("bootm: make fallback to barebox internal
> tree optional"), disabling CONFIG_BOOTM_OFTREE_FALLBACK doesn't only
> affect kernels, but also barebox images started with bootm. Without -o,
> these now get ATAGs instead of a device tree, which leaves images like
> barebox-dt-2nd.img or the STM32MP generic BL33 without any description
> of the hardware and thus without an interactive console.
> 
> [...]

Applied, thanks!

[1/1] ARM: lib32: bootm: always pass a device tree to barebox images
      https://git.pengutronix.de/cgit/barebox/commit/?id=2dc5400f617b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



