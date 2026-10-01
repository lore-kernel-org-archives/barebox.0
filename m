Delivery-date: Thu, 01 Oct 2026 12:21:11 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCDuY-008PJi-34
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 12:21:10 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8A0C7200206
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 12:21:10 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=eeybjtdu;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b="ZKw3HK/Q";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790850070; a=rsa-sha256;
	cv=fail;
	b=b+AbuMmpKaq33dWGYIZ03zv32wSol9zJtdUOZTHJMbQXKF4xH9JeTPb7K68JWhYqSYihj9
	sFl1zkPEEfr+oZO4h5E9xL95T5zXZdwOtUwP8smh2etrnZzGixVaoUosXe1PQFcnYOkcHg
	7RUqgNnYvKanvMue0Vpf01VGquINse3JHKBsr1i5I3n+LVK3Xr3BXzd0tJivOfNOeaBrKI
	HPKP4bm3gsGgqptCjayfU770W5Q9qIFNRC7IRGURzJZqJDp/zsz7iLDIBkSdv9NJOjqm/h
	N7Z+lTrIAKn1624xBXdTtQbgUejBA2EhuApdKyebOxL1PAukOYxGhzjBe9CYng==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=eeybjtdu;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b="ZKw3HK/Q";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790850070;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=m+yOm8S4GgB8T9wpkIiYSDN3B9ACgJLRyW+IqTGkPJU=;
	b=cFwyZy4sZA9R5X6GB7RaL9c9cOu/XesWLaGxPFV/T3MDzMkAI6gTmBOgdhn0Fqbd5fh9yB
	m8D1Q3tCWFrNPbf415EGFd1x1efuVYQbylFRZseE5AboIFqA5E1Iv+6AP1aeL+vbKVXq2q
	y3VtdGzO42t2iWRhHos6HgYu1oVJsR1u0qDdhdnrcwHr/jIhNBPTiWp3JxV8pIYvXcsvW5
	O+/DNauWPd5YZdrhu6JN6rFY91M4YrNmCWd1Rz6EGxCNMe3nRrQaf3NeLIuThlMx48s36a
	KDigZqYw7MpLdu1FXPHIjD4jQ4XGumqLc4gbPFoETMqRN7R8au+6L+fih1IYXg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m+yOm8S4GgB8T9wpkIiYSDN3B9ACgJLRyW+IqTGkPJU=; b=eeybjtdutE+l/I4yf+yvaanAlb
	rY/tQjWXpi6KkhCRJOUIJ2iFFAjqDjmOnJpajsSR4Co1KVUG2AXFf0prnjBVL9DOj3Zu7uPZKU9u7
	4ULtiZjudWXzKjy3eeF4bbZdXrAA5mM8uB4ofk85J8xP5zQKJ9CtJ0m16bcBUIwo+kHCHsohvH9ne
	UFrFq7V7TseYfzH0ELhQn/913IIEM5KdqiwK26zzUjScQxfox7+tg8qM+IlPBHky9kt2qSuM4I1RO
	Hf40ov2hvn5hXSM+8JQyo7zff/dRQbQ1HUcYgsD++SKnmKWB6KO5ALPg2U9papakv6ixl/yRnxavF
	TgHKdHbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDtA-00000008UdZ-1Lnm;
	Thu, 01 Oct 2026 10:19:44 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDt6-00000008Ucz-2FT5
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 10:19:42 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 366A5200206;
	Thu, 01 Oct 2026 12:19:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790849977;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=m+yOm8S4GgB8T9wpkIiYSDN3B9ACgJLRyW+IqTGkPJU=;
	b=ZKw3HK/QFZr/CBPtfhaKxt/zcg9YmVsOoP0fY6uH/rPizkveipAOIghcZQ6dA6kS8PQ7PU
	S4ZrNWA+RgWupixjiRPxibt6WHrnDleQkg780S4XBc7ffaGyhv8i0oBo5tIj6UsOEGGLfZ
	aG8cIKp4ea/dqPYnUGd3Ywj6PtprJ2WjVidKJTyICjy8ZpY0qQVIIVDQ86BLomLUnn+pbU
	lC+TLiNPQeY+8hFKgCBuHxuMU+laOkiITo3tqrkr0e7imaaxG0Rf9D9mqwJCpMwMQW/quN
	BU4RZnHILwG7T9R1TSTDHuXCtAJu+78qGgguDK9JJBotZqw0rkNyzRLG9P0oHA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790849977; a=rsa-sha256;
	cv=none;
	b=DXFNfZXJ21SyF8SKDxhA4pODtn2qGPkM0ou48GlfeB9BOOquLZ1pq7p3nO18EXPVEQuTn0
	IkFvdhN+k9Pi1NjeX7T5oO03SimxE15atUKozlRvG8/UOmppHGf0Hpr1eZn0ii2q7FRWZl
	3yb/+sRuLXAGfQ2rN3FO2kLRN/I+k7Y3BDSPduVcU0GFEnTredZWYfli07YnKHQP+wye+l
	UQMqfVxqPPSDl8LM8aCw4Gp6vgTsJyrks8z7D0XYouzegqww1QlHPuUAkJLCCDC4is8iHC
	4ccbExj5jfYnxSFmUBiJQwN/yy2PuYDDc2LA8ZwOvAc/F9ws7M/ShxZ386eHDw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790849977;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=m+yOm8S4GgB8T9wpkIiYSDN3B9ACgJLRyW+IqTGkPJU=;
	b=C6ZqEgDoSPzuixP5P0SoGSwTvOnYE2UoPpBpy0XA2Apx7Qv8DlH+QbuzAZZGaVUM4JFgTs
	DlOHoMmNb8ra10oFoOBfYW3HfxOsV907NF9Uuf/7fVTrHiDflugZse6r5B0swIrbZY9gGk
	MrIpQJfJ0wgX3nwTXGQuba2HwQHH9diu47PDKsEPyY9cNUdibZjgEOKCJ08mJ567d3WLAY
	Ng25w4lA0MlMQKNflw5z38uKOKPTdc+LMEmLIQRzLwkrIEyIDj+cQXV+Dwv5z1LcoYWc8p
	dt/Kx/CNFDh2c1NCBx59diLdNb8P38mstLR50TolcQthS+EDK1MqMhtOKDpNtg==
Message-ID: <6df2d906-147d-4e57-8fbd-b4951e02af90@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 2/3] ARM: rockchip: boards: leave moving to the load
 address to atf.c
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <5e5c848a-207c-45db-ad29-bf0b326badff@pengutronix.de>
References: <20261001-rockchip-early-boottime-v1-0-dd891bcdb74f@pengutronix.de>
 <20261001-rockchip-early-boottime-v1-2-dd891bcdb74f@pengutronix.de>
 <5e5c848a-207c-45db-ad29-bf0b326badff@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 01 Oct 2026 10:19:36 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_031941_015090_AE5A2308 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-10-01 10:30, Ahmad Fatoum wrote: > Hello Sascha, >
    > On 10/1/26 9:42 AM, Sascha Hauer wrote: > > The SoC entry functions now
    move barebox to the load address themselves, > > with the MMU enabl [...]
    
 
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-54.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_MIXED(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 8A0C7200206
X-Stat-Signature: afawbt6weoayhf8hkbhc4b1m41tic78n

On 2026-10-01 10:30, Ahmad Fatoum wrote:
> Hello Sascha,
>=20
> On 10/1/26 9:42 AM, Sascha Hauer wrote:
> > The SoC entry functions now move barebox to the load address themselves,
> > with the MMU enabled. Stop doing it upfront with relocate_to_adr_full(),
> > which copies the image with the MMU off, and just relocate in place.
> >=20
> > Assisted-by: Claude:claude-opus-5-5
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>=20
> Will an out-of-tree board that still has the same old pattern continue
> to work normally?

Yes. That board would relocate the binary in the board code and
rockchip_move_to_load_address() would bail out early due to
__image_start =3D=3D load_address. The MMU would then be enabled in
rockchip_atf_load_bl31() as before.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



