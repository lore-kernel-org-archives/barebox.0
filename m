Delivery-date: Wed, 23 Sep 2026 08:33:28 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9GXo-005L1N-0t
	for lore@lore.pengutronix.de;
	Wed, 23 Sep 2026 08:33:28 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BB50F201CEF
	for <lore@pengutronix.de>; Wed, 23 Sep 2026 08:33:27 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=PMeuAJEL;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=TT0qzIE1;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790145208;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=LVkvkuhm2STaRbRLPsikf+SxrcPqJ1Jz2/gM1DnbONY=;
	b=AXi+cXYwQoGgblrexOa2pDQmoWL0ALg7Tk2wwn9A93v/AB8A0hWHkrphn7MGogVksAj3v8
	xN2R+6wh+QufZxh8SA/C56iRvTsL1W7fweQ/D3GHNZ/AoZkKjx1mhy+2NeJmGN+SIWuCZP
	jm62TsZD7YZO3ULXiPsgu3op+QjLgyRZsoTUOzJruS4tIhqXrafeD8fPeXKAnv24RTBZB/
	OR8pVvgOQAGv6HFm+ANItqQAIbh9bg1VNer1IDg7DQDwCsepOKJW3PiVrLqXxrLNBe/H6R
	2krprrMEIaAU+oJhXLRrfsY4/khVwkcT+nYZNNi82mi48F2oI6i4J6FK9reZ0g==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790145208; a=rsa-sha256;
	cv=pass;
	b=E1emaB/ijVkT2HbAD2aNfwdL3vqXWaKK6lRJpREtMrmLYhg3BbYi6BI7iyqMcmzP+zt7NO
	gSdb6McKeBjlM+SP1wnQxnOuU2JL9pS6P0PfoyYPa3a6THKK227a+BSX4QBMy+KyTiHHLc
	s9fhepz058GTvsee+DwjDF1hHWY/KtJWn7RnSCs/EYVXiH2UBuRV2ok6qpoCUr+qGURyL7
	Mv4xsnNOHqvNBWi8FOSk5ePxWralPFDkj0W6auUXUULZqfdEc3SkpCaGA4QMEwGOGkY/Jl
	yWJoZRv5oeBaxsaE+hYKdVxEEAtLJYPFyfarivnxyFBcCcyK8FBDT6ec71nbLA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=PMeuAJEL;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=TT0qzIE1;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LVkvkuhm2STaRbRLPsikf+SxrcPqJ1Jz2/gM1DnbONY=; b=PMeuAJELZdgzOfiYlnfZjqNJyM
	dBihc2EOnXhMPV79fENCupc5rDfbmnBuP3CpHVi5feDVp3KZT8JOZrJeM/2ccEq/vE6eEUGVBNby6
	5rxrO83Af1cRx7FD0UZYnNSUIPj2zuQuMtgSXOxmq1zF2Glyi+Hy+116iGlvXGDnwSH/TOfqJAkiU
	gGgNcQNjgEApp4mzprdVL3OCq53Xt+niNiVG2r7aL3nd8e8wUBnv4vl3R7C3E5YaQt7ASqf7wLxFu
	wVjzkiRfYs6RlKICZ/kutbiEoZKnJwD2g+NzvxC54Avb12+TYxolu3RbitkI5g3vJM7TgKN8OSB3N
	CF1yOdKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9GXT-00000007IQi-0cip;
	Wed, 23 Sep 2026 06:33:07 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9GXP-00000007IQB-0y1h
	for barebox@lists.infradead.org;
	Wed, 23 Sep 2026 06:33:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 82D5D201CEF;
	Wed, 23 Sep 2026 08:33:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790145181;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LVkvkuhm2STaRbRLPsikf+SxrcPqJ1Jz2/gM1DnbONY=;
	b=TT0qzIE1CY+ZOld+mfEHL8d4sN+ZnmbC4IJJJnSgZEIGRmmITUW7/NV08gpep6J2gCM/93
	imd+0HDwFUCF76bt9dnEAN46wQcHrT78tLUuAa6712ySIjbDDxnOuGJ8Oy6cVX1C2iMAga
	D2JtIbCRQBthwuvMPYAujU6VaIgcNOUfDgO7HfNdvdy2dN+GH5odo8u4Ujj8dPc9DXAxWt
	JO5JWYI9dgQMWM6YQU6fnYBN+uHwbPusInUsj740sbijWRFw/zMxd5e8R+WvCbojmaL/Zw
	7TROwwouA/nsa+7GWxLREjQWXPLN4llePVSM/IsQweyPymX7QZ0rK95e1daerQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790145181;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LVkvkuhm2STaRbRLPsikf+SxrcPqJ1Jz2/gM1DnbONY=;
	b=YxGnwAG5CPxgHQk/boMcj8as0VVg8SPP5vzTtToT6whMjZ8ze5BGLSalFnRXXapJtN29bM
	EC0bAOu7nci8YfM0etNm8SA1D7l9UAIasJ7nSn9kkTLRRuPRP6LN2Os/zWdVMM4t6Cyn84
	AC2R3mG+q/8McHkLXbnLL1txM3jn0CZtgUj4Hs1Rql8q5g3ZWkZJb3lRBwnk5AGNpGSKXN
	bH5uZHcsE3CqEephH8QmkAAUWCmSyZZQJ/2s5H1+tBLD93p3lGWEXNa+SHiyqpivdHEHKe
	rzXfkZyfxFuwBqswk18mzcke2q/ba4K81nY23ski3HcY+KUip125Fn7UdztCKQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790145181; a=rsa-sha256;
	cv=none;
	b=CxVmcgcYp484+ORRqRZAf/RjNTpA7DI19U4UUPHXd7MmiWelu6DvMDFPJivQukX94O/sYe
	8pg10344yBUhEZBmV4/pB0AHgqsPTKS6FDDIWTUirKjgRF/wiCAnoW6EcMg8R8MqlQpT8d
	v8YpEQPWhe/TJm3ojK/sZxpbHnt9YDjYHfnJJdG3u+ePH7jW4htvIDTgnTO//f9O0zb8NX
	mqZ0IHbnqNeEC6k/Y+fkqEmqYgB2OEkRSy3zVSgnalRCO4Eom6IXmbZ+D4/RKT1NcqpeeF
	02fNxCcPs3YM2RvPxOjht6a42GFUJCBHuIjLU0d2HQlGLU2kLqSwh5rwiNNilg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9GXN-002M6g-1K;
	Wed, 23 Sep 2026 08:33:01 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9GXN-0000000BqJO-1SZM;
	Wed, 23 Sep 2026 08:33:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: mfe@pengutronix.de
In-Reply-To: <20260922104813.317584-1-a.fatoum@pengutronix.de>
References: <20260922104813.317584-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH 0/5] malloc: add __free() cleanup handlers
Message-Id: <179014518134.2822633.15523843545372662898.b4-ty@pengutronix.de>
Date: Wed, 23 Sep 2026 08:33:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_233303_450508_A472BF8B 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 22 Sep 2026 12:47:51 +0200, Ahmad Fatoum wrote: >
    The cleanup infrastructure was added to barebox a while back in > commit
   332e3542e5ed ("Port Linux __cleanup() based guard > infrastructure") [...]
    
 
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
X-Spamd-Result: default: False [-60.77 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.96)[99.82%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: BB50F201CEF
X-Stat-Signature: g9rnkbdytgxx1gjehjesn6m3o8au1scj


On Tue, 22 Sep 2026 12:47:51 +0200, Ahmad Fatoum wrote:
> The cleanup infrastructure was added to barebox a while back in
> commit 332e3542e5ed ("Port Linux __cleanup() based guard
> infrastructure"), but without any DEFINE_FREE() handlers, so nothing
> could be passed to __free() so far.
> 
> Let's start with malloc and kmalloc, so buffers can be tied to the
> scope they are used in:
> 
> [...]

Applied, thanks!

[1/5] commands: rksecure: exit if invalid integer passed to -b
      https://git.pengutronix.de/cgit/barebox/commit/?id=4daf5bda08bb (link may not be stable)
[2/5] firmware-zynqmp: don't ignore the kstrtouint() result in parse_reg()
      https://git.pengutronix.de/cgit/barebox/commit/?id=654e1801d6fc (link may not be stable)
[3/5] include: compiler: make __must_check a yes-op
      https://git.pengutronix.de/cgit/barebox/commit/?id=46ba4067337e (link may not be stable)
[4/5] malloc: add __free() cleanup handlers
      https://git.pengutronix.de/cgit/barebox/commit/?id=ec28aeaedf8f (link may not be stable)
[5/5] test: self: add cleanup selftest
      https://git.pengutronix.de/cgit/barebox/commit/?id=b303ec45203e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



