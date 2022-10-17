Delivery-date: Mon, 17 Oct 2022 16:47:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okRP0-00BgpF-Tn
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 16:47:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okROy-0000nJ-Ii
	for lore@pengutronix.de; Mon, 17 Oct 2022 16:47:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lr6dio3BPn+AWcfklLQ4Bl+YcOAS9xW2gBoXSFOHnJo=; b=pPxbu+seBEkWTQFIa5tNdtgXT7
	Pbujw4iqrrn+A/O4X4MFv8s43XHekE/Au8sde/9Vqgw9jyCLn9Fc8/lt/wUULFb38JnBGbDikXhtA
	c4ciWDWG2H2akC57VwfIj5BQLQkq0xnRp/zIq7OgXi2y8cSAHArdnHhtdz5C44B20RRd/wfDXGkSk
	q16r6SQxv4MOfLnlrins9uFWmJJwItI+r0ZY/W29zYk6v1QGcp6KZphtvpeTYsFkmRHtLL3/GdLMu
	XL3SiOZQHvfFbNfnwsntgweAi8YopUNGAD7a23I6m4wCtToSdeOVBspIOEx5B662R6IMemvv3Erln
	EMfvHpPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okRNP-00CoFy-Bt; Mon, 17 Oct 2022 14:45:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okRNK-00CoEP-Qm
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 14:45:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1okRNE-0000WQ-U9; Mon, 17 Oct 2022 16:45:48 +0200
Message-ID: <b5fd3437-38b1-c5d6-29fe-391578f6b0b6@pengutronix.de>
Date: Mon, 17 Oct 2022 16:45:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Ian Abbott <abbotti@mev.co.uk>, Barebox List <barebox@lists.infradead.org>
References: <98fb1314-e0c9-c75c-c89f-7bcc36a2b9c0@mev.co.uk>
 <dcd83566-6923-dff8-4329-bce9fa473e6e@pengutronix.de>
 <15b5c180-09f0-0a6e-da52-4c21051ec403@mev.co.uk>
 <962d3f49-3125-1c02-3cc3-5e811ceca7a1@pengutronix.de>
 <4ac3297e-0d69-1ce4-c404-1684ed888c8b@mev.co.uk>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <4ac3297e-0d69-1ce4-c404-1684ed888c8b@mev.co.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_074554_890918_CF1BA45B 
X-CRM114-Status: GOOD (  23.50  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [v2022.10.0] initcall of of_probe_memory failed (EBUSY)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Ian,

On 17.10.22 16:32, Ian Abbott wrote:
> On 17/10/2022 14:41, Ahmad Fatoum wrote:
>> The correct solution would be removing the memory@0 node from the
>> device tree. After all, if barebox has read it from hardware,
>> why hardcode it in the device tree?
> 
> Most of those device trees are copied from Linux where it makes sense to have the memory node.

With many other SoCs, the memory node is omitted and the bootloader is
expected to fix it up. For the barebox DT in arch/arm/dts/ I'd suggest
it be deleted if the platform queries the memory controller.
If the DT is in dts/src/arm, it can be overridden in barebox DT
with /delete-property/ &{/memory@0};

>> Still, barebox was supposed to have logic to fuse identical and
>> overlapping memory banks. Can you try the patch I just sent out?
> 
> The patch seems to work, thanks!

You can reply to that patch with a Tested-by: yourname <mail> and Sascha's
scripts will automatically pick it up.

> The only conflict in the debug output is between the "fdt-memreserve-0" and "zero page" regions, but I think that is normal:
> 
> initcall-> of_reserved_mem_walk+0x1/0xfc
> __request_region ok: 0x00000000:0x00000fff flags=0x80000200
> initcall-> mmu_init+0x1/0x60
> __request_region ok: 0x3ffe4000:0x3ffe7fff flags=0x200
> mmu: ttb: 0x3ffe4000
> mmu: Vectors are at 0x3fe00020
> __request_region: 0x00000000:0x00000fff (zero page) conflicts with 0x00000000:0x00000fff (fdt-memreserve-0)
> mmu: Created zero page
> 
> (I defined DEBUG in "arch/arm/cpu/mmu.c" to get the "mmu: Created zero page" log.  Note: the "fdt-memreserve-0" region comes from the "/memreserve/" line in "dts/src/arm/socfpga_cyclone5.dtsi".)

This is good and was one of the motivations behind the series: If the CPUs
are "parked" in the spin table at start of RAM, it should not be possible
to have barebox place a kernel there as it would crash the other CPUs.

Yours is a bit of a special case though, zero page mapping is ok for
a reserved region as barebox turns off the MMU before boot.

But if you look in arch/arm/cpu/mmu.c, you'll see that if the call
to request_sdram_region in create_zero_page() had succeeded, it
would just have been a no-op:

  pr_debug("zero page is in SDRAM area, currently not supported\n");

So no functional change really.

Cheers,
Ahmad

> 
> Thanks again!
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


