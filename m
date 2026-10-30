Delivery-date: Fri, 30 Oct 2026 08:46:12 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMhJT-00549Y-2y
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 08:46:12 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C18FF2016D6
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 08:46:11 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=bBaLYaKr;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=gsJDLecn;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793346372;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=J2hDrk5I62tdlIXNnRwBeNQEGvoCBAubHTv5cAZh5cY=;
	b=MTfXX0KklnkgCVdgQTKfl4KiDswOSNunu99au0l0shnX1ORsIu5iFPvFfLnX/FfmM2wVM3
	f+4iWqVimz8jS350CzSOip9wfbEKFeg2W9dAR7OJ3Ia8/6O+SP6iSSKNj53m2Br0ALzZmi
	tSVFkj9a0kaOhBFcF/PvXN/WG7LYCOjF2JOXeHK7NT5MZV5+OR6XCXFohISprpT6G1AZKQ
	MoxDQWxxTuTNIgsKlbwrkAiRZ+3RwfhHquQ7eMA7sJwQjXosn+NRF3F8A2RL1iVH04iKpw
	NBu/SrmFcdtYfgziWXYSADFH21lmVRBk8BSD7sA31oTddzYPvQTYkxoJLVyYzA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=bBaLYaKr;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=gsJDLecn;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793346372; a=rsa-sha256;
	cv=pass;
	b=C3MeMw+zlmgHaa9bS0mQV9p3IifGsBlJg8zjjM8kjTmYicD7vLYRht48AfD0uoBaq0hpJ1
	VarkzP9QJekioIXk15WOmNZeGPCUX333mP6rFqrm0We7dNo32SzeyIZN9TlyujNY4YtF7L
	JUqnszMDPhoyRYcJG3IRtfX53Em/nCHTAJVSxHr5C6FK/0WHZwEwBEkL97EDYrWuq8mIKP
	vYjktDbXuFSttRZL086NUvPSt4wv9WTXnis/DHuMSQZTEepUqW85mhTgrgaHflFW+HdZ0D
	LjMYdYD6VoeaHBb2k0XgSDhEudJDW7EDYRT4W18cCe8lDKKnJgWj+MwtiehZgA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=J2hDrk5I62tdlIXNnRwBeNQEGvoCBAubHTv5cAZh5cY=; b=bBaLYaKr6t4oYi
	V/139Wk98I/tiCMp08ppamaNfc3NDnEJfTjIGc4VQO3FiuiahMlst0C0Eu6mJ4y2dkplQjnJl+fOX
	3oGjJLdmXClqxXHp/lQveD9M6hyCCOlzPY4GZmBiApgafGLMtwm8zDujTnz9RMsPJ97tCPz4cgbW7
	2J0Cqxnqq3GZlrZ2JLkAkrgp7CYfkEuIv7+xOao8Bco66syafL/6pPNg6as03HIEiv6NIymgM2PWe
	WgQU1fPTjXlpWxXxJykCQ71yrAEHeg+y7nEyzZd3t4G/mDKueMlNbdtNGTNdiDvdSreawhFxFVqZY
	+qyLOLrC90hHq/l1iP/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMhIU-0000000B1Pq-22NV;
	Fri, 30 Oct 2026 07:45:10 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMhIQ-0000000B1Oj-0v98
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 07:45:08 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B90A62007F9;
	Fri, 30 Oct 2026 08:45:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793346301;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=J2hDrk5I62tdlIXNnRwBeNQEGvoCBAubHTv5cAZh5cY=;
	b=gsJDLecnDE98VBOESHY/38IQo9s6Q2o/dE6EDQG9YbH4Y9mpZb8d9pw7Bkrv74kcyeeI2o
	QWEvUe/+vD+WEB8o1K8O9GVHJCg4RR90YMVJrmtveBqBc37eZKqLZSkI7/4QGanBxTQDxm
	ut1T8rTxSoQYuJ0XiuASo383P72C25z0MMW8tjHcZK9PznwajJ0dXZoSOf0hIGj7Kl+74C
	SP/FFvi1byfvj4Y2b1fMchB94eEgU9gT8Ort+LScQCHkXu/ZAOsGypIZAxpI92FBdpaYKz
	sK395/Yvis6KnaaYDhN8MlURdjABVI1gDWaVwYzZ1SpBQfsAYi3Nbu8tHMUTVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793346301;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=J2hDrk5I62tdlIXNnRwBeNQEGvoCBAubHTv5cAZh5cY=;
	b=d2/vMjPMoArZORRhDp+iLEMR8FOoQRgFTWacHJfJ5jBNZg0YdktmXkczlXg54LF/9I+9ba
	nKIKNq3WXVvoHCOtxPJIxrdi6AUXci64cEL6AXCPzjMEnf5lXozyStlGjfC7vlEURiwJlt
	lkdRJLZzeLhphLUe/9UzSGf4jV+e4Q/q2/j6CRgVz5BMHC3RgU3lUcT4WHrxtpt3dmczO9
	3M7z2VDvEXd/bLrwCgUG4Eoe4XdhtT7rUawA21obip4HJL9gj5FZZpC00nyBMRjlzU6yCI
	sxRcajNYUBn9ASZAF54fMtUr0nd5rbLESAkHpRUUGg9uRnNyPGmfRNqkGmm08w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793346301; a=rsa-sha256;
	cv=none;
	b=I9zv2S2Ah1Veit1La3TmSxJMdnJOXO38ifXFgpNF0msk/xUkoHLDbiUiFJOXcfsag6+5Mt
	EiJN75JzpactxpDEkR6p8wQPCAsqJUC9ame8UXYNDieVQqsbdU63cUQoZeWQ9NQ3R7qvmm
	xicaieXtpTU0zRwTp4JKEcohQBW4L/5VNziiZ1kmPTnGm+Ux0ReRgw2hDouvWCDXpqn6kR
	VfDWdabbA4IxPAC5QRBvinm1MW3JnrpsFyyO+wg/KE2hKS5q6FjLFD0UbrJrnjy641oCOr
	rg9jvLZlCFzP6NTEPRvEYhczB1L91Kw0W9Hve9rbb6aEfu2U/3dAnX7YqEICeg==
Message-ID: <dc958f60-8ce9-433d-b697-db0e376a926a@pengutronix.de>
Date: Fri, 30 Oct 2026 08:45:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] bootargs: fix double free in linux_bootargs_get()
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20261030-boot-mem-fixes-v1-0-6d64824356eb@pengutronix.de>
 <20261030-boot-mem-fixes-v1-2-6d64824356eb@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20261030-boot-mem-fixes-v1-2-6d64824356eb@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_004506_516373_B479A13B 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 10/30/26 8:34 AM, Sascha Hauer wrote: > linux_bootargs_get()
    frees the previously generated bootargs before > building them again. When
    no global.linux.bootargs.* variables exist, > it returns the [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Stat-Signature: w719y6tmimu3imswjenkjxecpaykaddi
X-Rspamd-Queue-Id: C18FF2016D6



On 10/30/26 8:34 AM, Sascha Hauer wrote:
> linux_bootargs_get() frees the previously generated bootargs before
> building them again. When no global.linux.bootargs.* variables exist,
> it returns the legacy bootargs environment variable instead, without
> resetting linux_bootargs. The next call then frees the same pointer a
> second time.
> 
> This is easily triggered by fixing up the device tree a couple of
> times, e.g. on sandbox:
> 
>   global linux.bootargs.base=console=x; of_dump -F /chosen
>   global -r linux.bootargs.base; of_dump -F /chosen
>   of_dump -F /chosen
> 
> Fix this by setting linux_bootargs to NULL after freeing it.
> 
> Fixes: ee4cab9e5874 ("booting: more flexible Linux bootargs generation")
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

I have the same patch in my UKI series[1], but cherry-picking this
directly to master is a good idea.

[1]:
https://lore.kernel.org/barebox/20261026121150.455510-4-a.fatoum@pengutronix.de/

> ---
>  common/bootargs.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/common/bootargs.c b/common/bootargs.c
> index 36528b8b58..6373d9ccb1 100644
> --- a/common/bootargs.c
> +++ b/common/bootargs.c
> @@ -32,6 +32,7 @@ const char *linux_bootargs_get(void)
>  		return linux_bootargs;
>  
>  	free(linux_bootargs);
> +	linux_bootargs = NULL;
>  
>  	bootargs = globalvar_get_match("linux.bootargs.", " ");
>  	if (!strlen(bootargs)) {
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



