Delivery-date: Wed, 11 Jun 2025 17:13:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPN8w-006Bu8-2s
	for lore@lore.pengutronix.de;
	Wed, 11 Jun 2025 17:13:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPN8w-0001yi-8t
	for lore@pengutronix.de; Wed, 11 Jun 2025 17:13:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u4WjeBInYKNeGcq8vNlaAZZktRHR50n1OHfEropMxWc=; b=GI5SDQ8L3hlPii35UWzkxHR3m0
	N3B6ZYCHAmFdasg91aoJtEgfdah7TBgz6Y3j2kpFD65mwxWBHT6594pTQWSlh6v7XXwcuVA9nvM+V
	p/7RGSaI8i5qMeNPqhOS1OE+8uB5pTGZqt5AT5N+VnQUTjDIOx8QXqF6hsvzOTW5K5Yw1fbBLl+zn
	wCWSyZAgPq31dNOkwDjQoMBmZ/TU1y6XYU/1T07TbryYR4SZo5Xz9wycCgi3fawTiMY4Fwolg8eol
	1aCM9u3tmQPYz3pYH5Biqv9jxwAhyLNnEO03agth27aSTBny+d6/54kEfwaDfe4UeZeHqaJKHAg5D
	ccVf9lOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPN8U-0000000ALU9-2GGU;
	Wed, 11 Jun 2025 15:13:06 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPJuj-00000009mc3-1ZfR
	for barebox@lists.infradead.org;
	Wed, 11 Jun 2025 11:46:44 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay02.in2p3.fr (8.14.4/8.14.4) with ESMTP id 55BBkZU1011984
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NO)
	for <barebox@lists.infradead.org>; Wed, 11 Jun 2025 13:46:36 +0200
Message-ID: <a9b43b82-c234-4542-981c-ad034ad65403@clermont.in2p3.fr>
Date: Wed, 11 Jun 2025 13:46:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: barebox@lists.infradead.org
References: <f8c5021d-3dcb-47b5-8f27-09e33991d6ea@clermont.in2p3.fr>
 <e867d36e-4632-46d5-934f-a4efb3a8db5f@pengutronix.de>
Content-Language: fr, en-US
From: David Picard <david.picard@clermont.in2p3.fr>
In-Reply-To: <e867d36e-4632-46d5-934f-a4efb3a8db5f@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_044641_683905_133ABCB4 
X-CRM114-Status: GOOD (  21.90  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: moving to same chip, different board: no console output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

I took the same Buildroot configuration. I replaced the .dts* files with 
the ones provided by the new board BSP. Actually, they differ quite a 
lot from the Altera SoC FPGA .dts* files in the Linux tree. Then, I 
compiled and flashed the SD card.

I enabled CONFIG_DEBUG_LL with no change. CONFIG_DEBUG_PBL doesn't exist 
in my case. For some reason, the defconfig I built upon, uses Barebox 
v2021.07.0, which is probably outdated...

David

Le 06/06/2025 à 19:46, Ahmad Fatoum a écrit :
> Hello David,
>
> On 06.06.25 16:43, David Picard wrote:
>> Hello,
>>
>> I am working on a project for which we selected an Intel/Altera Cyclone 5 SoC FPGA (an FPGA with an ARM core). As the project evolves, I have to change boards and I am facing issues to boot: absolutely no output on the serial console (USB virtual COM port), not even from Barebox.
>>
>> Previous working configuration:
>> - SD card image produced by Buildroot with Barebox as the bootloader
>> - Terasic ADC-SoC demo board, booting from the SD card.
>> https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&No=1061&PartNo=1
>>
>> Current non-working configuration:
>> - Eclustra Mercury+ SA2 module, also with a Cyclone 5, plus SDRAM, RTC, QSPI flash, etc. I think that the main difference between both Cyclone 5 chips is the size of the logic section is bigger on the module. The module has more RAM.
>> https://www.enclustra.com/en/products/system-on-chip-modules/mercury-sa2/
>> - Enclustra ST1 demo baseboard. It has a JTAG port, should this information be of interest.
>> https://www.enclustra.com/en/products/base-boards/mercury-st1/
>>
>> I the current configuration, I get no output on the serial console.
> So you tried to use the exact same image on both boards or were
> there changes?
>
>> What I did:
>> - I checked the hardware configuration (switches to select booting from the SD card and USB config) with a bare-metal application provided by Enclustra.
>> - I used Enclutra's .dts and .dtsi files, which differ very slightly from the Linux kernel tree files.
>> - I checked how the SD card is connected: to the exact same pins in both configurations.
>> - I had a look at Barebox menuconfig, but nothing caught my eye.
>>
>> So, now I'm stuck, and I'm looking for some guidance.
> You can try enabling CONFIG_DEBUG_LL and CONFIG_DEBUG_PBL and see if you
> get some debugging output maybe. You'll have to choose which UART to use.
>
> I think your new SoM may have different RAM and thus you can't use the
> same image, but need one suitable to RAM integrated on your new board.
>
> Cheers,
> Ahmad
>
>> David
>>
>>
>>
>



