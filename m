Delivery-date: Wed, 25 Jun 2025 13:23:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUODZ-00AulZ-0L
	for lore@lore.pengutronix.de;
	Wed, 25 Jun 2025 13:23:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUODY-000393-CY
	for lore@pengutronix.de; Wed, 25 Jun 2025 13:23:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:Cc:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oUeWJpnlWcawoLPitU8hP4HcB0Rr46OBxZ/cPhGtlLA=; b=KiXRdJcMkLs8fQlfZ8rdwCAN63
	DtRvIXM7HfXJ3yeRnHibGEADHiVy4sp8tEQvAA4gL63JXmxnmC9b07r/qpLsez6N4iaKzx/uZWrTa
	P46+RPpNzom9ygP+MXarstMuAEghpHBAQfUjOXv0yHQeUgjF+di38og4LC69BGF9W6L0ReMwaldHq
	QGX2xj7jzehoT6fprS/XxmA83uqafkG5Bods/uIh12XT5rNOxw4G30CoxvsdyGiR0K9XcdI6hWBUc
	ounZqzmpbLJazi91JscLqf+az2M6IcZCWrviPM/8uIuSnGgkgSwJN7UDNGuSUPBAMxVlC1WZxJbvb
	pdY/ZEDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUOCs-00000008SFo-1VCJ;
	Wed, 25 Jun 2025 11:22:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUNQO-00000008JqB-447Y
	for barebox@bombadil.infradead.org;
	Wed, 25 Jun 2025 10:32:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:Cc:From:References:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=oUeWJpnlWcawoLPitU8hP4HcB0Rr46OBxZ/cPhGtlLA=; b=o3+75LRbCxQA6qfN5uIkSlvjxJ
	bP+VvWr8FB6WNDnzmdWdYUTa742l7+dwW2U/WBpUJiOjAMjQUGMozlccg6LigLiQKnWEs0QvuTFj2
	MxFl8fRK7gO+ZaliHvnrxgjfqliWZUc2BQ/zsR/IyiqBaTYzxuHdenvh1Z3aPKltPZo4c7mtKTeMX
	7JTSILsZlTrtfjxogKPZ/amptNu4TDCONtvlG1Q7RIpejrVzqyT0Gi1WpTMM0y7xh7OgKA8OLdjla
	uRIVKBAjJ45VxlkVqoD+rKyaLJPkumKjokUEsyUp2eYoZ2AeXsYH1IGn4pOyjBbUao1IFYll3p5y/
	u+f7abzQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUNQM-00000005mlg-1C1j
	for barebox@lists.infradead.org;
	Wed, 25 Jun 2025 10:32:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uUNQK-0004Wz-FI; Wed, 25 Jun 2025 12:32:12 +0200
Message-ID: <3cdc65d6-b06c-4d86-9df3-84f060a5539d@pengutronix.de>
Date: Wed, 25 Jun 2025 12:32:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Picard <david.picard@clermont.in2p3.fr>, str@pengutronix.de
References: <f8c5021d-3dcb-47b5-8f27-09e33991d6ea@clermont.in2p3.fr>
 <e867d36e-4632-46d5-934f-a4efb3a8db5f@pengutronix.de>
 <a9b43b82-c234-4542-981c-ad034ad65403@clermont.in2p3.fr>
 <6ad40829-5819-4784-8123-0b6e24d4c525@pengutronix.de>
 <a547bc92-6d37-4db7-9eab-3576009c12ec@clermont.in2p3.fr>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
In-Reply-To: <a547bc92-6d37-4db7-9eab-3576009c12ec@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_113214_388186_B646DB37 
X-CRM114-Status: GOOD (  26.68  )
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
Subject: Re: moving to same chip, different board: no console output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello David,

Adding mailing list to CC.

On 6/25/25 11:54, David Picard wrote:
> Hello,
> 
> I am trying to create a new board for the Enclustra Mercury+ SA2 module
> (Intel/Altera Cyclone 5 SoC FPGA).
> 
> I'd like to run the scripts/socfpga_import_preloader script, but I can't
> figure out what the so-called Altera Embedded SDK is. I found:
> - Altera SoC Embedded Development Suite (EDS), https://www.intel.com/
> content/www/us/en/docs/programmable/683227/current/installing-the-
> altera-soc-embedded-development.html
> - Arm DS Development Studio for Altera SoC FPGA, https://
> developer.arm.com/splash-screen/altera-welcome-screen

I haven't done so myself either. Adding Steffen to Cc, who added much of
the SoCFPGA support.

Cheers,
Ahmad

> 
> David
> 
> Le 16/06/2025 à 12:39, Ahmad Fatoum a écrit :
>> Hi David,
>>
>> On 6/11/25 13:46, David Picard wrote:
>>> Hello,
>>>
>>> I took the same Buildroot configuration. I replaced the .dts* files with
>>> the ones provided by the new board BSP. Actually, they differ quite a
>>> lot from the Altera SoC FPGA .dts* files in the Linux tree. Then, I
>>> compiled and flashed the SD card.
>> The device trees don't have the whole story. There is Quartus-generated
>> C board code that sets up the DRAM controller for example, so just
>> replacing the device tree doesn't work so early.
>>
>>> I enabled CONFIG_DEBUG_LL with no change. CONFIG_DEBUG_PBL doesn't exist
>>> in my case. For some reason, the defconfig I built upon, uses Barebox
>>> v2021.07.0, which is probably outdated...
>> v2021.07.0 predated CONFIG_DEBUG_PBL, yes.
>>
>> Cheers,
>> Ahmad
>>
>>> David
>>>
>>> Le 06/06/2025 à 19:46, Ahmad Fatoum a écrit :
>>>> Hello David,
>>>>
>>>> On 06.06.25 16:43, David Picard wrote:
>>>>> Hello,
>>>>>
>>>>> I am working on a project for which we selected an Intel/Altera
>>>>> Cyclone 5 SoC FPGA (an FPGA with an ARM core). As the project
>>>>> evolves, I have to change boards and I am facing issues to boot:
>>>>> absolutely no output on the serial console (USB virtual COM port),
>>>>> not even from Barebox.
>>>>>
>>>>> Previous working configuration:
>>>>> - SD card image produced by Buildroot with Barebox as the bootloader
>>>>> - Terasic ADC-SoC demo board, booting from the SD card.
>>>>> https://www.terasic.com.tw/cgi-bin/page/archive.pl?
>>>>> Language=English&No=1061&PartNo=1
>>>>>
>>>>> Current non-working configuration:
>>>>> - Eclustra Mercury+ SA2 module, also with a Cyclone 5, plus SDRAM,
>>>>> RTC, QSPI flash, etc. I think that the main difference between both
>>>>> Cyclone 5 chips is the size of the logic section is bigger on the
>>>>> module. The module has more RAM.
>>>>> https://www.enclustra.com/en/products/system-on-chip-modules/mercury-
>>>>> sa2/
>>>>> - Enclustra ST1 demo baseboard. It has a JTAG port, should this
>>>>> information be of interest.
>>>>> https://www.enclustra.com/en/products/base-boards/mercury-st1/
>>>>>
>>>>> I the current configuration, I get no output on the serial console.
>>>> So you tried to use the exact same image on both boards or were
>>>> there changes?
>>>>
>>>>> What I did:
>>>>> - I checked the hardware configuration (switches to select booting
>>>>> from the SD card and USB config) with a bare-metal application
>>>>> provided by Enclustra.
>>>>> - I used Enclutra's .dts and .dtsi files, which differ very slightly
>>>>> from the Linux kernel tree files.
>>>>> - I checked how the SD card is connected: to the exact same pins in
>>>>> both configurations.
>>>>> - I had a look at Barebox menuconfig, but nothing caught my eye.
>>>>>
>>>>> So, now I'm stuck, and I'm looking for some guidance.
>>>> You can try enabling CONFIG_DEBUG_LL and CONFIG_DEBUG_PBL and see if
>>>> you
>>>> get some debugging output maybe. You'll have to choose which UART to
>>>> use.
>>>>
>>>> I think your new SoM may have different RAM and thus you can't use the
>>>> same image, but need one suitable to RAM integrated on your new board.
>>>>
>>>> Cheers,
>>>> Ahmad
>>>>
>>>>> David
>>>>>
>>>>>
>>>>>
>>>
>>>
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



