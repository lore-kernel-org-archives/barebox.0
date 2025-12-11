Delivery-date: Thu, 11 Dec 2025 11:47:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTeD7-00AGb9-1c
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 11:47:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTeD6-0003Yp-Nu
	for lore@pengutronix.de; Thu, 11 Dec 2025 11:47:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F1QDWZEcvlASz4JmqsZslwN76Ss5GauwM9vWtTOUK5c=; b=S29IHVpr9yjJeGZNKYDlGgh/S0
	rFixc5IkBmIIY1pJ0XpwXaLjXdcJ0c07eF0JfRScovOpE0I/VO1B6GjuGWzuKEz6pOV9Ry0IofLC+
	ZsMdPpb9sJ4DwLyf4VmmRr+1de5VpxmiQJicnKUehfeEu1shhoC9DwFyEuDC6i/NyplSa79KS/ty/
	kNyOz85NxdEoQc94eKQl71gzwWRS0tfBO62w+HsuHljaRjuQqtBjaKrHRJOS9fGA812fwdeV7C/Ow
	edJGlfj4kdqXops1GL/JGyz08kpbsz+rpYdOTRHyktvZmslLJmwZGKx2pDXo4DNons+fAeR4HwnM7
	zVbEN/zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTeCO-0000000GUlv-2IGL;
	Thu, 11 Dec 2025 10:47:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTeCL-0000000GUlX-44tm
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 10:47:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTeCI-0003Lq-E6; Thu, 11 Dec 2025 11:46:58 +0100
Message-ID: <d72a7cfc-d325-47b1-b4e1-1868bb22fd39@pengutronix.de>
Date: Thu, 11 Dec 2025 11:46:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Renaud Barbier <Renaud.Barbier@ametek.com>
Cc: Lucas Stach <lst@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <BL0PR07MB5665EA1D980C39F834845849EC1C9@BL0PR07MB5665.namprd07.prod.outlook.com>
 <9bb964dc-3c24-7c70-b007-759c3aa85511@pengutronix.de>
 <874d52d0-f476-53cf-1331-72f80bffacbd@pengutronix.de>
 <BN8PR07MB69932217E808C9DB9435411FECD6A@BN8PR07MB6993.namprd07.prod.outlook.com>
 <9923f2ef-cbce-44a1-86bf-6aaf829d3008@pengutronix.de>
 <BN8PR07MB6993379BECE786EB6B07106FECA7A@BN8PR07MB6993.namprd07.prod.outlook.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <BN8PR07MB6993379BECE786EB6B07106FECA7A@BN8PR07MB6993.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_024702_043203_83BB481C 
X-CRM114-Status: GOOD (  31.50  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: PCIE on LS1021A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

(Adding mailing list to Cc)

On 12/5/25 5:58 PM, Renaud Barbier wrote:
> I read about the MMU in ARMv7 with LPAE
> My understanding is that for  LPAE:
> - There are 3 different sizes 4K, 2MB or 1G to map memory associated to 3 table level with 512 entries:
> - in U-boot   arch/arm/cpu/armv7/ls102xa/cpu.c:mmu_setup , the boot loader uses two levels of table to map the full memory DDR or device memory with 1G blocks in level 1 or the PCIe with 2MiB block2 in level 2.. It is not clear to me how devices registers get map to virtual address though the function map_physmem afterwards though.

I am not familiar either with the MMU setup in U-Boot.

> For barebox,  I would think, 3 levels of table are needed. Am I right?

I think it would be acceptable for map_io_sections() to fail with an
error code if called to remap a too small region.

So if supporting remap of only 2M for non-SDRAM makes things easier for
you, go for it.

Cheers,
Ahmad

> 
> 
> 
> 
> 
>> -----Original Message-----
>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> Sent: 28 November 2025 10:15
>> To: Renaud Barbier <Renaud.Barbier@ametek.com>; Barebox List
>> <barebox@lists.infradead.org>
>> Cc: Lucas Stach <lst@pengutronix.de>
>> Subject: Re: PCIE on LS1021A
>>
>> ***NOTICE*** This came from an external source. Use caution when
>> replying, clicking links, or opening attachments.
>>
>> Hi Renaud,
>>
>> On 11/18/25 6:42 PM, Renaud Barbier wrote:
>>> Hello Ahmad,
>>> This has been a while that I asked you about a question on the PCIE for the
>> LS1021A.
>>> We are developing a new product with a NVME device using the LS1021A
>>> CPU and I would like to add LPAE support to barebox so that PCI child
>> devices can be probed.
>>
>> Sounds good!
>>
>>> I am trying to figure out how to assemble LPAE support based on the
>> information you gave me below and what I see in U-boot.
>>>
>>> A grep of LPAE in U-boot shows several files with specific code for LPAE:
>>> arch/arm/cpu/armv7/start.S
>>> arch/arm/lib/cache-cp15.c
>>> arch/arm/cpu/armv7/ls102xa/cpu.c
>>>
>>> I do  recognize similar pieces of code between barebox and U-boot From
>>> the message below, I understand I would need to update map_io_sections
>>> to map the PCI address as in U-boot mmu_setup from the file
>>> arch/arm/cpu/armv7/ls102xa/cpu.c
>>
>> I imagine, you'll want to to basically duplicate mmu_32.c as mmu_32l or
>> something and reimplement it for long descriptor use.
>>
>> Types like phys_addr_t would become 64-bit (and map_io_sections should
>> take a 64-bit physical address in your case) and then you need to map the
>> PCI regions below < 4G, so the CPU may access them.
>>
>> Cheers,
>> Ahmad
>>
>>>
>>> Cheers,
>>> Renaud
>>>
>>>
>>>
>>>> -----Original Message-----
>>>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>> Sent: 09 December 2022 19:18
>>>> To: Renaud Barbier <Renaud.Barbier@ametek.com>; Barebox List
>>>> <barebox@lists.infradead.org>
>>>> Cc: Lucas Stach <lst@pengutronix.de>
>>>> Subject: Re: PCIE on LS1021A
>>>>
>>>> ***NOTICE*** This came from an external source. Use caution when
>>>> replying, clicking links, or opening attachments.
>>>>
>>>> On 09.12.22 19:37, Ahmad Fatoum wrote:
>>>>>> From my debugging I can see that the Layerscape PCIE driver use VA
>>>>>> address = PA address = 0x24000000
>>>>>>
>>>>>> So  Is the problem I am seeing an issue with mapping the correct
>>>>>> physical
>>>> address for a 32-bit processor?
>>>>>>
>>>>>> If yes, how can I map the 64-bit PA to a 32-bit VA?
>>>>>
>>>>> Normally, you would call map_io_sections as pci-tegra does, but in
>>>>> your case this alone is insufficient as you will need to implement
>>>>> ARM32 LPAE support first. Once that's in place, you can use
>>>>> map_io_sections and map it to e.g. 0x24000000 as U-Boot does
>>>> arch/arm/cpu/armv7/ls102xa/cpu.c mmu_setup().
>>>>>
>>>>> U-Boot LPAE support was added to support Rpi2, which starts in HYP
>>>>> mode, but we had worked around that in barebox to not require LPAE.
>>>>> For your case however, I don't believe there's a way around using
>>>>> LPAE
>>>> page tables.
>>>>>
>>>>> Tangentially related: I don't know how the PCI controller maintains
>>>>> cache coherency, but if it does write back through CPU caches, you
>>>>> may
>>>> observe memory corruption.
>>>>>
>>>>> It may be the safest for you to disable cache snooping for PCIe
>>>>> until that's resolved (We've this planned, but it will probably not
>>>>> happen this
>>>> year.
>>>>> If you're interested I can elaborate).
>>>>
>>>> I should have shortened the context a bit. Posting again in case you
>>>> missed it.
>>>>
>>>>>
>>>>> Cheers,
>>>>> Ahmad
>>>>>
>>>>>
>>>>>
>>>>>>
>>>>>> Cheers,
>>>>>> Renaud
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>
>>>>
>>>> --
>>>> Pengutronix e.K.                           |                             |
>>>> Steuerwalder Str. 21                       |
>>>>
>> https://urldefense.com/v3/__http://www.pengutronix.de/__;!!HKOSU0g!Cf
>>>> A
>>>> u4L9MQvIuEvfQmVymcZYkrdbrn98J2QbYMFsHhqFrxp8fDzjT6-
>>>> h9nSajsgYcNvsCjJVWd98oYvdyj7pvR-ZfDY0$   |
>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555
>> |
>>>
>>
>> --
>> Pengutronix e.K.                  |                             |
>> Steuerwalder Str. 21              |
>> https://urldefense.com/v3/__http://www.pengutronix.de/__;!!HKOSU0g!Gr
>> qIPFb9B_Y1IapEh1Za8-
>> VKxnpv9bH1ejrQAh_s0Zf5MypqMk7BEOM9anjygqIVmKWxo04Tbhpm4L3YtQ
>> C2G3bKq8E$   |
>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



