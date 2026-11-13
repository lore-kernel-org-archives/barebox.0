Delivery-date: Fri, 13 Nov 2026 11:25:29 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRoTJ-00AOCG-0J
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 11:25:29 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id F283B20233A
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 11:25:28 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=U9z71kPx;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=fC1II4Xq;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794565529;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=z+UjD2hdB9yxKaZqKdyxVHQzpYxBtv23WeX0LfxzaIE=;
	b=TgytIyxl2/9154W20fQ1nSg+R//UkujH1Ft//AhS6thxuIr50b2zXEZWjLitU99qbexWie
	8kGRiKXJcCrwnxLzmQoXLoCN9rOCKxqzSF3WO5gkVeBREk5wLVrTXU3k3vEHpkSwcRi5ua
	AnAWRurplMQs0q2k8hXmrM36STuBi6mdh2cfXPWI7yN2FwmAftXqPq34az4dr8OJajPeSJ
	k6Ekc+QFPcHj6yDm88+UMbYAohIgm0bVdYil4ihtA4/hgJXlKC8C/GCD05WiMBAVA5hAHT
	FM10xWh4PTf3HVHNba82qj7NoHcx5pWgZXQv4/3fn5LxCybKGD09MIdMVx92lQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794565529; a=rsa-sha256;
	cv=pass;
	b=gSmMMS1Pf7Uw8H3UrAzkqT4CBY8gav3ZZx1xmrMNWjrSFsMOcS8oXknQVZkA5UNc7SeehL
	G2PWuCGCebNZTmA0BvMHVePSOJ8O7dhTqf92CPj/V9zAEpvtIfsncSrFW3P+/w3YfyWSOC
	djf/ogPTaXPV3RP8fo8GvAFKS+82IcoRQrE7dPann5/uCrho2tfYgH5E16hzmCMmZK5rjP
	VAb5MvHnliAGdcZct1cWmFJphKqCOJlMf+wTtRC6uXp9sIRD7XSjH4dwx4y6qfEspjEY6/
	9zXRF5mseG4QSiHwRppbhkXC92vphYe0vuEpA6YdeQ4xCC02p5nw228ixwmS/g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=U9z71kPx;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=fC1II4Xq;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=z+UjD2hdB9yxKaZqKdyxVHQzpYxBtv23WeX0LfxzaIE=; b=U9z71kPxRtFeIT
	nOS+NgV95R9w+sToSZ0zvuPyqMqN0wJ02T/e/Vap2RIecSPsXupSYWz+RUARgI0LRVOjvc1KDddCV
	G7kYL82q0M/2hjAJPiVFRXzx532Dw6pY0crTOcpF3Gg+MF4iDmH6qmkXOrkee36Jsaeylk+dMBvCd
	nw/5D1MMMb+yHRZSs4nOB1nDiuRXsPOXg1VRWJPG7Gr9msXgPM3zGXoWBwqIKQcBnGYBbohE9XUUj
	HGHVs61nFYm1cQBEwp872JwxlTFM0S5tulp+7hagkE/vlgNop1xYYOWbRwND6Vh91h3LxSns1DV6V
	U22ZdkcS5y0IfxcB6+kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRoPc-0000000CLT4-0O65;
	Fri, 13 Nov 2026 10:21:40 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRoPV-0000000CLPf-1fN0
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 10:21:38 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D62FD20128B;
	Fri, 13 Nov 2026 11:21:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794565290;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=z+UjD2hdB9yxKaZqKdyxVHQzpYxBtv23WeX0LfxzaIE=;
	b=fC1II4XqJcqW/iAPDyvgC45RjgWPR6BQyXW4Y34rQC1fJDQAr+HIcj6/Upn2YYi6Nu3o0c
	ZvpWCydjQKtDSUtvtNnh7nOEgdfa88//TWXKKUAbIJuyXd8ZaS43fgV5MC/YuBMz30j/lf
	4qvkIS8wvw6R3q/mMONGU4MqxsdH92b8+wevDVpBixxYw7u0ENxW9J7z/Vs2pIVbuONryx
	ZNdb0N4Izuhb5gd6zN1y6q9802P14AApQEE3NjtSS3KDmWOMe+3SGKiDYMddrQhxeSLsHY
	fU3JLi3Ztc/EydaRcRDuPvjOayMD7TwsyYua3KuccYSXl6olsXM07uqh73VbvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794565290;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=z+UjD2hdB9yxKaZqKdyxVHQzpYxBtv23WeX0LfxzaIE=;
	b=O03JFC/7CSDpAmXDubsDD+zDYdh6WZsAxhZbLfinrJgiPcT+gnS7erfv2YF7zMrd7Pztbn
	mwG+Jrpofv7uXVE6zkQxYUF18nL8RH7AV3c31ZQ39fL5x0EngWQuf+SltS1mGfUEbIY+5A
	/I9gCBf4dFT+2Jo5M3iF6GgigE8tWpd75yTpnc4X6jE2rm919NdOgq/mob8gvhQAa353T+
	op6oYVFjaPzjNzz15xmYeOgBBEIaBk5NlxAl8WtTrX9uGwWFb4eA6dUP7h78eDSeC28BEU
	EEDSTpnEr5lJDnQSUogN2l3+gQYNM2kMMvuQfDgC3RZPqAcCX8xTvDgzcsha4g==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794565290; a=rsa-sha256;
	cv=none;
	b=A74v0v6JSX+CE3/7qoUli5ZlBPnO/VEIbIm7JDzT+9Rf13EFyZYphgNiHeyE8vZdDaDNdQ
	j2+Nz4gLQGopksZ52YoLMOse9+3bqcTXchjZ0tcRPfl3PUH6fmcAqUqI6ERTH3++Hd+lxX
	ywnTmpRvhCfJYvnX+oDRzIjpjlRl2jeEPCBKsou5SsuwiH+wtzKWtqT3Bqc87XUE+5Z17c
	hzhRf9ncLLN4QF/81oft63XQ8WKxw6puuPfo7QQWP0+U0rujpAOW3WwCprVRs3HsodziZq
	ErHDkPIZSOB1CcZGNtFKCkOUD6R4jTvhV1/qizcYJ1TOFoQ/DRZcIlUbX6o5ZA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <4e9e4402-4028-4d4a-a712-237fb78732a4@pengutronix.de>
Date: Fri, 13 Nov 2026 11:21:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] boot: rename BOOTM_OPTIONAL_SIGNED_IMAGES
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20261113100926.1764058-1-s.hauer@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261113100926.1764058-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_022136_420386_5BACE081 
X-CRM114-Status: GOOD (  18.86  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 11/13/26 11:09 AM, Sascha Hauer wrote: > BOOTM_OPTIONAL_SIGNED_IMAGES
    is easily misread as an option that adds > support for signed images which
    are then optional. The option doesn't > add support [...] 
 
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
X-Rspamd-Queue-Id: F283B20233A
X-Stat-Signature: 3iu4hta1yhi5pbbuqb1ws1nzusgchtua
X-Rspamd-Action: no action



On 11/13/26 11:09 AM, Sascha Hauer wrote:
> BOOTM_OPTIONAL_SIGNED_IMAGES is easily misread as an option that adds
> support for signed images which are then optional. The option doesn't
> add support for anything, it's merely the opposite of
> BOOTM_FORCE_SIGNED_IMAGES.  Rename it to BOOTM_ALLOW_UNSIGNED_IMAGES to
> make that clear.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/Kconfig | 2 +-
>  common/Sconfig | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 9adecfd2e4..4cac59fa22 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -796,7 +796,7 @@ config BOOTM_FORCE_SIGNED_IMAGES
>  	  are refused to boot. Effectively this means only FIT images can be booted
>  	  since they are the only supported image type that support signing.
>  
> -config BOOTM_OPTIONAL_SIGNED_IMAGES
> +config BOOTM_ALLOW_UNSIGNED_IMAGES
>  	def_bool !BOOTM_FORCE_SIGNED_IMAGES
>  	select HAS_INSECURE_DEFAULTS
>  	depends on BOOTM
> diff --git a/common/Sconfig b/common/Sconfig
> index e5bfb63cfc..f7afb9c94a 100644
> --- a/common/Sconfig
> +++ b/common/Sconfig
> @@ -51,7 +51,7 @@ menu "Boot Policy"
>  
>  config BOOT_UNSIGNED_IMAGES
>  	bool "Allow booting unsigned images"
> -	depends on $(kconfig-enabled,BOOTM_OPTIONAL_SIGNED_IMAGES)
> +	depends on $(kconfig-enabled,BOOTM_ALLOW_UNSIGNED_IMAGES)
>  	help
>  	  Say y here if you want to allow booting of images with
>  	  an invalid signature or no signature at all.

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



