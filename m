Delivery-date: Fri, 16 Oct 2026 12:36:09 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHfIH-00EJwH-05
	for lore@lore.pengutronix.de;
	Fri, 16 Oct 2026 12:36:09 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D15A2201ADE
	for <lore@pengutronix.de>; Fri, 16 Oct 2026 12:36:08 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iVnPpaVN;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=LSP9CI1a;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792146968; a=rsa-sha256;
	cv=pass;
	b=QuzhBIyvZm4n6lOh73+lxtnxVAiGv6/t2Ucd8iCLnrg7g5k6C21fD0rcnoVbzoH56uATfJ
	GX/sOcvzB6n5xXvxplGMrNCvAVM+3DBahlgUgz5BOAY17CUQdr9lClGryesyKPadGm3Xwq
	0EK2DQNPj9pDSpb+EyO7J5F6eHcygjnhLmIBafqMz/WIIfaHqObQqmedyn4w77awwxl/5P
	JEpjDar2WypyKYhr6RyQDTrc5Z6WwBBG+z91sYVz8iQZ7WLIjTHbSv+1a3pSq18BunXgub
	GfLUGY7Oz/Wz2NDgEWlgIEJ8Bes0eAytx8FA6Com0atHuMWPxSE63phFGemYxA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iVnPpaVN;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=LSP9CI1a;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792146968;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=0gz/m8JE77HlcRWyeYMgAxI++QNcz5DJujpdUZ3gO5Q=;
	b=Uq8b7dDCCLd/QPE1fTIm7B7uj/NttXfrTN5Qpo6heBq8Ajc2IjegSuqqXXwy+WnwWtUsBN
	1h5enL4PInzNIhDPZ7xIPvwnIWae8M0+iAtGPQbGBdfMZQqfmnpylRhNA5heUun6V9E2Mp
	vdgFZYk7m04tjE2i1v3wm8qup6BTBz0IXdrLhDX6OkUtnddNHCtkmSMLtBKS3BeeBS+pYF
	FPSrT9KBvY3EDQZEWiJN0svQjNTGpLaVQ5eo3iLJqkDZl6hjEtbdsnfLNdvpkErFVbfK/F
	BXgIUaS5z7qI8OPfr+FnIqG/PgyzOAUT6xgn5gumlcNOfY1/XhzBKA5ctzWLqA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0gz/m8JE77HlcRWyeYMgAxI++QNcz5DJujpdUZ3gO5Q=; b=iVnPpaVNJv79rudjaet3ucBFgv
	sysctpMWDkK8OiU0bVPkKQfNlDpvKmUm1EQ6gY+A7Ju12ZpC6ICXoFw4DwfGhdRGFTIau1/sUT0er
	n0+hl3A3DOJMuTeR60zyotuuQkI/h4MlXAcsC2MVba6XEqq0pXDxfBzJK96ocWC924H7BLGPo92Bb
	OrjQFVlDuLo+FxcLRQrdxIiswLEFakFPIvA7ZDFmlBOVdmf3Vnwc+v73s39BXYq848PhtQIpxMeeD
	h61j/SS59CGpgFPhQ+Kr6t183cDZtVrmXkHO1Y7uUfxN/ljdTlXAthr0USw6IXct7PirO8MdXCBVN
	xrmoMKug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfHy-00000002ewt-2UYF;
	Fri, 16 Oct 2026 10:35:50 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfHv-00000002ew4-221P
	for barebox@lists.infradead.org;
	Fri, 16 Oct 2026 10:35:49 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B799F2027F7;
	Fri, 16 Oct 2026 12:35:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792146945;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0gz/m8JE77HlcRWyeYMgAxI++QNcz5DJujpdUZ3gO5Q=;
	b=LSP9CI1a/ZwBgyWOlfC8ug7EaUFliOmo9qsBgOBYOioqwMaoJhw/ElPyxkwnfvEns2STUy
	wObi+fSr6ilrOigoFz36aQ6vCtZHpMytmTeMjKlnBwRXkbr/pT9/7+aLMXrEv1tB9lhjx1
	EdXNwpDPhxB7A12veoA7yjW5Uas14eVqdtz0D1gYJ9s2yZr29/QOs5vBZGE9ZCC5WHtmEA
	6Raf/c7QzvVyI7irYRHxk6zmPRpIulFB1QUE3B5swPWYYMTuyM7ZaTwvGODK0rYI0ZGgJJ
	fcfX/7kYRiMQMdUnvI6keXzERN90bkU5OyblFZ054jx2Z5g7pzejvopCg3KCAw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792146945; a=rsa-sha256;
	cv=none;
	b=U2XbamWpLegR60OnyC8mkNUrTIev07Vrj8rTjVvRalww4iJUzsInWpZjYlLfALmPwCJoUi
	QS9G2SsPmfJHtCKbvcm93wD+ZnFWpsjofyLX1s0XNAsdDHTqtyrr1N4Pf86Ajhz9kqB6TV
	Dmmk5hobQgJwYVtM/gI91fLddgGARQqNw1tgDKuGvHQ6QBQqyUVNXlNq59Q1VR3w2PKSCC
	GvuqBlVrk+Dm8tP6nznqftUvJT/u3E5fcbLhd507YQVXUCYZUQRi+fqWChVBlBNhOCIZd1
	ti7sgit1gejjyOQ7ie2WZDQZUoAnvI7vC6S/1+ZUAv39RRNPY0Q/JtIxb/LI8g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792146945;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0gz/m8JE77HlcRWyeYMgAxI++QNcz5DJujpdUZ3gO5Q=;
	b=V/Ez7sIgsSLJRePxi19XACTnbXunGWrokjyJ7aShiIF2Yg++j6qBtix/ZHY3ItAhH1IYo5
	bRUKF3gbDFHeIjR/XifQZy3PJVBBCuHXobyEhH2HcfnQa/ykFG8KLEkRcwUjYB62B5pIFj
	NJBImUhVTFOPINsvBnxi+YvOG0sVvzMd3g7PcJgUUNbLq3rxmietsubEnA2DR8Hk3KT83y
	FTVALhxgFmMDKWI13TMI6sNIprTkYeVNQCfZ64qVuqNdsl77bBAG8iDFx31IO46AzYZ/p1
	zA+No6UHI4BowGygw1gIRCD63Fp5spI1su1IWyqGBsme8asSMyB6P66qCqulow==
Message-ID: <3e3fdac1-99af-4924-8a92-9925081444d6@pengutronix.de>
Date: Fri, 16 Oct 2026 12:35:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] dma: let dma_alloc() and dma_zalloc() fail
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20261016-dma-alloc-v1-0-31fc7afe3954@pengutronix.de>
 <20261016-dma-alloc-v1-3-31fc7afe3954@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261016-dma-alloc-v1-3-31fc7afe3954@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_033547_681368_213A93C4 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 10/16/26 9:36 AM, Sascha Hauer wrote: > Now that all callers
    relying on the allocation to always succeed use > dma_xalloc() and dma_xzalloc(),
    implement dma_alloc() with memalign() > instead of xme [...] 
 
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
X-Rspamd-Queue-Id: D15A2201ADE
X-Stat-Signature: tkiyympmjjce9xui15f9q3xmq6zrwujx



On 10/16/26 9:36 AM, Sascha Hauer wrote:
> Now that all callers relying on the allocation to always succeed use
> dma_xalloc() and dma_xzalloc(), implement dma_alloc() with memalign()
> instead of xmemalign(), so it returns NULL on allocation failure like
> malloc() does, and the callers checking for NULL get to handle it.
> 
> dma_zalloc() is implemented with dma_alloc() and already checks for
> NULL, and the !CONFIG_HAS_DMA versions are implemented with malloc()
> and calloc() already, so they need no changes.
> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/dma/map.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/dma/map.c b/drivers/dma/map.c
> index 806439a05d..7a476ed044 100644
> --- a/drivers/dma/map.c
> +++ b/drivers/dma/map.c
> @@ -5,7 +5,7 @@
>  
>  void *dma_alloc(size_t size)
>  {
> -	return xmemalign(DMA_ALIGNMENT, ALIGN(size, DMA_ALIGNMENT));
> +	return memalign(DMA_ALIGNMENT, ALIGN(size, DMA_ALIGNMENT));
>  }
>  EXPORT_SYMBOL(dma_alloc);
>  
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



