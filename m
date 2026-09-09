Delivery-date: Wed, 09 Sep 2026 17:57:44 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x4KgC-000FEA-2a
	for lore@lore.pengutronix.de;
	Wed, 09 Sep 2026 17:57:44 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QgHPuQn4;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9AAF8202043
	for <lore@pengutronix.de>; Wed, 09 Sep 2026 17:57:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wNmfKDQ+yEuTUerUmo4eJh1iacQfIBPvOJ5oXKvsj7o=; b=QgHPuQn4t8ekHRwj1atpA3eODt
	2ZgUg+7Z+pJP6BfmuQRvgUCii/o1GRqsx8jdvToy1Tx8/xsMFBzdceH82oAegDd0E2ubqKvV6/4Lb
	rcOYJoHU2YNT5G6s4YMFdDh2r4dP60leRuR++e48zl4kiQxOwtadKga4Dsn+y0vqZ+u9ZRq8Nds/s
	f97IozMxHmJLCfV8erZo2xHvzV635UtHyOJsTqpZMcrzeMTZu4FDAjw2zeY8Q8wIK+m+alhmWgX8b
	DEY0sBoWIxpy9RkxWMkBONCpeJVD5BdfYV+S/FSfhKG9eP9K3oQAvf0yBcn36DxO06fDovvGj1L5b
	1Xrb5E+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Ket-0000000CFHz-1red;
	Wed, 09 Sep 2026 15:56:23 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Kep-0000000CFGr-2npa
	for barebox@lists.infradead.org;
	Wed, 09 Sep 2026 15:56:21 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 973C2201EB9;
	Wed, 09 Sep 2026 17:56:17 +0200 (CEST)
Message-ID: <3ab8f7d2-e343-40f7-b49f-50f248e0c38f@pengutronix.de>
Date: Wed, 9 Sep 2026 17:56:17 +0200
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
 <6c7717ac-86d3-410c-8b75-a66c7c088116@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <6c7717ac-86d3-410c-8b75-a66c7c088116@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_085619_866605_094FC55B 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Thomas, On 8/27/26 5:08 PM, Ahmad Fatoum wrote: > Hi,
    > > On 8/27/26 4:16 PM, Ahmad Fatoum wrote: >> On 8/27/26 2:16 PM, Thomas
    Bonnefille wrote: >> Above test doesn't verify signatures though and I believe
    i [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Rspamd-Server: mx1
X-Stat-Signature: 5r1twaso7ft7ibjndy4ndc46s1j5cxm3
X-Rspamd-Queue-Id: 9AAF8202043
X-Spamd-Result: default: False [-57.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Action: no action

Hello Thomas,

On 8/27/26 5:08 PM, Ahmad Fatoum wrote:
> Hi,
> 
> On 8/27/26 4:16 PM, Ahmad Fatoum wrote:
>> On 8/27/26 2:16 PM, Thomas Bonnefille wrote:
>> Above test doesn't verify signatures though and I believe it would
>> actually break. You can verify by setting global.bootm.verify=signature
>> after having built with CONFIG_CRYPTO_BUILTIN_DEVELOPMENT_KEYS=y.
>>
>> I will Cc you on a RFC patch shortly.
> 
> No patch for me, but a FIT spec issue:
> 
> https://github.com/open-source-firmware/flat-image-tree/issues/60
> 
> The spec appears to be inconsistent.

While the resolution of the spec discrepancy could affect how we deal
with new non-image properties in the future, it need not keep you from
sending a v2 if you like.

For the particular case of cmdline, just add it to the list of
whitelisted properties in fit_config_build_hash_nodes() and then you can
stack your changes on top.

Cheers,
Ahmad

> 
> Thanks!
> Ahmad
> 
>>
>> Cheers,
>> Ahmad
>>
>>
>>> +
>>> +	pr_info("Using command line from FIT configuration: %s\n", cmdline);
>>> +}
>>> +
>>>  static enum filetype bootm_fit_update_os_header(struct image_data *data)
>>>  {
>>>  	size_t size;
>>> @@ -146,6 +159,8 @@ int bootm_open_fit(struct image_data *data, bool override)
>>>  		goto err;
>>>  	}
>>>  
>>> +	bootm_fit_config_cmdline(fit_config);
>>> +
>>>  	loadable_from_fit_os(data, fit, fit_config);
>>>  	if (override)
>>>  		data->is_override.os = true;
>>>
>>> ---
>>> base-commit: df1055a2e0ddd3f96939327f2f0eb9db13a2bdc6
>>> change-id: 20260827-add-cmdline-fitimage-42f6b2e930c1
>>>
>>> Best regards,
>>> --  
>>> Thomas Bonnefille <thomas.bonnefille@bootlin.com>
>>>
>>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



