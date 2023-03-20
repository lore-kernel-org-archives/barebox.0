Delivery-date: Mon, 20 Mar 2023 16:31:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHTv-007zLt-F8
	for lore@lore.pengutronix.de; Mon, 20 Mar 2023 16:31:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHTs-0001vY-NI
	for lore@pengutronix.de; Mon, 20 Mar 2023 16:31:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pfoFTIuEALBZuE1K/Zi5i5egWYHG9MSbMMVhyYO1KUU=; b=TRC99VHIwmk95ZxpvqbEKrFAvF
	oM+65moe2IbWEoHAEQbWVoXsYL0nocaBeOne8aTnq5OMqMoVQUTmL5vgb2IUYnfmeiXLn6x6NDind
	saccTnTzHu1hng1IKCET4QmPYwInJcqYlVz0RFXDlekGPaFDT9ULA/Eh7LLQCkFhTpJlvkWmGlim/
	uoF5OGdLAGSmVvRxZGyaS5i8xiF6mqcMy7ZXqWvhnMNpl3Uz2cYMnDTAK937NNlgpI+5XKRCbG55R
	tG3GtXvyHJ0B+4gqhWmTBeWpfDHTJTCGrM+HKk7Y+SeGBByf6ComaTGYemYbv6yHhDQlqnZjHsoiL
	r7J4SWQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSa-009XqL-0x;
	Mon, 20 Mar 2023 15:30:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSI-009Xfg-2v
	for barebox@lists.infradead.org;
	Mon, 20 Mar 2023 15:29:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSD-0000pX-Rs; Mon, 20 Mar 2023 16:29:45 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSD-005UYx-4N; Mon, 20 Mar 2023 16:29:45 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSB-00Dbyx-0x; Mon, 20 Mar 2023 16:29:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Mar 2023 16:29:23 +0100
Message-Id: <20230320152941.3155428-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_082951_103169_50344164 
X-CRM114-Status: GOOD (  17.10  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/18] USB gadget overhaul
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is a general overhaul of our USB gadget support. This series has
started while I was debugging issues with the DWC3 gadget support.  At
some point I realized that it is harder to find the bug that is nagging
me than it is to update the whole USB gadget stuff.

With this series most of the USB gadget stuff including the DWC3 driver
(but not the other drivers) is synced with Linux-6.3-rc2. This series
has been tested with fastboot, USB mass storage, DFU and USB serial
gadget in conjunction with the DWC3 driver and the fsl_udc driver.

The bug I was originally looking for is gone, I found no other bugs so
far, but be sure there are some ;)

Sascha

Sascha Hauer (18):
  usb: gadget: fastboot: Allocate IN requests when needed
  usb: gadget: drop gadget_chips.h
  usb: gadget: move files to place where Linux has them
  usb: move include files to place where Linux has them
  usb: ch9: Update from Linux Kernel
  phy: Add mode setting support
  driver: Add unregister_driver()
  usb: gadget: Update core to Linux-6.3-rc2
  uuid.h: sync with Linux-6.3-rc2
  usb: gadget: Add super-speed-plus descriptors
  usb: gadget: update composite.c from Linux-6.3-rc2
  Add dev_WARN_ONCE()
  usb: dwc3: sync with Linux-6.3-rc2
  usb: gadget: dfu: Assign super speed descriptors
  usb: gadget: fastboot: Add super speed descriptors
  usb: gadget: mass storage: Add super speed descriptors
  usb: gadget: u_serial: Put back to list if shutdown
  usb: gadget multi: support USB Super Speed

 arch/arm/boards/beagle/board.c                |    2 +-
 .../arm/boards/chumby_falconwing/falconwing.c |    2 +-
 arch/arm/boards/duckbill/board.c              |    2 +-
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c |    2 +-
 .../boards/imx233-olinuxino/imx23-olinuxino.c |    2 +-
 arch/arm/boards/kindle-mx50/board.c           |    2 +-
 arch/arm/boards/module-mb7707/board.c         |    2 +-
 arch/arm/boards/panda/board.c                 |    2 +-
 arch/arm/boards/phytec-phycard-imx27/pca100.c |    2 +-
 arch/arm/boards/protonic-imx6/board.c         |    2 +-
 arch/arm/boards/toshiba-ac100/board.c         |    2 +-
 commands/dfu.c                                |    4 +-
 commands/usb.c                                |    2 +-
 commands/usbgadget.c                          |    6 +-
 commands/usbserial.c                          |    2 +-
 common/usbgadget.c                            |    6 +-
 drivers/base/driver.c                         |   16 +
 drivers/input/usb_kbd.c                       |    2 +-
 drivers/net/usb/asix.c                        |    4 +-
 drivers/net/usb/ax88179_178a.c                |    4 +-
 drivers/net/usb/r8152.c                       |    4 +-
 drivers/net/usb/r8152_fw.c                    |    4 +-
 drivers/net/usb/smsc95xx.c                    |    4 +-
 drivers/net/usb/usbnet.c                      |    4 +-
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c    |    2 +-
 drivers/phy/phy-core.c                        |   17 +-
 drivers/phy/phy-stm32-usbphyc.c               |    2 +-
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c |    2 +-
 .../rockchip/phy-rockchip-naneng-combphy.c    |    2 +-
 drivers/phy/usb-nop-xceiv.c                   |    2 +-
 drivers/usb/core/common.c                     |    2 +-
 drivers/usb/core/hub.c                        |    6 +-
 drivers/usb/core/of.c                         |    4 +-
 drivers/usb/core/usb.c                        |    4 +-
 drivers/usb/dwc2/dwc2.h                       |    6 +-
 drivers/usb/dwc2/gadget.c                     |    5 +-
 drivers/usb/dwc3/core.c                       |  678 ++--
 drivers/usb/dwc3/core.h                       |  509 ++-
 drivers/usb/dwc3/debug.h                      |  356 +--
 drivers/usb/dwc3/ep0.c                        |  483 +--
 drivers/usb/dwc3/gadget.c                     | 2764 ++++++++++++-----
 drivers/usb/dwc3/gadget.h                     |  104 +-
 drivers/usb/dwc3/host.c                       |    4 +
 drivers/usb/gadget/Kconfig                    |    1 +
 drivers/usb/gadget/Makefile                   |   14 +-
 drivers/usb/gadget/composite.c                | 1086 ++++++-
 drivers/usb/gadget/config.c                   |   14 +-
 drivers/usb/gadget/epautoconf.c               |   46 +-
 drivers/usb/gadget/function/Makefile          |    6 +
 drivers/usb/gadget/{ => function}/dfu.c       |   10 +-
 drivers/usb/gadget/{ => function}/f_acm.c     |    7 +-
 .../usb/gadget/{ => function}/f_fastboot.c    |   90 +-
 .../gadget/{ => function}/f_mass_storage.c    |   46 +-
 drivers/usb/gadget/{ => function}/f_serial.c  |    3 +-
 .../gadget/{ => function}/storage_common.c    |   42 +
 .../gadget/{ => function}/storage_common.h    |   10 +-
 drivers/usb/gadget/{ => function}/u_serial.c  |    7 +-
 drivers/usb/gadget/{ => function}/u_serial.h  |    4 +-
 drivers/usb/gadget/functions.c                |    2 +-
 drivers/usb/gadget/gadget_chips.h             |   56 -
 drivers/usb/gadget/legacy/Makefile            |    8 +
 drivers/usb/gadget/{ => legacy}/multi.c       |    4 +-
 drivers/usb/gadget/{ => legacy}/serial.c      |    9 +-
 drivers/usb/gadget/u_os_desc.h                |  120 +
 drivers/usb/gadget/udc-core.c                 |  355 ---
 drivers/usb/gadget/udc/Makefile               |    8 +
 drivers/usb/gadget/{ => udc}/at91_udc.c       |    9 +-
 drivers/usb/gadget/{ => udc}/at91_udc.h       |    0
 drivers/usb/gadget/udc/core.c                 | 1513 +++++++++
 drivers/usb/gadget/{ => udc}/fsl_udc.c        |    8 +-
 drivers/usb/gadget/{ => udc}/fsl_udc_pbl.c    |    2 +-
 drivers/usb/gadget/{ => udc}/pxa27x_udc.c     |   26 +-
 drivers/usb/gadget/{ => udc}/pxa27x_udc.h     |    0
 drivers/usb/gadget/usbstring.c                |    6 +-
 drivers/usb/host/ehci-atmel.c                 |    6 +-
 drivers/usb/host/ehci-hcd.c                   |    6 +-
 drivers/usb/host/ehci-omap.c                  |    2 +-
 drivers/usb/host/ohci-at91.c                  |    4 +-
 drivers/usb/host/ohci-hcd.c                   |    4 +-
 drivers/usb/host/xhci-mem.c                   |    4 +-
 drivers/usb/host/xhci-ring.c                  |    4 +-
 drivers/usb/host/xhci.c                       |    4 +-
 drivers/usb/imx/chipidea-imx.c                |   12 +-
 drivers/usb/imx/imx-usb-misc.c                |    2 +-
 drivers/usb/imx/imx-usb-phy.c                 |    2 +-
 drivers/usb/misc/onboard_usb_hub.c            |    2 +-
 drivers/usb/musb/musb_barebox.c               |    4 +-
 drivers/usb/musb/musb_core.c                  |    4 +-
 drivers/usb/musb/musb_core.h                  |    4 +-
 drivers/usb/musb/musb_dsps.c                  |    4 +-
 drivers/usb/musb/musb_gadget.c                |   41 +-
 drivers/usb/musb/musb_gadget.h                |    2 +-
 drivers/usb/musb/musb_host.h                  |    2 +-
 drivers/usb/otg/otgdev.c                      |    2 +-
 drivers/usb/otg/twl4030.c                     |    2 +-
 drivers/usb/otg/ulpi.c                        |    2 +-
 drivers/usb/storage/usb.c                     |    4 +-
 drivers/usb/storage/usb.h                     |    2 +-
 include/driver.h                              |    2 +
 include/linux/phy/phy.h                       |   41 +
 include/linux/printk.h                        |   13 +
 include/{ => linux}/usb/cdc.h                 |    0
 include/linux/usb/ch9.h                       |   56 +
 include/{ => linux}/usb/chipidea-imx.h        |    2 +-
 include/{ => linux}/usb/composite.h           |  202 +-
 include/{ => linux}/usb/dfu.h                 |    2 +-
 include/{ => linux}/usb/ehci.h                |    0
 include/{ => linux}/usb/fastboot.h            |    2 +-
 include/{ => linux}/usb/fsl_usb2.h            |    0
 include/{ => linux}/usb/gadget-multi.h        |    8 +-
 include/{ => linux}/usb/gadget.h              |  832 +++--
 include/{ => linux}/usb/mass_storage.h        |    2 +-
 include/{ => linux}/usb/musb.h                |    0
 include/{ => linux}/usb/phy.h                 |    2 +-
 include/{ => linux}/usb/storage.h             |    0
 include/{ => linux}/usb/twl4030.h             |    0
 include/{ => linux}/usb/ulpi.h                |    0
 include/{ => linux}/usb/usb.h                 |    6 +-
 include/{ => linux}/usb/usb_defs.h            |    0
 include/{ => linux}/usb/usbnet.h              |    0
 include/{ => linux}/usb/usbroothubdes.h       |    0
 include/{ => linux}/usb/usbserial.h           |    0
 include/linux/usb/webusb.h                    |   80 +
 include/{ => linux}/usb/xhci.h                |    0
 include/linux/uuid.h                          |   53 +-
 include/mach/imx/devices.h                    |    2 +-
 include/{ => uapi/linux}/usb/ch11.h           |    0
 include/{ => uapi/linux}/usb/ch9.h            |  296 +-
 include/uapi/linux/uuid.h                     |   22 +-
 129 files changed, 7181 insertions(+), 3115 deletions(-)
 create mode 100644 drivers/usb/gadget/function/Makefile
 rename drivers/usb/gadget/{ => function}/dfu.c (99%)
 rename drivers/usb/gadget/{ => function}/f_acm.c (99%)
 rename drivers/usb/gadget/{ => function}/f_fastboot.c (87%)
 rename drivers/usb/gadget/{ => function}/f_mass_storage.c (98%)
 rename drivers/usb/gadget/{ => function}/f_serial.c (99%)
 rename drivers/usb/gadget/{ => function}/storage_common.c (79%)
 rename drivers/usb/gadget/{ => function}/storage_common.h (95%)
 rename drivers/usb/gadget/{ => function}/u_serial.c (99%)
 rename drivers/usb/gadget/{ => function}/u_serial.h (97%)
 delete mode 100644 drivers/usb/gadget/gadget_chips.h
 create mode 100644 drivers/usb/gadget/legacy/Makefile
 rename drivers/usb/gadget/{ => legacy}/multi.c (99%)
 rename drivers/usb/gadget/{ => legacy}/serial.c (98%)
 create mode 100644 drivers/usb/gadget/u_os_desc.h
 delete mode 100644 drivers/usb/gadget/udc-core.c
 create mode 100644 drivers/usb/gadget/udc/Makefile
 rename drivers/usb/gadget/{ => udc}/at91_udc.c (99%)
 rename drivers/usb/gadget/{ => udc}/at91_udc.h (100%)
 create mode 100644 drivers/usb/gadget/udc/core.c
 rename drivers/usb/gadget/{ => udc}/fsl_udc.c (99%)
 rename drivers/usb/gadget/{ => udc}/fsl_udc_pbl.c (99%)
 rename drivers/usb/gadget/{ => udc}/pxa27x_udc.c (97%)
 rename drivers/usb/gadget/{ => udc}/pxa27x_udc.h (100%)
 rename include/{ => linux}/usb/cdc.h (100%)
 create mode 100644 include/linux/usb/ch9.h
 rename include/{ => linux}/usb/chipidea-imx.h (98%)
 rename include/{ => linux}/usb/composite.h (74%)
 rename include/{ => linux}/usb/dfu.h (96%)
 rename include/{ => linux}/usb/ehci.h (100%)
 rename include/{ => linux}/usb/fastboot.h (93%)
 rename include/{ => linux}/usb/fsl_usb2.h (100%)
 rename include/{ => linux}/usb/gadget-multi.h (88%)
 rename include/{ => linux}/usb/gadget.h (57%)
 rename include/{ => linux}/usb/mass_storage.h (94%)
 rename include/{ => linux}/usb/musb.h (100%)
 rename include/{ => linux}/usb/phy.h (99%)
 rename include/{ => linux}/usb/storage.h (100%)
 rename include/{ => linux}/usb/twl4030.h (100%)
 rename include/{ => linux}/usb/ulpi.h (100%)
 rename include/{ => linux}/usb/usb.h (99%)
 rename include/{ => linux}/usb/usb_defs.h (100%)
 rename include/{ => linux}/usb/usbnet.h (100%)
 rename include/{ => linux}/usb/usbroothubdes.h (100%)
 rename include/{ => linux}/usb/usbserial.h (100%)
 create mode 100644 include/linux/usb/webusb.h
 rename include/{ => linux}/usb/xhci.h (100%)
 rename include/{ => uapi/linux}/usb/ch11.h (100%)
 rename include/{ => uapi/linux}/usb/ch9.h (77%)

-- 
2.30.2



