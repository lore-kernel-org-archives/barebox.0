Delivery-date: Fri, 16 Oct 2026 14:40:43 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHhEp-00EMET-2w
	for lore@lore.pengutronix.de;
	Fri, 16 Oct 2026 14:40:43 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B4EF1202283
	for <lore@pengutronix.de>; Fri, 16 Oct 2026 14:40:43 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="J/VdXvGj";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QUMaPLAu;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792154443; a=rsa-sha256;
	cv=pass;
	b=Vu4TMKsO1mahX0IcfqjC+7r6T9RaqxiQ9pqBPstaIVemx1GwK4m70bxLEtVoNOhgSy/3qK
	DGskb8kZW3m54kLOqQseg5erkoFwOjtJ7JpYmUTlEZMk+RcUErzpd3xQ1aoBWEuVzI3eDC
	s/8Rnp1QXpDHYCcy289sa+EzreVhDUkugm/cdBP7gc6x5v+6rPOUUCrmZfYEGm5LjkKYwv
	W2MRqqofNITCTTHtzZ52uix//r75k+328efOynR/k9E0uPk9r/9hYyGyZQUIW0KCrEytES
	ZppZQmBf5FgRBOdURgjaiDX6D916yk13jAFvrC6wW6wUIVTdBut/LbYk3eilKA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="J/VdXvGj";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QUMaPLAu;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792154443;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=16BUKKZuExaThEPMwhd8ffrARM16Tp13Q3jtT+hiCjs=;
	b=GvoPBrj88PyqdKZbo7Sj0wGgqY3YNcneBqFVXhUQo4uHRE/TO6WgU2XrKEMr1bHIX6X6yk
	v9PakyGvvmy2LfEi0DHVuFfXT9LLXYxzpz7Ie8HCBor/jrNrGa9wDYLki4/eSIAnThw+KD
	I6rpI7R9bhinMQk/hq2ZrsGWSmNr43yO4934kTFoC1bdbqx04VnV3T0M9DCtumtlAD6SkZ
	gTZ6LGEAiNgp0MeclIzAoBAM1TnMOO3sj11sXR5khJP24oN711ebfBWWJurYbc1hvYpgDT
	1OQWGRkWxmt3LyOh0Tgf7F3Qp7DJC0bcZAPgBQRnYKwcJIPDR4rUniREG90Iiw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=16BUKKZuExaThEPMwhd8ffrARM16Tp13Q3jtT+hiCjs=; b=J/VdXvGjJNiZTyAHxYZazNwWI7
	B1sQyoFhs9dlS6vP6zKCmdaI9jZTBqVZez5oYFkD4gknrXBKf1DN8nVDgNJ0k54KYepPKwU3I3sp8
	T1WEjFG6SsxlIqtjdGW5PVkF6ste/vYzpWX29seSF6lbpzOrPQLv8gicieNGILRXNL00Jm+RfTZ42
	YjrU8/i+myo78EvBixDQjW/3jKJalUnA0l4MA9pAjyJX/GH/xMzIrUJzH4OaJbD0hve9hkEMa/hto
	yErEMRqbn7mF9RNZGA12oIONREv5iO/veXwtSAQG2vvzyAorYgxvC+utXKdM/2tdz5/xBMxZk8JQG
	TJyWYB1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHhDe-00000002wFZ-1QPC;
	Fri, 16 Oct 2026 12:39:30 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHhDb-00000002wED-1hRS
	for barebox@lists.infradead.org;
	Fri, 16 Oct 2026 12:39:29 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 94981202283;
	Fri, 16 Oct 2026 14:39:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792154363;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=16BUKKZuExaThEPMwhd8ffrARM16Tp13Q3jtT+hiCjs=;
	b=QUMaPLAumIxpt6QrarcKS71I3o4l+LVNTosRzAq6QniugacMECOA/R2+3s6y68Z35gWG2W
	D6BSN2vFicBFuJ1Ah+yQcfiOnPvqHmEsmyQr+E3qc9ZZ28q9jrIZwc5/fGE9G4IibJs3xv
	uHcoiiX9sVhTKh3ue9bhoyngRtqcRDU3ny6qPwDnfqus5qdPJj5FQaMF7qEjbX4yCyGCuW
	mBWCuDuUxNK5XZ6nLraP4UejhzNjkZ+ui6AsI0iW31hizjIkhqjC3O7bM+zLezSq2DvGDJ
	QKterNCNQjq0//5OMHflMgKtEmLCVnCCS1FXHGBz3/4Pj7fq44IbSJcbKD/s9Q==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792154363; a=rsa-sha256;
	cv=none;
	b=YPB46qSRphfjFvLaTa0Ic02BtdDWoFq6Aa1fDKQGLyA7fXKz8NwtMtgzxQKAWH9Gi4UVRD
	CEVpmJ0Uly+2ID8IjrokSOS+nDYRJzuNz3e0fZJKfYnjPNqr4cJBqWE+oVejY44n1IMxMy
	nsUp3icu5euBfHW4sbidIaw3yuvgUV4hspRROoKOpHwGmnrs2CBi/KkpC6gptZMpfypJJl
	MR/DUNUuMCAkSaOV56OvVSyNL3DcX9mm8WyTqcyQq868TVq+wWcasnK/hadh0Hymms2xUI
	2bfi2bruuq+xmVOMNLswaqCftVypCa0YJDPuKwUL+VQaru2AIK4lGpuy6NfNjA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792154363;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=16BUKKZuExaThEPMwhd8ffrARM16Tp13Q3jtT+hiCjs=;
	b=erp3BK+cNZpVd5e8m28YuHj9RxNP0ahfwcXq02D0vFCGVQVVuDDk+oyxqYlNEjkk242lzN
	VWYHRzL0zTkI5xF3qk+6rwytjmOIiXz03WhNRkeUgt6r98oO6zz8OEGh0oDseyUwq8dgsf
	EHzHJtUZeYXg8mOcqRLgZwdM1p/lkk+s++/ANEuOuos0m3ugXI5peRNkbpBEZXAyiOqePn
	LjpSCfBm72CUCyW6hfdj+mnWIXi+XZkLNj8pQ0nZO0fKBZSBd4L7+/7HzHCdbcb2hDbzWu
	/90QxN3PoWxBDzg1HdVBz1IsXEdDD7zpTD8WJ761nDj0IF7NHjETt4JnatQSjQ==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 7FED0FF972;
	Fri, 16 Oct 2026 14:39:23 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Florijan Plohl <florijan.plohl@norik.com>
Cc: a.fatoum@pengutronix.de, upstream@lists.phytec.de
In-Reply-To: <20261016061711.130600-1-florijan.plohl@norik.com>
References: <20261016061711.130600-1-florijan.plohl@norik.com>
Subject: Re: [PATCH] defaultenv: apply external environment after board
 overlays again
Message-Id: <179215436350.638256.2009412487580499238.b4-ty@pengutronix.de>
Date: Fri, 16 Oct 2026 14:39:23 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_053927_907215_F1CA1B06 
X-CRM114-Status: UNSURE (   5.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 16 Oct 2026 08:17:11 +0200, Florijan Plohl wrote:
    > Since commit 7f1cc5dd869d ("defaultenv: add base and external defaultenv
    > in pure_initcall"), the environment given with > CONFIG_DEFAULT_ [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-60.59 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.98)[99.90%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
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
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: B4EF1202283
X-Stat-Signature: t9mf9rz1f7fh9aa6uutiofuwrqoz63jk


On Fri, 16 Oct 2026 08:17:11 +0200, Florijan Plohl wrote:
> Since commit 7f1cc5dd869d ("defaultenv: add base and external defaultenv
> in pure_initcall"), the environment given with
> CONFIG_DEFAULT_ENVIRONMENT_PATH is added before boards add their own
> overlays with defaultenv_append_directory(). As overlays are applied in
> the order they were added, board overlays now overwrite the external
> environment, contrary to Documentation/user/defaultenv-2.rst, and BSPs
> can no longer replace a board's default environment files, e.g. its boot
> scripts.
> 
> [...]

Applied, thanks!

[1/1] defaultenv: apply external environment after board overlays again
      https://git.pengutronix.de/cgit/barebox/commit/?id=6b2dee07d718 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



