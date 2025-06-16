Delivery-date: Mon, 16 Jun 2025 13:49:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR8Lc-007uPk-1O
	for lore@lore.pengutronix.de;
	Mon, 16 Jun 2025 13:49:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR8Lb-0001Ce-NG
	for lore@pengutronix.de; Mon, 16 Jun 2025 13:49:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BNG7fZfqEQN9DI9/lC5et1Ta808fIVfIXHlnVL8fJPI=; b=KaMNi2MnFjPYZPuchEoAJ5pcvf
	lQQygWykVLN7tDyGY45lRTXZzNmJkw5kxvuYgwlcMpBsbwFSrWv6ttWWdwRoEpCY85jcXuvpHBC+c
	8/Ba+bhyMyY92nTIrQM4vSOdORV8Dtd8Xb9trheVrRuSS3oaTfI++tQOXSaNFMW60lYMMQCWnNTHy
	7UvEEPaEOL9p8dQDaW+dn50s9EGIWXRHzlsVRbvmNF+t/bjXB2mJce9GC4OdRHh3ByzAdNC8pVbFt
	/EDel7gz7kt1ynfN+EYtVtr5pUEGJs+i6vTXBRHgCr/1+iLPkoPfai523mQfbq/Yfp5AtdMdSaB4I
	fIQiuneQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR8Kv-00000004FcQ-0q9m;
	Mon, 16 Jun 2025 11:49:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR7Fk-000000045re-0zge
	for barebox@lists.infradead.org;
	Mon, 16 Jun 2025 10:39:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uR7Fh-0007cw-6p; Mon, 16 Jun 2025 12:39:45 +0200
Message-ID: <6ad40829-5819-4784-8123-0b6e24d4c525@pengutronix.de>
Date: Mon, 16 Jun 2025 12:39:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Picard <david.picard@clermont.in2p3.fr>, barebox@lists.infradead.org
References: <f8c5021d-3dcb-47b5-8f27-09e33991d6ea@clermont.in2p3.fr>
 <e867d36e-4632-46d5-934f-a4efb3a8db5f@pengutronix.de>
 <a9b43b82-c234-4542-981c-ad034ad65403@clermont.in2p3.fr>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <a9b43b82-c234-4542-981c-ad034ad65403@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_033948_273229_6D2A52DF 
X-CRM114-Status: GOOD (  25.72  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: moving to same chip, different board: no console output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi David,

On 6/11/25 13:46, David Picard wrote:
> Hello,
> 
> I took the same Buildroot configuration. I replaced the .dts* files with
> the ones provided by the new board BSP. Actually, they differ quite a
> lot from the Altera SoC FPGA .dts* files in the Linux tree. Then, I
> compiled and flashed the SD card.

The device trees don't have the whole story. There is Quartus-generated
C board code that sets up the DRAM controller for example, so just
replacing the device tree doesn't work so early.

> I enabled CONFIG_DEBUG_LL with no change. CONFIG_DEBUG_PBL doesn't exist
> in my case. For some reason, the defconfig I built upon, uses Barebox
> v2021.07.0, which is probably outdated...

v2021.07.0 predated CONFIG_DEBUG_PBL, yes.

Cheers,
Ahmad

> 
> David
> 
> Le 06/06/2025 à 19:46, Ahmad Fatoum a écrit :
>> Hello David,
>>
>> On 06.06.25 16:43, David Picard wrote:
>>> Hello,
>>>
>>> I am working on a project for which we selected an Intel/Altera
>>> Cyclone 5 SoC FPGA (an FPGA with an ARM core). As the project
>>> evolves, I have to change boards and I am facing issues to boot:
>>> absolutely no output on the serial console (USB virtual COM port),
>>> not even from Barebox.
>>>
>>> Previous working configuration:
>>> - SD card image produced by Buildroot with Barebox as the bootloader
>>> - Terasic ADC-SoC demo board, booting from the SD card.
>>> https://www.terasic.com.tw/cgi-bin/page/archive.pl?
>>> Language=English&No=1061&PartNo=1
>>>
>>> Current non-working configuration:
>>> - Eclustra Mercury+ SA2 module, also with a Cyclone 5, plus SDRAM,
>>> RTC, QSPI flash, etc. I think that the main difference between both
>>> Cyclone 5 chips is the size of the logic section is bigger on the
>>> module. The module has more RAM.
>>> https://www.enclustra.com/en/products/system-on-chip-modules/mercury-
>>> sa2/
>>> - Enclustra ST1 demo baseboard. It has a JTAG port, should this
>>> information be of interest.
>>> https://www.enclustra.com/en/products/base-boards/mercury-st1/
>>>
>>> I the current configuration, I get no output on the serial console.
>> So you tried to use the exact same image on both boards or were
>> there changes?
>>
>>> What I did:
>>> - I checked the hardware configuration (switches to select booting
>>> from the SD card and USB config) with a bare-metal application
>>> provided by Enclustra.
>>> - I used Enclutra's .dts and .dtsi files, which differ very slightly
>>> from the Linux kernel tree files.
>>> - I checked how the SD card is connected: to the exact same pins in
>>> both configurations.
>>> - I had a look at Barebox menuconfig, but nothing caught my eye.
>>>
>>> So, now I'm stuck, and I'm looking for some guidance.
>> You can try enabling CONFIG_DEBUG_LL and CONFIG_DEBUG_PBL and see if you
>> get some debugging output maybe. You'll have to choose which UART to use.
>>
>> I think your new SoM may have different RAM and thus you can't use the
>> same image, but need one suitable to RAM integrated on your new board.
>>
>> Cheers,
>> Ahmad
>>
>>> David
>>>
>>>
>>>
>>
> 
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



