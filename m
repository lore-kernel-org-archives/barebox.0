Delivery-date: Mon, 17 Aug 2026 09:37:14 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvruD-0043DX-0r
	for lore@lore.pengutronix.de;
	Mon, 17 Aug 2026 09:37:14 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8C6DE200F4F
	for <lore@pengutronix.de>; Mon, 17 Aug 2026 09:37:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=G+qaV0QL;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F//+4/8enxfhI6OOglirhjVrz78TfyeFAKOfNRiTjNU=; b=G+qaV0QLmUYkhqPMY5D8pqRQqE
	6cM8BgcZd9C4BCSNyxHpqOVpaL42LJIyQOZrsXAHdMMFXxRQYPpgppsMvc5zt6r+f9CF5rGxLGnos
	DrOSoMNt+PiMpzIYk2fSL+XPglaWftUnkBmQPf47QouW0o5deQOJ7qbMPHXoS29R0RUahJj/NIa+F
	DsXIUeouOroZ/5qHO/aCraENERw4GTqKISvqMhhSjTWafzQseAzGHGli1mAUpWj21yliDhOP36P1I
	nlFT3UCgul6ifqmvt+H7PqOdqHti0cTFhb1bcRJUzLpib8yDxiCYgk5Y4XU5cOVBOvYOyVPvjGFrY
	XeKBVSTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvrsy-00000005ZNb-1vY3;
	Mon, 17 Aug 2026 07:35:56 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvrsu-00000005ZMc-22uk
	for barebox@lists.infradead.org;
	Mon, 17 Aug 2026 07:35:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4E533200444;
	Mon, 17 Aug 2026 09:35:50 +0200 (CEST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wvrss-001uYM-0U;
	Mon, 17 Aug 2026 09:35:50 +0200
Message-ID: <2fc8f336-2e46-41a5-9320-d76f3250a049@pengutronix.de>
Date: Mon, 17 Aug 2026 09:35:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/27] ARM: Add pxa3xx and Raumfeld Speaker support
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_003552_692180_3522E5D5 
X-CRM114-Status: GOOD (  29.24  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 8/16/26 7:56 PM, Sascha Hauer wrote: > This series
   drops unused for longer remnants of the PXA2xx support and > adds device tree
    based PXA3xx support instead. The PXA2xx boards have > been removed [...]
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: h6n65uadbj7b9o9xyf6jk3k8wjo77xuj
X-Spamd-Result: default: False [-7.61 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.20)[2a0a:edc0:0:900:1d::77:received,2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_ALL(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 8C6DE200F4F

Hi,

On 8/16/26 7:56 PM, Sascha Hauer wrote:
> This series drops unused for longer remnants of the PXA2xx support and
> adds device tree based PXA3xx support instead. The PXA2xx boards have
> been removed already earlier leaving the remaining SoC code unused.
> Should anybody have interest in PXA2xx it should be straight forward
> adding back based on the new device tree code.
> 
> The board supported with this series is a Raumfeld Speaker which I had
> lying under my desk catching dust, but now serves me as a music player
> again. The PXA3xx support is fairly complete:
> 
> - NAND support including 1st stage load
> - USB OHCI
> - watchdog
> - GPIO
> - clk driver
> - SD/MMC support (though untested, the speaker only has a SDIO WiFi card
>   which is detected by barebox, but ignored)
> 
> What's missing right now is pinctrl support, the pinmux is configured by
> a register table in the PBL.

Can we have some screenshot here for a future Mastodon release
announcement? :-)

Something printed by barebox to the device's screen or some serial
console output, perhaps from bfetch or hostnamectl.

Cheers,
Ahmad

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> Sascha Hauer (27):
>       ARM: pxa: remove PXA25x and PXA27x support
>       video: remove the PXA framebuffer driver
>       ARM: cache: drive the XSC3 cache with the ARMv4 functions
>       mci: pxamci: get the clock from the clk API
>       pwm: pxa: get the clock from the clk API
>       serial: pxa: get the clock from the clk API
>       clk: pxa: add a device tree clock driver for PXA3xx
>       mtd: nand: nand_mrvl_nfc: honour marvell,nand-keep-config
>       mtd: nand: nand_mrvl_nfc: support the nand-controller bindings
>       mtd: nand: mrvl_nfc: keep the ready latch across a STATUS command
>       mtd: nand: mrvl_nfc: do not report a command timeout as an error
>       mci: pxamci: probe from the device tree
>       serial: pxa: add device tree support
>       serial: pxa: provide the Linux console name
>       gpio: pxa: add a driver and switch the architecture to GPIOLIB
>       ARM: pxa: add DEBUG_LL support
>       ARM: pxa: let the board select the SoC
>       ARM: pxa: enable device tree support
>       scripts: add pxa-image
>       ARM: pxa: add a NAND first stage loader
>       filetype: detect PXA3xx NTIM images
>       ARM: pxa: add a barebox update handler for NAND
>       clocksource: add a driver for the PXA OS timer and its watchdog
>       ARM: pxa: move over to MULTIARCH
>       ARM: pxa: reset straight away and without complaining
>       ARM: pxa: add Raumfeld Speaker board support
>       ARM: multi_v5_v6_defconfig: enable PXA support
> 
>  Documentation/boards/pxa/Phytec-phyCORE-PXA270.rst |    6 -
>  Documentation/boards/pxa/raumfeld.rst              |   78 ++
>  arch/arm/Kconfig                                   |   13 +-
>  arch/arm/boards/Makefile                           |    1 +
>  arch/arm/boards/raumfeld-speaker/Makefile          |    5 +
>  arch/arm/boards/raumfeld-speaker/board.c           |   37 +
>  arch/arm/boards/raumfeld-speaker/lowlevel-obm.c    |  206 +++
>  arch/arm/boards/raumfeld-speaker/lowlevel.c        |  106 ++
>  arch/arm/configs/multi_v5_v6_defconfig             |   18 +-
>  arch/arm/cpu/cache_32.c                            |   31 +
>  arch/arm/dts/Makefile                              |    1 +
>  arch/arm/dts/pxa300-raumfeld-speaker.dts           |  108 ++
>  arch/arm/include/asm/debug_ll.h                    |    2 +
>  arch/arm/include/asm/system_info.h                 |    9 +
>  arch/arm/mach-pxa/Kconfig                          |   51 +-
>  arch/arm/mach-pxa/Makefile                         |   12 +-
>  arch/arm/mach-pxa/bbu.c                            |   96 ++
>  arch/arm/mach-pxa/clocksource.c                    |   41 -
>  arch/arm/mach-pxa/common.c                         |   29 +-
>  arch/arm/mach-pxa/devices.c                        |    6 -
>  arch/arm/mach-pxa/gpio.c                           |  101 --
>  arch/arm/mach-pxa/mfp-pxa2xx.c                     |  191 ---
>  arch/arm/mach-pxa/pxa2xx.c                         |   69 -
>  arch/arm/mach-pxa/pxa3xx.c                         |    6 +-
>  arch/arm/mach-pxa/sleep.S                          |   28 -
>  arch/arm/mach-pxa/speed-pxa25x.c                   |   54 -
>  arch/arm/mach-pxa/speed-pxa27x.c                   |   54 -
>  arch/arm/mach-pxa/speed-pxa3xx.c                   |   43 -
>  arch/arm/mach-pxa/xload-nand.c                     |  255 ++++
>  common/Kconfig.debug_ll                            |   17 +
>  common/filetype.c                                  |   11 +
>  drivers/clk/Makefile                               |    1 +
>  drivers/clk/pxa/Makefile                           |    3 +
>  drivers/clk/pxa/clk-pxa.c                          |  122 ++
>  drivers/clk/pxa/clk-pxa.h                          |  118 ++
>  drivers/clk/pxa/clk-pxa3xx.c                       |  357 +++++
>  drivers/clocksource/Kconfig                        |    7 +
>  drivers/clocksource/Makefile                       |    1 +
>  drivers/clocksource/timer-pxa.c                    |  151 ++
>  drivers/gpio/Kconfig                               |    6 +
>  drivers/gpio/Makefile                              |    1 +
>  drivers/gpio/gpio-pxa.c                            |  146 ++
>  drivers/mci/Kconfig                                |    4 +-
>  drivers/mci/pxamci.c                               |   88 +-
>  drivers/mci/pxamci.h                               |    2 +-
>  drivers/mtd/nand/raw/nand_mrvl_nfc.c               |  107 +-
>  drivers/pwm/Kconfig                                |    7 +-
>  drivers/pwm/pxa_pwm.c                              |   38 +-
>  drivers/serial/serial_pxa.c                        |   27 +-
>  drivers/usb/gadget/Kconfig                         |    7 -
>  drivers/usb/gadget/udc/Makefile                    |    1 -
>  drivers/usb/gadget/udc/pxa27x_udc.c                | 1469 --------------------
>  drivers/usb/gadget/udc/pxa27x_udc.h                |  380 -----
>  drivers/video/Kconfig                              |    7 -
>  drivers/video/Makefile                             |    1 -
>  drivers/video/pxa.c                                |  548 --------
>  images/Makefile                                    |    1 +
>  images/Makefile.pxa                                |   32 +
>  include/filetype.h                                 |    1 +
>  include/mach/pxa/bbu.h                             |   18 +
>  include/mach/pxa/clock.h                           |   19 -
>  include/mach/pxa/debug_ll.h                        |   74 +
>  include/mach/pxa/devices.h                         |    2 -
>  include/mach/pxa/gpio.h                            |   31 -
>  include/mach/pxa/hardware.h                        |   18 -
>  include/mach/pxa/mci_pxa2xx.h                      |   12 -
>  include/mach/pxa/mfp-pxa27x.h                      |  472 -------
>  include/mach/pxa/mfp-pxa2xx.h                      |  135 --
>  include/mach/pxa/pxa-regs.h                        |   12 -
>  include/mach/pxa/pxa25x-regs.h                     |    8 -
>  include/mach/pxa/pxa27x-regs.h                     |    8 -
>  include/mach/pxa/pxa2xx-regs.h                     |  273 ----
>  include/mach/pxa/pxafb.h                           |   81 --
>  include/mach/pxa/regs-lcd.h                        |  182 ---
>  include/mach/pxa/udc_pxa2xx.h                      |   28 -
>  include/mach/pxa/xload.h                           |   42 +
>  scripts/Kconfig                                    |    7 +
>  scripts/Makefile                                   |    1 +
>  scripts/pxa-image.c                                |  281 ++++
>  79 files changed, 2583 insertions(+), 4439 deletions(-)
> ---
> base-commit: 23acc2f11182214ff655ed7c3b226160282c6a21
> change-id: 20260816-pxa3xx-9d16ccfd1ca9
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



