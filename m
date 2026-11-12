Delivery-date: Thu, 12 Nov 2026 09:33:32 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRQFQ-009yHM-0A
	for lore@lore.pengutronix.de;
	Thu, 12 Nov 2026 09:33:32 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AC5CC201A86
	for <lore@pengutronix.de>; Thu, 12 Nov 2026 09:33:31 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=NiEssQbb;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="cZqbgH/T";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794472412;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=xhP82YaBXp5GaicgMjkdRRerTxH3FSbdiKk8lZVyxeQ=;
	b=Bdu3Bgr3iUGseLxUJVXKuR4MI89XMQIrO309wAt3YVTrtmhFgPM00YwhXlUzWuMxydNe+h
	tEeiEfk9ULxyhDeqYz0bqre1H48oDcy9/yrdXOgCN3Z37sF2482BYFejgOEJpSWtc3EpmN
	flJmqwuLEqdzFD8E05fLwCGgtCYKZifpqzyq3SViU429Itay8DecF0juHKqc0JwLRnUdMd
	Q1gmBUHtTCd1aFxjrS49PRjLpTmQiktckIBsc1TNs2rdjFq7Ql9+YEw8jT/6zHewSDKBZ5
	/61uwK5KOJqxBp+/XxdnLRV27y5cBzoMVyFgWE39kTsM+F64dbyQYLx5BeaU+g==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794472412; a=rsa-sha256;
	cv=pass;
	b=NWlE0RiuS92c8+UNYvRbXlwa2moAyaXPl6BwlWYMKsmJ0wGITSptcAPjj3/0DmmqCwCoSf
	7QYlVVMj4MxzKjpMvKh5yG/NJyNzzNDc5Sczkl/SzAivTp6m9CVjsH4+1HMcBpM6AqUozt
	mYq2NIUFr0e+KIXNVv9lp3y8oSxOjzeyevpJ3/+SmTxu189lr9y9DBqY4z6nqeil4tHdYW
	q62N3eUXEOvvHAV9W9gSUikHKT9b753zW9vKVEBBScIRGxTAPJ5ylvryrnw/a9Qp6XAk5s
	eNkcIhAirNEfQA0LtaqC7bB47xIcg2QofvWag084Lyu8fR7qYRh2/8xbU18U/w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=NiEssQbb;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="cZqbgH/T";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=xhP82YaBXp5GaicgMjkdRRerTxH3FSbdiKk8lZVyxeQ=; b=NiEssQbbNLslvw
	utr+CzUD+Gz4esZetPerlCyZGYGTA6wHrGjbMAE1Hw43HN46sXf2TFb5+NDhU5wAeXDWpUTpespB5
	aHUuQ9mXfkRvgZ2stqhir3RN7omOEKVM0MYLneYYoFaIIUAIIvioFBB0g/IZ9nmYMSg4J+Z1l05F1
	jXzujXRHQi6SqmMLoPPgLPWkMggl+si7o/IjAfIDharEzAzbMlbYVUZ5cbQl9gVXBgQWu9LS9wsPX
	wsBWZL2yq/92e+nTcUJivVadzbqdsnG4n2vjBzY9/gPP2nDwcsq5DdGT4xpz7fs9fU0ri4FmNX905
	j5K3+XkhcK0+2qM41T8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRPbk-00000008yWR-2Fbi;
	Thu, 12 Nov 2026 07:52:32 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRPbf-00000008yV4-3tqy
	for barebox@lists.infradead.org;
	Thu, 12 Nov 2026 07:52:30 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 06FCC201A86;
	Thu, 12 Nov 2026 08:52:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794469946;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xhP82YaBXp5GaicgMjkdRRerTxH3FSbdiKk8lZVyxeQ=;
	b=cZqbgH/Tn3Uiy+8OX+G5R1sJ0Z+kxfUReOWniqj+w6sQtPJ66LxsLo0TBVZbf5QDioOa4L
	GZqQ1SDHt72ncMNNplwrGU5Y5XYB7FlRq4EyEXJyofH1xZTsHsz/dfZWdJAAowSKCokXaB
	juV4jFVdvNw0Ack+1Y936PpayiGlARlSPaGRqXw82j40qhb7uSF6nBs+ulljRqttfstSEt
	n3/d4aSZKWb94TZuXCl6BphtK1Cmt3Mcf+bDlg99wv0xZM8B+HPBXp8M0XTGOwAdN9kNEU
	NFanIfR05g2aTEnRNh/7PPCkVGiy2Ed4imUX5Z64lYCP0roGdk84BderU86KUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794469946;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xhP82YaBXp5GaicgMjkdRRerTxH3FSbdiKk8lZVyxeQ=;
	b=CINCnqXXnJoIsAwElqI5TukDDFXwBtokSvMShziwPyYlZOIsUKx/agOA5T8BtmA1LoS9Kb
	pdMdaNvt7uMsLn28kLPLHsUfh8l22YTKU84qlHNGsuAmRYrPwv4jIq/UR/l9OqA+Raqe2N
	Irv7XBTBTNjNnOQaiSVdCO7ggBDf9TybIdFI5NcsOA2YY0YmrOac8URex8K195/nQKHvSq
	42kzNFvKGQCwllJHm2UFkipy84GocFyRavimvZAvNxsGNNmLYMz4R3jajAkdDXUCHd0He5
	zAocLp8MCDGUPXgJvEgKbu9dIDkmYgmkeFDsAIv4MPnYdSyMJGDDUIV94GpdOA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794469946; a=rsa-sha256;
	cv=none;
	b=X13GngvnGxKX+Ys8getL1SkOgfm2yyVMC7MvBK7YYg2+g8x8r9BF7tygh6HIuwNB7k2Srs
	4bxaK5QLJBfBCZBOofwc8zI7r91FiEbF+SL7FpZk+d2QuAS4G7x9yVsru1A9VH23+m6jiB
	FT3NRxMQS8BB/b1rGexv3elRg/pfNNAV+xaO6R/Kn+grDhlSw/Dknb5R0DMu4hx1Fv16gE
	XyZ+coYj5cfXHdvwnGKzDUFdmmbL1823DkPBVFeGDWRCeW1uXnJ43Dd7A94LOV2UtKe70j
	vfL1vdHCKvpLOQdU1nU9tEp/WVGOcReTrNw0nYQOMohjBygkkc/FU25Lr5hL8A==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <9b8c30c1-6d66-4a2f-bee5-569d87361a56@pengutronix.de>
Date: Thu, 12 Nov 2026 08:52:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/10] bootargs: remove unused linux_bootargs_overwrite()
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
 <20261030-boot-globalvar-stack-v1-6-a03803e1100c@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261030-boot-globalvar-stack-v1-6-a03803e1100c@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_235228_420206_A27B3E4F 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 10/30/26 11:54, Sascha Hauer wrote: > linux_bootargs_overwrite()
    lost its last user with commit fe1e02cc68cd > ("bootm: add generic android
    image handler"), which replaced the > old ARM32 specific [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: AC5CC201A86
X-Stat-Signature: zw9bd78i8wtux9rsx3zidgfdo6xko3fa
X-Rspamd-Action: no action

On 10/30/26 11:54, Sascha Hauer wrote:
> linux_bootargs_overwrite() lost its last user with commit fe1e02cc68cd
> ("bootm: add generic android image handler"), which replaced the
> old ARM32 specific Android image handler calling it. Remove it together
> with the linux_bootargs_overwritten state it maintained.
> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/bootargs.c  | 17 -----------------
>  include/bootargs.h |  5 -----
>  2 files changed, 22 deletions(-)
> 
> diff --git a/common/bootargs.c b/common/bootargs.c
> index 6373d9ccb1..06623bb60b 100644
> --- a/common/bootargs.c
> +++ b/common/bootargs.c
> @@ -12,7 +12,6 @@
>  #include <environment.h>
>  
>  static char *linux_bootargs;
> -static int linux_bootargs_overwritten;
>  
>  /*
>   * This returns the Linux bootargs
> @@ -28,9 +27,6 @@ const char *linux_bootargs_get(void)
>  {
>  	char *bootargs, *parts;
>  
> -	if (linux_bootargs_overwritten)
> -		return linux_bootargs;
> -
>  	free(linux_bootargs);
>  	linux_bootargs = NULL;
>  
> @@ -65,19 +61,6 @@ const char *linux_bootargs_get(void)
>  	return linux_bootargs;
>  }
>  
> -int linux_bootargs_overwrite(const char *bootargs)
> -{
> -	if (bootargs) {
> -		free(linux_bootargs);
> -		linux_bootargs = xstrdup(bootargs);
> -		linux_bootargs_overwritten = 1;
> -	} else {
> -		linux_bootargs_overwritten = 0;
> -	}
> -
> -	return 0;
> -}
> -
>  char *linux_bootargs_append_rootwait(char *rootarg_old)
>  {
>  	char *rootarg = xasprintf("%s rootwait=%d",
> diff --git a/include/bootargs.h b/include/bootargs.h
> index 4a51e81173..93ec621ad1 100644
> --- a/include/bootargs.h
> +++ b/include/bootargs.h
> @@ -8,7 +8,6 @@ extern int linux_rootwait_secs;
>  
>  #ifdef CONFIG_FLEXIBLE_BOOTARGS
>  const char *linux_bootargs_get(void);
> -int linux_bootargs_overwrite(const char *bootargs);
>  char *linux_bootargs_append_rootwait(char *rootarg_old);
>  #else
>  static inline const char *linux_bootargs_get(void)
> @@ -16,10 +15,6 @@ static inline const char *linux_bootargs_get(void)
>  	return getenv("bootargs");
>  }
>  
> -static inline int linux_bootargs_overwrite(const char *bootargs)
> -{
> -	return setenv("bootargs", bootargs);
> -}
>  static inline char *linux_bootargs_append_rootwait(char *rootarg)
>  {
>  	return rootarg;
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


