Delivery-date: Thu, 30 Nov 2023 08:30:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8bUo-00E7LV-0x
	for lore@lore.pengutronix.de;
	Thu, 30 Nov 2023 08:30:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8bUo-0003DA-75
	for lore@pengutronix.de; Thu, 30 Nov 2023 08:30:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MxKtKNEAruzXsyC5kC2Gkm2H9Mvh9cFvAU5pORJ03Ho=; b=kBxz5tylCPO2LK59TKvycf+pNG
	j0sODlYCb0EtWG4srj9PpSnpFS+o3fL33mxIkI5RYXko/9fKYLrheuaGjS+TdmJljaLH+6zhg9Kkc
	rn2w27BeNNPTfInItRtag4nypTxt6N9tTvqXsXe1IFIraMB4ODe9R6vRIXeTZHE/+mgG/lqvSgj2J
	8HjucfgJlWEzb90rUcsDnf10/ApCqGXgSS6ck7ywAMn2t4waBhfnKMoNhnBBa69oRh5gaPcJHBJAf
	CbSvzsHTPaTJf3zRXKIUH0MBYOqrUjD5pexl9HN5MIln6BBR+e4M9Xc5l4pdk1Xjb9KKsTDJ6papA
	Tj2KZ9rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8bTK-00A68q-2s;
	Thu, 30 Nov 2023 07:28:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8bTH-00A681-0L
	for barebox@lists.infradead.org;
	Thu, 30 Nov 2023 07:28:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8bTD-00032U-J5; Thu, 30 Nov 2023 08:28:23 +0100
Message-ID: <1349c023-d0dd-49f2-9d91-e3c870430cf3@pengutronix.de>
Date: Thu, 30 Nov 2023 08:28:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Lior Weintraub <liorw@pliops.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <PR3P195MB0555B60C3789D5DE6FCF1D4BC3BDA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <c769d8bc-57af-4607-b04f-72e8b5153e2e@pengutronix.de>
 <PR3P195MB05556E1A5C2285F0DEA6EA5EC383A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <PR3P195MB05556E1A5C2285F0DEA6EA5EC383A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_232827_142638_FAE98764 
X-CRM114-Status: GOOD (  25.74  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Pass user defines for Barebox build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 29.11.23 11:13, Lior Weintraub wrote:
> Thanks Ahmad,
> 
> On our Barebox porting we have a small piece of code that needs different coding if we build it for QEMU or for the real HW.
> We are used to pass build defines in other projects so that is way we took this approach.  
> 
> I assume the official way would be to set a new defconfig and define a new platform?
> Currently our spider_defconfig has:
> CONFIG_MACH_SPIDER_MK1_EVK=y
> So the new one (spider-qemu_defconfig) would use:
> CONFIG_MACH_SPIDER_QEMU_EVK=y  
> 
> Is this the correct solution?

I'd rather suggest either

   - Having the difference detected at runtime.

   - Have the difference encoded into the device tree: You can have
     multiple ENTRY_FUNCTION, each with a different device tree and
     get multiple images in the same build, one for each device tree.

This avoids the confusion when the wrong image is used. You can even
combine them, see for example arch/arm/boards/stm32mp15xx-dkx/lowlevel.c.

Cheers,
Ahmad

> 
> Cheers,
> Lior.
> 
>> -----Original Message-----
>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> Sent: Wednesday, November 29, 2023 9:20 AM
>> To: Lior Weintraub <liorw@pliops.com>; barebox@lists.infradead.org
>> Subject: Re: Pass user defines for Barebox build
>>
>> CAUTION: External Sender
>>
>> Hello Lior,
>>
>> On 27.11.23 08:02, Lior Weintraub wrote:
>>> Hi guys,
>>>
>>> Is there a formal way to pass user compilation flags into Barebox build?
>>
>> There isn't. Both barebox and Linux have been broken in the past by distros
>> setting CFLAGS that force hardening options that require kernel/libc cooperation,
>> which didn't apply to barebox. For that reason, the variables were prefixed
>> with KBUILD_ and a way to inject variables into the build of barebox itself
>> (i.e. not host tools) is intentionally not provided.
>>
>> What options do you want to inject?
>>
>>> I couldn't find one so I just patched the main Makefile
>>> diff --git a/Makefile b/Makefile
>>> index 471bbc2679..febc94b7f3 100644
>>> --- a/Makefile
>>> +++ b/Makefile
>>> @@ -443,7 +443,7 @@ KBUILD_CPPFLAGS        := -D__KERNEL__ -
>> D__BAREBOX__ $(LINUXINCLUDE) -fno-builti
>>>  KBUILD_CFLAGS   := -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs
>> \
>>>                    -fno-strict-aliasing -fno-common -fshort-wchar \
>>>                     -Werror=implicit-function-declaration -Werror=implicit-int \
>>> -                   -Os -pipe -Wmissing-prototypes -std=gnu89
>>> +                   -Os -pipe -Wmissing-prototypes -std=gnu89
>> $(BAREBOX_USER_CFLAGS)
>>
>> USER is an unfortunate name, because there's already KBUILD_USERCFLAGS
>> and that user is short for userspace and not the user, who is building
>> barebox.
>>
>> Cheers,
>> Ahmad
>>
>>>  KBUILD_AFLAGS          := -D__ASSEMBLY__
>>>  KBUILD_AFLAGS_KERNEL :=
>>>  KBUILD_CFLAGS_KERNEL :=
>>>
>>> This patch allowed me to set BAREBOX_CFLAGS environment when calling
>> make.
>>>
>>> Thanks,
>>> Lior.
>>>
>>>
>>>
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://secure-web.cisco.com/1V675vT6A56-
>> sSk-T9-bJ2qzuaJbiJ0EB_N1QWP_UHYUKGBuj9PAjRQHPYsTfz9deA_5ev2NrI87w-
>> kH7EvvotDdB1MXS4OIYlI3dCXTV0YhfEZy-
>> woT7YkA7cjsyhiUkvVJ_RIhamKrCuM300cDnHTGxcaoc6H6DkhUysqXNFY9FCXjser
>> C7dKTwiEPxhk_pdVn-S0-lW1YjHU-UonTqdBHcJvBCtjWkVOiihczwV-
>> TCt9jiaam9NqGn_WreRxWWTC0hcFH0eAsBAi277FQmsFnxcBgaEKxI40JADKLuW
>> F0/http%3A%2F%2Fwww.pengutronix.de%2F  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



