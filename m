Delivery-date: Tue, 23 Jul 2024 08:08:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sW8h7-0023Pe-2L
	for lore@lore.pengutronix.de;
	Tue, 23 Jul 2024 08:08:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sW8h7-0004fN-0m
	for lore@pengutronix.de; Tue, 23 Jul 2024 08:08:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=odXIXYPvhXRe3ooweXzIfR+bhlOtmVFvKkAgV1PHk1g=; b=PLCfiGGhGtw1WtTVK3BCe/AMOh
	zJhDk/jTW2UbgVu1chsSLxyZo0gC+1ILk6T5799aAjDLqBOWCT2UDoXI8tGH4kKJOaPS5N3w+GTf+
	SXb0ukEqKs+QepA1PWd0fsWrO51Zk9R1SFeutoUjagidI8+IyoY5s/rCyGgHd4/JGCzBgpSVlWUit
	8zn7pclvcul7xfwpF8hjhBKP6/UuWEcfgWHfavWiAXJ6wkCehV2DxVHuDZhRz5t9p8felogryfXqw
	1EKF4W/ytUQoo9AfgzfVAe8fHppZbrvqsKKLBnxntUpGSce7HwwvXIfKTFx8khn2qVH1FD1Aci6XS
	zp4n4E5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sW8gR-0000000BRYD-2AlV;
	Tue, 23 Jul 2024 06:07:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sW8gM-0000000BRXF-3NTg
	for barebox@lists.infradead.org;
	Tue, 23 Jul 2024 06:07:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sW8gK-0004c4-W7; Tue, 23 Jul 2024 08:07:29 +0200
Message-ID: <f715bf30-0f27-4ea6-ba32-2c7c87e4051c@pengutronix.de>
Date: Tue, 23 Jul 2024 08:07:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20240722170606.3866957-1-a.fatoum@pengutronix.de>
 <20240722174914.r3uwujez6gvuipsj@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240722174914.r3uwujez6gvuipsj@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_230730_879266_06F2AC3D 
X-CRM114-Status: GOOD (  19.18  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] resource: return NULL for error in
 request_barebox_region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 22.07.24 19:49, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 24-07-22, Ahmad Fatoum wrote:
>> The function currently returns NULL for error if the range is in SDRAM
>> and couldn't be requested or an error pointer if the range is outside.
>>
>> Reduce the confusion by using only one way to indicate error. As
>> request_barebox_region is used to replace request_sdram_region calls and
>> that returns NULL on error, follow suit.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  common/memory.c | 9 ++++++---
>>  1 file changed, 6 insertions(+), 3 deletions(-)
>>
>> diff --git a/common/memory.c b/common/memory.c
>> index eb7838d03613..c155cb317f25 100644
>> --- a/common/memory.c
>> +++ b/common/memory.c
>> @@ -84,9 +84,12 @@ struct resource *request_barebox_region(const char *name,
>>  	resource_size_t end = start + size - 1;
>>  
>>  	if (barebox_res && barebox_res->start <= start &&
>> -	    end <= barebox_res->end)
>> -		return __request_region(barebox_res, start, end,
>> -					name, IORESOURCE_MEM);
>> +	    end <= barebox_res->end) {
>> +		struct resource *iores;
>> +		iores = __request_region(barebox_res, start, end,
>> +					 name, IORESOURCE_MEM);
>> +		return !IS_ERR(iores) ? iores : NULL;
> 
> Of course a nit but IMHO
> 
>    		return IS_ERR(iores) ? NULL : iores;
> 
> is easier to read.

I wanted the successful case to be first.

> 
> Regards,
>   Marco
> 
>> +	}
>>  
>>  	return request_sdram_region(name, start, size);
>>  }
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



