Delivery-date: Wed, 24 Jul 2024 10:48:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWXfP-002Pwh-23
	for lore@lore.pengutronix.de;
	Wed, 24 Jul 2024 10:48:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWXfO-0000kH-Ue
	for lore@pengutronix.de; Wed, 24 Jul 2024 10:48:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NofckJLTmag8ZkysFfL39mnqICqWKjf2kTEzATmSHcM=; b=pZsSpvDKAwWnWd26QqGefWLhwy
	c9Xqwd+GhPuRItpcmdv03DVFE7dz82d0Koj0g0caa01oET+cCRJf+UtNm/F72HS6g4OHhB5jb3Uon
	zpnu+TGIJk0UYLhZ07jaRntshTWxYNOaPFW1688azeGyWbYZCU8C0TbW36N9phyWdbD1l2hFu4+Sg
	MPOwCz18sOrJcuNcSRMj9RNStX3gpEIcDkfISHIB+40d7PvTizBoKb1k3hkwol+MQde9/8xAJP3r5
	PmJEqzEeT827THHIANaw8xWKoU+AulcZklgS4w4X5zCpl/7ynW5CObWrWCD0FoMXjcKnM4udD9eU9
	TjIpmIQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWXev-0000000EoGQ-3imn;
	Wed, 24 Jul 2024 08:47:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWXes-0000000EoFq-15Lh
	for barebox@lists.infradead.org;
	Wed, 24 Jul 2024 08:47:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sWXep-0000hB-KE; Wed, 24 Jul 2024 10:47:35 +0200
Message-ID: <b7ed59b9-7c5d-4a63-9dfe-3516c9f6f7e3@pengutronix.de>
Date: Wed, 24 Jul 2024 10:47:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20240722172410.3876647-1-a.fatoum@pengutronix.de>
 <ZqC9KLfHU9fW_8j1@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <ZqC9KLfHU9fW_8j1@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240724_014738_335274_F4534582 
X-CRM114-Status: GOOD (  27.59  )
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
Subject: Re: [PATCH master] of: fdt: fix overflows when parsing sizes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24.07.24 10:36, Sascha Hauer wrote:
> On Mon, Jul 22, 2024 at 07:24:10PM +0200, Ahmad Fatoum wrote:
>> The function dt_struct_advance() is used to advance a pointer to the next
>> offset within the structure block, while checking that the result is in
>> bounds.
>>
>> Unfortunately, the function used a signed size argument. This had the
>> effect that a too-large size in the FDT wrapped around and caused the
>> pointer to move backwards.
>>
>> This issue was found by libfuzzer which generated an FDT that
>> always triggered an out-of-memory condition: One struct indicated a size
>> that caused the pointer to move backwards.
>>
>> The resulting loop allocated memory on every iteration and eventually
>> ran out.
>>
>> Fix this by using unsigned sizes and treating wrap around as an
>> error case.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/of/fdt.c | 11 ++++++-----
>>  1 file changed, 6 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
>> index 8dca41990c87..237468cd8164 100644
>> --- a/drivers/of/fdt.c
>> +++ b/drivers/of/fdt.c
>> @@ -32,12 +32,13 @@ static inline bool __dt_ptr_ok(const struct fdt_header *fdt, const void *p,
>>  }
>>  #define dt_ptr_ok(fdt, p) __dt_ptr_ok(fdt, p, sizeof(*(p)), __alignof__(*(p)))
>>  
>> -static inline uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, int size)
>> +static inline uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, uint32_t size)
>>  {
>> -	dt += size;
>> -	dt = ALIGN(dt, 4);
>> +	if (check_add_overflow(dt, size, &dt))
>> +		return 0;
>>  
>> -	if (dt > f->off_dt_struct + f->size_dt_struct)
>> +	dt = ALIGN(dt, 4);
>> +	if ((!dt && size) || dt > f->off_dt_struct + f->size_dt_struct)
>>  		return 0;
> 
> I am not sure I fully understand the newly added (!dt && size).
> 
> I think it's for the case when the initial addition results in something
> like 0xfffffffe and the ALIGN(dt, 4) makes dt become 0, right?

Exactly.

> I think dt being zero is a an error anyway, so what is the && size good
> for?

You're right. I will drop the check for v2.

> 
>>  
>>  	return dt;
> 
> When dt is zero it is returned here which will be considered an error by
> the caller anyway, so it seems the (!dt && size) check doesn't add
> anything.
> 
> Note we have dt_struct_advance() twice in the tree. Care to fix the
> other place as well?

Will do.

Thanks,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



