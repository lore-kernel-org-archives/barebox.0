Delivery-date: Thu, 03 Jun 2021 09:03:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lohNw-0001hk-Sr
	for lore@lore.pengutronix.de; Thu, 03 Jun 2021 09:03:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lohNv-0004Q4-NR
	for lore@pengutronix.de; Thu, 03 Jun 2021 09:03:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tHaaH9U4hbb6TkYncL+erH+vXC6hnw6KYDHZyXzCWHg=; b=zZX19R7Bn8X+NU+V7ZKAL0CHwS
	E+qwvwsFwBC7jXw4ubKCHJQNA+AWD06uolE8/j2x9oapH4dwkPB4fl/fRURkZOy2mU7UcslBNJjyL
	AnPAFfCOCaE7FqAyEoELw6YdMziAQ+vW2fBqh2CHIgOD54jqK9n+onynXY2X4ZmLk40PBS+iqSqU0
	H6A6jP1X7DIGc1LLqasjqQq0rYMTlqamLT7FH1a07m+QCoH7P0Ch0op6K3oItDAb3bOfggxacDomI
	ifsH1BX4LKH+NyhFXObjHXar7NOHYQZiKN6G0YaI9Jcaroe95bW0zyQgKb08nz79lQQPqIbEF2Hje
	G9RKsJOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lohMd-007OG1-9I; Thu, 03 Jun 2021 07:01:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lohMX-007OFf-GK
 for barebox@lists.infradead.org; Thu, 03 Jun 2021 07:01:55 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lohMV-0004L1-Ss; Thu, 03 Jun 2021 09:01:51 +0200
To: barebox@lists.infradead.org, mgr@pengutronix.de, ore@pengutronix.de
References: <20210602102524.20034-1-a.fatoum@pengutronix.de>
 <20210602102524.20034-2-a.fatoum@pengutronix.de>
 <YLhp/edqhhkc5hEp@ada-deb-carambola.ifak-system.com>
 <0b45648b-cbc9-cc72-6004-f82a4909153f@pengutronix.de>
 <YLh8bEaYMgFd97N6@ada-deb-carambola.ifak-system.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c0505bb2-0b3c-168e-2aa6-6a2106a1c0c3@pengutronix.de>
Date: Thu, 3 Jun 2021 09:01:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <YLh8bEaYMgFd97N6@ada-deb-carambola.ifak-system.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210603_000153_586743_20BC48E0 
X-CRM114-Status: GOOD (  35.88  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/3] ARM: at91: mmc-xload: allow overriding card capacity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Alex,

On 03.06.21 08:53, Alexander Dahl wrote:
> thanks for the surprisingly detailed explanation.

:-)

> Am Thu, Jun 03, 2021 at 08:28:48AM +0200 schrieb Ahmad Fatoum:
>> On 03.06.21 07:34, Alexander Dahl wrote:
>>> Am Wed, Jun 02, 2021 at 12:25:23PM +0200 schrieb Ahmad Fatoum:
>>>> The PBL MMC driver works with the assumption that the BootROM has left
>>>> the SD-Card in transfer mode. There seems to be no definitive way
>>>> to find out whether a running card is high capacity (> 2G) or not,
>>>> but we need this info when reading, because default capacities accept
>>>> their read offset in bytes while high capacity deal in 512 byte blocks.
>>>
>>> I'm a little surprised there's not.  Once like ten years ago I had to
>>> write a SD card driver for a small microcontroller.  In the firmware I
>>> switched to high capacity mode just based on the Card Capacity Status
>>> (CCS) bit in the Operation Conditions Register (OCR) of the SD card.
>>> Got that after sending advanced command 41 (send op cond) to the card.
>>
>> barebox proper does that in sd_send_op_cond() as well.
>>
>>> Not sure if it's that easy, or if that command was only sent under
>>> certain conditions, but I can not remember just guessing high capacity
>>> based on some heuristics nor hard code it. 
>>
>> When you build at91_multi_defconfig, multiple images are generated, currently:
>>
>> barebox-at91sam9x5ek.img
>> barebox-at91sam9263ek.img
>> barebox-microchip-ksz9477-evb.img
>> barebox-microchip-ksz9477-evb-xload-mmc.img
>> barebox-sama5d27-som1-ek.img
>> barebox-sama5d27-som1-ek-xload-mmc.img
>> barebox-groboards-sama5d27-giantboard.img
>> barebox-groboards-sama5d27-giantboard-xload-mmc.img
>> barebox-skov-arm9cpu.img
>>
>> This patch here is for the xload-mmc.img's, which result from the barebox
>> prebootloader. The PBL sets up SDRAM and chainloads barebox proper from the
>> same boot medium that itself came from. Because of this limited scope, it can
>> reuse here the SD-card setup done by the BootROM. The BootROM leaves the
>> SD-Card in transfer mode, allowing the PBL to directly read blocks off the
>> SD-Card without a full MMC/SD-Card driver.
> 
> I see.
> 
>>> We certainly used low
>>> capacity (like 32 MB for example) and high capacity cards (4G or more)
>>> with that system.
>>>
>>> You probably already looked for a reliable way to detect this.  I was
>>> just curious why this needs to be hardcoded.
>>
>> It's been a while since I wrote the sama5d27 PBL support (which the
>> sama5d3 support I am patching here is based on), but I recall that
>> the send op cond did not work in transfer mode, the card must be sent
>> into idle first, i.e. reset. I'd be happy if there happens to be indeed
>> a way to deduce high capacity mode without resetting and having to repeat
>> the SD-Card setup in the first boot stage.
> 
> Makes sense.  And yes, IIRC correctly, that register read happens
> while setting up the card.  If you can not or don't want to reset the
> card again, it's probably tricky.
> 
>> There are of course alternatives to this:
>>   - build barebox twice with different configs for first and second stage:
>>     There is already code for this (chainload code that uses barebox proper
>>     driver that fully re-initializes card). The first stage config needs to
>>     be small to fit into SRAM, so we can no longer generate both stages from
>>     the same multi-image config as we already do.
>>
>>   - provide full MMC support in PBL:
>>     The objective so far was to keep PBL code to the bare minimum. Doing
>>     full MMC setup there violates that.
>>
>>
>> AFAIK, all barebox platforms, except for i.MX, went for the first alternative
>> of having multiple configs. barebox on i.MX doesn't have this issue, because
>> it reads barebox from offset 0 of the SD/MMC, which works equally well whether
>> booting off default or high capacity cards.
>>
>> I like how the i.MX defconfig generates more than a hundred images in one go and
>> wanted AT91 to have something similar, but the fact that FAT needs to seek around
>> (offsets != 0) complicates this.
>> The trade off I took then was assuming high capacity cards and postpone the decision
>> on how to deal with default capacity cards in PBL into the future.
> 
> I just had the idea of just trying to read from different small
> offsets and compare it with the block you get from offset 0.  For
> example reading 500 bytes from offset 10 and reading 510 bytes from
> offset 0 in byte mode should match the last 500 bytes, but probably in
> block mode that wouldn't match.  But that's obviously highly dependent
> on the card content and more an ugly hack, right?

Tested that yesterday: reading from the 2G default capacity card at offset 1
caused a hang. So any heuristic will probably need to read 512-byte aligned
blocks.

Cheers,
Ahmad

> 
> Greets
> Alex
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

