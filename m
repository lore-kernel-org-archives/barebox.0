Delivery-date: Mon, 10 Oct 2022 08:34:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohmMf-0034eT-A9
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:34:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohmMd-0004AQ-Bc
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:34:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8jBwSdbkIpH5kKJjL2vFWjnxoZP9JU0v1WbU80xICQM=; b=lbqZwX+Hz+lQfyulS/jG0oYr6T
	Gk1bNU7AfW1/el9EIN7HF6PmCJeqmQKl+OJ3IysBZeAREowMZ6uXDvhIsjjEKaH0Zfuhm2jDMutS2
	qDZnJaT7guVKPacCX+4aGkh2z+byw/yk537xFwVIziGrA+NJrvZqxGwIb1yMyJyK5DlZdW3hWXDuG
	yBozaO2yCPmtZu9fWLHzfRg9ZTUp5X9eP5nAN+jMmAvFpK7r37/K80wNNlh+K/S+g7hF8STKDD6Zt
	1C5ERHOiK84BU6soVgDlBM87A5+WCmYSiqIno3PIcda7R5pYbAcLTXexqB+/ho7ry2zNF7jYcS6/q
	NCol/mqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohmLE-00HEnD-5I; Mon, 10 Oct 2022 06:32:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohmL8-00HEms-Np
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:32:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ohmL5-0003ye-1L; Mon, 10 Oct 2022 08:32:35 +0200
Message-ID: <7830e940-d03f-a4e2-0759-0c3739cc5dfd@pengutronix.de>
Date: Mon, 10 Oct 2022 08:32:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>,
 Johannes Zink <j.zink@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220930133702.518949-1-j.zink@pengutronix.de>
 <20221004075414.y6wm4sb4qqocfww7@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221004075414.y6wm4sb4qqocfww7@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_233238_827075_0BFB53E5 
X-CRM114-Status: GOOD (  22.03  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: i.MX7: enable caches when booted over USB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 04.10.22 09:54, Marco Felsch wrote:
> Hi,
> 
> On 22-09-30, Johannes Zink wrote:
>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>
>> BootROM on the i.MX7 doesn't set the SMP bit when booted
>> over serial download. This leads to vastly worse performance
>> when doing memory-heavy operations in a USB-booted system,
>> as the caches are not utilized. Example running md5sum over
>> a 25M image in ramfs:
>>
>>   without patch: 10796ms
>>   with    patch: 457ms
>>
>> This issue isn't unique to the i.MX7, but exists for the i.MX6UL as
>> well, which also has the Cortex-A7 as CPU. Like with
>> imx6ul_cpu_lowlevel_init(), adapt imx7_cpu_lowlevel_init() to avoid this
>> slow down.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
>> ---
>>  arch/arm/mach-imx/cpu_init.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
>> index ea36215419..ede2076102 100644
>> --- a/arch/arm/mach-imx/cpu_init.c
>> +++ b/arch/arm/mach-imx/cpu_init.c
>> @@ -49,7 +49,7 @@ void imx6ul_cpu_lowlevel_init(void)
>>  
>>  void imx7_cpu_lowlevel_init(void)
>>  {
>> -	arm_cpu_lowlevel_init();
>> +	cortex_a7_lowlevel_init();
> 
> Out of curiosity, arm_cpu_lowlevel_init() does a lot more than
> cortex_a7_lowlevel_init() e.g. cache invalidation. Is it save to only
> call cortex_a7_lowlevel_init() here?

It's not and this was an oversight. Thanks for catching.

> 
> Regards,
>   Marco
> 
>>  	imx_cpu_timer_init(IOMEM(MX7_SYSCNT_CTRL_BASE_ADDR));
>>  }
>>  
>> -- 
>> 2.30.2
>>
>>
>>
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


