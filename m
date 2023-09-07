Delivery-date: Thu, 07 Sep 2023 10:27:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeAMe-006uSA-KC
	for lore@lore.pengutronix.de; Thu, 07 Sep 2023 10:27:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeAMc-0000Yh-5R
	for lore@pengutronix.de; Thu, 07 Sep 2023 10:27:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4rW10DxBESE6NgYOTjcCSnzACXPJ6TXhZ/0rB9FnoxE=; b=fK0vKsJBCBczMmz3M88KAdIXdD
	xeav8s8Ct3N6GLOLtvtUga6wGBHnjaEz7r0hiibKbBlL9CDdAkyT9iJ1vPjaZ1K/FVVMvYsoXN8oL
	wHlt5qfNdnFHmRbiJxARrf49YcG378hEjMplyd37cpzjZ7fz7B2M5K3DuahQsY9QBd/O7sAZlmEhN
	5Xn6XUPOH++a+C/aOJy9oeT9C6jzXxdDpUTmSp2xA6UF8MmSb5ev4WvOKsWcrKPehuGqvZrl8HS5Y
	6Kxst8tWedcYXQlruCVhL5gPQz9LQKSQhIIpS1IVjCsgcYYjqx9eUUkWPqchrj9ZTCIAsQjaxSEAR
	NnjmIA6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeALa-00BaXW-0S;
	Thu, 07 Sep 2023 08:26:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeALW-00BaWp-2a
	for barebox@lists.infradead.org;
	Thu, 07 Sep 2023 08:26:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qeALT-0000GJ-Mk; Thu, 07 Sep 2023 10:26:35 +0200
Message-ID: <1051bfae-680e-b4d9-3036-87802801710a@pengutronix.de>
Date: Thu, 7 Sep 2023 10:26:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Lior Weintraub <liorw@pliops.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <PR3P195MB0555C0CAAE5F70743B7DC534C317A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <20230816100146.GF5650@pengutronix.de>
 <PR3P195MB0555474B08A4CAF79B7AF804C315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <PR3P195MB0555474B08A4CAF79B7AF804C315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_012638_843877_80CB13E4 
X-CRM114-Status: GOOD (  26.70  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: ARM: aarch64: lowlevel: potential bug in arm_cpu_lowlevel_init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Lior,

On 16.08.23 12:14, Lior Weintraub wrote:
> Thanks Sascha!
> 
> Actually the bootloader is still under development so there is no problem to change and work without MMU.
> (or at lease disable it before jumping to Barebox).
> I totally agree that if virtual mapping was used it would be impossible to disable the MMU.
> Just thought that it is totally harmless to add `dsb sy`.

as Sascha mentioned, we expect MMU to be off, but some BootROMs fail to
do that in some error cases. I thus think if a barrier would save us
in such a case, we should have it in arm_cpu_lowlevel_init().

Cheers,
Ahmad

> 
> Cheers,
> Lior.
> 
>> -----Original Message-----
>> From: Sascha Hauer <s.hauer@pengutronix.de>
>> Sent: Wednesday, August 16, 2023 1:02 PM
>> To: Lior Weintraub <liorw@pliops.com>
>> Cc: andrew.smirnov@gmail.com; barebox@lists.infradead.org; Ahmad
>> Fatoum <a.fatoum@pengutronix.de>
>> Subject: Re: ARM: aarch64: lowlevel: potential bug in arm_cpu_lowlevel_init
>>
>> CAUTION: External Sender
>>
>> Hi Lior,
>>
>> On Mon, Aug 14, 2023 at 11:35:05AM +0000, Lior Weintraub wrote:
>>>    Link: [1]File-List
>>>    Hi Andrew,
>>>
>>>    I am asking about a patch you've introduced about 4 years ago:
>>>    Commit: cd6e1857a6a824d562bd27379d191602c074f6b7
>>>
>>>    ENTRY(arm_cpu_lowlevel_init)
>>>                    switch_el x1, 3f, 2f, 1f
>>>
>>>    3:
>>>                    mov       x0, #1                                    /*
>>>    Non-Secure EL0/1 */
>>>                    orr          x0, x0, #(1 << 10)              /* 64-bit EL2
>>>    */
>>>                    msr        scr_el3, x0
>>>                    msr        cptr_el3, xzr
>>>
>>>                    mrs        x0, sctlr_el3
>>>                    ldr           x1, =SCTLR_ELx_FLAGS
>>>                    bic          x0, x0, x1
>>>                    msr        sctlr_el3, x0
>>>                    isb
>>>
>>>                    b             done
>>>
>>>    This code has introduced a bug in our barebox porting.
>>>    It could be our mistake but then again we couldn't find any prerequisites
>>>    conditions that bootloaders need to meet before passing control to
>> barebox
>>>    pbl.
>>>    There are 2 bugs that can happen here:
>>>     1. The bootloader enabled MMU and set the SRAM (given to barebox) as
>>>        non-secure – This issue can be resolved with adding "dsb sy" command
>>>        before the "isb"
>>>     2. The bootloader enabled MMU and dcache on SRAM (given to barebox)
>> as
>>>        non-secure – This is a bit harder to solve because it needs to call
>>>        cache invalidate on the stack.
>>
>> Eventhough it might not be explicitly documented, barebox normally
>> expects to be called with MMU disabled.
>>
>> When the MMU is enabled it could have virtually any mapping and there's
>> no sane way to disable the MMU then.
>>
>> If your bootloader enables the MMU and there is no way to change that,
>> then it's up to your board entry code to disable the MMU before calling into
>> barebox. That said, when there's something can change in
>> arm_cpu_lowlevel_init()
>> to help you with your case, then we can do that, but I wouldn't consider
>> this a bug in barebox.
>>
>> Sascha
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://secure-
>> web.cisco.com/17RdScP_TBoXqc1IerwhZX8kAHhqutjAnByPiUM5lNZJyN6OD
>> jkdTnyYCzrqpRZ9mdLg4wp-dZiElAak3iS7lf-YQwNFSattw-4zxIt6ro_qHh-
>> 8ovK33TBdMnr5qL5qPKFUriYYQ8bLMAnMHa4bKtTIfhZI2eSXUr6hqjDcnoKZ
>> GKUO2dbBDXceX3NT-ql9GBlwdH-mmkhd9fgYV2r0UtR4ot5d58hg45JTJ-
>> LsuvNVMsKrFZd1Iu3AiMSjmi4E5BDc6KpQx_MgAD410FQWC0HpDavhSc1DC
>> BgdMO2RlGrZk0L-
>> St3n_yH_QZvH4UfjY/http%3A%2F%2Fwww.pengutronix.de%2F  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



