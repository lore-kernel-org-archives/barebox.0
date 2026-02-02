Delivery-date: Mon, 02 Feb 2026 11:14:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vmqwk-0080v4-0Q
	for lore@lore.pengutronix.de;
	Mon, 02 Feb 2026 11:14:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vmqwi-0003CR-Mb
	for lore@pengutronix.de; Mon, 02 Feb 2026 11:14:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zMz7heA2t1UHm9vUDisT8XwgifpibxaYcSDpMG8rQRk=; b=3Hbtlj6jxHLgYy5YWDCAoNn5ko
	XbO2d+nm3d3Ten92A5oJriNdSc7vabGXdpemvkfWoUFF0jKScW75z7eVBMAzfQ7E9o/bQcSDkEq4Y
	j8mI/Mk18Fj1UCE1TaZjiAOIC34iY3PCDT15D907vx930j6rBa+fClxDCi+NMBuMqTSSq+MYuafYf
	p4eeFlRf57xzOQ0rb9OwG21p/XPvAM9lb8onsFRXGWEEd1aHze5LBsBoD3yc9zYdiMIVfUD8Q/R7k
	bv1hsF0wJatkyHVnriHyMcBn7uRZ0yZE6Zkl2xi7xS4PS5VZ+K68i7Rz21O5kVe+HG3T+SvqEIGOZ
	e/CP3L7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmqw7-00000004nLd-3Sq6;
	Mon, 02 Feb 2026 10:13:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmqw4-00000004nKg-262c
	for barebox@lists.infradead.org;
	Mon, 02 Feb 2026 10:13:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vmqw1-00033G-F6; Mon, 02 Feb 2026 11:13:33 +0100
Message-ID: <387445cf-56c2-41ef-93b5-97959378478f@pengutronix.de>
Date: Mon, 2 Feb 2026 11:13:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Barebox List <barebox@lists.infradead.org>
Cc: Lucas Stach <lst@pengutronix.de>
References: <BL0PR07MB5665EA1D980C39F834845849EC1C9@BL0PR07MB5665.namprd07.prod.outlook.com>
 <9bb964dc-3c24-7c70-b007-759c3aa85511@pengutronix.de>
 <874d52d0-f476-53cf-1331-72f80bffacbd@pengutronix.de>
 <BN8PR07MB69932217E808C9DB9435411FECD6A@BN8PR07MB6993.namprd07.prod.outlook.com>
 <9923f2ef-cbce-44a1-86bf-6aaf829d3008@pengutronix.de>
 <SJ0PR07MB9766972613A435D5377F3EBDEC84A@SJ0PR07MB9766.namprd07.prod.outlook.com>
 <SJ0PR07MB9766897F421E8809B42266ABEC8EA@SJ0PR07MB9766.namprd07.prod.outlook.com>
 <b4339f2e-e306-4f84-a43b-751ef7b4ed55@pengutronix.de>
 <SJ0PR07MB97664BF8CA2EBFAEC8C81C63EC91A@SJ0PR07MB9766.namprd07.prod.outlook.com>
 <SJ0PR07MB976654EF8CBBB111A2F4D393EC9AA@SJ0PR07MB9766.namprd07.prod.outlook.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <SJ0PR07MB976654EF8CBBB111A2F4D393EC9AA@SJ0PR07MB9766.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_021336_811282_D51DE080 
X-CRM114-Status: GOOD (  30.92  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: PCIE on LS1021A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Renaud,

On 2/2/26 10:57 AM, Renaud Barbier wrote:
> From the head of next, I got the MMU with LPAE support to work.
> I can prepare a patch for the MMU LPAE support and later a patch for the LS1021A PCIE support.
> I have not tested the code on QEMU yet. 
> 
> Do you require the code to be tested in QEMU before I send it?

We'll want to test the LPAE case in CI, so it doesn't bitrot over time.

I can help with the QEMU integration, for v1, just make sure that a
single user visible CONFIG_ARM_LPAE enables it and if it's disabled,
behavior is unmodified.

Cheers,
Ahmad

> 
>> -----Original Message-----
>> From: barebox <barebox-bounces@lists.infradead.org> On Behalf Of Renaud
>> Barbier
>> Sent: 28 January 2026 16:40
>> To: Ahmad Fatoum <a.fatoum@pengutronix.de>; Barebox List
>> <barebox@lists.infradead.org>
>> Cc: Lucas Stach <lst@pengutronix.de>
>> Subject: RE: PCIE on LS1021A
>>
>> ***NOTICE*** This came from an external source. Use caution when
>> replying, clicking links, or opening attachments.
>>
>> Just to let you know I was developing from barebox 2024.09 as this was a
>> requirement for our product.
>> I started to move the LPAE support and follow the next branch.
>> Barebox is booting but currently failing to probe the PCIe NVME device.
>>
>> A bit more debugging and hopefully, I can get something soon.
>>
>>> -----Original Message-----
>>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> Sent: 20 January 2026 13:41
>>> To: Renaud Barbier <Renaud.Barbier@ametek.com>; Barebox List
>>> <barebox@lists.infradead.org>
>>> Cc: Lucas Stach <lst@pengutronix.de>
>>> Subject: Re: PCIE on LS1021A
>>>
>>> ***NOTICE*** This came from an external source. Use caution when
>>> replying, clicking links, or opening attachments.
>>>
>>> Hello Renaud,
>>>
>>> On 1/13/26 7:26 PM, Renaud Barbier wrote:
>>>> Changing the NVME to the  PCIe2 bus and fixing a few things in the
>>>> MMU
>>> support, I am now able to detect the NVME:
>>>>
>>>> nvme pci-126f:2263.0: serial: A012410180629000000 nvme
>>>> pci-126f:2263.0: model: SM681GEF AGS nvme pci-126f:2263.0: firmware:
>>>> TFX7GB
>>>>
>>>> barebox:/ ls /dev/nvme0n1
>>>> barebox:/ ls /dev/nvme0n1*
>>>> /dev/nvme0n1                        /dev/nvme0n1.0
>>>> /dev/nvme0n1.1                      /dev/nvme0n1.2
>>>> /dev/nvme0n1.3                      /dev/nvme0n1.4
>>>> ...
>>>>
>>>> Thanks to the following remapping:
>>>> /* PCIe1 Config and memory area remapping */
>>>> map_io_sections(0x4000000000ULL, IOMEM(0x24000000), 192 << 20);
>> /*
>>>> PCIE1 conf space */ //map_io_sections(0x4040000000ULL,
>>>> IOMEM(0x40000000), 128 << 20); /* PCIE1 mem space */
>>>>
>>>>  /* PCIe2 Config and memory area remapping */
>>>> map_io_sections(0x4800000000ULL, IOMEM(0x34000000), 192 << 20);
>> /*
>>>> PCIe2 config space */ map_io_sections(0x4840000000ULL,
>>>> IOMEM(0x50000000), 128 << 20); /* PCIE2 mem space */
>>>>
>>>> For some reason, I had to comment out the remapping of the PCIe1 MEM
>>> space as the system hangs just after detecting the NVME device.
>>>> The PCIe1 device node is not even enabled.
>>>> If you have a clue, let me know.
>>>
>>> I don't have an idea off the top of my head sorry.
>>> If you have something roughly working, it would be good if you could
>>> check it works with qemu-system-arm -M virt,highmem=on and send an
>>> initial patch series?
>>>
>>> Cheers,
>>> Ahmad
>>>
>>>>
>>>> Cheers,
>>>> Renaud
>>>>
>>>>
>>>>
>>>>
>>>>> -----Original Message-----
>>>>> From: barebox <barebox-bounces@lists.infradead.org> On Behalf Of
>>>>> Renaud Barbier
>>>>> Sent: 07 January 2026 09:44
>>>>> To: Ahmad Fatoum <a.fatoum@pengutronix.de>; Barebox List
>>>>> <barebox@lists.infradead.org>
>>>>> Cc: Lucas Stach <lst@pengutronix.de>
>>>>> Subject: RE: PCIE on LS1021A
>>>>>
>>>>> ***NOTICE*** This came from an external source. Use caution when
>>>>> replying, clicking links, or opening attachments.
>>>>>
>>>>> Based on your information and U-boot and I have started to work on
>>>>> the LPAE support. So far full of debugging and hacks.
>>>>>
>>>>> It is based on the mmu_32.c file. As I have failed to use the 3 MMU
>>>>> tables, at present I am using only 2 as  in u-boot.
>>>>> The 64-bit PCI space is remapped with:
>>>>> map_io_sections(0x4000000000ULL ,IOMEM(0x24000000UL), 192 <<
>> 20);
>>>>>
>>>>> To detect the NVME device, the virtulal address 0x24000000 is
>>>>> hard-coded into the functions dw_pcie_[wr|rd]_other_conf of
>>>>> drivers/pci/pcie- designware-host.c as follows:
>>>>> if (bus->primary == pp->root_bus_nr) {
>>>>>                   type = PCIE_ATU_TYPE_CFG0;
>>>>>                   cpu_addr = pp->cfg0_base;
>>>>>                   cfg_size = pp->cfg0_size;
>>>>>                   pp->va_cfg0_base = IOMEM(0x24000000); /* XXX */
>>>>>                   va_cfg_base = pp->va_cfg0_base;
>>>>>
>>>>> What is the method to pass the address to the driver?
>>>>>
>>>>> And I get the following:
>>>>> layerscape-pcie 3400000.pcie@3400000.of: host bridge
>>>>> /soc/pcie@3400000
>>>>> ranges:
>>>>> layerscape-pcie 3400000.pcie@3400000.of: Parsing ranges property...
>>>>> layerscape-pcie 3400000.pcie@3400000.of:       IO
>>>>> 0x4000010000..0x400001ffff -> 0x0000000000
>>>>> layerscape-pcie 3400000.pcie@3400000.of:      MEM
>>>>> 0x4040000000..0x407fffffff -> 0x0040000000
>>>>>
>>>>> ERROR: io_bus_addr = 0x0, io_base = 0x4000010000
>>>>> ERROR: mem_bus_addr = 0x4040000000 -> Based on Linux output, the
>>>>> mem_bus_addr should be as above 0x4000.0000 to be programmed in
>>> the
>>>>> ATU target register.
>>>>> ERROR: mem_base = 0x4040000000, offset = 0x0
>>>>>
>>>>> ERROR: layerscape-pcie 3400000.pcie@3400000.of: iATU unroll:
>>>>> disabled
>>>>>
>>>>> pci: pci_scan_bus for bus 0
>>>>> pci:  last_io = 0x00010000, last_mem = 0x40000000, last_mem_pref =
>>>>> 0x00000000
>>>>> pci: class = 00000604, hdr_type = 00000001
>>>>> pci: 00:00 [1957:0e0a]
>>>>> pci: pci_scan_bus for bus 1
>>>>> pci:  last_io = 0x00010000, last_mem = 0x40000000, last_mem_pref =
>>>>> 0x00000000
>>>>>
>>>>> pci: class = 00000108, hdr_type = 00000000
>>>>> pci: 01:00 [126f:2263] -> NVME device found
>>>>> pci: pbar0: mask=ffffc004 NP-MEM 16384 bytes
>>>>> ERROR: pci: &&&  sub = 0x2263, 0x126f kind = NP-MEM&&&
>>>>> ERROR: pci: &&& write BAR 0x10 = 0x40000000 &&& ...
>>>>> pci: pci_scan_bus returning with max=02
>>>>> pci: bridge NP limit at 0x40100000
>>>>> pci: bridge IO limit at 0x00010000
>>>>> pci: pbar0: mask=ff000000 NP-MEM 16777216 bytes
>>>>> pci: pbar1: mask=fc000000 NP-MEM 67108864 bytes
>>>>> pci: pci_scan_bus returning with max=02
>>>>> ERROR: nvme pci-126f:2263.0: enabling bus mastering
>>>>>
>>>>> Then, the system hangs on the instruction 3 lines below:
>>>>> ERROR: nvme_pci_enable : 0x4000001c -> Fails to access the NVME
>>>>> CSTS register. It does not matter if mem_bus_addr is set to
>>>>> 0x4000.0000 to program the ATU to translate the address
>>>>> 0x40.4000.0000 to
>>> 0x4000.0000.
>>>>> if (readl(dev->bar + NVME_REG_CSTS) == -1)
>>>>>
>>>>> 0x4000.0000 is also the quadSPI memory area. So I guess I should
>>>>> remap the access too.
>>>>>
>>>>> Unhappily, my work is now at a stop as there is a hardware failure
>>>>> on my system.
>>>>>
>>>>> Note: the MMU may not be set properly as the out of-band fails to
>>>>> on TX timeout. I can reach the prompt after the NVME probing failed.
>>>>>
>>>>>
>>>>>
>>>>
>>>
>>> --
>>> Pengutronix e.K.                  |                             |
>>> Steuerwalder Str. 21              |
>>>
>> https://urldefense.com/v3/__http://www.pengutronix.de/__;!!HKOSU0g!DlZ
>>>
>> b2oy6FdvgOu3JutuBMr0zf4ib6x_vlFyfBU3Fgcpgud4iuzA7FLewuR6dBQULYVe
>>> xgDvoQqAlgtgyY1fAds9Tovg$   |
>>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



