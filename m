Delivery-date: Thu, 27 Aug 2026 17:09:07 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzbj0-007poE-36
	for lore@lore.pengutronix.de;
	Thu, 27 Aug 2026 17:09:07 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 880BA202427
	for <lore@pengutronix.de>; Thu, 27 Aug 2026 17:09:07 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=gw2pSiNn;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/OJ34OJcPrNlYykwSsqJ+2Lnx4Wpw7nK0FGkj8mCnGc=; b=gw2pSiNnketGotVYtHHWjlBh0z
	2eYB0VfDRVBKS3SmFZElbBNeeDsZRimPgrKYYHs96Y6d7Ou1lArkYOPpYssDJUwr4zMyIIo8cD96d
	Qp/xMh0PZboyjD9wrS73D1aPIqpUHCt+q96RhLTAzV4y//pSvUY7+cfU/jL3s+xka6yxbug+I4qdZ
	uu0djAGZSVe0teXSXsxDsaoIPVjPQ4mmApnEaEPPKy6MUp/9ApVyLjHX0gpgxRKTyQ1nhJWFg7pzB
	p95zCH4TAMANq/JxVO2eToZbL+fWx04lgvto1+TgSz5qv0vTcQCMBcPEf8bcEGQy/xuplNWPqYrWc
	QphSb5zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzbib-00000004De3-2x8y;
	Thu, 27 Aug 2026 15:08:41 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzbiY-00000004DbW-0cys
	for barebox@lists.infradead.org;
	Thu, 27 Aug 2026 15:08:40 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A8B2C200F1E;
	Thu, 27 Aug 2026 17:08:35 +0200 (CEST)
Message-ID: <6c7717ac-86d3-410c-8b75-a66c7c088116@pengutronix.de>
Date: Thu, 27 Aug 2026 17:08:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] bootm: add fitimage command line to bootargs
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?UTF-8?Q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>,
 =?UTF-8?Q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>
References: <20260827-add-cmdline-fitimage-v1-1-56701e1f0093@bootlin.com>
 <0705aef2-bcd6-4f8a-8150-89b2283840af@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <0705aef2-bcd6-4f8a-8150-89b2283840af@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260827_080838_356615_3B898114 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 8/27/26 4:16 PM, Ahmad Fatoum wrote: > On 8/27/26 2:16
    PM, Thomas Bonnefille wrote: > Above test doesn't verify signatures though
    and I believe it would > actually break. You can verify by setting [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Spamd-Result: default: False [-57.51 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: majcmpyuoq13gb7w3bnu15osqc7sr6sb
X-Rspamd-Queue-Id: 880BA202427

Hi,

On 8/27/26 4:16 PM, Ahmad Fatoum wrote:
> On 8/27/26 2:16 PM, Thomas Bonnefille wrote:
> Above test doesn't verify signatures though and I believe it would
> actually break. You can verify by setting global.bootm.verify=signature
> after having built with CONFIG_CRYPTO_BUILTIN_DEVELOPMENT_KEYS=y.
> 
> I will Cc you on a RFC patch shortly.

No patch for me, but a FIT spec issue:

https://github.com/open-source-firmware/flat-image-tree/issues/60

The spec appears to be inconsistent.

Thanks!
Ahmad

> 
> Cheers,
> Ahmad
> 
> 
>> +
>> +	pr_info("Using command line from FIT configuration: %s\n", cmdline);
>> +}
>> +
>>  static enum filetype bootm_fit_update_os_header(struct image_data *data)
>>  {
>>  	size_t size;
>> @@ -146,6 +159,8 @@ int bootm_open_fit(struct image_data *data, bool override)
>>  		goto err;
>>  	}
>>  
>> +	bootm_fit_config_cmdline(fit_config);
>> +
>>  	loadable_from_fit_os(data, fit, fit_config);
>>  	if (override)
>>  		data->is_override.os = true;
>>
>> ---
>> base-commit: df1055a2e0ddd3f96939327f2f0eb9db13a2bdc6
>> change-id: 20260827-add-cmdline-fitimage-42f6b2e930c1
>>
>> Best regards,
>> --  
>> Thomas Bonnefille <thomas.bonnefille@bootlin.com>
>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



