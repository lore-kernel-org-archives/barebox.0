Delivery-date: Mon, 12 Oct 2026 09:33:13 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xGAX3-00CjL4-0K
	for lore@lore.pengutronix.de;
	Mon, 12 Oct 2026 09:33:13 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E2F63201DCD
	for <lore@pengutronix.de>; Mon, 12 Oct 2026 09:33:12 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=dGHiv3jp;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="RI/R3Z3V";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791790392; a=rsa-sha256;
	cv=pass;
	b=Wevgt/DsvBej4Qb+VTdUPiw1/zocbwOsdLLHtD6JtG7Qu/YEixaLs873LijtbYekTZ4HUw
	SCItPDsIFYF9VcWPC9JIloY/zkzaFgq+c3/vBfYm88KjM1boRshcAjRhMWtczdHQ39B/zu
	OSfd3UaG7in/gtRP3AhdoUm7gHKhr8Nc2Y/PGCeYzmAst3JYHZ5C9SUILDAQvn8Z1N34HM
	L4eVt69Jx3vswMZ7kKI/VBJzvf+kFaWGpnpzO/KcDZHWo7tSNPOAtOLyOTR2GNKlWOtmRo
	k7f3XRoIFI1uoCekKD9kxeRhyTN//l58LzkhvUc/6/lXjt1gRlxfJnJAjE7M5A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=dGHiv3jp;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="RI/R3Z3V";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791790392;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=PKM9KJM2pyv6D+hpkayRwUDoTJCB2HB/aa4w2AGCro8=;
	b=Y3WPlEO7nycXqpAZTyZi635jLfUtEjCuu/Ep47yO09ag1Uf1f+SXH4Smfbj153Nti9Qs0N
	JOUMWJZDGQwTxx1XamWMo5FtPaWxtjn5p9MnRkw/CDSOGrGV6PcHBRqvchKVTq+O2C2Co5
	8IoqxUQ39TNtzzl7PP+Aj9KhV/LKe/o/sD75KsyAkqNUDZCFDNOUo/wZLmRoj4y04X97e4
	r1pQoXRTr4W5ROywEhLe2nSLzDP/i5vjkplLhNkaiVlVtuG4P/enGYpBDeoyJxxkSenzKj
	YXy1P1r0GfoBPs2fVZ05mGK65dCngDUqx46Hh8a/On1dNO1e5AZtoEiaCjRWjg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PKM9KJM2pyv6D+hpkayRwUDoTJCB2HB/aa4w2AGCro8=; b=dGHiv3jptg0ALameEvL28JmaQN
	HINGFQ2+Aa7tv9cF5Fwsw/5yqlrrajVzDXEbM3dkk8hs1JUrMyS9PQsRPbdOxTCrv1xwhGKqe05e5
	jeYlJWs6Mzj/GqMYDYU3OdOtVt3ODBFyjXM9NOF9UBGtHtMFo5WFyKVgXPIp0L89+H1uUTBcnkXxT
	8Tuk94PR5gkXtVh4yqQUE0PtdfpX0fF3bptd+NoALjIxVGGFuIj3GURCWuAJ5DlixT5QJJjF1b0vb
	cPYMPjbED7uHcfL8eZlxJRvusWfY26XjdruEGpi7L96BshcgENGDtVTI+G/1ZHsxh1oYj5Q4CDIGm
	Lnnzhgxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGAVW-00000009qT9-0gft;
	Mon, 12 Oct 2026 07:31:38 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGAVS-00000009qSX-1PrL
	for barebox@lists.infradead.org;
	Mon, 12 Oct 2026 07:31:37 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D3A86201DCF;
	Mon, 12 Oct 2026 09:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791790289;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PKM9KJM2pyv6D+hpkayRwUDoTJCB2HB/aa4w2AGCro8=;
	b=RI/R3Z3VFZzrEKH08zCgnnY55NYZTkU/GQH7Y8Tp1X+3tabJaA0hCg7l1wA0ZGZPPBzFpZ
	x6O7gBWPZxt0ly6Yhz1ho83KfBhl+UwLw6moc9Co6KI/Q8UVNUWrCnkX67Weh7jUoBnlnV
	E2LDzxP8MVM13SKZGvMJhmJWbVf6gzNz3xnNKm1WGLOSoTOiLLzRHYWQnT3OtQD23TA12Y
	m6isqOng83wdoChow5uKX5S1auCFMCTpNYEft1rKDwAAw5FRJVkvKmKAQ4sWwSJ5+puyjI
	O+4B0cl1YVRGgre00ohlHBsMybOVUwO8GP4qeLiLKdDMM9Y30qH5yEFUTj4U+Q==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791790289; a=rsa-sha256;
	cv=none;
	b=AtU7ndd2UuJTVSiZIGlIM3nLrGElVH0FgdxENoVuQr8nweFYbcVFS5cBoYnWHMI/GbM6Cv
	BN9aeWkTEksckd5jVM2ChMfSUi8SA4OFrCC6FhrhEvstDY0gPeYTNssvFpLGD58PVc4bMf
	B2nOA1V7dI6fsRv33H2rrJK2OmQNEEz+Ay63K6aXLBgfBxRt1HC9sq6LyUetW9mFh7fcJj
	qSE6zut/zESIsndLGzAN/b94h/PjisSeyV40Oy4xkJ/LGoXGyJYx+Ow++TApVDNH+giEy7
	oar9Tz7pNtJCMUemkuOT/9YgEnwHIMgZ7GgBDY2V3oCCQQq+pm7zGo1X5V6+RA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791790289;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PKM9KJM2pyv6D+hpkayRwUDoTJCB2HB/aa4w2AGCro8=;
	b=IzvlUEhhY3jtYo1tpwbtm1SNyUYd+l48bd/phfATWwLKIk6gBYAf0ue0T1hvGQatH8xAYH
	/gFJKHj4NntYJzCYIKn4sb04cT4RaNit4XiGdPRyOeA3FCME0CLLE9TdKoRgmXhHtJrcnP
	uUTfyId7LZXW5HfCfJvhuzwHvHGa5j1yycsbi1+iAYN7j6KOgMpu2rEj9dn4RfYHfFRMh7
	Ol6dvfe41irnRWx9U9kocHg3XN1MSdUVlZILe3zFjYZFiNA7xPslNSxzJZmQNLPfFBrjug
	DIDr20tjNUftDOP4xwv3fKyX/guvhT6YPu3e3/bCPJlqYbgAThIYxOz0TjIJ8A==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id C8947FF9AF;
	Mon, 12 Oct 2026 09:31:29 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20261007-socfpga-agilex5-gpiolib-v1-0-a2911b434fc0@pengutronix.de>
References: <20261007-socfpga-agilex5-gpiolib-v1-0-a2911b434fc0@pengutronix.de>
Subject: Re: [PATCH 0/2] arm: socfpga: agilex5: remove custom GPIO toggle
Message-Id: <179179028980.3136214.9699764026379515629.b4-ty@pengutronix.de>
Date: Mon, 12 Oct 2026 09:31:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_003135_329519_5EAE8A4C 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, 07 Oct 2026 16:57:14 +0200, Michael Tretter wrote:
    > The Arrow AXE5 Eagle board has some custom code for toggling the reset
   > of the Ethernet phy, because barebox is built without GPIOLIB for [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E2F63201DCD
X-Stat-Signature: qaw1m8ifwrcic1a37u6d7jm1stng1emj


On Wed, 07 Oct 2026 16:57:14 +0200, Michael Tretter wrote:
> The Arrow AXE5 Eagle board has some custom code for toggling the reset
> of the Ethernet phy, because barebox is built without GPIOLIB for binary
> size reasons. These limits are not clearly defined, not reliably
> reproducible and not enforced.
> 
> With xloading of the SSBL, the GPIOLIB doesn't have an effect on the
> FSBL size anymore. Otherwise, disabling a few drivers is probably more
> significant than disabling the GPIOLIB.
> 
> [...]

Applied, thanks!

[1/2] arm: socfpga: agilex5: select GPIOLIB
      https://git.pengutronix.de/cgit/barebox/commit/?id=1a54fc95c9e3 (link may not be stable)
[2/2] arm: socfpga: axe5-eagle: drop hard-coded PHY reset in board code
      https://git.pengutronix.de/cgit/barebox/commit/?id=5f3dad1c142b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



