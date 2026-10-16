Delivery-date: Fri, 16 Oct 2026 12:33:00 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHfFE-00EJsK-1j
	for lore@lore.pengutronix.de;
	Fri, 16 Oct 2026 12:33:00 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 03619202374
	for <lore@pengutronix.de>; Fri, 16 Oct 2026 12:33:00 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=egv2bmAn;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ISiU+zVS;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792146780; a=rsa-sha256;
	cv=pass;
	b=J7iRQBftpYqLky1QRZ/1STPxJNENAdZ2C1xNRUNW9MSEG1WrQvo1W7wDvuaePQ3pEOvYN0
	h3QN6c3kKqrhVKHImQSbHuTzdJBK/fHgn3KXxy2lmUl7X5PX2iHZHhrIDeQFpbjxluKH3G
	lLPOFnNwOm1WByIrGFAlUlM/tDvw1JZ5jm3MbgC+sZGGYClMNWj+enxpw1D9zlZORjT05I
	g1jaomvCr0CC7XEVExeyti0MmtkurCeMs8VMp8Kpv8p30cSXUABrweSJIKV8sYL4kpmbZP
	V6WNMf7nmuw5weXcBZYp3V2kiWdbEnIGV1NDHnitxvNwcH/MFN8csl3Agqxnyg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=egv2bmAn;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ISiU+zVS;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792146780;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=tKdqeWvFTvL9BEGrxHQVmqhBLqwv0VXq9547IaBSgpQ=;
	b=L5mxahsRxtr84NwjF7EsJTg14MXBplFQFT53VZzGYnavUL64gBFzKu2iStpXJuwHJxhG1l
	kvCmIZaoEA3Qurr2TwozH7z7Wwj/OHTpoJCj/wnwi1tcmoT/W2xgNEkIp660p8E6bZ24YT
	tO5y8y+2iz9gkcu6o8ycRXrk4Stac4wKlj1M9UOm4Z6C/A3i+WL+mddOzy1du+OEXRGPBj
	FtACSRzCGFPBCovAOG44Gncj00AqKahMA9mU/CSOoi0vVhYLnuk03u68XBb+tQwg00btdo
	PAdz5tMJOiPsK6BfGelSuQ5i2Ml32W1gVnpCKmF3rJ1FdEgDP0wtzavp1Abo/w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tKdqeWvFTvL9BEGrxHQVmqhBLqwv0VXq9547IaBSgpQ=; b=egv2bmAngrYQ6Y+IHcvh0bQsKk
	cpaCfszq+eGwiFGvgBvhQX5NeAGrZ5kPUkMbggVOihoWQcTsPsTrse1c4SK7g4D8RZVJRDVyrIDNH
	PHSo+WQt5iMz/oZ1iywPALURZGR7HX5FaxjPjBePBQmyPfNZwT+LxNPm02Dp+v/smx1Ot5gQ7pKjG
	ePxM1KNaKOKRlJo9p+GJKwWTydJxRaSxItXiNKXRQVyE9dclDST/yVk4/+ZkQq9e4ukCZT7aZWmNO
	mp8sY+qsD0GeFhg9HS+8CRTT1qY79gj1u6LsrHWOgZNfUwpL3/By/4BHlwinNJuAqW3E3lMk0kG8b
	M+eCKKww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfDs-00000002dRC-1WUF;
	Fri, 16 Oct 2026 10:31:36 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfDo-00000002dPO-3l3F
	for barebox@lists.infradead.org;
	Fri, 16 Oct 2026 10:31:35 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1B73A201765;
	Fri, 16 Oct 2026 12:31:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792146691;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tKdqeWvFTvL9BEGrxHQVmqhBLqwv0VXq9547IaBSgpQ=;
	b=ISiU+zVSVpqTF9N1GwqHtG5dWiw7a+zXIsQXrehyzOPNDFOTENZ+Lfhgg7zCXVxLbS86kA
	yGE75BDzMxj55TYPpGlsfLIjW/aNW/daIlqpIi5daOt34USsvmA754yOIjc7I/LrcISgX3
	VOiGvTTOgK269YKpAjh76ZADil3pXZVq3Hz8OqadyiZBUdNGqqv8RkXo2MK551hqo9WVNE
	/c8mW8H7h61nbVz2ItQYkKmPYOXtzrg2PXeL08C3l27HtH7AOWadrwnxrdtnQ8a1g43hfG
	A0VuU+A5L0Ag/9RhIIBdfZHWemJxGKW/j7g/fIX3kZWOI3SMEvfzp1rNFnWLeg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792146691; a=rsa-sha256;
	cv=none;
	b=Wh2gxWOWZA3SIWOVnGQXo4gDhd41S/7ko9gDJdyfk5yQsUpTTd6+FEsiL2FIgNPQCNU06R
	t1ha1kMtoVjNp9KEoyKeDU1tdZi96PNV3NOW0Cs0fVSwbKBJOOuTnYvXA/rDLHPqRoQyIc
	hRH0HdRTzYa63tTmWP5/uYrGYnYjMWgAXciXJ3n6mMGC6UCQqRgHJb4ZMojUMm9K6AtmAe
	10TPIN7kUEUGc2a9mUEtnU8Gc8R8hD4aXOJy0qOt8899EpzuV0ZSZcs0JP6QlBzF7CHXm3
	ZUm6j/BW6sLHwN/2DKKxBhK3jEOFTUttpitn+CbEiLgPJ1sPkEgBr9ckjB1ZyQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792146691;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tKdqeWvFTvL9BEGrxHQVmqhBLqwv0VXq9547IaBSgpQ=;
	b=UZuOCIFgT0Wx4uSGLQW1Zuscac/b239F0aWTJUT1Ry3U0xNs/W1t+2lB6pBAxGnOzOLhzA
	KsVP1pX7rNMA4SZD/MPgjukjTXtXvmg9Pe8BUMTJMEoV4bUkZ76uPhJPoOyvLOJR/f9i/r
	KwY2BTmjlS3zBRoGVhM5B18uFlgv58pqOzEbnoDEO7aU20TruLAn/kyt62LDX8JSsu2xa1
	8y9xQi1+IBXq4908dQ5MjNPfvExKndgQOHkGm02WwDzIc3lfisKdxtSSnicc9zNk2O3H6n
	IZgh44SN63x0kPSnrOSjtQg6/e0yttm6OJT6w75mVk3y/odJ2D3xWl6Uf7y7Ag==
Message-ID: <50e72463-4202-4dce-9203-144c109016d1@pengutronix.de>
Date: Fri, 16 Oct 2026 12:31:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dma: add dma_xalloc() and dma_xzalloc()
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20261016-dma-alloc-v1-0-31fc7afe3954@pengutronix.de>
 <20261016-dma-alloc-v1-1-31fc7afe3954@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261016-dma-alloc-v1-1-31fc7afe3954@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_033133_088325_7EA90AD0 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 10/16/26 9:36 AM, Sascha Hauer wrote: > dma_alloc() and
    dma_zalloc() are implemented with xmemalign() and > can't fail, yet many
   of their callers check for NULL, while others > rely on them never r [...]
    
 
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
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
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
X-Rspamd-Queue-Id: 03619202374
X-Stat-Signature: 1fmzqwqmkfiefgrjsbhsn67oi3yfnwdd



On 10/16/26 9:36 AM, Sascha Hauer wrote:
> dma_alloc() and dma_zalloc() are implemented with xmemalign() and
> can't fail, yet many of their callers check for NULL, while others
> rely on them never returning NULL.
> 
> As a first step towards making dma_alloc() and dma_zalloc() fallible
> like malloc() and calloc(), add dma_xalloc() and dma_xzalloc() as
> counterparts to xmalloc() and xzalloc() for the callers that rely on
> the allocation to always succeed.
> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/dma/map.c | 17 +++++++++++++++++
>  include/dma.h     | 12 ++++++++++++
>  2 files changed, 29 insertions(+)
> 
> diff --git a/drivers/dma/map.c b/drivers/dma/map.c
> index 11671f9f66..806439a05d 100644
> --- a/drivers/dma/map.c
> +++ b/drivers/dma/map.c
> @@ -9,6 +9,12 @@ void *dma_alloc(size_t size)
>  }
>  EXPORT_SYMBOL(dma_alloc);
>  
> +void *dma_xalloc(size_t size)
> +{
> +	return xmemalign(DMA_ALIGNMENT, ALIGN(size, DMA_ALIGNMENT));
> +}
> +EXPORT_SYMBOL(dma_xalloc);
> +
>  void *dma_zalloc(size_t size)
>  {
>  	void *buf;
> @@ -21,6 +27,17 @@ void *dma_zalloc(size_t size)
>  }
>  EXPORT_SYMBOL(dma_zalloc);
>  
> +void *dma_xzalloc(size_t size)
> +{
> +	void *buf;
> +
> +	buf = dma_xalloc(size);
> +	memset(buf, 0x00, size);
> +
> +	return buf;
> +}
> +EXPORT_SYMBOL(dma_xzalloc);
> +
>  void dma_sync_single_for_cpu(struct device *dev, dma_addr_t address,
>  			     size_t size, enum dma_data_direction dir)
>  {
> diff --git a/include/dma.h b/include/dma.h
> index c285b2095a..600b91c485 100644
> --- a/include/dma.h
> +++ b/include/dma.h
> @@ -28,17 +28,29 @@
>  
>  #ifdef CONFIG_HAS_DMA
>  void *dma_alloc(size_t size);
> +void *dma_xalloc(size_t size);
>  void *dma_zalloc(size_t size);
> +void *dma_xzalloc(size_t size);
>  #else
>  static inline void *dma_alloc(size_t size)
>  {
>  	return malloc(size);
>  }
>  
> +static inline void *dma_xalloc(size_t size)
> +{
> +	return xmalloc(size);
> +}
> +
>  static inline void *dma_zalloc(size_t size)
>  {
>  	return calloc(size, 1);
>  }
> +
> +static inline void *dma_xzalloc(size_t size)
> +{
> +	return xzalloc(size);
> +}
>  #endif
>  
>  static inline void dma_free(void *mem)
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



