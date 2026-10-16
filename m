Delivery-date: Fri, 16 Oct 2026 12:35:35 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHfHj-00EJvA-22
	for lore@lore.pengutronix.de;
	Fri, 16 Oct 2026 12:35:35 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 76A0A201ADE
	for <lore@pengutronix.de>; Fri, 16 Oct 2026 12:35:35 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=i+rxkGkG;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=OGusv8V7;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792146935; a=rsa-sha256;
	cv=pass;
	b=NaAvrujLpQkqNih07bXR2o7u+a7jUIzxQn9Jow0FH0LxwMePpJLHN4FqN03TMLsu9QQIrY
	Wq6d1EKMsG2Ad8/bi0xKZLu+MIbsiU1qToKaUnDCST4bsO+ooWlm2FqD9/FNqn685cdkrX
	DUSYbzKnoYEXll+G2Y589VX0jn4jjoYX2Z5GvnzHBsQ/bM1G6mml6mqew5ohEEcYQbIQ6D
	ujYcgNg9e9zrtQIrv8IBUuHeUNCK3O7JrzZ9QOsPoOt5J+k/t4ec48PavhvOZC638Ve28s
	hPsdPU0Rq82Fqwv3cMbI/byDswy6C/w6NEj8jCI8LO5BW94vMJSkd4Vkz7PSYQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=i+rxkGkG;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=OGusv8V7;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792146935;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Na2BC9NXNOcWiJuV8O7uFeJ/oBCW4CtC2qbNs3odX5A=;
	b=ZoWVvC3Ij2lAAwnn+1/B57ey0xl7dfv7VTfwsuz0otIFhcDI5YedmfArm4/qJWxyNrcIGT
	wVSxAWINHTRfg0RYspVCaDWtSz1gDqwRisKkE3b9X4VVTl1+mqNjAqX5irZrJ8jydloATP
	8ToBOLgAopiW858lYD7g6KevLFtryaMJaZR7bmmXoaD1iCOqGFSUpuYHbkXwX73VWE4hky
	+uFBpQsKscQnpmSK5LQZ2PtUwf+gDBpKBP0qZ0yCtwk9heRYL3xNN9PZLbC1m2i9G/Ctmk
	oolf21s2R0nB1jGCuG0FGmUkXnRlMui0oNHM82rzOMKu3oD4l8fH7JtmEJCq8A==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Na2BC9NXNOcWiJuV8O7uFeJ/oBCW4CtC2qbNs3odX5A=; b=i+rxkGkG0UqZ7I6y61aA3BnxxI
	H052BVMU/CDmuqRR3nETG+Pra235cFrFcYxJJo1e5BqMqVq7nC9NLYWOCb93AYLqzPW63FRiw2YaT
	MV7dSIO/YWPV5L1+adAf8fEhhFenkUF+8PvXm/D7hGLnxjEbY/901uxeAKa+BBdKe00i5nfyH7RQ6
	AqZVKtD7mT2OQyanrRV3nj1adE2iO6jmsHKGCY56qY+h4nxL//JjsNw/9k7lONgfWiZlmjgJ08MBj
	5wv62T6DvVzJPRQWOZOaTyxpUqQRnfC6bjZ94DfXok/teMrSfnwpGjJPwwg3z+EevuJbdguvM1vMp
	/6+wKDjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfHQ-00000002eqe-21iz;
	Fri, 16 Oct 2026 10:35:16 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfHN-00000002epG-0k4M
	for barebox@lists.infradead.org;
	Fri, 16 Oct 2026 10:35:15 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1B7EF201ADE;
	Fri, 16 Oct 2026 12:35:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792146911;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Na2BC9NXNOcWiJuV8O7uFeJ/oBCW4CtC2qbNs3odX5A=;
	b=OGusv8V7bEE6Nb35LFVz2HBQStrqp+WFcR8tVn8yl4l/OieeASxC2krXREgniDPzHcvGjs
	O95zmGgAA4P/Y3yJ3UQ8QAmgMkLEdcz/1XsjGjDXuNIGw1wHgbryxf09wg9rdofUOQtylh
	b5c6EaFz+02/zU5BRgFISTndtxKhz4lQC4Ab40yfAlAMTRfS5uKZjSiOAG5py6m/Yzveo0
	a785VGizveGcaRa0DTHu8PSrmynKh2i+/YAgGyuYuqGLQlSN+rvWxUz1rBdg2rDSdpzlJ5
	aQNHsXbnIOXNg2ANwszZFLBZ44WKqmvD9AhhLuW08pCUHLboTlGWLxW5yCJsuQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792146911; a=rsa-sha256;
	cv=none;
	b=OYTZ9EJXYGpHzFZVw/bsEaYOT3OnUCI+bDljSCd0ldsWq/V8iRv/Cutuoce38DmsKBaazu
	6Bg4oBUFp8ukncR4YNqW2CNcHhwt4hidjsCv3gbNe3sqcmvJEYfPkVELgBMVpjnDeFW8LN
	GGBN2JOqGpeAO9PVS86gCFI2G9da9OLQNZa44O8I31IIE7CGuXXAwzORyzxAu/2Ha/Btdv
	gKADGNJQK4xx7tW+rxeHh1tq4lLx+h7jbSiXDw3psLkHit2CFEIbvgVZPTME7v2gd5jwhi
	dyWsroZo6//up/n/EAFGM5F7aGvLYkL2hf8TkrjXlbKiAJMUZiPbGZq2mcz1QQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792146911;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Na2BC9NXNOcWiJuV8O7uFeJ/oBCW4CtC2qbNs3odX5A=;
	b=dNZnDs13nSyks41DIO7yMgJFF0SmoGNFhN/2uXCs3z6McvuG46hY/4qReuVd83yOCF1ht4
	PEIlf2tu8GzwaCRmlKbq4UkUegMBTDoWwLNsUq58nMG53RBtgpv80PZSQ+7H3pWIklniP4
	cLU40o//jzc7+Gf+rmfFZ9UN962u/v29ch8r9TXIAQpOWaUYYmswV74OLBQ6v7deK8yXmt
	cP2n94rvrUIXQ6vLK8u+XEW2K7VzTPCVryPKK47NeiSL0N3W+7Mkps16gBxIShZZik/s3v
	NKTazHOyQokcOrw4M5u1f+zHSY7NgEIyMOAB2DuZk8gbn8yfpAMGrBB0NDKJWQ==
Message-ID: <033ea6b6-31da-43ee-88ac-525c10351d5d@pengutronix.de>
Date: Fri, 16 Oct 2026 12:35:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] treewide: use dma_xalloc()/dma_xzalloc() where the
 result isn't checked
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20261016-dma-alloc-v1-0-31fc7afe3954@pengutronix.de>
 <20261016-dma-alloc-v1-2-31fc7afe3954@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261016-dma-alloc-v1-2-31fc7afe3954@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_033513_378538_FFDAECE1 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 10/16/26 9:36 AM, Sascha Hauer wrote: > dma_alloc() and
    dma_zalloc() are going to return NULL on allocation > failure. Switch all
    callers that don't check for NULL over to the > dma_xalloc() and dm [...]
    
 
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 76A0A201ADE
X-Stat-Signature: eui3kpfgut5gheer9cs37ey5yq68o6sj



On 10/16/26 9:36 AM, Sascha Hauer wrote:
> dma_alloc() and dma_zalloc() are going to return NULL on allocation
> failure. Switch all callers that don't check for NULL over to the
> dma_xalloc() and dma_xzalloc() variants, so they keep panicking on
> OOM instead of dereferencing a NULL pointer.
> 
> This includes kmalloc(), kzalloc() and kcalloc(), so the many users of
> these wrappers that don't check their result keep working as before,
> net_alloc_packet(), and the two ext4 symlink allocations that use the
> zalloc() alias without checking.
> 
> Callers that check the result of dma_alloc() and dma_zalloc() already
> are left as they are.
> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



