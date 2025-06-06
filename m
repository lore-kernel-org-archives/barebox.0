Delivery-date: Fri, 06 Jun 2025 19:47:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNbAB-004T4z-07
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 19:47:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNbAA-0003vi-Bt
	for lore@pengutronix.de; Fri, 06 Jun 2025 19:47:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qA8QtUiZbhBRPjV7hqzhSHPSn+03xAhpzhmoa726xpw=; b=z6v9K+ghes2IvmBVuxH8toCb1o
	tCk0E2u4UwACM/l5QNUAvBgi0hhar3vGRrXM+tPoii3bqDDSF4Em1sgF4t5Zu0rZtBNazCix/UBAR
	K0Q2prO3Glujmd6NLMk2ZzrJUypdwyi2s7+ZVxXAmSg/EEgovIoOki/EkV+gofnVPtzMXqc5cigEZ
	SI6+tgS8rJ4x3o3Afg0hs0e7Ez65hSgM726Suh5NsnkETLkOiccwC922QSaLhA5jaRxecEfV9Gt01
	z0o1G16enlh57IJMbtRWq10AFLRJdlWUafof6qWF7IMbPB65CvtSRj0TN9fdrTexRhZQyUJlxItzK
	AOvnH4Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNb9S-00000000kl0-1NEa;
	Fri, 06 Jun 2025 17:46:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNb9P-00000000kjF-0WyE
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 17:46:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uNb9M-0003DZ-2n; Fri, 06 Jun 2025 19:46:40 +0200
Message-ID: <e867d36e-4632-46d5-934f-a4efb3a8db5f@pengutronix.de>
Date: Fri, 6 Jun 2025 19:46:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Picard <david.picard@clermont.in2p3.fr>,
 MList-Barebox <barebox@lists.infradead.org>
References: <f8c5021d-3dcb-47b5-8f27-09e33991d6ea@clermont.in2p3.fr>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <f8c5021d-3dcb-47b5-8f27-09e33991d6ea@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250606_104643_161524_06606D64 
X-CRM114-Status: GOOD (  22.10  )
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

On 06.06.25 16:43, David Picard wrote:
> Hello,
> 
> I am working on a project for which we selected an Intel/Altera Cyclone 5 SoC FPGA (an FPGA with an ARM core). As the project evolves, I have to change boards and I am facing issues to boot: absolutely no output on the serial console (USB virtual COM port), not even from Barebox.
> 
> Previous working configuration:
> - SD card image produced by Buildroot with Barebox as the bootloader
> - Terasic ADC-SoC demo board, booting from the SD card.
> https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&No=1061&PartNo=1
> 
> Current non-working configuration:
> - Eclustra Mercury+ SA2 module, also with a Cyclone 5, plus SDRAM, RTC, QSPI flash, etc. I think that the main difference between both Cyclone 5 chips is the size of the logic section is bigger on the module. The module has more RAM.
> https://www.enclustra.com/en/products/system-on-chip-modules/mercury-sa2/
> - Enclustra ST1 demo baseboard. It has a JTAG port, should this information be of interest.
> https://www.enclustra.com/en/products/base-boards/mercury-st1/
> 
> I the current configuration, I get no output on the serial console.

So you tried to use the exact same image on both boards or were
there changes?

> What I did:
> - I checked the hardware configuration (switches to select booting from the SD card and USB config) with a bare-metal application provided by Enclustra.
> - I used Enclutra's .dts and .dtsi files, which differ very slightly from the Linux kernel tree files.
> - I checked how the SD card is connected: to the exact same pins in both configurations.
> - I had a look at Barebox menuconfig, but nothing caught my eye.
> 
> So, now I'm stuck, and I'm looking for some guidance.

You can try enabling CONFIG_DEBUG_LL and CONFIG_DEBUG_PBL and see if you
get some debugging output maybe. You'll have to choose which UART to use.

I think your new SoM may have different RAM and thus you can't use the
same image, but need one suitable to RAM integrated on your new board.

Cheers,
Ahmad

> 
> David
> 
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


