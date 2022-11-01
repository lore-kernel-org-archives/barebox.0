Delivery-date: Tue, 01 Nov 2022 11:14:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opoI3-00Abxk-Eh
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 11:14:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opoI2-0004fW-1W
	for lore@pengutronix.de; Tue, 01 Nov 2022 11:14:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X9rUbhovPkhbTI4uAZDDqHEpRcZML9PZpB40HtJKmG0=; b=4sgmVWf1RCzgQfwORAUh/ssWak
	M1+VJB4+Sj58I4gPDkfihdOxmaYQBhRHQGVOijW8avzlaSA2OyoMp23UmhJZUF/SESnHFGoLo7kWu
	NzycnjZ6GqQREZwk3p03+iQWuDnJYh5YYr2C+OhVj35oxX49As8aPthmTCU/wZXPcT403YFV8ihiT
	UqR2JRmq+u5fBZL3OruCt0WXIw15Ad+GUVcT+d7TkfC9iilTmurcinIHwk9PJVX6FKHflaraGggKC
	XW9Wop82gQrU41uRmxCXMg/MF9mJGFFeOETjM2sq25uVH2K38wCnZ6fKQmsIqwJoLfPfmwlvibvXk
	Fp1tLWfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opoGh-003ydz-TW; Tue, 01 Nov 2022 10:13:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opoGc-003ydF-VX
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 10:13:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1opoGb-0004aj-4B; Tue, 01 Nov 2022 11:13:09 +0100
Message-ID: <5b259be1-1a6c-129c-c00a-289d6fa5be8f@pengutronix.de>
Date: Tue, 1 Nov 2022 11:13:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Content-Language: en-US
To: Vyacheslav Yurkov <uvv.mail@gmail.com>, barebox@lists.infradead.org
Cc: Vyacheslav Yurkov <Vyacheslav.Yurkov@bruker.com>
References: <20221101095241.984845-1-uvv.mail@gmail.com>
 <779f4d6e-7ba8-973b-0097-f98cbce0dc1e@pengutronix.de>
 <92804731-f7bf-cb4c-dfea-73955fac9351@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <92804731-f7bf-cb4c-dfea-73955fac9351@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_031311_043926_FB2FB27C 
X-CRM114-Status: GOOD (  19.28  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] ARM: socfpga: Fix SDRAM firewall init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Slava,

On 01.11.22 11:05, Vyacheslav Yurkov wrote:
> Hi Ahmad,
> The access of FPGA IPs to SDRAM regions is now possible. The region filters were already set correctly, only 'enable' bits were not. I split the fix into two patches, because they fix different sub-problems of one issue.

Thanks for the explanation. Could you resend with something like

" This enables the FPGA to access regions of SDRAM, which were previously
  inaccessible. "

appended to the commit message?

Cheers,
Ahmad


> 
> Regards,
> Slava
> 
> On 01.11.2022 10:58, Ahmad Fatoum wrote:
>> Hello Slava,
>>
>> On 01.11.22 10:52, Vyacheslav Yurkov wrote:
>>> From: Vyacheslav Yurkov <Vyacheslav.Yurkov@bruker.com>
>>>
>>> Incorrect enable bits were used in initialization sequence of SDRAM
>>> firewall
>> Thanks for your patch.
>>
>> It'd be useful to know what implications the incorrect enable bits had.
>> What didn't work that now does?
>>
>> Cheers,
>> Ahmad
>>
>>> Signed-off-by: Vyacheslav Yurkov <Vyacheslav.Yurkov@bruker.com>
>>> ---
>>>   arch/arm/mach-socfpga/arria10-sdram.c | 6 +++---
>>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/arch/arm/mach-socfpga/arria10-sdram.c b/arch/arm/mach-socfpga/arria10-sdram.c
>>> index 35c355df71..b7eade0b17 100644
>>> --- a/arch/arm/mach-socfpga/arria10-sdram.c
>>> +++ b/arch/arm/mach-socfpga/arria10-sdram.c
>>> @@ -486,7 +486,7 @@ static int arria10_sdram_firewall_setup(void)
>>>       writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_MPUREGION3ADDR);
>>>       writel(0xffff0000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM0REGION0ADDR);
>>>   -    mpu_en |= ARRIA10_NOC_FW_DDR_MPU_MPUREG1EN;
>>> +    mpu_en |= ARRIA10_NOC_FW_DDR_MPU_F2SDR0REG0EN;
>>>       writel(mpu_en, ARRIA10_SDR_FW_MPU_FPGA_EN);
>>>         writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM0REGION1ADDR);
>>> @@ -494,7 +494,7 @@ static int arria10_sdram_firewall_setup(void)
>>>       writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM0REGION3ADDR);
>>>       writel(0xffff0000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM1REGION0ADDR);
>>>   -    mpu_en |= ARRIA10_NOC_FW_DDR_MPU_MPUREG2EN;
>>> +    mpu_en |= ARRIA10_NOC_FW_DDR_MPU_F2SDR1REG0EN;
>>>       writel(mpu_en, ARRIA10_SDR_FW_MPU_FPGA_EN);
>>>         writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM1REGION1ADDR);
>>> @@ -502,7 +502,7 @@ static int arria10_sdram_firewall_setup(void)
>>>       writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM1REGION3ADDR);
>>>       writel(0xffff0000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM2REGION0ADDR);
>>>   -    mpu_en |= ARRIA10_NOC_FW_DDR_MPU_MPUREG3EN;
>>> +    mpu_en |= ARRIA10_NOC_FW_DDR_MPU_F2SDR2REG0EN;
>>>       writel(mpu_en, ARRIA10_SDR_FW_MPU_FPGA_EN);
>>>         writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM2REGION1ADDR);
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



