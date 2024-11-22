Delivery-date: Fri, 22 Nov 2024 11:35:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tER0b-004zAD-1s
	for lore@lore.pengutronix.de;
	Fri, 22 Nov 2024 11:35:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tER0a-0007Ay-Vx
	for lore@pengutronix.de; Fri, 22 Nov 2024 11:35:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UR83YUsmNbmvSqoVwR7hFzwZ0h5/S5khp6IxAXqWS6I=; b=oHx+kEVtdqv2xvbwBgWcT5Bzzi
	IhdIb4T1MQ73+n9vLNAdArhzAU5uHi4+rLMe3JTUBMMCEjKMkDxw0Foe3fzmwA14v7tsNFzPuQP/3
	ip2gKPd0C5VcK7q48WXe0Ev+6peRjVJD1Kg5HBPvbqOkluNgciAOOtv65h+6clRhzFAwIEZ4yLGHd
	3FtlXkbkSOPOaWrj5T6jBTd5Gx7bVvVDBy2toxNSe8MhawnAEw5tVo4OF06I4JsM0o0J9jOC1F1Rp
	6Yjk9ygplnT1LPmdsVLJ/EDcDJIMjzTwjbi0PAPhgCUwJxh5rafyDLoyG9JgDTDYewyQSV+zJ1qZX
	TMTonEZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tER0B-00000002GKo-463p;
	Fri, 22 Nov 2024 10:35:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tER08-00000002GK2-3YPA
	for barebox@lists.infradead.org;
	Fri, 22 Nov 2024 10:35:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tER07-00073N-HS; Fri, 22 Nov 2024 11:34:59 +0100
Message-ID: <d75dde89-c646-4a0f-beb7-d31530939f4e@pengutronix.de>
Date: Fri, 22 Nov 2024 11:34:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20241122095326.2877232-1-a.fatoum@pengutronix.de>
 <20241122102816.vyy7qqcd7zs7w5cz@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241122102816.vyy7qqcd7zs7w5cz@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241122_023500_961608_7AC3165B 
X-CRM114-Status: GOOD (  20.09  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] usb: typec: fix freeing uninitialized memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Marco,

On 22.11.24 11:28, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 24-11-22, Ahmad Fatoum wrote:
>> When the code was first added, a kzalloc was allocating the memory for
>> the struct device. This has been recently changed to malloc as a
>> shifting of the header caused the function to be no longer defined.
>>
>> malloc() doesn't zero the memory though, leading to a potential freeing
>> of uninitialized memory in dev_set_name.
>>
>> Fix this by using calloc() instead. Reintroducing kzalloc() would be
>> fine too, but calloc() saves some space, because it guarantees a smaller
>> alignment.
>>
>> Fixes: d9fa8b26b60c ("usb: typec: fix compile test with CONFIG_SANDBOX")
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/usb/typec/class.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/usb/typec/class.c b/drivers/usb/typec/class.c
>> index 495ac794622f..9f9b4d6ca8f3 100644
>> --- a/drivers/usb/typec/class.c
>> +++ b/drivers/usb/typec/class.c
>> @@ -142,7 +142,7 @@ struct typec_port *typec_register_port(struct device *parent,
>>  	const char *alias;
>>  	int ret;
>>  
>> -	port = malloc(sizeof(*port));
>> +	port = calloc(sizeof(*port), 1);
> 
> Albeit it is a nit and result is the same, the nmemb is the first
> argument of calloc().

Thanks, I can never remember the order, so it's a good thing it
doesn't matter anyway. :-)

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>>  	if (!port)
>>  		return ERR_PTR(-ENOMEM);
>>  
>> -- 
>> 2.39.5
>>
>>
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


