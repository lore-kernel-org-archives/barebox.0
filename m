Delivery-date: Tue, 20 Oct 2026 15:59:34 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJANJ-0013H2-27
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 15:59:34 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D7A7C202013
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 15:59:33 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1cfcIdEl;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=G3KVndKE;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792504773; a=rsa-sha256;
	cv=pass;
	b=H+UXaBI3xbPFhnVMQ/h8A3kLl+aiuUJPSKTpK/TQP+TKyog4SG/jwjMVmTrF5yXRdNijp1
	Sp1bvLYswGyFhn5+bW5oRWNbdT1DFojW56z1eg6Kd0xcjHWQ7WiolLcJpwxYZCn+YKw0po
	r2GyJB+6V7KsluT/8gwO2XWA3oMhisHvPPeMBabofWmy7YzeqUHsjpVYTsPbih2/bLlS3E
	16T2dIW3DsiE38ueo5AC45Q7BCijDpQXpDtVT0r8KN0LZ0vyveRyHIUSRPXKZtEOTUAILT
	55g5pKBKIHHMmcEwqfRyEuSzWuw247gv6qyr4USjLmPPvVWnztHO+79eCLMmFA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1cfcIdEl;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=G3KVndKE;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504773;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=fPanTQdaT4PW32/RcZfCByTLN918aK65OZgyl7YgstQ=;
	b=RZfs74Er31Mbq9sQhXvf5D1qD6TUyi5G0FOH6WTfWMsv7yOqFWl3SnsPPrpWmNVrx3fV2o
	Dm2je03OJO2bII0vrGf1b9t4KwJf9Mm0UPW39Cmlzzo2u89RfZ3l8KeKDRpoygUnJPO/nS
	E9wub43Uy/6QVvwyMFx0seMvJiNx6KisiGdYbzgfA+baZQgTwg91fRCv7jfZ9eFGXmg1Qb
	D+gnrzs7LgRbLXtSyMQHp3kTu863l79sHyx1CAW6FHq/CAotiWqj92oW/NLtS51pFwY9IH
	0QvAmnuE66w1HLefTo0vFt7cWNpNkbGLlEe/lmts3q9pJeGIuypdOSgNLmsFAA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fPanTQdaT4PW32/RcZfCByTLN918aK65OZgyl7YgstQ=; b=1cfcIdElpFt9jkzee4MkM8HKt+
	rW+x99Uz4H0tw8VE0emYCIAvVHyYjz7wrdsJoqWrR4YEIqox84qCulylhq5S85mDoCEOn6aTyIdFc
	T2AOtFA0qWf21Kr5YYcukA08k3x5dWCyc+uAb42hEf5jItDKfL400GuJlg2TuQLljwsu1W/mMtxEG
	TqsvuONGnE0XRL4S+ESDFXfqQy5gHCsXDrcOYqRM7IzttR10yblNUS12gTWEJlO2GFKgtmTMmTNN0
	tJlPTqFlHfNbQKy84M+ArD96J1r+qrhbsNmrq6uFxyCGiaC4zfFv1sJrdUjVeB+cPXaLEbajKyAcY
	jCcLhMvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAMD-00000009qqy-1T8y;
	Tue, 20 Oct 2026 13:58:25 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAMA-00000009qq5-13h8
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 13:58:23 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 766DD2019D1;
	Tue, 20 Oct 2026 15:58:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504700;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fPanTQdaT4PW32/RcZfCByTLN918aK65OZgyl7YgstQ=;
	b=G3KVndKExfGUHcf3R2yWJeVFcgB1x6dTJ64LGioztsqX5L3BEj8rAro3zibVl9lw+EHD7t
	JCJN32QlqvHva3MijPLXrTMsei3/h3L8pJD6coqkbUErfr56MvNMCLe/Z60/l+SeUhdDI2
	DjS/yY5Uotx1EhU+jDrSYm6KmPZ6CJlHe5KMZZDf3IpKWGuTdxENDcy3i7QOs80bmILjCS
	J2EOaKhuTJjiJyVzD3Nm++WdcOjO18r64EApirroDjV7hGzZbb08XF1Z2DFZMoDtJco+gK
	0WBs2iVcw2PtnljW+Oh7WgORlZ/yGQNhKSe4IwerWZB8mtcaNZLDQumEkMVtlw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792504700; a=rsa-sha256;
	cv=none;
	b=UMfVcsbSA//E1YWyPV+UVtyi5sSJgVpBp3A9rm98VnvAfT2Is4zYj9k7h9N2k/3kj5+uhT
	XuoyYcxGEalxiPBdSl5BYPpRoPQbo2VZX1u7bEU1iiE0mByua/U4JFJHt3lpEBRXf5+IRu
	9MHezNt7+ugJT5iG+VUYWkX5fO0yupOeeMCw0vkv8+IiNYmpgyiqqjzDtabve4efeaVv+d
	f4NVTPP0HRTnEIe2O3U+C71x5wFR3AnHsK5DcczEZqJIrOD0XiT71OjLa9vDMvRw1QMGry
	AuhnxONUeAe6BruZwqcdAUuxnAc7Ey+t8Flxq1onbvLgExWjfAYQTk63QjSAlQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504700;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fPanTQdaT4PW32/RcZfCByTLN918aK65OZgyl7YgstQ=;
	b=P3vNclaX9H1Z61pw44udPYwrHQEFVBIqdn5Gz9yeB0Bk5aHjSFhCRE6sJK+1rk0HPNjHh6
	AJb85SVWKvjUPuGhBlUZU0Xa7FVIYnDAoBdiURDmWMXjeHGorehUJ71oXPo8T51FqJaRqK
	llk/fCi3nLzd0cF1NTP13dryDns/3lTjGFI6djUGCg4SElTlZYp5Z4OhQzr8A/YnSjyYfH
	N5Wj0juOzacSPqTm/wFQeczHhpgNyYA6PjoJu749kD6oHnludQdAefFfmHkJ/jm9UA6LIX
	x28ZhH/MSu4Jvuz8gdaf1elFo2e64Az4n110NZ8pyStKeMMhea39RMP+4iNqIg==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 67950FFA47;
	Tue, 20 Oct 2026 15:58:20 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261015140907.1275192-1-a.fatoum@pengutronix.de>
References: <20261015140907.1275192-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] of: reject alias values that are not NUL-terminated
Message-Id: <179250470041.2719444.4778620029729031174.b4-ty@pengutronix.de>
Date: Tue, 20 Oct 2026 15:58:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_065822_449849_B5D427DD 
X-CRM114-Status: UNSURE (   6.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 15 Oct 2026 16:08:59 +0200, Ahmad Fatoum wrote: >
    of_alias_resolve() passes the value of an /aliases property straight > to
    of_find_node_by_path_from() as a C string. Unflattened property > v [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: D7A7C202013
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
X-Stat-Signature: qdyggiz891qdpzwigaq7m6kqudr9qjtq


On Thu, 15 Oct 2026 16:08:59 +0200, Ahmad Fatoum wrote:
> of_alias_resolve() passes the value of an /aliases property straight
> to of_find_node_by_path_from() as a C string. Unflattened property
> values are copied with their exact length, so a value without a
> terminating NUL makes the path lookup read past the end of the
> allocation.
> 
> Only devicetrees barebox trusts get here.
> Still, let's skip such values like libfdt's fdt_get_alias_namelen()
> does.
> 
> [...]

Applied, thanks!

[1/1] of: reject alias values that are not NUL-terminated
      https://git.pengutronix.de/cgit/barebox/commit/?id=68cda0c04a34 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



