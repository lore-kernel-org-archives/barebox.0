Delivery-date: Fri, 09 Dec 2022 19:39:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3iGy-00GN09-JU
	for lore@lore.pengutronix.de; Fri, 09 Dec 2022 19:39:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3iGx-0007rd-Sm
	for lore@pengutronix.de; Fri, 09 Dec 2022 19:39:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+OXYoB8+tWVc6hKeDSn5x1kF1iKu3efncNGbbU5erss=; b=GL6F7wFsj2LuGL5gppZy7iPwbX
	rwl655HjbLNCz0KSnZmigZ4ApP3kAYAulrPp4CYr1xKgpNCUvNELjIHlhGYfS18qE+DMbShk50ge2
	K2lAc2KPfc++yLzSXGTI9CMu6iqLhjJPDYiaubysGOl5P4j8cRSwzJSfLOybRn6xAJRPlKz4lLKhp
	JYP4Qd7jHI7SAbz1LJzzLI82+n+ru73dVWNba0EdwwhJVaciEdnzNWzlleG2AYkwglPfHsW38D5BZ
	rxKfi5gJYMQJRXPyDsk7mnhaUiJAsxcnaoozTPSkT9Jy4ZLBX9JdofHN87GZik9JxV9dP6HZxZqDT
	raXghtpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3iFR-00ANig-3T; Fri, 09 Dec 2022 18:37:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3iFM-00ANhA-81
	for barebox@lists.infradead.org; Fri, 09 Dec 2022 18:37:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1p3iFG-0007oe-Ow; Fri, 09 Dec 2022 19:37:14 +0100
Message-ID: <9bb964dc-3c24-7c70-b007-759c3aa85511@pengutronix.de>
Date: Fri, 9 Dec 2022 19:37:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Barebox List <barebox@lists.infradead.org>
Cc: Lucas Stach <lst@pengutronix.de>
References: <BL0PR07MB5665EA1D980C39F834845849EC1C9@BL0PR07MB5665.namprd07.prod.outlook.com>
Content-Language: en-US
In-Reply-To: <BL0PR07MB5665EA1D980C39F834845849EC1C9@BL0PR07MB5665.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221209_103720_316133_742787C5 
X-CRM114-Status: GOOD (  30.50  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: PCIE on LS1021A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Renaud,

On 09.12.22 18:31, Renaud Barbier wrote:
> 
> Hello,
> We have added support for the LS1021A in barebox (from v2022.03)

That's great. Do you have the patches public somewhere?

> At present neither Linux and barebox are able to probe the PCIE device connected to PE1
> The board has a switch fabric connected to PCE1.
> Using U-boot we are able to see this device and the NXP bridge

Does Linux PCIe works when booted with U-Boot? At least the LS1046A has some special
PCIe fixups. I am not sure how applicable these are to the LS1021A.

Sascha can say more on that, but I will focus on the other parts of your question.

> Using barebox we see only the Bridge. Then, it fails on the first read to get the header type from the deivice on bus 1.
> 
> We know this driver works on the LS1046A as it can detects a PCI card on the LS1046A-RDB.
> Both the LS1021A (32-bit cpu) and LS1046 (64-bit cpu) have their PCIE space to access the device conf, I/O and mem space in 64-bit address space
> 
> On the LS1046 I do see access at 0x40.xxxx.xxxx while on the LS1021A, it is only a 32-bit access using the lower 32-bit.
> 
> As an experiemnt in U-boot, I have disabled the PCI driver and configured the bridge to access the device.
> To my surprise I could see the device not using the 40-bit address. So I am not sure it gets mapped (I send a question to NXP)
> 
> => md 0x24000000
> 24000000: b86114e4 00100000 02000002 00000000  ..a.............
> 
> 
> Doint the same operation on barebox, the data are only 
> barebox:/ md 0x24000000
> 24000000: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx                ................
> barebox:/ md 0x4024000000
> 4024000000: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx              ................
> 4024000010: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx              ................
> 
> From my debugging I can see that the Layerscape PCIE driver use VA address = PA address = 0x24000000
> 
> So  Is the problem I am seeing an issue with mapping the correct physical address for a 32-bit processor?
> 
> If yes, how can I map the 64-bit PA to a 32-bit VA?

Normally, you would call map_io_sections as pci-tegra does, but in your
case this alone is insufficient as you will need to implement ARM32 LPAE
support first. Once that's in place, you can use map_io_sections and map
it to e.g. 0x24000000 as U-Boot does arch/arm/cpu/armv7/ls102xa/cpu.c mmu_setup().

U-Boot LPAE support was added to support Rpi2, which starts in HYP mode, but we had
worked around that in barebox to not require LPAE. For your case however, I don't believe
there's a way around using LPAE page tables.

Tangentially related: I don't know how the PCI controller maintains cache coherency,
but if it does write back through CPU caches, you may observe memory corruption.

It may be the safest for you to disable cache snooping for PCIe until that's
resolved (We've this planned, but it will probably not happen this year.
If you're interested I can elaborate).

Cheers,
Ahmad



> 
> Cheers,
> Renaud
> 
> 
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



