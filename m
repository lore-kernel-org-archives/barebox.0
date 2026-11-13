Delivery-date: Fri, 13 Nov 2026 09:56:45 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRn5R-00AMih-0A
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 09:56:45 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A32A520581E
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 09:56:44 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=EB+rpdiq;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="Ui+Z2/Z5";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794560205;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=tCkqG8bss65X+BT7STdw7pj5aEpBEL6C8rrGmWsXz9w=;
	b=YF72vOVcOTkvm+RuspwovQtMoGjGKJBEL7RfR2mLgx7X9l3B/w48HjPtaxZ+jlpk7OtHSk
	7I/Zxw0vIMenzRhkheWFcPIClWRCD0PZiw/0qRwSLvif6MRagb+lstrteRi6UPEHlLx6UP
	znLLQOh3suahmWEvTXW/httSYLT9OZn+ecGbaDA2kwZ3IXOBtKyQXJnOH127O8TIxs0OOS
	0sT26EwxZVddz2wCAwcJ1x5EErcDn3tjV1L2H/7TYhBqdjX99fsxRXNhSrMBsmZW36sc5X
	OTPyzDsGbzl0um66B3g+TyVcV6PhM6fYrCbdfGCCY/JDaHkkAGKk3poKJGnj6A==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794560205; a=rsa-sha256;
	cv=pass;
	b=fqW2LZVfTNmkF3tPTfEXBR6n4Ycyaq4fhM5UEonotuToazusKTJo5AuYEzKrX02g+T0eYm
	xMc9Q0k+rb842oviDERDw//aaOSc8xiqwOjPlvqI91f/4vKtZ9lf844rkWJyAQgDUq1/QV
	ZzTkPq4vIKnEjMZykY8sYbPissxMMiC3rbjVQOVelBUrVraRKgYk8ZCp4+sM6JuP5o4rMY
	HQgMHd+FP/ukiLS/1dlGTePt21Yy6wuVXEf653vx5rscFPYUX+j81bteorIeg4jey7Hy03
	7NBgd62XwWJyKyf3SdChLm/6Z98vAfWcFIN8Nq+3rk0vMbu+VyBFwFJ1KJ0qTQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=EB+rpdiq;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="Ui+Z2/Z5";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=tCkqG8bss65X+BT7STdw7pj5aEpBEL6C8rrGmWsXz9w=; b=EB+rpdiqpcIK96
	L8ZWornBnWY0jxRvYMuR2inwJ3JlruMe8++/VKgsXi8QiD3aOAjIEdVaz9XKZqcPBtc4LhqojbFe2
	X325Ip6JYSbTCRhScjfia0uHiRQPNUwnUA7A/64OKR+yRReD7FfGrUY/s5h4BeGWp6M3Ct1f04lot
	l0OJqaOc7oYJKRtmZwN2/zYcrQNHRE3QH/V75pDJ8F+fKQMq/bkrqk0NpRJ6mou5enssmYxUkwoc/
	NXfYnMTUyqG7GT9sajxbWz9QuFMhPyDpTDPStNSu/ulcMlQaiFgByDywChwwZXly+TERs7w2Fe2Qo
	jBebJewDO6kz8Neqjfew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRn1h-0000000C9wo-1uix;
	Fri, 13 Nov 2026 08:52:53 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRn1a-0000000C9tQ-0hsv
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 08:52:52 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 289032023BD;
	Fri, 13 Nov 2026 09:52:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794559964;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tCkqG8bss65X+BT7STdw7pj5aEpBEL6C8rrGmWsXz9w=;
	b=Ui+Z2/Z5Kky+dwKrHISXFVygkW8pDb+Rb4IxzRZTPXE5QqSfuw1HKkDS1Iv7W6ZVidcxfH
	ye4ou8uSI0Hm25/bI7FYS/sP92ExBLeOVoBqnivfabOSGxN6/bU1xAKgiB6XD7o7EhUMlQ
	Jgq/ASvyMgtLHy/T8w6dMZHR/eqvfslKerV0zJ5oT7fW2yg7+V8KbH5h3iMhSZy0wuiTxi
	ioECNLGH6U1v9Z203OVwgH6XNhSPNvfm55YS8jseF60Jf1YISg4hEl1HoDfpjPkbM0TBWb
	m/tccqgcR7/Y35RAurdCP0WU2VCyb/f05VsoO7MB2m8vhlt61hw+97Kvx2Es/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794559964;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tCkqG8bss65X+BT7STdw7pj5aEpBEL6C8rrGmWsXz9w=;
	b=hD3mElksAfV0at7FjFhK7w2JRAEnOhlyIMBr8Dz8arBYU7HwNf/0XRakzRIAh1TqTwWOuz
	Gwb6xAVLwhWFwq92ry2E9Anzj1YEjDFXystUoP+unwX27W7vNSVJxZFaoTtqqM5/NoMPYc
	y3+7fRDTKYX/sZuHnwYe7YU1rihPJb/jo3NWQPXq0Q2nIqFb6rzfNtZVtGpfz0D8t+eqVL
	74DfRy5DvW7w53rSCBB88SlqhPVSsChUc3hwc4TFRlmdnlCknX9M+MmzWieZRNXZeC47mx
	/BZqV6QaJKS6mosh2eDfqPmaBg3PbkVFD3FkBS7XZqvc11I/Np19Ljxqw4lK3Q==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794559964; a=rsa-sha256;
	cv=none;
	b=Q+6WW90iU9qirAdb+U3LqcuG/7CpBxwl6o57M7FpxMls8olUzxoEDyAu+esaNb1bUO8vSp
	d27/5a2NTKwsVitRfZUV/IEP59ipg49eKPYGKK493McknRWIdeWBl/JOpkMSMAbQ6Sm5KP
	qXByQiUYN3jzG19Fv9qi1rOWc7ULcOhb3Tvw+DdA7zcHHY7a/tOPvE8zXT+6/26Pm6tMaD
	I+1rWkHnNgLyv8lGfcY6G831hU9tXADHXYYHYDGrFavrSo1XF4t8IkpWbrx8bUgCu3P7VN
	8UljMPmTvF7jjC/28IMTjTN2b8o1HFOIOZZX4FIyFn0lkrkr+803j201NfReEg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <966d4f5d-41a1-47a7-8c08-2ef74bddf0fb@pengutronix.de>
Date: Fri, 13 Nov 2026 09:52:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] boot: hand overrides on to nested boots and the bootm
 command
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20261030-devboot-v1-0-ab9dd3a92c66@pengutronix.de>
 <20261030-devboot-v1-3-ab9dd3a92c66@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261030-devboot-v1-3-ab9dd3a92c66@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_005247_576299_AF78C4E1 
X-CRM114-Status: GOOD (  27.63  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello, On 10/30/26 15:13, Sascha Hauer wrote: > Overrides
   are stored in the boot entry they are given for and only > applied by bootm_entry().
    They get lost when a boot entry boots something > else, like a b [...] 
 
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
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
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
X-Rspamd-Queue-Id: A32A520581E
X-Stat-Signature: jhhfw7htwegec93wzq7gqfb8i3wthh58
X-Rspamd-Action: no action

Hello,

On 10/30/26 15:13, Sascha Hauer wrote:
> Overrides are stored in the boot entry they are given for and only
> applied by bootm_entry(). They get lost when a boot entry boots something
> else, like a boot script calling boot, or calling the bootm command.
> 
> Keep track of the overrides of the boot entry being booted. Hand them on
> to boot entries booted from there, with the ones of the outer entry
> taking precedence, and apply them in the bootm command. 

I think the current design grew out of compressed kernels inside FIT calling
bootm_boot from within bootm_boot. As this has been changed now, some
simplification may be possible.

> bootchooser no longer needs to merge the overrides into its targets itself.

That's a nice side effect.

> 
> This is done in do_bootm() and not in bootm_boot(), which the Android
> image handler calls while a bootm is already running, so it would apply
> the overrides a second time.

1) That's not a pre-existng issue though, because there was no
global.boot.devboot yet, right?

2) Would an override with Android boot images even work with these changes?
It seems as if the overrides would not matter. I am not advocating for them
to work, but the commit message suggests they do. I am fine with them failing
with devboot enabled.

> 
> Assisted-by: Claude:claude-opus-5-5

S-o-b missing.

> -	ret = bootm_boot(&data);
> +	ret = bootm_boot_overrides(&data, boot_get_active_overrides());
>  	if (ret) {
>  		printf("handler failed with: %pe\n", ERR_PTR(ret));
>  		goto err_out;
> diff --git a/common/boot.c b/common/boot.c
> index b993cabf65..271cfd3a29 100644
> --- a/common/boot.c
> +++ b/common/boot.c
> @@ -187,8 +187,23 @@ BAREBOX_MAGICVAR(global.boot.watchdog_timeout,
>  BAREBOX_MAGICVAR(global.user,
>  		"Username used by the default environment to construct network boot paths");
>  
> +/* The overrides of the boot entry currently being booted */
> +static const struct bootm_overrides *boot_active_overrides;

I am not a fan of this global. I think it makes it harder to reason about
things, which is unfortunate when we must avoid this development feature
introducing a backdoor to override a verified boot further down the line..

>  int bootm_entry(struct bootentry *be, const struct bootm_data *bootm_data)
>  {
> -	struct image_data *data;
> -	int ret;
> -
> -	data = bootm_boot_prep(bootm_data);
> -	if (IS_ERR(data))
> -		return PTR_ERR(data);
> -
> -	ret = bootm_apply_overrides(data, &be->overrides);
> -	if (ret)
> -		goto out;
> -
> -	ret = bootm_boot_handler(data);
> -
> -out:
> -	bootm_boot_cleanup(data);
> -	return ret;
> +	return bootm_boot_overrides(bootm_data, &be->overrides);
>  }

I am wondering if FIT being booted by bootm instead of boot is the actual
problem here. Conceptually, a FIT should generate boot entries like blspec
and then one of them can be booted. If that were the case, bootm
would become really about booting the images that go into it and would
not extract loadables from images. If we had that, overrides could be cleanly
implemented by changing the loadables that go into bootm instead:

1) boot generates entries
2) overrides affect loadables
3) bootm processes loadables

I admit that will be a bigger rework though.


> diff --git a/common/bootm.c b/common/bootm.c
> index 2ad8c34bb4..2ed377da18 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -785,7 +785,15 @@ void bootm_boot_cleanup(struct image_data *data)
>  /*
>   * bootm_boot - Boot an application image described by bootm_data
>   */

Orphan comment

Thanks,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


