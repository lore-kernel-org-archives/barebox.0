Delivery-date: Mon, 05 Aug 2024 12:18:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1saunE-006SW7-0H
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 12:18:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1saunD-0007vk-Fz
	for lore@pengutronix.de; Mon, 05 Aug 2024 12:18:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8puoYo+nFOrNgHR40S4Lds0miOpS2IxoQxDnbGxbu6U=; b=AINh199Hp+9Z1MzNhZ56h30tnZ
	X4k3NL5PqDl6INy9ZjMASA1Q0QJspCk3KHmOJgo8jrAfWDx1grb4rDwHFw2aPTo0jY/gLo26H+3SD
	P68DA0ywrSM6aDF4rf8Xa99fI9O/1Jf63kdQ7Oz18whRlKkg77X9YyakFNSRGTkhF3F9M9feCWK2a
	wE9jq+L59J/A7ZoUH6nQIjxvDeJXHEeO9mNuRrPYd3jGh4OGwdw23TKJQDdRRd4hyqgz6jjpnoyy9
	S8mYL6sWihybn9/M15cq2SeglZj86ybzqG9a4fYy+i6ornwiw/KcFDf0p1nSsPBCEvsiKMvJUaahE
	IHdB697g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauml-0000000FSYw-0teQ;
	Mon, 05 Aug 2024 10:17:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saumh-0000000FSXo-0yap
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 10:17:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1saumf-0007rA-Rq; Mon, 05 Aug 2024 12:17:45 +0200
Message-ID: <172a6e01-2d6a-4db5-9d7e-6f8b6f41680e@pengutronix.de>
Date: Mon, 5 Aug 2024 12:17:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
 <20240801055737.3190132-16-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240801055737.3190132-16-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_031747_304059_35210AC9 
X-CRM114-Status: GOOD (  12.96  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 15/19] malloc: implement free_sensitive()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 01.08.24 07:57, Sascha Hauer wrote:
> barebox sometimes stores sensitive data in memory. Add a
> (k)free_sensitive() function which zeroes out the memory before freeing it.

Could you export a malloc_usable_size() from the allocators and use that to
implement free_sensitive?

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

> +void free_sensitive(void *mem)
> +{
> +	mchunkptr p;
> +	size_t size;
> +
> +	if (!mem)
> +		return;
> +
> +	p = mem2chunk(mem);
> +	size = chunksize(p);
> +	if (size)
> +		memset(mem, size, 0x0);

buffer size is the last argument, so this is a no-op. Please implement a
memzero_explicit operation like Linux does and use it here as that
doesn't risk confusion the last two parameters.

> +void free_sensitive(void *mem)
> +{
> +	size_t size;
> +
> +	size = tlsf_block_size(mem);
> +	if (size)
> +		memset(mem, size, 0x0);

Same issue.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



