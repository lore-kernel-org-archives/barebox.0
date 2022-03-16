Delivery-date: Wed, 16 Mar 2022 11:03:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nUQUt-007Hql-2e
	for lore@lore.pengutronix.de; Wed, 16 Mar 2022 11:03:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nUQUr-0003wy-Iz
	for lore@pengutronix.de; Wed, 16 Mar 2022 11:03:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mCqoFzRQfsx3NT/BpsyWfcm1cx0eN4JqZFvc4JHYZ50=; b=DMUMTHSmsblyEQfogr/YRJvBhd
	2tH5z5PoBoMU1TkE6Afbw/51WG/VPR+05aR9ZLoAzxfaLyar4PNLPwLAjo3Wjrw3r7J2xPiEx/FxZ
	jqN70WHa/0p3XOIkrO8cGP637r2bcgTum/560mq3BfIXVctF432ieWV4AQpotjS7qFuzlSSS64SOR
	s77XvwxKCQsleA2wn7a9HU+bVH//n2kNI2+67JvdedIIpIGoS1YmeN4IrghbXaxYF1RJ4B+jXZrYZ
	+vjxEEPSR18bEKtdkmVfdhmgtwMwE803hXqOAmd2eChmo1cgfRJUyQQ/PBMBJKKp1I75mpB4dsaei
	cm9HcyOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUQTH-00CQo4-Hm; Wed, 16 Mar 2022 10:01:35 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUQT5-00CQlG-BP
 for barebox@lists.infradead.org; Wed, 16 Mar 2022 10:01:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AhhgoFvhGcDz5xP0dcB9qyS+lcW9hwm8tsRhiG4CWiE=; b=Iu7CJgnkM3wGBgKWZiXJAizMZ7
 gnqwmF8N9gRcbtPrq7mEiSj+09Vyc3EN1fTRhkZ6RA3IobEvaaL55OJP/lYR8oAqXZ1zTet0vhU66
 V6iHhYY5SAJN6m38h6u6wG9c8775+OgWsBcsUPZ8GXkWsoVYWD9J+Bhd4XalKjtEh9BmRuJaVYjA7
 qOJNrJ06/RxZQCN4cfS1MldxXIE9UH81XzW4TqqkUJkak69bzqw9Bh7tqCY4OiElwv7L5qRE1cgGS
 YbcBTTW1wNcBKXB89g/lsweH3cuA20ohkG/Ty2MMv1mCpJaV2Q/pPuClqKuNaIeKUEfCjpu5cVqIX
 Va7LRL7w==;
Received: from [213.250.26.126] (port=52222 helo=[192.168.26.172])
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>)
 id 1nUQSr-00HJoe-FW; Wed, 16 Mar 2022 11:01:16 +0100
Message-ID: <1aaf583d-4bba-3391-7091-795b598a167f@norik.com>
Date: Wed, 16 Mar 2022 11:01:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-GB
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20220315133942.537756-1-andrej.picej@norik.com>
 <1f57c0be-8dab-8b6d-ac1f-7c1f5c1b0caf@pengutronix.de>
 <3219049b-d6eb-68a3-20c6-c62d735bcda9@pengutronix.de>
From: Andrej Picej <andrej.picej@norik.com>
In-Reply-To: <3219049b-d6eb-68a3-20c6-c62d735bcda9@pengutronix.de>
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220316_030123_770625_3FE5C8C5 
X-CRM114-Status: GOOD (  10.48  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] of: implement new
 of_device_ensured_probed_by_alias_stem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 15. 03. 22 15:29, Ahmad Fatoum wrote:
> On 15.03.22 15:16, Ahmad Fatoum wrote:
>> Hello Andrej,
>>
>> On 15.03.22 14:39, Andrej Picej wrote:
>>> Function first goes through all the aliases which have the given stem.
>>> It then ensures that all the devices hiding under these aliases are
>>> probed.
>>>
>>> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
>>> ---
>>>   drivers/of/base.c | 28 ++++++++++++++++++++++++++++
>>>   include/of.h      |  6 ++++++
>>>   2 files changed, 34 insertions(+)
>>>
>>> diff --git a/drivers/of/base.c b/drivers/of/base.c
>>> index 80465d6d50..055dba97ab 100644
>>> --- a/drivers/of/base.c
>>> +++ b/drivers/of/base.c
>>> @@ -274,6 +274,34 @@ int of_alias_get_id_from(struct device_node *root, struct device_node *np,
>>>   }
>>>   EXPORT_SYMBOL_GPL(of_alias_get_id_from);
>>>   
>>> +/**
>>> + * of_device_ensured_probed_by_alias_stem - Ensure all devices with alias base name
>>> + * are probed
>>> + * @stem:	Alias stem of the given device_node
>>> + *
>>> + * The function ensures all devices with the given alias stem are probed.
>>> + *
>>> + * Returns 0 on success or error code.
>>> + */
>>> +int of_device_ensured_probed_by_alias_stem(const char *stem)
>>> +{
>>> +	struct alias_prop *app;
>>> +	int id = -ENODEV;
>>> +	int ret;
>>
>> Can you early exit here if (!deep_probe_is_supported())?
>>
>> This saves non-deep probe users the hassle of needless iteration
>> and string comparisons.
>>
>>> +
>>> +	list_for_each_entry(app, &aliases_lookup, link) {
> 
> Corner case: aliases in DT are not sorted, so
> 
> &{/aliases} { gpio1 = &pmic_gpio; gpio0 = &gpio1; };
> 
> may result in pmic_gpio being probed first..
True
> 
> Could be resolved by sorting aliases on insertion though. hmm..

Ok I will check things up and send a v2.

Thanks for review.
> 
>>> +		if (of_node_cmp(app->stem, stem) != 0)
>>> +			continue;
>>> +
>>> +		ret = of_device_ensure_probed(app->np);
>>> +		if (ret)
>>> +			return ret;
>>> +	}
>>> +
>>> +	return 0;
>>> +}
>>> +EXPORT_SYMBOL_GPL(of_device_ensured_probed_by_alias_stem);
>>> +
>>>   const char *of_alias_get(struct device_node *np)
>>>   {
>>>   	struct alias_prop *app;
>>> diff --git a/include/of.h b/include/of.h
>>> index 216d0ee763..95817c58a4 100644
>>> --- a/include/of.h
>>> +++ b/include/of.h
>>> @@ -261,6 +261,7 @@ extern void of_alias_scan(void);
>>>   extern int of_alias_get_id(struct device_node *np, const char *stem);
>>>   extern int of_alias_get_id_from(struct device_node *root, struct device_node *np,
>>>   				const char *stem);
>>> +extern int of_device_ensured_probed_by_alias_stem(const char *stem);
>>>   extern const char *of_alias_get(struct device_node *np);
>>>   extern int of_modalias_node(struct device_node *node, char *modalias, int len);
>>>   
>>> @@ -750,6 +751,11 @@ static inline int of_alias_get_id_from(struct device_node *root, struct device_n
>>>   	return -ENOSYS;
>>>   }
>>>   
>>> +static int of_device_ensured_probed_by_aliases(const char *stem)
>>> +{
>>> +	return -ENOSYS;
>>> +}
>>> +
>>>   static inline const char *of_alias_get(struct device_node *np)
>>>   {
>>>   	return NULL;
>>
>>
> 
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

