Delivery-date: Tue, 19 Nov 2024 10:04:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDK9r-003lvS-1T
	for lore@lore.pengutronix.de;
	Tue, 19 Nov 2024 10:04:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDK9q-0005R4-IZ
	for lore@pengutronix.de; Tue, 19 Nov 2024 10:04:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8eLgLVSL29EcY2TKX6ZAEyQeQOEdrRsvFy4rqVgNGa0=; b=o37wxpZL80jtZUE65Bc45JFnsd
	cXjiz633FsH88d1DHgo9IkvhV4e7f7MLSz37N1LWMgX6MLUk7A3PhdTkPCekLkqApY4PZkC50iv23
	nWA3ii/LwMovPhQw7sJWtk+RuO+y8bEuo9zYGalBhYndaugfViejUs9FqEbQgwGd48Nt2rOjdKr93
	4vU/7BjimX7isJ2ERxIS9ksEswUcdRxUODI9JlaXB10CTCaQaZ5+eRoAJ8+FUbZQh7CbWePGfjBPH
	zGvSgHv+ZV63Q+j8E016sceziaGQqoVGLQAfC+0rVZfxUJOJHHOgdSU540/l3dy0Q6LhUSc9uHjSu
	uulKFzKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDK9L-0000000BpXx-1iWA;
	Tue, 19 Nov 2024 09:03:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDK9H-0000000BpXK-3Ph7
	for barebox@lists.infradead.org;
	Tue, 19 Nov 2024 09:03:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDK9G-0005IU-Dl; Tue, 19 Nov 2024 10:03:50 +0100
Message-ID: <55dbe395-08b7-4b72-b2b9-6e2ceee182b5@pengutronix.de>
Date: Tue, 19 Nov 2024 10:03:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stefano Manni <stefano.manni@gmail.com>
Cc: barebox@lists.infradead.org
References: <CANn9nbiT8J+irgWYQxiTydNyOiTEiXBo_ZLqdVG1EGpHY9eyOA@mail.gmail.com>
 <ed999cd8-a8e3-4e19-ba7d-924e393945ab@pengutronix.de>
 <CANn9nbjCGMOavMYQ+_WSGvSXYVcvFsi6d4H89LWqYfjFP4Pk6A@mail.gmail.com>
 <eaf67a30-ea57-4d4a-8be8-b72273918956@pengutronix.de>
 <CANn9nbhjc_r+Y2zogX9bgKb=BjvOk2AJc5wa4hYSF=00kAP8zA@mail.gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CANn9nbhjc_r+Y2zogX9bgKb=BjvOk2AJc5wa4hYSF=00kAP8zA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241119_010351_858447_4B6CF1A1 
X-CRM114-Status: GOOD (  21.47  )
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
Subject: Re: firmwareload fails for cortex-m7 on imx8mp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Stefano,

On 15.11.24 16:01, Stefano Manni wrote:
> Il giorno ven 15 nov 2024 alle ore 15:49 Ahmad Fatoum
> 
> <a.fatoum@pengutronix.de> ha scritto:
>>
>> Hello Stefano,
>>
>> On 15.11.24 15:47, Stefano Manni wrote:
>>> Hello Ahmad,
>>>
>>> patch [1] works fine when M7 firmware is compiled to run from ITCM. Thank you!
>>
>> Thanks for testing.
>>
>>> But when I use exactly the same firmware but compiled to run from DDR
>>> (see [2]) I got:
>>>
>>> barebox@NXP i.MX8MPlus EVK board:/ firmwareload hello-ddr.elf
>>> remoteproc0: powering up remoteproc-cm7.of
>>> ERROR: remoteproc0: bad phdr da 0x80000000 mem 0x3de4
>>> ERROR: remoteproc0: Failed to load program segments: -22
>>>
>>> Note that I can run it both from linux and u-boot.

I am surprised it works for you in Linux. To get it working with barebox:

 1) run iomem and note where your malloc area begins. Set CONFIG_MALLOC_SIZE,
    so it starts after 0x90000000 

 2) Add the following to your DT:

&{/reserved-memory} {
	rproc_reserved: rproc@80000000 {
        	reg = <0 0x80000000 0 0x10000000>;
	};
};

&remoteproc_cm7 {
	memory-region = <&rproc_reserved>;
};

Do you not have an equivalent memory-region definition in your kernel DT?

 3) I found some issues that I just Cc'd you on the fixes for. They may not be
    necessary for the simple hello-ddr.elf example though.

Cheers,
Ahmad

>>>
>>> [1] https://lore.barebox.org/barebox/20241115135242.1251691-1-a.fatoum@pengutronix.de/
>>> [2] https://docs.zephyrproject.org/latest/boards/nxp/imx8mp_evk/doc/index.html#programming-and-debugging-m7
>>
>> Can you send me the ELF file, so I can look at the headers myself?
>>
>> Cheers,
>> Ahmad
>>
>>>
>>> Il giorno ven 15 nov 2024 alle ore 15:02 Ahmad Fatoum
>>> <a.fatoum@pengutronix.de> ha scritto:
>>>>
>>>> Hello Stefano,
>>>>
>>>> On 15.11.24 14:43, Stefano Manni wrote:
>>>>> Dear all,
>>>>>
>>>>> I cannot run an ELF image on the M7 core on the imx8mp soc.
>>>>> The ELF comes from zephyr and it runs as expected when I load it from linux,
>>>>> but in barebox I encounter this error:
>>>>>
>>>>> barebox@NXP i.MX8MPlus EVK board:/ tftp zephyr.elf
>>>>>         [################################################################]
>>>>> barebox@NXP i.MX8MPlus EVK board:/ firmwareload zephyr.elf
>>>>> remoteproc0: powering up remoteproc-cm7.of
>>>>> DABT (current EL) exception (ESR 0x96000061) at 0x00000000007e0004
>>>>
>>>> https://esr.arm64.dev/#0x96000061 decodes this as
>>>> "Abort caused by writing to memory" (Alignment fault) with valid FAR.
>>>>
>>>> FAR is the addresss listed here (0x00000000007e0004), which is indeed
>>>> not divisible by 8.
>>>>
>>>>> [<ffd826f4>] (__arch_memcpy+0x48/0x13c) from [<ffd82a00>] (memcpy+0xc/0x14)
>>>>
>>>> The optimized memcpy used here expects misalignment not to trap.
>>>>
>>>>> As you can see the exception happens when rproc_elf_load_segments() tries to
>>>>> memcpy a segment where the M7 expects it. The ELF has been compiled to run
>>>>> from ITCM memory (0x007E0000-0x007FFFFF).
>>>>>
>>>>> Do you have any idea? Maybe may I have to put a reserved-memory for ITCM?
>>>>
>>>> I think I may have broken this when I changed barebox to map everything outside
>>>> main memory as uncached.
>>>>
>>>> I did this, because we 1) don't want to risk the main CPU speculating into I/O
>>>> memory and 2) don't want to have to use memory barriers for synchronization.
>>>>
>>>> The flipside is that drivers that access I/O memory must do this via
>>>> readl/writel and friends or via memcpy_io/memset_io. This was already required
>>>> before, but some drivers that didn't do this were lucky enough to fly under
>>>> the radar. At least for remoteproc, this seems no longer the case.
>>>>
>>>> I just Cc'd you on a patch to fix this for remoteproc.
>>>> Please let me know with a Tested-by if this resolves your issue.
>>>>
>>>> Cheers,
>>>> Ahmad
>>>>
>>>>>
>>>>> Thank you.
>>>>>
>>>>> Best,
>>>>> Stefano
>>>>>
>>>>>
>>>>
>>>>
>>>> --
>>>> Pengutronix e.K.                           |                             |
>>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>>
>>
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


