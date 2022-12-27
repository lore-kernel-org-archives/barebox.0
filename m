Delivery-date: Tue, 27 Dec 2022 14:46:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pAAHP-00AXKI-Tb
	for lore@lore.pengutronix.de; Tue, 27 Dec 2022 14:46:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pAAHN-0007UH-Ra
	for lore@pengutronix.de; Tue, 27 Dec 2022 14:46:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YQapdo9vvNfZuhZbPq+BLUHPRz2Xc6n7WJ7r4YIezEE=; b=YtEVPaYxekDGOHxT9BsNmFmCIZ
	S3yRgoqokICKwRJnKagObw0OgLwBG0OEyubBjE1RVEfE2WoQHhdaX5zzANBUv2avjYIkdug1eGIV3
	ILV7q4pfFTQwaY45uPMlFVZ5WuH/a3zOfou/r7P0q/LtuNKpU85OMeNWiHMn/VbRqBYjyUHt8zRiw
	sQQscwXVCg53nmFj2GRY+y1F9NY2e5coYFJarSnp2zEWo8cZ2ei6HDjdHeXQy2x54P7ovpgpM1WTY
	IOQ4Y/N43PHp1XG4sMlNfBtiyHXq+D4ytsORWkdGohRG+ghrcLa20a2pijeaFY1IGTlfko/fOSLlT
	Frx27yYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAAFY-00DO0U-2z; Tue, 27 Dec 2022 13:44:12 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAAFQ-00DNxf-RU
	for barebox@bombadil.infradead.org; Tue, 27 Dec 2022 13:44:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=YQapdo9vvNfZuhZbPq+BLUHPRz2Xc6n7WJ7r4YIezEE=; b=X5Caxzf/bE2Yrs6Evy74VaDy5y
	mRL8Jjs4GVeo+DHHYiHFLjRxid3wc/0AK1LbnuQGT0GNWvRthitiBP2QnR0MojTBrl01nq+sr0aUN
	CaLcDc1UVDVJYCtoXA+4OkB3QF36BrpGfKSEAGGFYZhzzecx913+xg1kLJlokOd5l1qJDAW+8K2t8
	uFgmdVOPA6T0MnJdgylGn82l+Jd2Lcd2FcivBvbp564xH2c0qBPjJffGghTE4RLX8BZegMkl89Epm
	csHkQ9+RAQkWnYDa3EXNwKTvOkR88NNReHakwCaiqhGfXOHwHsyFTdoytEleZ0tmdrL5de3pu/sBi
	e9KJWD1A==;
Received: from mailrelay2-1.pub.mailoutpod2-cph3.one.com ([2a02:2350:5:401::1])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAAFT-0082gC-AY
	for barebox@lists.infradead.org; Tue, 27 Dec 2022 13:44:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=YQapdo9vvNfZuhZbPq+BLUHPRz2Xc6n7WJ7r4YIezEE=;
	b=Kya9FM9KMbo8oUIU8/QZ6Tp421kJMfQUfFot5AsbLmkyX/9xiwBK1s9BLpMg4kATiYCMTk/4t+Oww
	 Exigc7m3DBaSRlvz294sVmOy9dxqsH6AvcEWc+xVI7ys4ESmCgImOvzYVhsqLkg4M4GQub3riCwupH
	 wG7VRUp2SGQ6BXDBHoyrRrL81g6mSrPSLKjUylc7oScC3OS44MTOxh0sOUtMOyJsZw7ONvNN8SG2Qw
	 RoFy7WlQ9C2Klww16rAov8T1Ipz5bbwpMAr8utm0xmqgx8dwsnV15GCyu3tGN1Q0fzd1FvFbQYWD8T
	 bdzoGZUt55VLpq20My/+d3ykXqFcviQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=YQapdo9vvNfZuhZbPq+BLUHPRz2Xc6n7WJ7r4YIezEE=;
	b=wfcMzox+EweX3V2AbFf9IRVH1RbOc307GZVpojqtuEQItcrsiD19kXvggiPh0w8+K+FXmVAqOuAmQ
	 4OxAYOaCQ==
X-HalOne-ID: fdbc3084-85d0-11ed-b379-93f0a866dfbb
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay2 (Halon) with ESMTPSA
	id fdbc3084-85d0-11ed-b379-93f0a866dfbb;
	Tue, 27 Dec 2022 10:27:00 +0000 (UTC)
Date: Tue, 27 Dec 2022 11:26:58 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y6rIcs6xsavNUtot@ravnborg.org>
References: <20221214105831.844421-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221214105831.844421-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221227_134407_754661_E9BEA17E 
X-CRM114-Status: GOOD (  16.54  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLACK autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/11] ARM: at91: sama5d4: add basic Wifx L1 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Wed, Dec 14, 2022 at 11:58:20AM +0100, Ahmad Fatoum wrote:
> The Wifx L1 is a SAMA5D4 LoRaWAN gateway. It boots from NAND, but this
> can be overridden by inserting a bootable SD-Card.
> 
> This first port only provides second-stage SD-Card support.
Nice.

I browsed the individual patches - they all looked good.

The DT file in patch 11 looks like a file that would be a good linux
kernel candidate - but I guess this is for someone else to do.

Full series are:
Acked-by: Sam Ravnborg <sam@ravnborg.org>

I look forward to the day where the remaining three sama5d boards are all
multi-board and DT-enabled. This patch-set brings us a step closer.


Do you know if there is a way to read bootsource from an at91sam92XX
CPU / ROMBOOT code? There as nothing mentioned in the datasheet I looked at.

As I have fired up my at91sam9263 board for the Xmas holidays I may
try to play around with it a bit, but for now I have only SD-card boot working.

	Sam


It enables
> use of UART, I2C/EEPROM, Ethernet and SD-Card. For NAND use on SAMA5D4,
> an updated Linux driver was ported to barebox.
> This will follow separately.
> 
> Ahmad Fatoum (11):
>   ARM: at91: sama5: switch to nonnaked entry functions
>   ARM: at91: sama5d4: add entry point helpers
>   ARM: at91: sama5d4: enable for DT use
>   net: macb: match atmel,sama5d4-gem compatible
>   i2c: at91: extend for SAMA5D4 support
>   eeprom: at24: add 24mac402/602 support
>   driver: always ensure probe of RAM registered with mem_platform_driver
>   common: deep-probe: don't build without CONFIG_OFDEVICE
>   pinctrl: at91: make deep-probe compatible
>   ARM: at91: make bootsource code generic to all SAMA5
>   ARM: at91: SAMA5D4: add Wifx L1 support
> 
>  arch/arm/boards/Makefile                      |   1 +
>  .../boards/microchip-ksz9477-evb/lowlevel.c   |   6 +-
>  .../arm/boards/sama5d27-giantboard/lowlevel.c |   4 +-
>  arch/arm/boards/sama5d27-som1/lowlevel.c      |   4 +-
>  arch/arm/boards/sama5d3_xplained/lowlevel.c   |   6 +-
>  arch/arm/boards/sama5d4_wifx/Makefile         |   4 +
>  arch/arm/boards/sama5d4_wifx/board.c          |  38 ++
>  arch/arm/boards/sama5d4_wifx/lowlevel.c       |  18 +
>  arch/arm/dts/Makefile                         |   1 +
>  arch/arm/dts/at91-sama5d4_wifx_l1.dts         | 358 ++++++++++++++++++
>  arch/arm/dts/sama5d4.dtsi                     |   9 +
>  arch/arm/mach-at91/Kconfig                    |  11 +
>  arch/arm/mach-at91/Makefile                   |   3 +-
>  arch/arm/mach-at91/bootm-barebox.c            |   3 +-
>  arch/arm/mach-at91/ddramc.c                   |   7 +
>  arch/arm/mach-at91/include/mach/barebox-arm.h |  22 +-
>  arch/arm/mach-at91/include/mach/cpu.h         |   1 -
>  arch/arm/mach-at91/include/mach/ddramc.h      |   1 +
>  .../mach-at91/include/mach/sama5_bootsource.h |   5 +
>  arch/arm/mach-at91/sama5_bootsource.c         |  36 ++
>  arch/arm/mach-at91/sama5d2.c                  |  15 -
>  arch/arm/mach-at91/setup.c                    |   3 -
>  common/Makefile                               |   2 +-
>  drivers/eeprom/at24.c                         |   2 +
>  drivers/i2c/busses/i2c-at91.c                 |  14 +-
>  drivers/net/macb.c                            |   1 +
>  drivers/pinctrl/pinctrl-at91.c                |  20 +-
>  images/Makefile.at91                          |   4 +
>  include/deep-probe.h                          |   7 +
>  include/driver.h                              |  13 +-
>  30 files changed, 571 insertions(+), 48 deletions(-)
>  create mode 100644 arch/arm/boards/sama5d4_wifx/Makefile
>  create mode 100644 arch/arm/boards/sama5d4_wifx/board.c
>  create mode 100644 arch/arm/boards/sama5d4_wifx/lowlevel.c
>  create mode 100644 arch/arm/dts/at91-sama5d4_wifx_l1.dts
>  create mode 100644 arch/arm/dts/sama5d4.dtsi
>  create mode 100644 arch/arm/mach-at91/sama5_bootsource.c
> 
> -- 
> 2.30.2
> 


