Delivery-date: Sun, 16 Aug 2026 20:15:01 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvfNs-003qQa-1R
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 20:15:01 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id ABD92201BAA
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 20:15:00 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=UESvaQzr;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Pbhxmd+7/LCcooGKv9VLStL5xTBDsqt92j34MtX3lpg=; b=UESvaQzrsBicqnSkzN6ru2ASW4
	w7KkuXod4hFfGJarf7K6+bHZy7zzPyZsiDJVATo6mHpJ1R28Wnw+1Z56YAd/xhMwe3J+BUmAKNj9m
	9orfVPi7GxC/lwFQDSos/3WSDW0f/rx3zaquiD7wnv022QkSff+uTBY+Ou8I7ghNCPISQkMv0+WK4
	Fq42F4Ud3o6PF56Vr6ZULxhQmZ7wlRWLkaU4YZPEkiUy+A7DGY+F82Yn+vjVZemNG8szh5kzw+JbK
	o9sQfDvfMIrNxGG6FpxmUjBGPOAFKOD9doYU37i5EMk6Df0eB5lKs6WNoVHX8DkofLlTwTZrm7+oU
	SEF5SCQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvf66-00000004wfz-1Naz;
	Sun, 16 Aug 2026 17:56:38 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvf5z-00000004wbr-2lkr
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 17:56:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 725B2201021;
	Sun, 16 Aug 2026 19:56:26 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-001oeO-11;
	Sun, 16 Aug 2026 19:56:26 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-0rYs;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 00/27] ARM: Add pxa3xx and Raumfeld Speaker support
Date: Sun, 16 Aug 2026 19:56:20 +0200
Message-Id: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMT5gWoC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDC0Mz3YKKROOKCl3LFEOz5OS0FMPkREsloOKCotS0zAqwQdGxtbUAE9R
 Xe1gAAAA=
X-Change-ID: 20260816-pxa3xx-9d16ccfd1ca9
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902985; l=7563;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Mr7V086JKtb5lunAYKhT1cD5FXUfqEMA7Usqn8S5jag=;
 b=r1BszxA4drqabTkqpL53GI81t97tIxCvrmKZBFWcG+L3EzvfepPuUU3gLXWAAWbqnXIsYXfJ9
 N0D5Qf0VOeFD6iI+inXw4/EvVjJ6YS+lxNTZ/RzxAdM3VG+jVl9+LRT
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_105632_017333_D4060F56 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This series drops unused for longer remnants of the PXA2xx
    support and adds device tree based PXA3xx support instead. The PXA2xx boards
    have been removed already earlier leaving the remaining SoC code [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Stat-Signature: fghee8mwu4kwtxmfe4b9qgcep5iprebj
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: ABD92201BAA

This series drops unused for longer remnants of the PXA2xx support and
adds device tree based PXA3xx support instead. The PXA2xx boards have
been removed already earlier leaving the remaining SoC code unused.
Should anybody have interest in PXA2xx it should be straight forward
adding back based on the new device tree code.

The board supported with this series is a Raumfeld Speaker which I had
lying under my desk catching dust, but now serves me as a music player
again. The PXA3xx support is fairly complete:

- NAND support including 1st stage load
- USB OHCI
- watchdog
- GPIO
- clk driver
- SD/MMC support (though untested, the speaker only has a SDIO WiFi card
  which is detected by barebox, but ignored)

What's missing right now is pinctrl support, the pinmux is configured by
a register table in the PBL.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (27):
      ARM: pxa: remove PXA25x and PXA27x support
      video: remove the PXA framebuffer driver
      ARM: cache: drive the XSC3 cache with the ARMv4 functions
      mci: pxamci: get the clock from the clk API
      pwm: pxa: get the clock from the clk API
      serial: pxa: get the clock from the clk API
      clk: pxa: add a device tree clock driver for PXA3xx
      mtd: nand: nand_mrvl_nfc: honour marvell,nand-keep-config
      mtd: nand: nand_mrvl_nfc: support the nand-controller bindings
      mtd: nand: mrvl_nfc: keep the ready latch across a STATUS command
      mtd: nand: mrvl_nfc: do not report a command timeout as an error
      mci: pxamci: probe from the device tree
      serial: pxa: add device tree support
      serial: pxa: provide the Linux console name
      gpio: pxa: add a driver and switch the architecture to GPIOLIB
      ARM: pxa: add DEBUG_LL support
      ARM: pxa: let the board select the SoC
      ARM: pxa: enable device tree support
      scripts: add pxa-image
      ARM: pxa: add a NAND first stage loader
      filetype: detect PXA3xx NTIM images
      ARM: pxa: add a barebox update handler for NAND
      clocksource: add a driver for the PXA OS timer and its watchdog
      ARM: pxa: move over to MULTIARCH
      ARM: pxa: reset straight away and without complaining
      ARM: pxa: add Raumfeld Speaker board support
      ARM: multi_v5_v6_defconfig: enable PXA support

 Documentation/boards/pxa/Phytec-phyCORE-PXA270.rst |    6 -
 Documentation/boards/pxa/raumfeld.rst              |   78 ++
 arch/arm/Kconfig                                   |   13 +-
 arch/arm/boards/Makefile                           |    1 +
 arch/arm/boards/raumfeld-speaker/Makefile          |    5 +
 arch/arm/boards/raumfeld-speaker/board.c           |   37 +
 arch/arm/boards/raumfeld-speaker/lowlevel-obm.c    |  206 +++
 arch/arm/boards/raumfeld-speaker/lowlevel.c        |  106 ++
 arch/arm/configs/multi_v5_v6_defconfig             |   18 +-
 arch/arm/cpu/cache_32.c                            |   31 +
 arch/arm/dts/Makefile                              |    1 +
 arch/arm/dts/pxa300-raumfeld-speaker.dts           |  108 ++
 arch/arm/include/asm/debug_ll.h                    |    2 +
 arch/arm/include/asm/system_info.h                 |    9 +
 arch/arm/mach-pxa/Kconfig                          |   51 +-
 arch/arm/mach-pxa/Makefile                         |   12 +-
 arch/arm/mach-pxa/bbu.c                            |   96 ++
 arch/arm/mach-pxa/clocksource.c                    |   41 -
 arch/arm/mach-pxa/common.c                         |   29 +-
 arch/arm/mach-pxa/devices.c                        |    6 -
 arch/arm/mach-pxa/gpio.c                           |  101 --
 arch/arm/mach-pxa/mfp-pxa2xx.c                     |  191 ---
 arch/arm/mach-pxa/pxa2xx.c                         |   69 -
 arch/arm/mach-pxa/pxa3xx.c                         |    6 +-
 arch/arm/mach-pxa/sleep.S                          |   28 -
 arch/arm/mach-pxa/speed-pxa25x.c                   |   54 -
 arch/arm/mach-pxa/speed-pxa27x.c                   |   54 -
 arch/arm/mach-pxa/speed-pxa3xx.c                   |   43 -
 arch/arm/mach-pxa/xload-nand.c                     |  255 ++++
 common/Kconfig.debug_ll                            |   17 +
 common/filetype.c                                  |   11 +
 drivers/clk/Makefile                               |    1 +
 drivers/clk/pxa/Makefile                           |    3 +
 drivers/clk/pxa/clk-pxa.c                          |  122 ++
 drivers/clk/pxa/clk-pxa.h                          |  118 ++
 drivers/clk/pxa/clk-pxa3xx.c                       |  357 +++++
 drivers/clocksource/Kconfig                        |    7 +
 drivers/clocksource/Makefile                       |    1 +
 drivers/clocksource/timer-pxa.c                    |  151 ++
 drivers/gpio/Kconfig                               |    6 +
 drivers/gpio/Makefile                              |    1 +
 drivers/gpio/gpio-pxa.c                            |  146 ++
 drivers/mci/Kconfig                                |    4 +-
 drivers/mci/pxamci.c                               |   88 +-
 drivers/mci/pxamci.h                               |    2 +-
 drivers/mtd/nand/raw/nand_mrvl_nfc.c               |  107 +-
 drivers/pwm/Kconfig                                |    7 +-
 drivers/pwm/pxa_pwm.c                              |   38 +-
 drivers/serial/serial_pxa.c                        |   27 +-
 drivers/usb/gadget/Kconfig                         |    7 -
 drivers/usb/gadget/udc/Makefile                    |    1 -
 drivers/usb/gadget/udc/pxa27x_udc.c                | 1469 --------------------
 drivers/usb/gadget/udc/pxa27x_udc.h                |  380 -----
 drivers/video/Kconfig                              |    7 -
 drivers/video/Makefile                             |    1 -
 drivers/video/pxa.c                                |  548 --------
 images/Makefile                                    |    1 +
 images/Makefile.pxa                                |   32 +
 include/filetype.h                                 |    1 +
 include/mach/pxa/bbu.h                             |   18 +
 include/mach/pxa/clock.h                           |   19 -
 include/mach/pxa/debug_ll.h                        |   74 +
 include/mach/pxa/devices.h                         |    2 -
 include/mach/pxa/gpio.h                            |   31 -
 include/mach/pxa/hardware.h                        |   18 -
 include/mach/pxa/mci_pxa2xx.h                      |   12 -
 include/mach/pxa/mfp-pxa27x.h                      |  472 -------
 include/mach/pxa/mfp-pxa2xx.h                      |  135 --
 include/mach/pxa/pxa-regs.h                        |   12 -
 include/mach/pxa/pxa25x-regs.h                     |    8 -
 include/mach/pxa/pxa27x-regs.h                     |    8 -
 include/mach/pxa/pxa2xx-regs.h                     |  273 ----
 include/mach/pxa/pxafb.h                           |   81 --
 include/mach/pxa/regs-lcd.h                        |  182 ---
 include/mach/pxa/udc_pxa2xx.h                      |   28 -
 include/mach/pxa/xload.h                           |   42 +
 scripts/Kconfig                                    |    7 +
 scripts/Makefile                                   |    1 +
 scripts/pxa-image.c                                |  281 ++++
 79 files changed, 2583 insertions(+), 4439 deletions(-)
---
base-commit: 23acc2f11182214ff655ed7c3b226160282c6a21
change-id: 20260816-pxa3xx-9d16ccfd1ca9

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



