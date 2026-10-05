Delivery-date: Mon, 05 Oct 2026 19:19:48 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xDmLs-00AA8n-0n
	for lore@lore.pengutronix.de;
	Mon, 05 Oct 2026 19:19:48 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AF903201DCD
	for <lore@pengutronix.de>; Mon, 05 Oct 2026 19:19:47 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QFvHupaP;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=CPk7h0ei;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791220788; a=rsa-sha256;
	cv=pass;
	b=FX98TK5XWhImO803D544RE+gIJLm8VwYvOxAXm6cinBgewo0o6YRaa5faXsqMPJVD7/MC8
	7d1AbjxxWNmNFqJD3QqBUt8hcW3xw29NxooxCwE6GZ0dnLN8W2glochMbq4LiYIbLVWdB9
	gMaJb17oMSniN2Bs2c4WqQZijpGXuAgd9OHbUIwI6ImUN8QhY2K/8Sakq0kFwi8DUr+MZA
	4lVzC8XEeD6GEPndLDkKOG83aITfTf+hkbJGOU7jzUflqN6siJs3j5//SBDWJlbzA7pZqP
	qhhoHp551W+RKj/j0TB5OuZqAIMzGI2qdeoqqAqr/NTZ3RQliKNpPCJs1Tv8OQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QFvHupaP;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=CPk7h0ei;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791220788;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=RtWldWq0nLF/s+Pg4kOrBnTCqtQ9HEyWqL06lGbJr1k=;
	b=FPcCBCUm/DCsIAMSguIRplFd2wzGsaEOQf9c1yOaGBnh4AozRqgRh++QJWbWWkKgIQXnoi
	fq0fYQ+SysFA1zOb39y3GkpqGI7rykXeBz5JVI39KX1PGedUnIjfbYS5ELjuCCmKg42k1X
	xEIcbN/BCa3hZ2+Xay+FKeV5p63+4mb2aJDd2WhpXM6UtgM4m/junDlAy7GwXErOL/HiZx
	/YyjAUdM6js9vXKdV2uMbc/kqHBBPm8mdm0xxyzXh7GUvzjdkJZ20wSqe3fq9CPaoJ4a6p
	ooV+3Jjn/5g7u/93k85hSJ4RsZ/Yty6xXzAx6IlzDsTZGcNdgSm/4UNcU5SNrg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RtWldWq0nLF/s+Pg4kOrBnTCqtQ9HEyWqL06lGbJr1k=; b=QFvHupaPYBaK0RieFPZLljkXEw
	HAyTxBKlUtXtaMRVhLyuFDsntlheYVaSJ0qIOpaPy1nvD1p84f7fyZTh4/NkmApW3V8vka/DC87tr
	y9FqU0cojypxUwwQny14brWJVu0d2teFNzpIYJWLvSaJ8Op0Iji7In0REeFz1xe8vUjNWM8QMIELh
	xa24oexNlIvgpw+sjJ4h4wUPdLexTx7w9895p5hIzvp3yHxePRBxVN3vHzYkjUyZ7q0V9bDvaM/v3
	QcFLjHBjHNGag6fZZlIAYFI20AhUreaj/w7lMFXzZLSEVcO/wWhUs3Z7qtF/Ype7GNDRO6K23wCHb
	ADvtE/qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDmKM-0000000GuLK-2bR6;
	Mon, 05 Oct 2026 17:18:14 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDmKI-0000000GuJr-3jb4
	for barebox@lists.infradead.org;
	Mon, 05 Oct 2026 17:18:13 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 627AC2018A0;
	Mon, 05 Oct 2026 19:18:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791220688;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RtWldWq0nLF/s+Pg4kOrBnTCqtQ9HEyWqL06lGbJr1k=;
	b=CPk7h0eiHFnGl+ZPxhRgpL9BiBfJDU+I8oiibdiB/LIv9bWBrg8qO6ci50sx87pD8SaDve
	OssqzKxAhzwGqAQouWLrSGUFNl7B+Ligkx9klOd1xWyktLYYtse663tMDQP4dqW1M47WRt
	+B1TmjRlgRd7Ur+XsYWkaK8RQzl9AOE0aMZ3ih0Ajx0jw/a4ST5TB8jBp46A8oD8b0MSIz
	g5Pf9IgocTewlAZ3v3Db8An0zS+cv0fNwoTTj2k+VHDiAYjR3DGnEnhyz1mAWD1420vHfU
	tWZHHvoN4xVHmdC29Ps1a5IszHIN67xsYYuzEhPe1h0AADwIOHm0CTuEppdZfw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791220688; a=rsa-sha256;
	cv=none;
	b=a/SoqFUX5f7a/r52ThuCl6r+LvopdVLW05zgOQrToyuVPTowADgdaBBBKrCfOa83vbXzvN
	8MRjVRfGPfqRDekymIQznpoDhXjfve5aD2fJzCc6PMgya2Qhpar//gKGEnSjCKta+MM+xm
	MKvxyG6s+5v5h5CJBMfFay4ripFoZmIqJHLHRBYcbqtR54n+8wQKku/enOY0VMndTiOQFs
	y4B6pKUpQSIPEjsePkWxe/o+i3EeUPtaqbBLlqLwu16O4KtxtHEY5mFVRlpEf1G1g48pBO
	+VlGQ6JpImIQnyP4+YHtgv0xCs7dU2PpLvrMWcWpdXkuESmQio/VaTNYqiOktg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791220688;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RtWldWq0nLF/s+Pg4kOrBnTCqtQ9HEyWqL06lGbJr1k=;
	b=ABg9LBPGmui8t1UXCe0xXBpRKdkfTtwf/i7sIHiw250FEyd4F5ONKHQzJm1NSrLOIK6GQN
	g0cCDKK7Fd/ae5oigRHFruotXvU2VFRm305xdEiE4mq6oeXw12bXtUWZg30niAKdd22omX
	1e5Jc9VtRZWcwpuB01VH5r5la2bD2liBMO0QQ7oxXy8XT2E4QNEw/wswogMvR2zmbktGh5
	JHVcU5Ww86PK4B+HRN1JrvzZmeqx2zvILcoJcbLDQecIkLzl49ECUnW3DEyObFMwc6bJH+
	yohQ/GXzXxIfnsLO7XaX+BwU3h2XKVJUR+6VQ2uCRMHYx3EoPO1HV4vI4pkffw==
Message-ID: <abcb8537-a3a4-42c6-a6b6-d8b07ea26cb6@pengutronix.de>
Date: Mon, 5 Oct 2026 19:18:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 07/14] efi: loader: bootm: pass the kernel command line
 to UKIs
To: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
 barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>
References: <20261004011958.3255011-1-johannes.schneider@leica-geosystems.com>
 <20261004011958.3255011-8-johannes.schneider@leica-geosystems.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261004011958.3255011-8-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_101811_091731_4BFBF840 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 10/4/26 03:19, Johannes Schneider wrote: > Only Linux
    EFI images get the barebox kernel command line as load > options. A UKI is
    a plain EFI application, so root=, bootchooser.active= > and the oth [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: AF903201DCD
X-Stat-Signature: 635aukq6axad5f3bewixh7sfrowq95di

Hi,

On 10/4/26 03:19, Johannes Schneider wrote:
> Only Linux EFI images get the barebox kernel command line as load
> options. A UKI is a plain EFI application, so root=, bootchooser.active=
> and the other bootargs never reach its kernel. Pass them to every image
> with a .linux section too: systemd-stub uses the load options as kernel
> command line unless UEFI Secure Boot is enabled, which barebox never
> reports.
> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> ---
>  efi/loader/bootm.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/efi/loader/bootm.c b/efi/loader/bootm.c
> index 18539565fd..8a83865458 100644
> --- a/efi/loader/bootm.c
> +++ b/efi/loader/bootm.c
> @@ -252,7 +252,7 @@ static int efi_loader_bootm(struct image_data *data)
>  	int ret = 0;
>  	void *fdt;
>  	int flags = 0;
> -	size_t size;
> +	size_t size, section_size;
>  
>  	memory_bank_first_find_space(&start, &end);
>  
> @@ -266,7 +266,10 @@ static int efi_loader_bootm(struct image_data *data)
>  		return -EINVAL;
>  	}
>  
> -	if (filetype_is_linux_efi_image(data->kernel_type)) {
> +	/* systemd-stub passes the load options on as kernel command line */
> +	if (filetype_is_linux_efi_image(data->kernel_type) ||
> +	    efi_pe_find_section((void *)os_res->start, size, ".linux",

I think this will complicate matters, because afaik systemd-stub expects the
selector for the profile (e.g. @1) to be the very first option and by passing
all options as-is, we complicate being able to choose the selector.

I am also unsure what the behavior is when there is both a .cmdline section
and extra load options. Did you check?

Here's what I had in mind (I will send a v2 next week or so):
https://lore.barebox.org/barebox/20260826121956.2936414-1-a.fatoum@pengutronix.de/

Cheers,
Ahmad

> +				&section_size)) {
>  		const char *options;
>  
>  		options = linux_bootargs_get();


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


