Delivery-date: Thu, 01 Jun 2023 06:50:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4aGI-005K1c-2P
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 06:50:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4aGF-0007Lg-FL
	for lore@pengutronix.de; Thu, 01 Jun 2023 06:50:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xgYyevgeFYZ/+uIbA5p6AIroRtFKeZhohH89I3f7oYU=; b=L+7R4rOCKsO5BdmBUzORQuP8b7
	cQcsPw1Px3Loh+Sd3T8HhWjYEHbObAa1xx4g0uTNcjONnvNFfMDMDPPJPxBdszjmNjm1AScy9ZTEG
	nYvp2Vu5OiGg++8FnAc/Xt82ntU0Qy2s9Nhxk65Qls6jFiBQa/KZEoP7/cx6YROMs7/irO0ZXZB8c
	nUd11bvIEYMh9aBRftKr+hEo+TU/kdhbJtUwwG0RYaMjEOcoIRq8ChI3xC9yMvJSz1U2kEHSoeYL3
	FlYQpaJy1qcbsYo/DwXjUQ85jon8di3mtk5eazXtmovcEfyf/oYjWmGrEFJEdIILVA3uv5QVdwIDN
	Nyq2+q6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4aEl-001xIu-2G;
	Thu, 01 Jun 2023 04:48:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4aEg-001xHD-3B
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 04:48:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q4aEa-0007FP-Kd; Thu, 01 Jun 2023 06:48:24 +0200
Message-ID: <0166cc41-dd9b-728c-a478-85bb8ec5b196@pengutronix.de>
Date: Thu, 1 Jun 2023 06:48:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-5-a.fatoum@pengutronix.de>
 <20230531163056.tcjwizntvsrbekm6@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230531163056.tcjwizntvsrbekm6@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_214831_024290_874A13B3 
X-CRM114-Status: GOOD (  29.30  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/18] of: partition: support of_partition_ensure_probed
 on parent device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Marco,

On 31.05.23 18:30, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 23-05-31, Ahmad Fatoum wrote:
>> barebox-state code uses of_partition_ensure_probed to resolve the
>> backend property. We want to allow backend to point directly at a
>> storage device instead of a partition. We can't determine whether a DT
>> device is a storage device though before it's probed, so let's have
>> of_partition_ensure_probed support either case.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/of/partition.c | 26 ++++++++++++++++++++++----
>>  drivers/of/platform.c  |  2 +-
>>  2 files changed, 23 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/of/partition.c b/drivers/of/partition.c
>> index 40c47f554ad2..a70e503cec9e 100644
>> --- a/drivers/of/partition.c
>> +++ b/drivers/of/partition.c
>> @@ -110,14 +110,32 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node)
>>  	return 0;
>>  }
>>  
>> +/**
>> + * of_partition_ensure_probed - ensure a parition is probed
>> + * @np: pointer to a partition or to a partitionable device
>> + *      Unfortunately, there is no completely reliable way
>> + *      to differentiate partitions from devices prior to
>> + *      probing, because partitions may also have compatibles.
>> + *      We only handle nvmem-cells, so anything besides that
>> + *      is assumed to be a device that should be probed directly.
>> + *
>> + * Returns zero on success or a negative error code otherwise
>> + */
>>  int of_partition_ensure_probed(struct device_node *np)
>>  {
>> -	np = of_get_parent(np);
>> +	struct device_node *parent = of_get_parent(np);
>>  
>> -	if (of_device_is_compatible(np, "fixed-partitions"))
>> -		np = of_get_parent(np);
>> +	if (parent && of_device_is_compatible(parent, "fixed-partitions"))
> 
> When is the parent not present? This should only be the case when 'np'
> points to the root_node. So in case of !parent I would return -EINVAL
> early.

will do.

> 
>> +		return of_device_ensure_probed(of_get_parent(np));
> 							     ^
> 							   parent?

Yes, You're right.

> Not related to this patch but the logic would become easier if would
> have devices for each mtd-part, like the kernel does. In such case we
> could avoid these special handlings and just use
> of_device_ensure_probed() at least for the mtd-parts, nvmem-cells still
> need a special handling.

How you mean? of_partition_ensure_probed can be called before there can
be any devices at all.

> 
> Regards,
>   Marco
> 
>> -	return np ? of_device_ensure_probed(np) : -EINVAL;
>> +	if (of_get_compatible_child(np, "fixed-partitions"))
>> +		return of_device_ensure_probed(np);

I think this can be dropped, so the case falls through to the final
of_device_ensure_probed.

>> +
>> +	if (!of_property_present(np, "compatible") ||
>> +	    of_device_is_compatible(np, "nvmem-cells"))
>> +		return of_device_ensure_probed(parent);
>> +
>> +	return of_device_ensure_probed(np);
>>  }
>>  EXPORT_SYMBOL_GPL(of_partition_ensure_probed);

Thanks,
Ahmad

>>  
>> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
>> index ab737629325a..78b8a31331db 100644
>> --- a/drivers/of/platform.c
>> +++ b/drivers/of/platform.c
>> @@ -484,7 +484,7 @@ int of_device_ensure_probed(struct device_node *np)
>>  {
>>  	struct device *dev;
>>  
>> -	if (!deep_probe_is_supported())
>> +	if (!np || !deep_probe_is_supported())
>>  		return 0;
>>  
>>  	dev = of_device_create_on_demand(np);
>> -- 
>> 2.39.2
>>
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



