Delivery-date: Mon, 17 Oct 2022 16:34:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okRCT-00BgYR-Nk
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 16:34:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okRCR-0007f7-6n
	for lore@pengutronix.de; Mon, 17 Oct 2022 16:34:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=imJ+82zWb5GXUCzXmMQuIHTVsTNkwCFc+fSCWF4Z3Zc=; b=4zVCOCmHdeuMMyxF6jozEhcbX0
	T0H0C6bjC4+Zo/VqNKzLTJJUj1fQSHiZqMS+gjWNTSMA2w7M3HsLsVc+evSekgRtFJB3LsvYS7NYQ
	oQP3zN45TOUONbkruJ3dei5lnEwAWoJIfE7ON3ffA1G1S1mppPWmv5y6fJE0xHB6h7AiGNmK5TgKp
	rHhHPm2Fs/K+PR6J94g546DeGbh5sdHdQQqBfh4R96qUfGPUfoS/0FV71OiNblnByvPDYtuDkZ7Fp
	Ow+p8mebZl0EyI/zmpLRyNjxcnW8hUgpcKl4/aFDzczeCdumHJozN8daa1W2BnR77HVs+egvlgtYy
	Ge0ojaIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okRAa-00CgQl-J2; Mon, 17 Oct 2022 14:32:44 +0000
Received: from smtp74.iad3a.emailsrvr.com ([173.203.187.74])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okRAV-00CgOb-MH
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 14:32:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20190130-41we5z8j; t=1666017154;
	bh=WhXjz1nvfMuOvmtmztK2USSbgRLLJ8pITyDJKAdKM4M=;
	h=Date:Subject:To:From:From;
	b=ijrPXkbpgW85Bk0eo4DM4WucFp2G3jSZWcSkIoxXeGN/10NFCmqf3rhYefn+QUeG3
	 I4KsI+Bh2b7rMzCecLTIZlZamzzOVNvk1nMJISngsPdK6M6fYSlOtZQJMOa7ISB0xC
	 bcR9huk2Ye9CD7W8W65Ct9OwxULizn5PAcBIyCOU=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp34.relay.iad3a.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 0CE8823B04;
	Mon, 17 Oct 2022 10:32:33 -0400 (EDT)
Message-ID: <4ac3297e-0d69-1ce4-c404-1684ed888c8b@mev.co.uk>
Date: Mon, 17 Oct 2022 15:32:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <98fb1314-e0c9-c75c-c89f-7bcc36a2b9c0@mev.co.uk>
 <dcd83566-6923-dff8-4329-bce9fa473e6e@pengutronix.de>
 <15b5c180-09f0-0a6e-da52-4c21051ec403@mev.co.uk>
 <962d3f49-3125-1c02-3cc3-5e811ceca7a1@pengutronix.de>
Content-Language: en-GB
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
In-Reply-To: <962d3f49-3125-1c02-3cc3-5e811ceca7a1@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Classification-ID: 3f06633a-20dc-4ab8-8b53-9f7d98794828-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_073239_949303_0AAEA218 
X-CRM114-Status: GOOD (  20.22  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [v2022.10.0] initcall of of_probe_memory failed (EBUSY)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17/10/2022 14:41, Ahmad Fatoum wrote:
> Hello Ian,
> 
> On 17.10.22 15:10, Ian Abbott wrote:
>> On 17/10/2022 13:24, Ahmad Fatoum wrote:
>>> On 17.10.22 14:03, Ian Abbott wrote:
>>>> Barebox v2022.10.0 seems to work for me, but I now get this (harmless?) error during initialization:
>>>>
>>>> initcall of_probe_memory+0x1/0x34 failed: Device or resource busy
>>>>
>>>> (This is on a 32-bit ARM SoCFPGA/CycloneV based system.)
>>>>
>>>> git bisect is blaming commit d0b5f6bde15b ("of: reserved-mem: reserve regions prior to mmu_initcall()").
>>>
>>> Can you define #define DEBUG at the top of common/resource.c and paste
>>> the output?
>>
>> Here is what I get for a Terasic DE0-Nano-SoC.  (I was using a custom board for the original report, but the symptoms are the same.)
> 
> Thanks for the debug output.
> 
>> Board: Terasic DE-0(Atlas)
>> __request_region ok: 0x00000000:0x3fffffff flags=0x0
> 
> Here socfpga_detect_sdram() will register ram0 after reading it
> from hardware.
> 
>> __request_region ok: 0xffd04000:0xffd04fff flags=0x0
>> __request_region ok: 0xffd05000:0xffd05fff flags=0x0
>> __request_region ok: 0xffc02000:0xffc02fff flags=0x0
>> __request_region ok: 0xffc03000:0xffc03fff flags=0x0
>> __request_region: 0x00000000:0x3fffffff (ram0) conflicts with 0x00000000:0x3fffffff (ram0)
> 
> And then when device-tree is parsed, of_probe_memory()
> will register the same memory bank again. The error reports this unexpected
> situation, but as you noted should not break the boot.
> 
> The correct solution would be removing the memory@0 node from the
> device tree. After all, if barebox has read it from hardware,
> why hardcode it in the device tree?

Most of those device trees are copied from Linux where it makes sense to 
have the memory node.

> 
> Still, barebox was supposed to have logic to fuse identical and
> overlapping memory banks. Can you try the patch I just sent out?

The patch seems to work, thanks!

The only conflict in the debug output is between the "fdt-memreserve-0" 
and "zero page" regions, but I think that is normal:

initcall-> of_reserved_mem_walk+0x1/0xfc
__request_region ok: 0x00000000:0x00000fff flags=0x80000200
initcall-> mmu_init+0x1/0x60
__request_region ok: 0x3ffe4000:0x3ffe7fff flags=0x200
mmu: ttb: 0x3ffe4000
mmu: Vectors are at 0x3fe00020
__request_region: 0x00000000:0x00000fff (zero page) conflicts with 
0x00000000:0x00000fff (fdt-memreserve-0)
mmu: Created zero page

(I defined DEBUG in "arch/arm/cpu/mmu.c" to get the "mmu: Created zero 
page" log.  Note: the "fdt-memreserve-0" region comes from the 
"/memreserve/" line in "dts/src/arm/socfpga_cyclone5.dtsi".)

Thanks again!

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-



