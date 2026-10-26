Delivery-date: Mon, 26 Oct 2026 13:58:15 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLKHH-003VrF-0D
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 13:58:15 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 49E772022E8
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 13:58:15 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="n+/xyQ/b";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=C7b2oa1l;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793019495; a=rsa-sha256;
	cv=pass;
	b=etX552eThXI/LE3K69UYlGpA0keWj27FmxoLi2MmiX/NKOtecx1QyLskL2GgDLMYQOk4xS
	LsFhHkwSj6JC8UtBGo2dIoecTp8lwX56mN//t8AEl+SEhcZK0lXpi6Cm9Q8Yjn9WB4NrFW
	a1w0K8LZfeMxb0ZXHysS2ktNFEDgCLjaQXGLc+CqJ/URi2/CCdI30B/p7yEKwBrHVOEp67
	nbYpQWGET1d01ADgVR2xqB2i7DXThyMKnxN3HrBlE6xh8RNZtCDTZryfhL+6rlqWBKsTAl
	Dwt1bourPjknMGKYEGCvphEitbX/W11sz34tNrWLfPyFB3xtOkHUu/apfTD5EQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="n+/xyQ/b";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=C7b2oa1l;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793019495;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=NCccuaonH/rBUtY8t6QObKaVvul49S7GBmZtnH6X8Bk=;
	b=WWmJ8ZHZGMiSC5aa+mWRu7wXg/hpouSf5flclZLeDuvY1MDzz/qNyUUHMWJglLLX4IhINM
	UL+8aj17JqLbvMXjnzEJZDtZ+iGS0J45b7yntHSfYa3h2Ay6vwUFe0O0uxKQ7NaanBGyZQ
	tWAgynIdP31W2M5udfc0KkSCEuHhT5DRcY7hYs9JYU+qzi1kdAEWi+oTUF6t9QVY67sgE3
	zdWb/XMxsSiUxEK9cE2SMa4eJC/7in98IRpCpH/epOe0uQczXEimkylNnJjRieM+skL5An
	jY37fryKtRtJagemfKRXsV63wMwamMr6KoX7g7X1wkKd3jBJaWHUqBTs+jjMEQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=NCccuaonH/rBUtY8t6QObKaVvul49S7GBmZtnH6X8Bk=; b=n+/xyQ/bxEg+vR
	10r/NbzGAizkVhA78VItiChSLzlDqZmzRKpZfXccMDBuCUJLnm4GDOqt2w1qOtr7Eni9bWwt35eCD
	ParB7Kxw8W6FGeOdGyOJvudyHdxGzUWavWKexUf8yVET0UWM7/c4r5eP6qfEsWfI2q9E8KvW/ARJx
	rv+xkX+2NZnEJcovNV7O3P9bQkFRv6qIiA+wOeIBi7YuEWZLkchT04NXpY1ZYNTm/PINuBhMZ470y
	QAoS82XDRRB4XOZvuNYiEJLC8IWBT7bEJtxKN0lBCf4EBghBxaM0y8dWUMSxQvabp/botgg+MvBzB
	d5p1degxO5tirNwoGKqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLKGG-00000002Y3C-1TIW;
	Mon, 26 Oct 2026 12:57:12 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLKGC-00000002Y2b-3Y5d
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 12:57:10 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C1EDD200B9E;
	Mon, 26 Oct 2026 13:57:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793019426;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NCccuaonH/rBUtY8t6QObKaVvul49S7GBmZtnH6X8Bk=;
	b=C7b2oa1lgFINzNRzzFdRjjGXkPgoTXqekUBxa7jUVjukyv/T1l2VI6f37T7LI5WN9/5TJR
	oCMAST8b4dbLNj176m53OIpoM2WNyunPUvQcHrpSfnUjPKITAHLBpim/6dZIUYGThz+C1Q
	CrgG0CqGLH2ZqFvUb2KlNtwS4o4tTtnDKKN3Gfr5prKdFmnp0QfneRBF/YKLqrRtTyRpsH
	Fi9T6CtjMCyl+4+Cq0Hvk8rvcBu8zG4fPMsakdH5tLjzOfYjVLc+FvGg0UL17qIkKF6DCa
	faCEvZu++3buY1sW34OCsshbNt6pEOM1LctBARRcAJNz6WKZT1K8Of2MpYUTEg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793019426; a=rsa-sha256;
	cv=none;
	b=U1jf+8ifNGLQBQB1tYOfniy5shwpQtLWKwbktj8vG/5Nnjs5wQWZUsPNcq2c79mwTuzcpc
	CsfwrnHOvw0cSI5wVGsCJ6jl4DwovyBEqjXXucOByXXMiwZ1JLq99jW1Qwi2NaG+RF7+ha
	i6y2T+BIrBQwUvR24820SzV3BtKW7RAc7hFeoBjAeEGAumRm3b6cl2VbCQ9e/asg9QIzOk
	O0b0scIxP2G23rTyFkbl3oNZBp99UHulNlPQQnBCuTgTXJXNjlCtH8Xsz/mzT2dzTl8nbs
	+wrUBM+SpXOFv1jWg37bFtZhoyDCD35bkYqrN2EOaH4YCj1k2VnzhMHUPGtVsg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793019426;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NCccuaonH/rBUtY8t6QObKaVvul49S7GBmZtnH6X8Bk=;
	b=NQhnbWiRYod3+9uv8m1xYgaumW56sBWoWy9lFldd0NzsAmdJYsu+GBdxwvNS1lfnJu2CJ4
	KeEMcJJB+gukLx2rBC7Ryx5O99VR5xAoh6Dw6xBcLKHoA5sd/yT+f0DN57DiZYivM0yD1w
	5+Uc9+fIAHS9Tc/7iSNCV1DPFq8Sq6oOsvkIEMXtEWeAwM5F4pWeBUiN06xzv1z2mIkrN2
	XJrN2oQTFaqouyqhZG//38VlLmShBGbyiSs2N4cl2Cs+Gc//d/iOLljKZoiQ8ekz2Cam4Y
	4dwbumPGXrB6VPiuZufFhYCHnI1KAcd9mCEJ91G2X+BYDQO+DkI/yD4B9KewrA==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id B65CEFF946;
	Mon, 26 Oct 2026 13:57:06 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261025160138.3019136-1-a.fatoum@barebox.org>
References: <20261025160138.3019136-1-a.fatoum@barebox.org>
Subject: Re: [PATCH] usb: gadget: fastboot: correctly cap
 rx_bytes_expected() result
Message-Id: <179301942673.201277.12871077412658435937.b4-ty@pengutronix.de>
Date: Mon, 26 Oct 2026 13:57:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_055709_055100_072653B4 
X-CRM114-Status: UNSURE (   6.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, 25 Oct 2026 17:01:37 +0100, Ahmad Fatoum wrote: >
    The function only ever returns an unsigned value and > fastboot.download_{size,bytes}
    are both unsigned values too. > > Storing their differe [...] 
 
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 49E772022E8
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
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
X-Rspamd-Action: no action
X-Stat-Signature: uowgib9mur96jxz5pc45hcfujadtm94e


On Sun, 25 Oct 2026 17:01:37 +0100, Ahmad Fatoum wrote:
> The function only ever returns an unsigned value and
> fastboot.download_{size,bytes} are both unsigned values too.
> 
> Storing their difference into an int may possibly lead to misbehavior,
> so fix the types to ensure no overflow can happen.
> 
> 
> [...]

Applied, thanks!

[1/1] usb: gadget: fastboot: correctly cap rx_bytes_expected() result
      https://git.pengutronix.de/cgit/barebox/commit/?id=0d9d229fd497 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



