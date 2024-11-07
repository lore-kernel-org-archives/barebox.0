Delivery-date: Thu, 07 Nov 2024 09:50:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8yDa-005rFK-0a
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 09:50:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8yDa-0007ov-67
	for lore@pengutronix.de; Thu, 07 Nov 2024 09:50:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rRtW0dF9d9YbOQc01aLQ825Nl+eHgMcmwgUGAcD2ieI=; b=o8ol6wain6xvuEBRn1UHPuWq6R
	ZWnmzUkiLLrD6t+2VkJv79lwO7kkYDLZcr4uH08fLyyym8BLD/VM428CBNUMQSWbRmzCWFbF8059B
	hhEFMgnAAAdzFsrNIiZv7wdwc1Ceopcdlu8Bk5PRcQ++fyCGCwTf9eHL4l0KPvssPPNizePMc9i0O
	sN+e+DFVxngmJP49Q6gA1jVLoRQ3s99CNtemOsGmZY2NGGH3X9BpMzZhB1k1CKkG4MZ90w5ZOWUY5
	T3rgM+S0dhah6jrx/btjhGzB+7nwmXjXIj0hvqGozYMeY4oYZ+xcJj67kx+jDPrJUNMhX78JdgWRp
	3Y2fYzhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8yDB-00000006C3A-0KWn;
	Thu, 07 Nov 2024 08:49:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8yBR-00000006Bfq-41Xp
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 08:48:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8yBQ-0007Zr-6P; Thu, 07 Nov 2024 09:48:04 +0100
Message-ID: <dbdd9a82-de0c-499e-9828-153dc7ad23c9@pengutronix.de>
Date: Thu, 7 Nov 2024 09:48:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, Robin van der Gracht <robin@protonic.nl>
References: <20241106185724.2526-1-a.fatoum@pengutronix.de>
 <20241106185724.2526-4-a.fatoum@pengutronix.de>
 <20241107084213.aay4u2vzwbbxlbfa@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241107084213.aay4u2vzwbbxlbfa@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_004806_032906_8A184CC6 
X-CRM114-Status: GOOD (  18.37  )
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
Subject: Re: [PATCH 3/6] ARM: Rockchip: fix clang warning about passing 32-bit
 register operand
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 07.11.24 09:42, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 24-11-06, Ahmad Fatoum wrote:
>> clangd warns that "Value size does not match register size specified by
>> the constraint and modifier".
>>
>> Promote the subtraction result to unsigned long to fix this.
>>
>> The 16 is likely unnecessary, but I am hesitant to remove it without testing.
> 
> Is it worth to add a comment like: /* TODO: check if 16 is necessary */ ?

I am waiting for Sascha's opinion, we have similar subtractions in i.MX code too.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/mach-rockchip/atf.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
>> index 1e1861191c99..4c16ec3bc66a 100644
>> --- a/arch/arm/mach-rockchip/atf.c
>> +++ b/arch/arm/mach-rockchip/atf.c
>> @@ -59,7 +59,7 @@ static unsigned long load_elf64_image_phdr(const void *elf)
>>  										\
>>  	/* Setup an initial stack for EL2 */                                    \
>>  	asm volatile("msr sp_el2, %0" : :                                       \
>> -			"r" (SOC##_BAREBOX_LOAD_ADDRESS - 16) :                 \
>> +			"r" ((ulong)SOC##_BAREBOX_LOAD_ADDRESS - 16) :		\
>>  			"cc");                                                  \
>>  										\
>>  	bl31_entry(bl31, optee_load_address,                                    \
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


