Delivery-date: Mon, 22 Jan 2024 16:49:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRwYE-00BfdP-1g
	for lore@lore.pengutronix.de;
	Mon, 22 Jan 2024 16:49:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRwYE-0003p4-PF
	for lore@pengutronix.de; Mon, 22 Jan 2024 16:49:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iYOaMv7VoqDxPWnJoWcunEvH2WkZ77HaIrwuK17ZRcs=; b=kmJMsq2fZKAwb23UrwGXUlK7Gx
	9Ug85k2VC7vr6BW/88RTeabOsn7XSvvhXrpK9QWm9qJ0YmiEyhdZK+Bcw4nUDtI/mjFg6w7pKXra5
	NFK4+dZrbEyvU3xy827u0jVg0KjQrEEqE1CDJ1gFkBvvqqRqFIN4ZKenr7tjSnFAMxmsRYk1OdbOI
	YgALOs1jJOvW6fkESqJPOcKkX7lkO4qpHdYsmzH9GallH/lXFnFV8X+qxvGid8KHVkdJc6VVwB+pd
	gYThvxhxKDMnfqRGb183eVq3aO0v3vihHoHOYfO1VbpzoU5XvxiUmrABgPZbsVUH56X2pKdIifQTL
	H2G5T8xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRwWt-00Cn9O-0p;
	Mon, 22 Jan 2024 15:48:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRwWq-00Cn8f-0A
	for barebox@lists.infradead.org;
	Mon, 22 Jan 2024 15:48:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rRwWo-0003gn-N7; Mon, 22 Jan 2024 16:48:02 +0100
Message-ID: <dca11fc5-e002-4c65-927f-7cb97b2478cf@pengutronix.de>
Date: Mon, 22 Jan 2024 16:48:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: =?UTF-8?Q?Hans_Christian_L=C3=B8nstad?= <hcl@datarespons.no>
Cc: Barebox List <barebox@lists.infradead.org>
References: <EE0A8E0F-465F-46D1-A366-676E9047EA0C@datarespons.no>
 <52fa194d-441c-8827-00ac-49db2cd72661@pengutronix.de>
 <99FA6255-7807-4790-BA19-5BE02346DBF7@datarespons.no>
 <56A3F2CD-4EE3-4157-B821-2BD8917155AC@datarespons.no>
 <2df69458-e538-1505-13dd-3ba87e697f3c@pengutronix.de>
 <2FCD3543-D1C9-4A48-B325-19F51C84FFC8@datarespons.no>
 <70fa4042-3978-18c3-e5fe-23ec14122c4b@pengutronix.de>
 <CF417E7D-014C-4AAE-B042-6E22069546D5@datarespons.no>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CF417E7D-014C-4AAE-B042-6E22069546D5@datarespons.no>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_074804_241985_C3DFB1E1 
X-CRM114-Status: GOOD (  23.42  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: IMX8M and Optee support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 19.10.23 08:25, Hans Christian Lønstad wrote:
> Optee using ATF 2.8 works when a header is stripped of the tee.bin file (use tee-raw.bin)

FTR: With Marco's recent OP-TEE changes that are sitting in next, barebox accepts
OP-TEE with a header too and will use it to dynamically determine the OP-TEE base
instead of hardcoding it to be at the end of RAM.

> 
> Hans
> 
>> 18. okt. 2023 kl. 16:36 skrev Ahmad Fatoum <a.fatoum@pengutronix.de>:
>>
>> Hello Hans,
>>
>> On 18.10.23 16:06, Hans Christian Lønstad wrote:
>>> The ATF for imx8 is quite convoluted requiring fixed memory locations for images and device trees. The ATF itself supports transferring parameters
>>> Using 4 unsigned long arguments. These are unfortunately zeroed out by a misconfiguration for IMX8:
>>>
>>> RESET_TO_BL31 := 1
>>> and not at the same time setting
>>> RESET_TO_BL31_WITH_PARAMS := 1
>>>
>>> As demoed below this can be made to work.
>>> ———><——
>>>
>>> Uart initialized
>>> Run level 3
>>> Init power
>>> Init DDR
>>> Handover to ATF
>>> imx8mp_load_and_start_image_via_tfa: Expect OPTEE at 0xbe000000
>>> CH e2a7175151fe3e842116990e62c864334e1bb030ca146b749d8e6b0c02481357
>>> IH e2a7175151fe3e842116990e62c864334e1bb030ca146b749d8e6b0c02481357
>>>                                                                   CAAM early init successful
>>> imx8m_atf_start_bl31: Callout BL31 with 1, 2, 3, 4
>>> NOTICE:  Do not release JR0 to NS as it can be used by HAB
>>> INFO:    bl31_early_platform_setup2: args are 0x00000001, 0x00000002, 0x00000003, 0x00000004
>>> NOTICE:  BL31: v2.8(debug):lf-6.1.36-2.1.0-0-g1a3beeab6-dirty
>>> NOTICE:  BL31: Built : 15:49:38, Oct 18 2023
>>>
>>> ——><——
>>>
>>> The "best" approach is likely to patch ATFs imx8mX_bl31_setup.c replacing preprocessor values with values
>>> handed over from Barebox. Adding these parameters will be compatible with unpatched ATFs anyway.
>>
>> There's void bl31_entry(uintptr_t bl31_entry, uintptr_t bl32_entry,
>>         uintptr_t bl33_entry, uintptr_t fdt_addr)
>>
>> which is used for RK3568/RK3588 platforms. AFAIU, future SoCs will likely
>> use a linked list of hand over blocks to transfer this same information.
>>
>> Any of these two approaches would be better than what we have now on i.MX.
>>
>> I am still not sure how this relates to OP-TEE hanging. Can you configure
>> your OP-TEE to not expect a FDT?
>>
>> Cheers,
>> Ahmad
>>
>>>
>>> Hans
>>>
>>>
>>>> 18. okt. 2023 kl. 15:04 skrev Ahmad Fatoum <a.fatoum@pengutronix.de>:
>>>>
>>>> Hello,
>>>>
>>>> On 18.10.23 14:31, Hans Christian Lønstad wrote:
>>>>> I may have gotten this wrong, but should not the device tree be passed over to ATF which again pass it over to Optee?
>>>>>
>>>>> The bl31() wrapper in imx8m_atf_start_bl31 should do this using register call parameters?
>>>>
>>>> I am using a quite antiquated imx-atf v2.4 and optee-os-3.2.0.imx in my setup and
>>>> haven't come around to update them. I know that barebox works fine with newer TF-A
>>>> versions (especially after https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/16370),
>>>> but I haven't tested a newer OP-TEE, so if your OP-TEE configuration/version expects
>>>> a device tree, this may indeed be the culprit.
>>>>
>>>>>> 18. okt. 2023 kl. 13:29 skrev Hans Christian Lønstad <hcl@datarespons.no>:
>>>>>>
>>>>>> We have a 2GB IMX8MP system using 32MB OPTEEE_SIZE, so expect to find Optee blob at 0xBE000000.
>>>>>>
>>>>>> ATF compiled with:
>>>>>> make PLAT=imx8mp BL32_BASE=0xBE000000 IMX_BOOT_UART_BASE=0x30890000 SPD=opteed DEBUG=1 -j
>>>>>>
>>>>>> Optee compiled with:
>>>>>>
>>>>>> CFG_DDR_SIZE ?= UL(0x80000000)
>>>>>> CFG_UART_BASE ?= UART2_BASE
>>>>>> CFG_TZDRAM_START ?= 0xBE000000
>>>>>> undefine CFG_NS_ENTRY_ADDR
>>>>>>
>>>>>> Barebox compiled with:
>>>>>> CONFIG_HAVE_OPTEE=y CONFIG_OPTEE_SIZE=0x02000000 # CONFIG_BOOTM_OPTEE is not set CONFIG_PBL_OPTEE=y CONFIG_FIRMWARE_IMX8MP_OPTEE=y
>>>>
>>>> barebox configuration looks ok assuming board code calls imx8mp_load_and_start_image_via_tfa().
>>>>
>>>>>>
>>>>>> This produces the following on boot:
>>>>>> —————————————————><--------------
>>>>>>
>>>>>> Uart initialized
>>>>>> Run level 3
>>>>>> Init power
>>>>>> Init DDR
>>>>>> Handover to ATF
>>>>>> imx8mp_load_and_start_image_via_tfa: Expect OPTEE at 0xbe000000
>>>>>> CH e2a7175151fe3e842116990e62c864334e1bb030ca146b749d8e6b0c02481357
>>>>>> IH e2a7175151fe3e842116990e62c864334e1bb030ca146b749d8e6b0c02481357
>>>>>>                                                                 NOTICE:  Do not release JR0 to NS as it can be used by HAB
>>>>>> NOTICE:  BL31: v2.8(debug):lf-6.1.36-2.1.0-0-g1a3beeab6-dirty
>>>>>> NOTICE:  BL31: Built : 13:14:09, Oct 18 2023
>>>>>> INFO:    GICv3 with legacy support detected.
>>>>>> INFO:    ARM GICv3 driver initialized in EL3
>>>>>> INFO:    Maximum SPI INTID supported: 191
>>>>>> INFO:    BL31: Initializing runtime services
>>>>>> INFO:    bl31_plat_get_next_image_ep_info: want image 0
>>>>>> INFO:    bl31_plat_get_next_image_ep_info: bl32 PC is 0xbe000000
>>>>>> INFO:    BL31: cortex_a53: CPU workaround for 855873 was applied
>>>>>> WARNING: BL31: cortex_a53: CPU workaround for 1530924 was missing!
>>>>>> INFO:    BL31: Initializing BL32
>>>>>> INFO:    bl31_plat_get_next_image_ep_info: want image 0
>>>>>> INFO:    bl31_plat_get_next_image_ep_info: bl32 PC is 0xbe000000
>>>>>> INFO:    opteed_init: 176 - calling <opteed_synchronous_sp_entry>
>>>>>> INFO:    opteed_synchronous_sp_entry: 79 - calling <opteed_enter_sp>
>>>>
>>>> Try compiling op-tee with CFG_TEE_CORE_LOG_LEVEL=4 and see how far it gets.
>>>>
>>>>>> I´m not sure why it asks for the same image twice and if this implies anything …
>>>>
>>>> No idea..
>>>>
>>>> Cheers,
>>>> Ahmad
>>>>
>>>> -- 
>>>> Pengutronix e.K.                           |                             |
>>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>>>
>>>
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



