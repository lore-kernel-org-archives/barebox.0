Delivery-date: Mon, 26 Oct 2026 14:05:57 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLKOi-003VyI-2M
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 14:05:57 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4BFEE202844
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 14:05:56 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=O8redyYd;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BU8W8V35;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793019956; a=rsa-sha256;
	cv=pass;
	b=Y2je4Zdvfqbrw1CCzAtWwlzUKVefI8O5gCFpgaOIQWIm85o9zndQO+p4Ffm8l2CEFhAGns
	wUeezwld7QFUppG7rhXPSr5zgSxj8ag6d3omK2MJ0cPDTC9o7BEqNZ8hWPW+eW2Wya7Bos
	OSo6C00Q5ifaK9qk/l7E4NUb9Phn2Q+ck74rXFp6yWEfplZqgaO/4GispGKxc4raEofIU9
	Rkm8aubDOhPbqMyRJDMQeyc2FoZZVCttB/YufWdYXH19mSWhPJv1UH9wmnn4+VuTx/XvNB
	e/a/KN+jCTaxra3XKI1EikZ/tP4n1/iJ7j19lYMqby+yK+87WfsOBADmkm51QA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=O8redyYd;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BU8W8V35;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793019956;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Sg1SnGerHveRUJH5HzVnLlNzaNlPyAyLegbkgQERevk=;
	b=DKs6WNbhA8/RDw8gEz174PThVhnb6NfsY9jNlQ+odxrRPCToQ3FK/xNIhXxqINCL/uJxaY
	Xl2c+rm+RKv8nTYlxKcLpUPWgBCw3uPUBoqJ/1us14OD/6YDpkXA5NQPQ4R92K5ddqBPby
	LABLFw24YuUNIbY3eRi7lo1I2TI1NwuJoBCh7PYDXF6mrfbzC0NjHCBYbBLZOLQwNb6sXf
	HD8tYwBUMwE88NHCuBeLaoW1gA6pS309WQGW6Xl9mEfG5PH37qA1sdo2taUbQ2+yYUHlSb
	4Dfk+Qsotdh/a0pNbh9XEEtKqw2kshY78BuERJB+xFxYJAefRyTvzx79GzOaZQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=Sg1SnGerHveRUJH5HzVnLlNzaNlPyAyLegbkgQERevk=; b=O8redyYddcBELR
	zY8OGCjw/74zY3IvPf8rhFXTnX1UtPELqLd/WF/GolKPWP4uZlQm9BMspd/ZGaUZW0e9dYkhOlKIf
	BAbVoa3rxnO+W+EeXE/uD21JhRW6mRzBn3L7SdLH1kjeVmqoGC8z3aswxZmNaV8UfWIODFUQtW2Ku
	mPAZoEfK04og99PmBc9hUkDvwCDuW1CY7j+ao8+Ko53DUrYB5qRugmHIxS5CWyK3MYgMNRty8gXpY
	THkSLuv0N6+9hKr2Wv/QGNIeDBu+dBbXO/N9HgOsu21DQuchGgeQ4yj31siDkeLlLwz5FIQGE8tyB
	/EZE0frL1VvZTfBytaog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLKNo-00000002Z5C-3Vkt;
	Mon, 26 Oct 2026 13:05:00 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLKNl-00000002Z42-0pZr
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 13:04:58 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 78B0C2022E2;
	Mon, 26 Oct 2026 14:04:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793019895;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Sg1SnGerHveRUJH5HzVnLlNzaNlPyAyLegbkgQERevk=;
	b=BU8W8V35dpFa9wz/AkYT7QUEtTf8oNlfunbCYJ+1mQNt0T95FQMpU+pfsYCs9oP4SKkvQY
	xfoZaDNGswyvDz2IEy+dVX+wwsmNwhle4atbQz1IVq6wZcC1xbPOaQDwh4B2aFu3v9ZABp
	xNVGx7xDjSxLkktQc+uMTT4pJDp3jHSdC39hv0Df0XCDjj2aNM94wafaTPoZuCfjM6Pvur
	TbAjbMdePxsK4E0bAtqqEEeMQGKVPVfGoKG/6u5bbyuAOW1pQPZoyX/it0zLR6vd7RJAKD
	xMbtkpR5DLhKbORJ5dhzZQYYythSPIYXJcB5JyBLBfiC2lgL1UHzcFC3H+Fwzw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793019895; a=rsa-sha256;
	cv=none;
	b=PC10Q+Xc9mByW/QaMDGg9N53CQ7Hf17VdW9om1DAxfWdBl/OVPLtH07MuR45GXF2h5OXnW
	tqzkVnIQ1LpyWJw3M85pAoCK4fBNoUW1PHR8r2JBjoH3GojPCGHTkjwD9QYoiIC5Fx2Fyh
	WEpNtQbFJeLvN+FzyvEyJjZ8Fj2/xvOa2Kl+PHVAwCI3UtE3GKwgBCtynYJ7o0Xjpq9cGJ
	vNtktRYyntci/AbK7bjBOmbSGry++p8Aqv0Dst7WYaUppwtgYpQw8EzqfCv2jmcit/mhho
	Ak5tnqQzoGhapVQgZs+oVWIqQI6NTNNSn7kX0iIS6enlgkzUJH+ZfGDqeNJs+g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793019895;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Sg1SnGerHveRUJH5HzVnLlNzaNlPyAyLegbkgQERevk=;
	b=FrV0Jw0zstYZRxstQjBBy+dNuqMwFd2VCuNUB/d/9Fw203Y49swxi550lvfrXQ1ezhST5i
	18UnX15WiSbkz3EcPECG5FDIV0JRVfnsEfKov8zch5FUbWHcqYtBoIvBDysVG9z3m1tjIi
	UoudFuKekMLWcQmCDtUjWafioWrNKBUV15h9WDei/EoqAsQ86kzbBRa1qp4kyMv4948xPy
	aKJuDt6jhHaw05t0fn30LkT4l6Ima9ySFn/ju4lYXiLG0hAncz2tbrGczb0gOWT2JiErGd
	+TVKX41C1npmGb8n4tXHV5RWOkUZnqR+LEuveY/2zxY+ecZP/pELq+89xapGfA==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 68FFFFF946;
	Mon, 26 Oct 2026 14:04:55 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: jre@pengutronix.de, Lukas Wunner <lukas@wunner.de>
In-Reply-To: <20261025085451.2871310-1-a.fatoum@barebox.org>
References: <20261025085451.2871310-1-a.fatoum@barebox.org>
Subject: Re: [PATCH 1/3] crypto: ecc - Fix carry overflow in vli
 multiplication
Message-Id: <179301989542.204598.3773962505554260627.b4-ty@pengutronix.de>
Date: Mon, 26 Oct 2026 14:04:55 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_060457_396180_5939F032 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, 25 Oct 2026 09:54:44 +0100, Ahmad Fatoum wrote: >
    This is an adoption of the corresponding Linux commit: > > | commit 27b536a2ec8e2f85a0380c2d13c9ecbc7aaab406
    > | > | crypto: ecc - Fix carry [...] 
 
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
X-Rspamd-Queue-Id: 4BFEE202844
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
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 38gs5415jm64huhmcsgmtjsf33bdtdas


On Sun, 25 Oct 2026 09:54:44 +0100, Ahmad Fatoum wrote:
> This is an adoption of the corresponding Linux commit:
> 
> | commit 27b536a2ec8e2f85a0380c2d13c9ecbc7aaab406
> |
> |     crypto: ecc - Fix carry overflow in vli multiplication
> |
> |     The carry flag calculation fails when r01.m_high is saturated
> |     (0xFFFFFFFFFFFFFFFF) and addition of lower bits overflows.
> |
> |     The condition (r01.m_high < product.m_high) doesn't handle the case
> |     where r01.m_high == product.m_high and an additional carry exists
> |     from lower-bit overflow.
> |
> |     When commit 3c4b23901a0c ("crypto: ecdh - Add ECDH software support")
> |     introduced crypto/ecc.c, it split the muladd() function in the
> |     micro-ecc library into separate mul_64_64() and add_128_128() helpers.
> |     It seems the check got lost in translation.
> |
> |     Add proper handling for this boundary by accounting for the carry
> |     from the lower addition.
> |
> |     Fixes: 3c4b23901a0c ("crypto: ecdh - Add ECDH software support")
> |     Signed-off-by: Anastasia Tishchenko <sv3iry@gmail.com>
> |     Cc: stable@vger.kernel.org # v4.8+
> |     Reviewed-by: Lukas Wunner <lukas@wunner.de>
> |     Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
> 
> [...]

Applied, thanks!

[1/3] crypto: ecc - Fix carry overflow in vli multiplication
      https://git.pengutronix.de/cgit/barebox/commit/?id=ee1ddfaf4e91 (link may not be stable)
[2/3] crypto: ecc - Optimize vli additive operations using compiler builtins
      https://git.pengutronix.de/cgit/barebox/commit/?id=a6a5e2e775ea (link may not be stable)
[3/3] crypto: ecc - Handle exceptional points in Shamir multiplication
      https://git.pengutronix.de/cgit/barebox/commit/?id=7423e4755ecd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



