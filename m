Delivery-date: Mon, 09 Nov 2026 09:55:53 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQLAP-008xv3-0f
	for lore@lore.pengutronix.de;
	Mon, 09 Nov 2026 09:55:53 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5D5FA20033C
	for <lore@pengutronix.de>; Mon, 09 Nov 2026 09:55:53 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=gSCEYtRK;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=e7yxIfrd;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794214553;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=5yH1iiDhzzQiMtRSjfBG6Tq/IOx/8tcf5a0cTxtI62w=;
	b=SB4RKcOer0el6jRknYGr9YK3+deU5qHEWgvCnPGTtBJkUe8uFLKTTJ0V3pDZ94ABYJsKtF
	47CCo/ncQixq03KNU5McGVLqjCQGX+ec0T/etInso0JvAQg26Hd80ByThjaemfJEkD5Mmc
	7LkPvNLhKeh5YztNaM1pvemZ8R4Tqn/QvafzPwfDrqXxuKXCXRVQbxve4UfDpoeF71Dorc
	vuClCPovCQWeANMmwh/NulK/OGYuKv+2xpyZv85QuudUTG+0gGRb84xCEEDYVaK8VJrfC0
	R15zROeYfh9uSfNPn4sx0FWUrfCL9z8/OaGrdnOtHLQ7iZdgwNHz8EVlPkWyxg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794214553; a=rsa-sha256;
	cv=pass;
	b=DNOgQOKCc4zWTGMK4tHzKMEQC3rLGofBpc2ehcL56Ag6tV0S9B67+UKuJ4Dx/LOrn8HgTA
	BP0Z48HSQVcpLHS/iSZYj2o7rpf2KuGRDSvumwYHR7t4F+rqOmKyEC8eq9Ey/UQc1GYOor
	9l9k4zf9o7BOAufEyO0wMi1huRyfCJcmBG3KgYPgJTGkaDZLkE4W9TEmLO+io3MB4WHq8M
	XTXcT+e5LvYbX3PDIyXtt9Hrw1+K33oK/thUHvQDondArOZ03cuubamyFT2hsehYwpBXT0
	P73q2kDFyhRrLgpvccoZ93xYugvtKcwkwkRVIa3eg8whaBt1NBbmeL92BVeNCw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=gSCEYtRK;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=e7yxIfrd;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=5yH1iiDhzzQiMtRSjfBG6Tq/IOx/8tcf5a0cTxtI62w=; b=gSCEYtRKZxxqWO
	xCNOFKepTGuVBSrwvH4/LZzfCvueMydLbiTK512T6AwAhjJwUFV+swHlAPqgc7GIQKjSeNdS4AVMd
	pEUUByCk7IFPtZ31orrak8YUeztNfjyHxvJpuVV6WFjanzVfDeoslshBMioJAwTqCmCGb4bleaP3E
	IhnC326/43Rw0jV8VtmF99mxWA9yRj/+F3S2qJK9cdOOygRDmZFd1SsrN1g2T/UmADUpRPgAu6Sup
	IZaA1MJ4HqzGfCTEwHXYwAHfHBnGLlPwaSugwy14pp8iJC6kLruzoTdN31BgiXG4BB2REhSVjf9r2
	GmmIXNK3Efocg5LM8/DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQL9O-000000009I4-0gC9;
	Mon, 09 Nov 2026 08:54:50 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQL8k-000000009Gb-0UWv
	for barebox@lists.infradead.org;
	Mon, 09 Nov 2026 08:54:48 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 676C6200F26;
	Mon, 09 Nov 2026 09:54:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794214448;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5yH1iiDhzzQiMtRSjfBG6Tq/IOx/8tcf5a0cTxtI62w=;
	b=e7yxIfrdWZ9uBgbhQ8Oj2MxCxb+r0mucgcCBGL63UxV4N5XVfMk4rHEZt8XV5zjmjfyLSL
	KYuf5XL3an9GooAXcmR3O3njTCbs4+vmJmcWbj/wnxKoDfpeAAfjU8+D1ZAyArnfc1z5tv
	HuC0OjQ/aarmB79LB/gidqXY13vLiM969tsahp4wUGqEFLK3hK5+8OmocuLhuEw04UXdIg
	L2PG8B25osbAB0VUup9m26WX7WF8YbF1QLrUz18JLicT7IlyJ0p7HcM93Pq40+dquw5iDU
	aGc9IpgqvU3w57OtMX5ST/B3uKCqk1pXBpw6LstqApXWmvYlnxxSx/xqOVTPyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794214448;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5yH1iiDhzzQiMtRSjfBG6Tq/IOx/8tcf5a0cTxtI62w=;
	b=g5ZOF1BrTGExL7wMMTxptDT/uDW7aUi094wPmbqioK4/iZxRSjzSyJ8KNoP+RmZr0K7E7z
	EMXvW3wyOnKxxl8q5sVfuqrOR7tNODkAxxUvpiL+d638H3AgUioqBo62BvZcEu34sOC7pq
	X7ZEj5/PPNcURPm2PFt0QNXgcdXJpARJoP70ssRvf2sNZRPtmhkIm3ItdXMzf7N0XeUmMG
	ZWK6aCBwpeCUsxhaju39UoFkUHbyJU7++md924iA0E+4hTH4KYFSdudqIPo02snSorM7Di
	IM4GEFzDcI0VgtYEb43Yp3nAW3RtYgvypxcF98r7Kk+us18XvbnCju2+aO534A==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794214448; a=rsa-sha256;
	cv=none;
	b=gqqTCf/eto1bhbpkxIyFAB/8PUa+XxwXcQObLuT9UsX39EkuTF2v88KqnYDvzangVstZ6+
	rAa8feQlneMXsPnQ01yevzIB5Wgy4RI4KB7SQAaPMsvZmd+0nfXc2ISCiswa3WS1Cke6GR
	lZ1uqyRPtpzJVlH36SaOi8UiJNm+YZqTL4Z3KM4Mn3zRxVOYGgGk2nTBHwMeBo2WxZtQTX
	RjjNR/BoUYlcbfgHjeVZP+nKxjTEz71CFu7U2+6pEN9ZTWz9znd1QYdV20Ctut2yB4yIEG
	nKRISd0cp/55+ecjVYcnZeUpxaUOmefgSWQLcbWoz7jl/GCaqblrgPFwQLoZBQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 5CB39FF898;
	Mon, 09 Nov 2026 09:54:08 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261108201752.1404230-1-a.fatoum@barebox.org>
References: <20261108201752.1404230-1-a.fatoum@barebox.org>
Subject: Re: [PATCH master] kbuild: don't expect a Kbuild file in dts/src
Message-Id: <179421444836.488768.8426015673270846441.b4-ty@pengutronix.de>
Date: Mon, 09 Nov 2026 09:54:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_005410_344090_BF2A61BD 
X-CRM114-Status: UNSURE (   6.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, 08 Nov 2026 21:17:51 +0100, Ahmad Fatoum wrote: >
    dts/ is synced from upstream as is, so the v7.3 sync dropped the empty >
   dts/src/Kbuild added by commit 77addf6205d4 ("kbuild: allow building [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-60.56 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.95)[99.79%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 5D5FA20033C
X-Stat-Signature: 16xnswi434w75qj9ybi6tn7wfu59i8o5
X-Rspamd-Action: no action


On Sun, 08 Nov 2026 21:17:51 +0100, Ahmad Fatoum wrote:
> dts/ is synced from upstream as is, so the v7.3 sync dropped the empty
> dts/src/Kbuild added by commit 77addf6205d4 ("kbuild: allow building
> the device trees in dts/ by name") and building a device tree by name
> fails since:
> 
>   make[2]: *** No rule to make target 'dts/src/Makefile'.  Stop.
> 
> [...]

Applied, thanks!

[1/1] kbuild: don't expect a Kbuild file in dts/src
      https://git.pengutronix.de/cgit/barebox/commit/?id=06ce402d1a36 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



