Delivery-date: Tue, 24 Nov 2026 07:54:06 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xVkPl-002iBY-0q
	for lore@lore.pengutronix.de;
	Tue, 24 Nov 2026 07:54:06 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5E6E9205A0C
	for <lore@pengutronix.de>; Tue, 24 Nov 2026 07:54:05 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=gYG5yfho;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=aPr1zyuC;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503245;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=6bsA1bNC802/XK6pWhu7pa4ZU3fEpPYUSD7m2vqiGU4=;
	b=IaocWf3nNjKcixTOZSslV/lzN0xoJqftUqZglLYKpI6++ZEwVr7SQQdajAXZ9asmD8x1xn
	ljk3i0BrbAYtjXhSN6OyjEvfjnkREUOjh9Hlk6f46mgIBaWWOlX3V44z83PRzx2Ok+ZD9B
	SocjOAdL0Zf1gYsGnHAl4eb487NFC+u9XwvhulB1j5yrlhvPAC756GK7+B9MQwt1Ywb3nu
	JvMeahQGki1RxPZHteGObNjQ/lQn2vWvAE2wfXq4WifsnGOSTYV5ssNjtZkYkTNcBxNiom
	5yvXeEZF8+MEOVu4NEL95uHpBvTdt+c0YGhDI1XfhPOroiR2h1NqMfCIUXOeaw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=gYG5yfho;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=aPr1zyuC;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795503245; a=rsa-sha256;
	cv=pass;
	b=fHUYGCZniUHqETPoKiCn+aVNGz+VSOzlDrWrWh/vnNgLoMtwyu0jFKYLd5TgvURa7V6Hvc
	dTYAGsvek6DfJTBTXWa9LuqyJZIgrwJ4PyXHe4Ap/K/EmgpJTx37ULqHsnQnUpsMaBSBs3
	hcEb1JOegmm4jLzompUxZdAboT/JbPGK9TSejSbOjuCNBFv1ljNsDP2+ytjdDanDORUuH4
	8cHvP/v+V9s2kPotp6LxGEjO8/wRkaMahxoJ3dDs2rXwK1DZLxfoJF9NKr8Cup+WNPWu7e
	oiJL2Pcf67p/oAv5QyZWeXXb/xlu35qYoo11KzY0fkODEEIenhPFwR8pZv11tQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=6bsA1bNC802/XK6pWhu7pa4ZU3fEpPYUSD7m2vqiGU4=; b=gYG5yfhoSZNcCp
	e3CNnTZTSijxmDOWJNeoO7FxUefNoa7TT1Mu6dY7tCBnSvnBQHTOtblM1INgskyFSGG7F20WzgAnu
	AfkC3Fx/iWUUYqB3nJVuCRkXvxDf6AU1wIpZyVGCL85e9j8Kx3d2+apLLXBeezl7rw1/kzKDSX1Ut
	1K/pSxjY8L+6Lr8hI7ZGYIzkQT4zjeWuYmyBRyny82lLvbKc3OZAdqPMfEBUKRnlnAb2Rx974GoTq
	NDMJhzMgzUx7IG5jPECkGyLWtyShJGoqG9DgLq6OOIkdYusY0laZloONh553ptPdrAlCnJtTmNdhq
	PMfnWIRhli5oP/PMj4eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkOV-00000005g1p-1T5u;
	Tue, 24 Nov 2026 06:52:47 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkOR-00000005g0Z-399Q
	for barebox@lists.infradead.org;
	Tue, 24 Nov 2026 06:52:46 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 201A3205A1B;
	Tue, 24 Nov 2026 07:52:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503160;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6bsA1bNC802/XK6pWhu7pa4ZU3fEpPYUSD7m2vqiGU4=;
	b=aPr1zyuCGwC99+V4ccok9UA1leQG+FUlTtOxMr6blPtV3i/P/9wwgTczz4KBo/1frCygaI
	VNKDE9hvY6bGb/AoSUPCbGVzWgBMRDzjoXkqUWX23MPEuUOBP35hqyKp/a5txKGCPOMr59
	ulEvqsu+LA98rq43bq4anZrKXmnjC41LAsYOV6t3DdtHjR4cFKLxRuErh3mqGGcKjg5XhV
	OM4d5us6VgQAPJESYMbSm3uW1JrNl1qGMkujKWay4VO/naZKuEgQx85yXB2PovlBJx3WM6
	tloKp+akXTPP4zuaeYK+v4mYQBkuhJhSL4pmd4FRDuCsHvFcTicBgkHMV//n1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503160;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6bsA1bNC802/XK6pWhu7pa4ZU3fEpPYUSD7m2vqiGU4=;
	b=eRrw1Vy0U9hejQ+Np78xwrqy9yuSoGMEONSiMnsaL3FJ6sOeylSPJ6EFmIjlIEXmUzqRhj
	x9srYb8XuQBMa/E381INsQw1bS1Urj1DVdJvgm73vuaC2aMccSaO3bY2hbZ0m89AVqBZ9D
	4t4KK2AD52VjTxuNob5gkuIz7HG8nYord20fmU5Vu6XD/zrwZgkWkIxlCCbj+5tqcNyjKZ
	UcDy9mbA6lxFK2Q4WlHAWDXoxx5h6unF2vXnxW8C9XtJEGKf7K6ZLn9i1oaWgcXmx97bmt
	EqFLrF5DbYm6u95Re8maA/Bp83KOFiVD4t16JWEo4YLM6pU1HDEeE4bghCmBUQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795503160; a=rsa-sha256;
	cv=none;
	b=ch3j0UdGQw4bjziu6lVWFXp02TuPi/pWGSbCIKH2ode6ZyzbAp/ahSSdnrovIvYbjs/X+K
	sLXgssHO/4NcfrD6qUIP+L0JSPryg+Pq9x3bJNoeEz8sYiLzc1uTiyhZeoapxVfqx42OQa
	caL15pUYEP5BUFOY+Y/0jWyQTdA9Xn7kFMWjsfGA+IdgjcL7MAyCSsHbrTd8+orHkwlNSY
	cVvRy/ohiFB6wAh6wn1UMs+W6yr4g0JBog9CGGSeGmv/KPKmbC6BWAAK3fNhrsI+skuYyR
	SuhqXjiv+stLkksF43xCKvc+am5sOen2azdjHWPsMfTEqrk3YIR/ICOJVDdOlw==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 024C9FFBCE;
	Tue, 24 Nov 2026 07:52:40 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261113-devboot-v2-0-f6853990006d@pengutronix.de>
References: <20261113-devboot-v2-0-f6853990006d@pengutronix.de>
Subject: Re: [PATCH v2 0/6] boot: implement devboot in C
Message-Id: <179550316000.350571.8302764529986815420.b4-ty@pengutronix.de>
Date: Tue, 24 Nov 2026 07:52:40 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_225243_950206_FDC2333D 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 13 Nov 2026 10:58:23 +0100, Sascha Hauer wrote: >
    devboot is a script on top of the boot command, and the devboot boot > target
    needed to boot with it by default is another one on top of that [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [185.203.200.13 listed in list.dnswl.org]
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
X-Stat-Signature: wwj4d1gnc6ipx1t3zwm1znipxogcxe7e
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[185.203.200.13:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 5E6E9205A0C


On Fri, 13 Nov 2026 10:58:23 +0100, Sascha Hauer wrote:
> devboot is a script on top of the boot command, and the devboot boot
> target needed to boot with it by default is another one on top of that.
> Booting with devboot thus means nested boot commands, and booting with it
> by default means rewriting global.boot.default as devboot@<target>.
> Also, boot overrides get lost when a boot script calls boot or bootm
> itself, and the boot menu ignores them altogether.
> 
> [...]

Applied, thanks!

[1/6] boot: report the exit status of failing boot scripts
      https://git.pengutronix.de/cgit/barebox/commit/?id=acdc54ad128b (link may not be stable)
[2/6] hush: export source_script()
      https://git.pengutronix.de/cgit/barebox/commit/?id=4c2de96f88f8 (link may not be stable)
[3/6] boot: hand overrides on to nested boots and the bootm command
      https://git.pengutronix.de/cgit/barebox/commit/?id=44a0d8228ae0 (link may not be stable)
[4/6] commands: boot: apply -o overrides to boot entries in the menu
      https://git.pengutronix.de/cgit/barebox/commit/?id=f7a31e905b4c (link may not be stable)
[5/6] boot: implement devboot in C
      https://git.pengutronix.de/cgit/barebox/commit/?id=04b0a80c059a (link may not be stable)
[6/6] sandbox: defconfig: enable boot overrides and devboot
      https://git.pengutronix.de/cgit/barebox/commit/?id=fe7895c5da1a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



