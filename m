Delivery-date: Wed, 02 Nov 2022 09:57:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq9Z2-00C4f5-Ej
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 09:57:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq9Z1-0008GI-3N
	for lore@pengutronix.de; Wed, 02 Nov 2022 09:57:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ORlF9DUuhcKZwcHhar7mcTYYrI80FSK5fasvz5l9Kw4=; b=aLHEXVIMVXVK5n3tBnPnHz2tEO
	NCPhh+hk7ZUj5DmVJ1pLGBzW5P5fSILGBt4nBsK6kNrfLATxKMwktr8XfjMTL73k7yk4DzaqORCUI
	rWJb0JY8NzrHVX/QwZZY6ZkxBVWMW+UvADZxyxfx6JeGQXsTQHDEGnbbMOH7l+dYQThnKViUfuwKE
	GJ2oHX8xLLkqds3XLf/gz+tDVTjNTv+BY+KmJJD4UeBksdJJmNkWIlTdDQixsUrMF2vAFEOVQFGb+
	zGzWm6Yc70lFYSPIG9o38diHmYikoaSCnaEDgubD+ZhCl21fZbnplOUogqKdaLrPoZSrBKr6yF/n0
	UqFO7Sog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq9Xl-009GmA-VS; Wed, 02 Nov 2022 08:56:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq9Xe-009Gjj-Ax
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 08:56:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oq9Xc-00080a-QZ; Wed, 02 Nov 2022 09:56:08 +0100
Message-ID: <70f256b0-a074-fcd8-7240-5e950615168e@pengutronix.de>
Date: Wed, 2 Nov 2022 09:56:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20221101180421.241328-1-a.fatoum@pengutronix.de>
 <20221102075841.t74tkl7l2wax6ils@pengutronix.de>
 <20221102081908.GH3143@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221102081908.GH3143@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_015610_399758_B9E1774E 
X-CRM114-Status: GOOD (  19.73  )
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
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8M: atf: prefix log messages via pr_fmt()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 02.11.22 09:19, Sascha Hauer wrote:
> On Wed, Nov 02, 2022 at 08:58:41AM +0100, Marco Felsch wrote:
>> On 22-11-01, Ahmad Fatoum wrote:
>>> We have a couple of log messages in the file, so ensure they are
>>> appropriately prefixed.
>>>
>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> ---
>>>  arch/arm/mach-imx/atf.c | 2 ++
>>>  1 file changed, 2 insertions(+)
>>>
>>> diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
>>> index 5301c0fbe8e5..67462bc36189 100644
>>> --- a/arch/arm/mach-imx/atf.c
>>> +++ b/arch/arm/mach-imx/atf.c
>>> @@ -1,5 +1,7 @@
>>>  // SPDX-License-Identifier: GPL-2.0-only
>>>  
>>> +#define pr_fmt(fmt) "imx8m-atf: " fmt
>>
>> Just "atf:" or "imx-atf:"? This code may shared with upcoming imx
>> processors as well, so "imx8m-atf:" would be a bit to specific.
> 
> "imx-atf: " sounds appropriate.

That's confusing, because users may believe this is actual imx-atf output.
Looking at the two log messages in the file, they are both about SDPS
(serial download), so all suggestions are misleading. Perhaps the file
should just be renamed. Please dismiss this patch.

> 
> Sascha
> 
> 
>>
>> Regards,
>>   Marco
>>
>>> +
>>>  #include <asm/sections.h>
>>>  #include <common.h>
>>>  #include <firmware.h>
>>> -- 
>>> 2.30.2
>>>
>>>
>>>
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



