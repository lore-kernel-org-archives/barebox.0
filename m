Delivery-date: Tue, 01 Nov 2022 11:08:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opoBm-00Abgu-E5
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 11:08:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opoBk-0003lv-2o
	for lore@pengutronix.de; Tue, 01 Nov 2022 11:08:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DoecmySRZtjmT5ormaOfV7Io2pPeVbz7gD51EOCDIug=; b=j+B+3LikQJDBsURpUknNkWNWXZ
	Y/iVyoRifHE1/5tJsJe05QOQ9ziZdDOH76FHYZRw0vFvbKL37/V6Wnu9KVrvYk/QGUOLsYO+wl9oN
	xz7hcNA76DwjsJLca7RPQIJdaqu5vHADJbVpcQUiJQYS2x7OX84u20cjv/AoPcg7g+WEshUgKVk/n
	x0mdbRXL1bayH4bJmbG9FYH92e9jR7Udp8wA0j0CjA04V1/vbvquRWhh5BeOma7v2r0hjq+KatOEN
	qyLa8nojRCoyViJlHKMO/qjuzgy16jJPptWUb4AyM2cXdRnFrVueYVN2rM5dtlOq/JOUDz8mMo9Vl
	OhWkZS/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opoA8-003vqZ-Ua; Tue, 01 Nov 2022 10:06:29 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opo9e-003vX9-F5
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 10:05:59 +0000
Received: by mail-lj1-x229.google.com with SMTP id x21so18792205ljg.10
        for <barebox@lists.infradead.org>; Tue, 01 Nov 2022 03:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DoecmySRZtjmT5ormaOfV7Io2pPeVbz7gD51EOCDIug=;
        b=ZqXdXODNmT8LRZSOw2rEHAwcO9cm32UKeefYbkH4Q3JREPgNCkJJwo3vJ+MGUpaLcV
         m5bxqMhET47wZfgFQzKR5Udb0x5c7KRHhgyci0DSC4lPnTdGz07ohEy6XpfuhCzDthej
         xdHs/VlWstvvHmiH3U+aKP/1G86AZzsbb3p9C7ZQU0sFmF91hBahzhX/SkuKezGbQfMW
         Zv0+YshKt/ElDftPku8LGoqOwXbDXu+0YgHxUHLngCveZRdefh3omGL+0ftkX9lS9pRl
         IlKTHk0jC44HBCokEjNqktVdLQkF2UaA9TzyZ//+xg7bwKKcHxMbShLCUgwXnFaFSvy0
         40qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DoecmySRZtjmT5ormaOfV7Io2pPeVbz7gD51EOCDIug=;
        b=KAjLar+CvSuTcEBtKEvAhylE6WMV4VBrf/so75PgpbLLT/pEe9uWzYzXnzgc6HKCd0
         O/Bt/xiPG0Kyn40g9CZiXIxv/mqK/NqTB7RqVUFFSpJStNzlR2qH0Z5zZz8XNqOu/rRG
         SlXeRXEm8IeOXTjUr8VRRBMw6078YMiAILMuohTSiuPvA0XG4D7RT3JNUTkqopJmlRn0
         eR/yaQl0oVCwj+HOvYWysNLJujIcCT4m374ZFyqjKHTYLi925A7IMMThWP4tSQp8CxQO
         z3IHV6Vt/uE23OiYxYHG0aPLrTnJF1VidYl8Ui6+o3BkQ4RzN8Vmt2XaHtWiYYO0/oHI
         cVcA==
X-Gm-Message-State: ACrzQf15k8iBmuaVww7o3orciUzvk/OhOd0FrHzqC79AuJhxFKwVxSWH
	eBUR7iVUkpTrNlkGqj/RNnfluxxohbOMPg==
X-Google-Smtp-Source: AMsMyM6F2Tq8TVivMIMlizOzO01eUrdgJDVDgKLXC9irFnJmGO8z0lSZbCq7SmSHfCrcUq4GVpTuAg==
X-Received: by 2002:a05:651c:883:b0:26d:d4ce:befa with SMTP id d3-20020a05651c088300b0026dd4cebefamr6655647ljq.180.1667297151719;
        Tue, 01 Nov 2022 03:05:51 -0700 (PDT)
Received: from [10.133.220.209] ([185.253.97.12])
        by smtp.gmail.com with ESMTPSA id y8-20020a05651c106800b0026e00df2ed0sm1744459ljm.30.2022.11.01.03.05.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Nov 2022 03:05:51 -0700 (PDT)
Message-ID: <92804731-f7bf-cb4c-dfea-73955fac9351@gmail.com>
Date: Tue, 1 Nov 2022 11:05:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.4.1
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: Vyacheslav Yurkov <Vyacheslav.Yurkov@bruker.com>
References: <20221101095241.984845-1-uvv.mail@gmail.com>
 <779f4d6e-7ba8-973b-0097-f98cbce0dc1e@pengutronix.de>
From: Vyacheslav Yurkov <uvv.mail@gmail.com>
In-Reply-To: <779f4d6e-7ba8-973b-0097-f98cbce0dc1e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_030558_539188_260BEFE6 
X-CRM114-Status: GOOD (  14.55  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ARM: socfpga: Fix SDRAM firewall init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,
The access of FPGA IPs to SDRAM regions is now possible. The region 
filters were already set correctly, only 'enable' bits were not. I split 
the fix into two patches, because they fix different sub-problems of one 
issue.

Regards,
Slava

On 01.11.2022 10:58, Ahmad Fatoum wrote:
> Hello Slava,
>
> On 01.11.22 10:52, Vyacheslav Yurkov wrote:
>> From: Vyacheslav Yurkov <Vyacheslav.Yurkov@bruker.com>
>>
>> Incorrect enable bits were used in initialization sequence of SDRAM
>> firewall
> Thanks for your patch.
>
> It'd be useful to know what implications the incorrect enable bits had.
> What didn't work that now does?
>
> Cheers,
> Ahmad
>
>> Signed-off-by: Vyacheslav Yurkov <Vyacheslav.Yurkov@bruker.com>
>> ---
>>   arch/arm/mach-socfpga/arria10-sdram.c | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm/mach-socfpga/arria10-sdram.c b/arch/arm/mach-socfpga/arria10-sdram.c
>> index 35c355df71..b7eade0b17 100644
>> --- a/arch/arm/mach-socfpga/arria10-sdram.c
>> +++ b/arch/arm/mach-socfpga/arria10-sdram.c
>> @@ -486,7 +486,7 @@ static int arria10_sdram_firewall_setup(void)
>>   	writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_MPUREGION3ADDR);
>>   	writel(0xffff0000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM0REGION0ADDR);
>>   
>> -	mpu_en |= ARRIA10_NOC_FW_DDR_MPU_MPUREG1EN;
>> +	mpu_en |= ARRIA10_NOC_FW_DDR_MPU_F2SDR0REG0EN;
>>   	writel(mpu_en, ARRIA10_SDR_FW_MPU_FPGA_EN);
>>   
>>   	writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM0REGION1ADDR);
>> @@ -494,7 +494,7 @@ static int arria10_sdram_firewall_setup(void)
>>   	writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM0REGION3ADDR);
>>   	writel(0xffff0000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM1REGION0ADDR);
>>   
>> -	mpu_en |= ARRIA10_NOC_FW_DDR_MPU_MPUREG2EN;
>> +	mpu_en |= ARRIA10_NOC_FW_DDR_MPU_F2SDR1REG0EN;
>>   	writel(mpu_en, ARRIA10_SDR_FW_MPU_FPGA_EN);
>>   
>>   	writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM1REGION1ADDR);
>> @@ -502,7 +502,7 @@ static int arria10_sdram_firewall_setup(void)
>>   	writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM1REGION3ADDR);
>>   	writel(0xffff0000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM2REGION0ADDR);
>>   
>> -	mpu_en |= ARRIA10_NOC_FW_DDR_MPU_MPUREG3EN;
>> +	mpu_en |= ARRIA10_NOC_FW_DDR_MPU_F2SDR2REG0EN;
>>   	writel(mpu_en, ARRIA10_SDR_FW_MPU_FPGA_EN);
>>   
>>   	writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM2REGION1ADDR);




