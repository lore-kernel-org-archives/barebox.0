Delivery-date: Sat, 06 Sep 2025 02:13:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uugYP-008dZo-0D
	for lore@lore.pengutronix.de;
	Sat, 06 Sep 2025 02:13:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uugYN-0000h5-Fg
	for lore@pengutronix.de; Sat, 06 Sep 2025 02:13:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B65tTP0h+vU7o/uL++JtW+gWxyXs+nhyME2jQc0Ky8k=; b=C5LZPXsestYMGtdtATv4vH11KW
	XvbWSHynXlpBxmuB/MfQItz1XNbMheUphFMDCkxpne360Z6kZD2zF5oDORn/mQUwadtEK3/Wjd01v
	Rb5A37KiDuNuJyO3VpcqDL95wu6mV1zxnPk3l5JWkvovHZQmdjr7Q5JpHtu+ecUBELXB5Dyg3uxxU
	+CB9lRkhcapRYT2c5OuamScplgxyKYGrw9+xejCJpcczfM4NjG9JcXcQWtONa+N1hXOG78feNf/cH
	JJtNGHteCReog2U8rf3nFDiscfE/LzLvPtwCNeonS9ygHZC4GGPhOBEpc+MgwekDC7itb2vuXHVMG
	k+qDflIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uugXj-00000005Vir-1jxV;
	Sat, 06 Sep 2025 00:12:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uubja-00000003ztg-3a3W
	for barebox@lists.infradead.org;
	Fri, 05 Sep 2025 19:04:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uubjZ-0001Qq-Ii; Fri, 05 Sep 2025 21:04:29 +0200
Message-ID: <a564bf51-60a4-42c9-8aea-8a96acba535c@pengutronix.de>
Date: Fri, 5 Sep 2025 21:04:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: anis chali <chalianis1@gmail.com>, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20250831035542.1623695-1-chalianis1@gmail.com>
 <20250831035542.1623695-4-chalianis1@gmail.com>
 <c7d7bfa9-c165-4ad0-a4a2-76c0de24c56c@pengutronix.de>
 <892fde210361fd699c91fd27410a01b84c6d94c7.camel@gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <892fde210361fd699c91fd27410a01b84c6d94c7.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_120430_900710_8612BFEE 
X-CRM114-Status: GOOD (  43.12  )
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
Subject: Re: [PATCH 4/7] arm: efi: add a generic efi machine.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Anis,

On 9/5/25 2:16 AM, anis chali wrote:
> Hi,
> 
>> Thinking about it, this doesn't really fit into the existing model.
>> We have CONFIG_EFI_PAYLOAD, which when enabled gives _all_ images
>> an EFI stub.
>>
>> I think it's better to just give CPU_V7 and CPU_V8 prompts.
> Don't understand.

See
https://lore.kernel.org/all/20250904081626.93182-1-a.fatoum@pengutronix.de/

This way you can just enable CPU_V8 and keep all SoCs disabled to build
barebox for UEFI.

>> Then they can be enabled for the barebones EFI-only use case alongside
>> CONFIG_EFI_PAYLOAD. CONFIG_EFI_PAYLOAD should have its depends on
>> COMPILE_TEST removed as last patch in your series then I think (or
>> before last if you add a dedicated efi_defconfig).
> So we keep a specific kconfig variant that will be selected using efi_defconfig
> file and not merging the multi_v8_defconfig with the efi_payload config in the makefile
> Is it what you mean?

While multi_v8_efi_defconfig is nice to have, I see the utility now in
having an efi_v8_defconfig (or efi_{payload,app}_v8_defconfig?) that
disables all other boards, because they aren't needed.

The new efi_*_v8_defconfig would just enable CPU_V8 and
CONFIG_EFI_PAYLOAD and this way we don't need an extra machine.

> will this defconfig serve only arm64 or should we think about it more globally to 
> be used with what ever cpu or arch and in that case maybe we can just keep the same 
> startegy than merguing between configs and this time we will take the efi_payload config
> and add the selected arch from the environment variable ARCH???

Let's just add a single efi_v8_defconfig for now and think about merging
later.

> especially the efi payload is not more than an application compiled on a given architecture and
> and is loadable by efi, so it should never change the hardware state and stay hardware agnostic.

Agreed. ISA should be the only dependency in the optimal case.

>> +	bool "EFI on ARM64"
>>>
>>
>> Generally, we should call it EFI payload to differentiate from
>> EFI loader (firmware)
> Ack,  will change it for "Arm 64 EFI Payload", but maybe see think it with what I just said
> before.
> 
>> Symbol doesn't exist on ARM.
>>
>> +	select HAVE_EFI_PAYLOAD
>>>
>>
>> Already selected by CPU_64
> Ack
>  
>> +	select EFI_PAYLOAD
>>> +	select BOOTM_FITIMAGE
>>>
>>
>> select means it can't be deselected, which is not needed here.
> Ok, it makes sense, bootm fit is not required.
> 
>>
>> +    select CLOCKSOURCE_EFI
>>> +    select DRIVER_VIDEO_EFI_GOP
>>>
>>
>> It's reasonable to disable GOP if the device is headless anyway.
>> You can give the DRIVER_VIDEO_EFI_GOP a default y though if you like,
>> because many (most?) users will likely want to use GOP.
> Ok, will make it as just default but not select with kconfig.
>  
>> Point is moot with above suggested change though.
>>
>> +	depends on 64BIT
>>> +	default y if ARCH_MULTIARCH
>>>
>>
> Ack.
> 
> Maybe if you have a couple of minutes to just summarize what need to be done
> and have some plan for efi payload stuff, it is very apperciated the time you
> spend supporting, I didn't know anything about barebox a few weeks ago, but I 
> noticed that it is really a very good quality code, maintainable, it will an
> excellent replacement for all the efi payloads, it could also be an excellent choice
> if we need to build the same software stack on different and mixed closed architectures 
> products where the efi is the only supported bootloader.

The current EFI_PAYLOAD support for ARM is similar to the kernel's, it
modifies the normal image(s) to add an EFI stub and images can then be
booted in two different ways: Executing the first instruction or by
parsing the PE header and executing it from within an EFI environment.

Because CONFIG_EFI_PAYLOAD is invasive in this manner and affects all
images generated, I don't want it selected by a separate
subarchitecture, because it doesn't reflect its global effect.

That's why I prefer having CPU_V8 and CPU_V7 symbols with a prompt and
then CONFIG_EFI_PAYLOAD will just EFI stub all images.

Now with EFI_PAYLOAD enabled, we are missing out on a way to boot an
EFI-stubbed kernel from within barebox. Currently, we only support the
legacy handover protocol, which is not standard, x86-only and can be
disabled in newer kernels.

barebox needs a spec-conforming boot method that can be used on ARM and
that can also be used on x86 later.

FIT image support is good to have, but it's a separate manner from being
able to just boot an EFI stubbed kernel with a normal

  bootm -r /boot/initrd.gz -o /efi.dtb /boot/Image.gz

With that in place, I think we should have everything for barebox to be
a viable EFI bootloader on ARM as it's on x86.

Cheers,
Ahmad


> 
> Cheers,
> 
> Anis C.
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



