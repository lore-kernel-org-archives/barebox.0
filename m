Delivery-date: Wed, 30 Jul 2025 14:24:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh5rW-005G99-05
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 14:24:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh5rV-0003yg-Ec
	for lore@pengutronix.de; Wed, 30 Jul 2025 14:24:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vjpIhG7oh8eCidFENN6Md+YDmDQ1Z2e5kcZLHMxSTRE=; b=akteYTlUHoNQmIC7VeUvRXtfrb
	TP5N5kT+Qi3BlHxucleDDdJSyf9LocltNHJqlbEhutmdaCPJmRkbtLk0NvmeYmeyAjmNisVobLaRl
	LNNJJN0ZhEB2QkzRYQEJRBq1TAK1+/AqeCaPzAKkzIZjytufB7wKSNdQheKPsgdn4T8CNIoiW/m2f
	npGczKa1YmodJJmf5/4NuH3d4hmrIM16WugO/OS8dydz9ILKWLVisJo5CPVNbzKBMaaBB4MqR9Pws
	gPJuVymPp1qmtWmzvHdsVgqX7+NpPXzz5eY0n0gHL6MHXTMHKFaRbM96E3tjiRUFDTSi4Di9AjzWp
	U4UlQ6Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh5r1-00000001SS3-1Bql;
	Wed, 30 Jul 2025 12:24:19 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh4zL-00000001Lxb-2fDs
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 11:28:52 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-45610582d07so42660725e9.0
        for <barebox@lists.infradead.org>; Wed, 30 Jul 2025 04:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753874930; x=1754479730; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vjpIhG7oh8eCidFENN6Md+YDmDQ1Z2e5kcZLHMxSTRE=;
        b=AMjMyYsEuaLpZcSp5x9d9U4V5HxBTnhWF+muJWNfhLkIAo4n4mA/rY8ZFafgGoajRV
         uy2eHERciVlwBHaOoXdtAdfj9cHQ1csvl+vZBC6IOHxl5IH+n/9vvtZHRHVPQ2rV+HbO
         V0XHnRrAQ3pymGNuUUkHFKLCYlnIbm57u3CiaxixlW3a4ThhaR9YUczg6kFNO/KtgICS
         7/Wpdprl/kGZcIkoKQrAS0nlAFZWLO74vBGRsIlh6d0dITPBHTEPpsfMPuvBkUgvgfe8
         J3mJXjovH8Td7HMb05eWwxyvYsHYsbiyc0sMS//Mfm2ZIJ+u+jDmXxoi9YgEYbyvSo5o
         dXvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753874930; x=1754479730;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vjpIhG7oh8eCidFENN6Md+YDmDQ1Z2e5kcZLHMxSTRE=;
        b=VpOGGDKqPH0EWRTXX9bxt25+640xO33g9CD4HMFWS3qbPIfnfZyxVnuyIr6EQYDy5/
         4AMmxUt/PJ6NqgxbaNANJ9axtkgrAyHTMLjlpY9mvuE9n1mZmf7bF1qj7p97MQPAOWb0
         ny+lUTrV7N2yHsohA90NR8KutjthhphRUkN3S9RopYdK+fC7PosWhs4a9OKgEk8vhUfk
         qjvYlrBLqeppDOJycwlGtv+6+yZ6Qy51s0HOkQvQEo1LWung/2dpzXf9XMgmd4Sn9AKv
         DAr+VFCzP3/4MPJ0kPo4wnPBfHQ/HyPMoWDA2u1p/Cbb35K6JzP2BQJjdPzKWZm2tYTu
         9D2A==
X-Gm-Message-State: AOJu0Yz/K2CiqLBSfJsYKGIGtsE+ax7ytgrsW8oWO7uyM2phEZ0LNlKP
	ZG9i7CIZ5HoTIdPWya10H6nsDSe/uvsMwRcv/a31u94rLblNM+jvr5aDRiL78g==
X-Gm-Gg: ASbGnctc7H+kTWco1raHsy7nH3y2cti9JFjVCLerz0xSJpymT3oypyzB6WNkPnEy0lZ
	MuO/znyNWBh7eOIoVt58WYxo0Zs/6jaZ4wcbNhwjlOZxIPcocu6RuP70LtMuf0jAX6o3FDH9vIH
	1l8WG5faOkwG/JpNiovQCp7w662fu2Wk2qDUUC69qaGRNoX5BkK+DKKfV5EnHo6fj/PSHBtAHAm
	WlN54W4CI4tr47Trx+Xsyf8TiRfSYaIQ9Yv9paDGHCYwOsUTbGdJQCA06ah3lbNzZAel53912Bb
	H7Ebwp+c8Ea0mg857Spy4IVuGy052gph4ksx065nOFGBS7JMyWLp2DFS1w6TNteAQoCBa3ZO7Q+
	Ibrd1xvts7Mt7nb9+T6S5kYDYVFIC9fy5TSnwBm2LkIFfbtBfMw0Ej64uyhIqEGGluYTmK5q1/I
	MR
X-Google-Smtp-Source: AGHT+IGmOGzchj59BCgm/h92fVV7F9RChvbpn8Bo9ahN0nC8KoRVQTyvhmWtfx1EXOTP5ugeDcbvOA==
X-Received: by 2002:a05:600c:3b88:b0:456:285b:db3c with SMTP id 5b1f17b1804b1-45892b9525amr31857205e9.3.1753874929791;
        Wed, 30 Jul 2025 04:28:49 -0700 (PDT)
Received: from [192.168.1.104] (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458953eaeeesm23828855e9.25.2025.07.30.04.28.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 04:28:49 -0700 (PDT)
Message-ID: <334ffb15-1193-4f3f-a378-edcb04cd330d@gmail.com>
Date: Wed, 30 Jul 2025 14:28:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250729203659.1858575-1-ivo.ivanov.ivanov1@gmail.com>
 <20250729203659.1858575-2-ivo.ivanov.ivanov1@gmail.com>
 <c9bea6cb-b444-4720-9946-d215fde11c2a@pengutronix.de>
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <c9bea6cb-b444-4720-9946-d215fde11c2a@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_042851_671678_3C7E3943 
X-CRM114-Status: GOOD (  21.37  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 1/4] video: simplefb-client: switch to dev_get_resource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 7/30/25 11:11, Ahmad Fatoum wrote:
> Hi Ivaylo,
>
> thanks for your patch.
>
> On 7/29/25 22:36, Ivaylo Ivanov wrote:
>> Since the framebuffer memory resource resides in ram, it has already
>> been requested and mapped, so only get the resource to avoid
>> requesting a busy resource. This is also the approach for linux.
> even if it's regular RAM (as opposed to video memory) we aren't
> guaranteed, it's mapped suitably.

In my case at least, the mainline device tree covers all of dram -
(0x80000000 + n GB)

>
> I think a remap of the region to writecombine is in order here. It
> probably works right now, because we flush caches before shutting down
> the MMU, but if you were to run fbtest, I'd expect that you will see
> artifacts due to some pixels remaining in dirty cache line.

So you suggest remapping it, like ipufb for example?

    fbi->info.screen_base = dma_alloc_writecombine(DMA_DEVICE_BROKEN,
                           info->line_length * info->yres,
                           DMA_ADDRESS_BROKEN);
>
>> While at it, use IOMEM for mem->start and drop an unnecessary newline.
>>
>> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> Patch is correct, except for that aspect of the commit message:

I don't get it, do I have to change the commit message only, or
code logic too?

Thanks and best regards,
Ivaylo

>
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>
> Thanks,
> Ahmad
>
>> ---
>>  drivers/video/simplefb-client.c | 5 ++---
>>  1 file changed, 2 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/video/simplefb-client.c b/drivers/video/simplefb-client.c
>> index dafec617..41ad8ffa 100644
>> --- a/drivers/video/simplefb-client.c
>> +++ b/drivers/video/simplefb-client.c
>> @@ -96,7 +96,7 @@ static int simplefb_probe(struct device *dev)
>>  	if (ret)
>>  		return ret;
>>  
>> -	mem = dev_request_mem_resource(dev, 0);
>> +	mem = dev_get_resource(dev, IORESOURCE_MEM, 0);
>>  	if (IS_ERR(mem)) {
>>  		dev_err(dev, "No memory resource\n");
>>  		return PTR_ERR(mem);
>> @@ -116,10 +116,9 @@ static int simplefb_probe(struct device *dev)
>>  	info->blue = params.format->blue;
>>  	info->transp = params.format->transp;
>>  
>> -	info->screen_base = (void *)mem->start;
>> +	info->screen_base = IOMEM(mem->start);
>>  	info->screen_size = resource_size(mem);
>>  
>> -
>>  	info->fbops = &simplefb_ops;
>>  
>>  	info->dev.parent = dev;



