Delivery-date: Fri, 15 Nov 2024 15:51:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBxfh-002Hob-1z
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 15:51:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBxfg-0001Sb-Sn
	for lore@pengutronix.de; Fri, 15 Nov 2024 15:51:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qKJXrm0OFDFhvkL9qOEj6NQLSg2Z8GXMmn3zmnG1oqc=; b=2FtXW65ecwm0wdtBCFL/mOTR+Y
	1uI1mSrjozbH7xnn6FCtTBq+RvNhVBNdVT2q6XMSIuTc+CBI9s7lDBHRJvGYa8ZSZdX3XOs2Bz0s+
	+daAiOn9DMkS5Dm40Kl9+G5/iis8LB+TYiTKZV9f4yUfEfr5CoNqz2EGO1kOUqT5GoTej4KgGlPZC
	vfJfhDQnsuAubrc8VKdXSVvF+cn8RGK163Gx75+sj35fOoGSU7d/4SQ9HaFV9jqdZaCqWp2m8sKb+
	PQ9bxpP6iyHYnWGuyYu7JXJ6Hw62RWZfYihgkWE8/co1KB93sIvUKQHj8Y3BQhdbqA6knMiTOGfsl
	3jYDnjOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBxfF-000000032vV-0UxG;
	Fri, 15 Nov 2024 14:51:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBxdp-000000032do-0s8W
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 14:49:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBxdn-00013b-W2; Fri, 15 Nov 2024 15:49:44 +0100
Message-ID: <eaf67a30-ea57-4d4a-8be8-b72273918956@pengutronix.de>
Date: Fri, 15 Nov 2024 15:49:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stefano Manni <stefano.manni@gmail.com>
Cc: barebox@lists.infradead.org
References: <CANn9nbiT8J+irgWYQxiTydNyOiTEiXBo_ZLqdVG1EGpHY9eyOA@mail.gmail.com>
 <ed999cd8-a8e3-4e19-ba7d-924e393945ab@pengutronix.de>
 <CANn9nbjCGMOavMYQ+_WSGvSXYVcvFsi6d4H89LWqYfjFP4Pk6A@mail.gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CANn9nbjCGMOavMYQ+_WSGvSXYVcvFsi6d4H89LWqYfjFP4Pk6A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_064945_254468_880771AD 
X-CRM114-Status: GOOD (  23.08  )
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
Subject: Re: firmwareload fails for cortex-m7 on imx8mp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Stefano,

On 15.11.24 15:47, Stefano Manni wrote:
> Hello Ahmad,
> 
> patch [1] works fine when M7 firmware is compiled to run from ITCM. Thank you!

Thanks for testing.

> But when I use exactly the same firmware but compiled to run from DDR
> (see [2]) I got:
> 
> barebox@NXP i.MX8MPlus EVK board:/ firmwareload hello-ddr.elf
> remoteproc0: powering up remoteproc-cm7.of
> ERROR: remoteproc0: bad phdr da 0x80000000 mem 0x3de4
> ERROR: remoteproc0: Failed to load program segments: -22
> 
> Note that I can run it both from linux and u-boot.
> 
> [1] https://lore.barebox.org/barebox/20241115135242.1251691-1-a.fatoum@pengutronix.de/
> [2] https://docs.zephyrproject.org/latest/boards/nxp/imx8mp_evk/doc/index.html#programming-and-debugging-m7

Can you send me the ELF file, so I can look at the headers myself?

Cheers,
Ahmad

> 
> Il giorno ven 15 nov 2024 alle ore 15:02 Ahmad Fatoum
> <a.fatoum@pengutronix.de> ha scritto:
>>
>> Hello Stefano,
>>
>> On 15.11.24 14:43, Stefano Manni wrote:
>>> Dear all,
>>>
>>> I cannot run an ELF image on the M7 core on the imx8mp soc.
>>> The ELF comes from zephyr and it runs as expected when I load it from linux,
>>> but in barebox I encounter this error:
>>>
>>> barebox@NXP i.MX8MPlus EVK board:/ tftp zephyr.elf
>>>         [################################################################]
>>> barebox@NXP i.MX8MPlus EVK board:/ firmwareload zephyr.elf
>>> remoteproc0: powering up remoteproc-cm7.of
>>> DABT (current EL) exception (ESR 0x96000061) at 0x00000000007e0004
>>
>> https://esr.arm64.dev/#0x96000061 decodes this as
>> "Abort caused by writing to memory" (Alignment fault) with valid FAR.
>>
>> FAR is the addresss listed here (0x00000000007e0004), which is indeed
>> not divisible by 8.
>>
>>> [<ffd826f4>] (__arch_memcpy+0x48/0x13c) from [<ffd82a00>] (memcpy+0xc/0x14)
>>
>> The optimized memcpy used here expects misalignment not to trap.
>>
>>> As you can see the exception happens when rproc_elf_load_segments() tries to
>>> memcpy a segment where the M7 expects it. The ELF has been compiled to run
>>> from ITCM memory (0x007E0000-0x007FFFFF).
>>>
>>> Do you have any idea? Maybe may I have to put a reserved-memory for ITCM?
>>
>> I think I may have broken this when I changed barebox to map everything outside
>> main memory as uncached.
>>
>> I did this, because we 1) don't want to risk the main CPU speculating into I/O
>> memory and 2) don't want to have to use memory barriers for synchronization.
>>
>> The flipside is that drivers that access I/O memory must do this via
>> readl/writel and friends or via memcpy_io/memset_io. This was already required
>> before, but some drivers that didn't do this were lucky enough to fly under
>> the radar. At least for remoteproc, this seems no longer the case.
>>
>> I just Cc'd you on a patch to fix this for remoteproc.
>> Please let me know with a Tested-by if this resolves your issue.
>>
>> Cheers,
>> Ahmad
>>
>>>
>>> Thank you.
>>>
>>> Best,
>>> Stefano
>>>
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


