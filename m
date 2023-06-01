Delivery-date: Thu, 01 Jun 2023 09:01:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4cJG-005Rj1-CM
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 09:01:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4cJD-0007Br-Qw
	for lore@pengutronix.de; Thu, 01 Jun 2023 09:01:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0HlmVR6kz6qTErRP00U0eK8CnKJQSSzr49FzehwvY44=; b=F11xTfQlSkk4/koae2gtd4hDBx
	f/enE549XNpBmDGbmd8WXLqO9HhKVhA4+/twyeibTMU9klAtY6a5uufmNzgEjgBGVkCjHGBwGdOg1
	2XZ4z1vwijorCPgOS2SYfilFjYo2FdkdaeB8Hx96GjgipW19IcpHD4UTOE7xXvNL0Mu+who2ABR8M
	/N0xDAZgYfWwJQB/e6Vk2v4LITpUygRRyCVeAQrEZmOebqsQ1sA+49+bWRib/RZN6eGe9hBuIvmVX
	A7BaLIDSSEzkpar9iNj+EmxN2vlLUgzw3V3v4UYpj/7pM9nFwRAGN4rhyfgDwMF+dr5K5dqwmFgh8
	bdr0Pm/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4cI5-002HrL-06;
	Thu, 01 Jun 2023 07:00:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4cI2-002Hqb-05
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 07:00:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q4cHz-0006lA-Vl; Thu, 01 Jun 2023 09:00:04 +0200
Message-ID: <6e731105-166e-5210-f66d-5ded68be76bd@pengutronix.de>
Date: Thu, 1 Jun 2023 09:00:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20230531103515.845714-1-s.hauer@pengutronix.de>
 <20230531103515.845714-2-s.hauer@pengutronix.de>
 <4dfbd23f-9dca-e2c6-2067-b9decbdc7977@pengutronix.de>
 <20230531112114.GA18491@pengutronix.de>
 <298d6a42-e074-c861-6c7f-117ea75ddeb7@pengutronix.de>
 <20230531123840.GB18491@pengutronix.de>
 <4f8e95c6-8279-b287-234c-01de2eaf7996@pengutronix.de>
 <20230601064604.GC18491@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230601064604.GC18491@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_000006_068612_A7CE23BB 
X-CRM114-Status: GOOD (  24.64  )
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
Subject: Re: [PATCH v2 2/2] ARM: mmu_32: fix setting up zero page when it is
 in SDRAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 01.06.23 08:46, Sascha Hauer wrote:
> On Wed, May 31, 2023 at 02:40:13PM +0200, Ahmad Fatoum wrote:
>> On 31.05.23 14:38, Sascha Hauer wrote:
>>> On Wed, May 31, 2023 at 01:58:33PM +0200, Ahmad Fatoum wrote:
>>>>> From b6e5c92682467496bd9c57918996f1feffda2dd6 Mon Sep 17 00:00:00 2001
>>>>> From: Sascha Hauer <s.hauer@pengutronix.de>
>>>>> Date: Wed, 31 May 2023 11:58:51 +0200
>>>>> Subject: [PATCH] ARM: mmu_32: fix setting up zero page when it is in SDRAM
>>>>>
>>>>> We used to skip setting the zero page to faulting when SDRAM starts at
>>>>> 0x0. As bootm code now explicitly sets the zero page accessible before
>>>>> copying ATAGs there this should no longer be necessary, so
>>>>> unconditionally set the zero page to faulting during MMU startup.  This
>>>>> also moves the zero page and vector table setup after the point the
>>>>> SDRAM has been mapped cachable, because otherwise the zero page and
>>>>> possibly the vector table mapping would be overwritten.
>>>>>
>>>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>>>> ---
>>>>>  arch/arm/cpu/mmu_32.c | 23 +++++++++--------------
>>>>>  1 file changed, 9 insertions(+), 14 deletions(-)
>>>>>
>>>>> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
>>>>> index c4e5a3bb0a..14775768a3 100644
>>>>> --- a/arch/arm/cpu/mmu_32.c
>>>>> +++ b/arch/arm/cpu/mmu_32.c
>>>>> @@ -461,19 +461,14 @@ static int set_vector_table(unsigned long adr)
>>>>>  
>>>>>  static void create_zero_page(void)
>>>>
>>>> Is this commit incomplete? Vectors should be set up unconditionally and
>>>> create_zero_page should be called after it.
>>>
>>> Vectors are set up unconditionally and create_zero_page() is called the
>>> same way as before.
>>
>> So zero page is requested first and then on platforms with vector at
>> address 0 requesting fails and we are left without configured IVT?
> 
> I think you are misreading the patch. Please look at it again.
> create_zero_page() is called only when the vector table is not at 0x0.
> It has been like that without this patch, the patch doesn't change
> anything here.

No I get it.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks for bearing with me,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



