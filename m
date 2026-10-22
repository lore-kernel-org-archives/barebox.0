Delivery-date: Thu, 22 Oct 2026 12:10:06 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJpkL-001ozE-1b
	for lore@lore.pengutronix.de;
	Thu, 22 Oct 2026 12:10:06 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6217F202293
	for <lore@pengutronix.de>; Thu, 22 Oct 2026 12:10:05 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=UmR5bI+O;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=eWN1KsZV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792663805; a=rsa-sha256;
	cv=pass;
	b=BIQfrFLTE1XCMfzf+nOjUOukag4gdjRUdZOxrBilrM/ws6LQacdOkWsJ6ugEoWN8Ar5dih
	dS7O5bW12doE7xsZk81vjHwGazPbREvaFHv2UsoWTjmc7Af9eIO44k0Yi9iVgNG2c+qfIb
	vBTBlgsxe571fldD63sjkao53mwoB2bAU7M2d/JLwzIX00nQd9Q8qRWfKCQKN9e0soaksz
	17bA+Bih8CdM6GQzSlRtrdhGulKVJJBdhKGyCStDtnNh1S0e8fxYTkZaW5zWqiTn+/3Asy
	6iqysvoXRL/jn51e5ut0Xw+R7yg8QYmNASj/MU4VtC6jxK0Ogtm6DoAFUewhTw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=UmR5bI+O;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=eWN1KsZV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792663805;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=3cO/kf+RRTO0aLj56uu3XV6XM6kxOfoVg543TcDivKc=;
	b=WJ6btdeVTQ4vWp0unaw29N7ahDZGI1vKvT/FF5gskW+qoWlYZMhCjajSI/19pntLaeiHI2
	Kub6+KKJwkgf2VkmjMaMZqRHYTZI9uIa05txmComWPiicfrzgaDyMJQZJASIyzWvtCgdY3
	xjwfbIm8TAlZzUNwiiwh73XrJiv5mq3gkwP9Wn+ZKtmrpt6r4QR2ar59RvJ7+tXOyFMskF
	0eyE2Mw9qJz50mPbvdPtzfgAEi0Xx7BWPDunZLC2wks/GzrouxIjuX2tMiO9uQgeO/oMK5
	Js+EDljeESR6KB3Uf+NKnaG47S+seZxKJUb/eBOUOfnwatqyaZOVIfAgTg7gjA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=3cO/kf+RRTO0aLj56uu3XV6XM6kxOfoVg543TcDivKc=; b=UmR5bI+OzO0KQk
	klDKlpeQ1IW3qva9TlWH8fL/n5MK4tDuIryDlIt7hjgciaeNmV11w95jq5MA6323VvYhoQt4mSI9Y
	a/K11rNXy0KAQBH6mfhaI4mbCgk6+iwtBEx/hRsY85ccJLb5EoM6iC1LSfrDWDOGiKBBP8HTal+UP
	FdFrP+qvn6N+TJcEwZylsoa05AeqZrBk/9HJh2OI/N/DFhWw8suVjmwoQS2s0PHy+H/cIOgFVo+5I
	hVkcOgUJwMRnhsSZEHOe0yokr6/zEJUl84I8DVImJG1FiCn3/u/GU2iWMIiKv/4VpupB0/0utq8U4
	yDo4eCYyqhgi0ijrSIqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJpjP-0000000DuI1-1EcT;
	Thu, 22 Oct 2026 10:09:07 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJpjM-0000000DuGe-0tbE
	for barebox@lists.infradead.org;
	Thu, 22 Oct 2026 10:09:06 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9603E201E9D;
	Thu, 22 Oct 2026 12:09:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792663742;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3cO/kf+RRTO0aLj56uu3XV6XM6kxOfoVg543TcDivKc=;
	b=eWN1KsZV1Qp8fnE+idH/sGbNCezoPRan+Avz6sY6mdSl6y1UpV6W6qtaABFe0FVT/bofoh
	G4oChlG7WUEFvO36s7M3QZiEEHGiD8iq/x28sWVBClWFLZH9a/pl+9G0xDYeLQr9e7qPid
	VrYcyieD/v053FsculFbY+e3c0juCsvbKpwgVcRdgtY6KUv1mLaXqnNTMAvi785NTG2qMB
	OIIfD86SERYH+ja0AMhD1uyhFRbCTka1SKGv/+vgC+2n9Eft97rEIiy3g2CijMSPSKThLw
	qXYO7f8kaxhWBR+8W0jhEXBbTWaScpnS0V5Ekbc50amyW0Ds0adeQs27e26eBQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792663742; a=rsa-sha256;
	cv=none;
	b=K5Y/zX4+zPtBBPk9uWUQpvXEFsAYX4TPna3usxzGTKQQo+jFInZQ2hJV5DBpyGV5xC367L
	OpJDQUHJNhG37/ZDmAStQmeqEIs0mQREmzDP24JPETJTYCRTt/6eF36YWg5rTPaaPJAm2D
	fUG+X5NePR/2VyQeX1X4IcUHxf/23CSDXtHYlXVpXfpJ84sd4WyJ5cpPditseqr5aNhnaR
	i6GUQe2SJLwHkM/cL6w7PU4jeIlnQwh6sNHTTHQ0Xp8MXQertTZ3HsRAGwRwdoIsIEkuA1
	3672j3QyJkiFZ4aLppEhs1IrlEp0TxWqeBeWKVnKCggFPO/2TapX7yiFqnWvCw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792663742;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3cO/kf+RRTO0aLj56uu3XV6XM6kxOfoVg543TcDivKc=;
	b=KuN+fy/Ca9SEfMh2wiyO0QPh+pUz4CYkalK6LctPPHUPiO0YXRi3KTeg6XLgdY1KNhNO01
	0z7cGFAb5S4rrFKvWfg/TRuXGqxWDbeSXJh4AUi85Lr8/T3WFshaKmBaQ3DkJ3QapKWS50
	o7YnuSJy+OvF0ib5GMNR9U5VQZTK70gor8PBUwvQxxZp9TMt0UTYWx77b6AA+irqJaPeD7
	xzRcJTwIoO2vaSdVgv6z9yiBQzloaRqxH1ExcecZqjk9r802Qq6Mjj7KuI4YtdrQFfLjyt
	Am4xvCPLEmZ9RBZdIlE38o+nyxJAByFUp2zKpQGWE6Q/i/js2DAmm8rTJtVSqA==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 80FA7FFACA;
	Thu, 22 Oct 2026 12:09:02 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20261016-dma-alloc-v1-0-31fc7afe3954@pengutronix.de>
References: <20261016-dma-alloc-v1-0-31fc7afe3954@pengutronix.de>
Subject: Re: [PATCH 0/3] dma: make dma_alloc() and dma_zalloc() fallible
Message-Id: <179266374251.1192486.15385455426987546348.b4-ty@pengutronix.de>
Date: Thu, 22 Oct 2026 12:09:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_030904_433853_4D655F4C 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 16 Oct 2026 09:36:52 +0200, Sascha Hauer wrote: >
    dma_alloc() and dma_zalloc() are implemented with xmemalign() and never >
    return NULL. That's unlike malloc() and calloc(), and many callers [...] 
 
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
X-Rspamd-Queue-Id: 6217F202293
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
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
X-Stat-Signature: ydzoucuu76h33nrrfdigjt3r6u5zfrsy


On Fri, 16 Oct 2026 09:36:52 +0200, Sascha Hauer wrote:
> dma_alloc() and dma_zalloc() are implemented with xmemalign() and never
> return NULL. That's unlike malloc() and calloc(), and many callers check
> for NULL anyway, so they never get to handle an allocation failure.
> 
> This series adds dma_xalloc() and dma_xzalloc() for callers that rely on
> the allocation to always succeed, switches all callers that don't check
> the result over to them, and finally lets dma_alloc() return NULL on
> allocation failure.
> 
> [...]

Applied, thanks!

[1/3] dma: add dma_xalloc() and dma_xzalloc()
      https://git.pengutronix.de/cgit/barebox/commit/?id=fbf187a7d59e (link may not be stable)
[2/3] treewide: use dma_xalloc()/dma_xzalloc() where the result isn't checked
      https://git.pengutronix.de/cgit/barebox/commit/?id=54aeb3aabe4e (link may not be stable)
[3/3] dma: let dma_alloc() and dma_zalloc() fail
      https://git.pengutronix.de/cgit/barebox/commit/?id=560334ca9ea0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



