Delivery-date: Tue, 15 Mar 2022 15:31:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nU8Ck-004MpX-P2
	for lore@lore.pengutronix.de; Tue, 15 Mar 2022 15:31:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nU8Cj-0004jc-Ai
	for lore@pengutronix.de; Tue, 15 Mar 2022 15:31:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDsziBzoBCHyW8MbSB9UsTXJXd+kEQl3qgqy4y3kZrs=; b=NKMpmG/nVUN95D
	SOKxJ7BuLRHlw+D+ydnrL7mPtZ++YgtkE/nr49IVIbOtZ5QqEp6ikjnNa5jaM/TWVShe2oC0CtTZJ
	9BovWh24DbeiEN0aWijl/614tD5+EkyS9v5cooQ8dWajKRKM2m75aLfnjSDHflqMy3hkfzWtXVo0Y
	OkjOxt5symK0VIkuM9Bnz66mPlLApD34cUeNVPki6w41U8lNm4wncJVddoXF0Sc2WpIQBfsCkp3+U
	gXP8J58OqvqsZVGkCYLMx/kxaeWHEhqocbRa6NYgmfmYXvObkqV0ugBrlNZcX80WXQQy45tSs48G7
	1PuGuQdbFDcTZrGdHYzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nU8BR-009S9s-7u; Tue, 15 Mar 2022 14:29:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nU8BJ-009S6f-RC
 for barebox@lists.infradead.org; Tue, 15 Mar 2022 14:29:52 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nU8BI-0004Py-JK; Tue, 15 Mar 2022 15:29:48 +0100
Message-ID: <3219049b-d6eb-68a3-20c6-c62d735bcda9@pengutronix.de>
Date: Tue, 15 Mar 2022 15:29:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Andrej Picej <andrej.picej@norik.com>, barebox@lists.infradead.org
References: <20220315133942.537756-1-andrej.picej@norik.com>
 <1f57c0be-8dab-8b6d-ac1f-7c1f5c1b0caf@pengutronix.de>
In-Reply-To: <1f57c0be-8dab-8b6d-ac1f-7c1f5c1b0caf@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220315_072949_953960_DA6EF2DC 
X-CRM114-Status: GOOD (  20.00  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] of: implement new
 of_device_ensured_probed_by_alias_stem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 15.03.22 15:16, Ahmad Fatoum wrote:
> Hello Andrej,
> 
> On 15.03.22 14:39, Andrej Picej wrote:
>> Function first goes through all the aliases which have the given stem.
>> It then ensures that all the devices hiding under these aliases are
>> probed.
>>
>> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
>> ---
>>  drivers/of/base.c | 28 ++++++++++++++++++++++++++++
>>  include/of.h      |  6 ++++++
>>  2 files changed, 34 insertions(+)
>>
>> diff --git a/drivers/of/base.c b/drivers/of/base.c
>> index 80465d6d50..055dba97ab 100644
>> --- a/drivers/of/base.c
>> +++ b/drivers/of/base.c
>> @@ -274,6 +274,34 @@ int of_alias_get_id_from(struct device_node *root, struct device_node *np,
>>  }
>>  EXPORT_SYMBOL_GPL(of_alias_get_id_from);
>>  
>> +/**
>> + * of_device_ensured_probed_by_alias_stem - Ensure all devices with alias base name
>> + * are probed
>> + * @stem:	Alias stem of the given device_node
>> + *
>> + * The function ensures all devices with the given alias stem are probed.
>> + *
>> + * Returns 0 on success or error code.
>> + */
>> +int of_device_ensured_probed_by_alias_stem(const char *stem)
>> +{
>> +	struct alias_prop *app;
>> +	int id = -ENODEV;
>> +	int ret;
> 
> Can you early exit here if (!deep_probe_is_supported())?
> 
> This saves non-deep probe users the hassle of needless iteration
> and string comparisons.
> 
>> +
>> +	list_for_each_entry(app, &aliases_lookup, link) {

Corner case: aliases in DT are not sorted, so 

&{/aliases} { gpio1 = &pmic_gpio; gpio0 = &gpio1; };

may result in pmic_gpio being probed first..

Could be resolved by sorting aliases on insertion though. hmm..

>> +		if (of_node_cmp(app->stem, stem) != 0)
>> +			continue;
>> +
>> +		ret = of_device_ensure_probed(app->np);
>> +		if (ret)
>> +			return ret;
>> +	}
>> +
>> +	return 0;
>> +}
>> +EXPORT_SYMBOL_GPL(of_device_ensured_probed_by_alias_stem);
>> +
>>  const char *of_alias_get(struct device_node *np)
>>  {
>>  	struct alias_prop *app;
>> diff --git a/include/of.h b/include/of.h
>> index 216d0ee763..95817c58a4 100644
>> --- a/include/of.h
>> +++ b/include/of.h
>> @@ -261,6 +261,7 @@ extern void of_alias_scan(void);
>>  extern int of_alias_get_id(struct device_node *np, const char *stem);
>>  extern int of_alias_get_id_from(struct device_node *root, struct device_node *np,
>>  				const char *stem);
>> +extern int of_device_ensured_probed_by_alias_stem(const char *stem);
>>  extern const char *of_alias_get(struct device_node *np);
>>  extern int of_modalias_node(struct device_node *node, char *modalias, int len);
>>  
>> @@ -750,6 +751,11 @@ static inline int of_alias_get_id_from(struct device_node *root, struct device_n
>>  	return -ENOSYS;
>>  }
>>  
>> +static int of_device_ensured_probed_by_aliases(const char *stem)
>> +{
>> +	return -ENOSYS;
>> +}
>> +
>>  static inline const char *of_alias_get(struct device_node *np)
>>  {
>>  	return NULL;
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

