Delivery-date: Thu, 03 Aug 2023 12:51:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvk-004wQN-A7
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:51:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVvh-0001wI-LH
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:51:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tWjw4z2TSBanrHB/+jN5+/gwV5KsQxHU8EqG2POHlFM=; b=DYn5zsoXnP5WSUh4sN9r/mhBJZ
	h8ANT8h6mA2J7vcgCQdAVEhwGSZZ89Cy8on/VMseZjORC0gedoZ2zfZ1r+UiB3zNHnWsDRSLPKuhG
	21Sr5CqoTzoR1u5g4PWaqFEaRSaXSOch8+wpUTqHStTc7gIKQ1benwaY7Mp5glQXdgRU/PNWPrHXA
	RF+3etwBx59xDpqIOVstt5+HH/E/9NK714g4zEOtS7QOvMvtHaHMRZ2s6rWt6lYCr9m23dfaD3qmq
	WqkI/CJgVdXsQwe1JkcGZitiSa4HM9MBvw9OuiLJX8OUrKCIet3Hs5aPVlUinLS7q6xVU6KexHwyB
	rkDzq9KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuZ-007Upv-21;
	Thu, 03 Aug 2023 10:50:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuD-007UXg-08
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:50:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuB-0000vJ-Qd; Thu, 03 Aug 2023 12:50:07 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuB-000ovJ-2C; Thu, 03 Aug 2023 12:50:07 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu8-00HAym-60; Thu, 03 Aug 2023 12:50:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 12:49:41 +0200
Message-Id: <20230803105003.4088205-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_035009_100221_31704B19 
X-CRM114-Status: GOOD (  16.42  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 00/22] Add initial Texas Instruments K3 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series adds initial basic support for the TI K3 Architecture.
Currently only the AM62x is supported and within there the BeaglePlay
board (https://www.beagleboard.org/boards/beagleplay).

The current support is enough for bringing up barebox 2nd stage after
U-Boot has initialized the SoC. The SoC boots from a FAT partition on
SD/eMMC, the u-boot.img therein can be replaced with a barebox image.

The SoC has a core dedicated to handle clocks, power domains and other
stuff. Communication to this core is done with a mailbox interface and
this series contains patches to implement that interface based on that
a clk driver and a power domain driver.

So far only SD/eMMC is working, so there's plenty of room to add further
support for networking, USB, SPI and I2C. It's a start.

Sascha

Sascha Hauer (22):
  pm_domain: Add onecell support
  gpio: davinci: Redesign driver to accommodate ngpios in one gpio chip
  gpio: davinci: Add support for GPIO controllers on TI K3 SoCs
  ARM64: Add support for debug_ll on TI AM62x SoCs
  Add initial mailbox support
  mailbox: Add TI K3 Secure Proxy Driver
  serial: ns16550: Add support for UARTs on K3 SoCs
  firmware: Add basic support for TI System Control Interface (TI SCI)
    protocol
  lib: Add generic binary search function
  clk: Add K3 SCI clock driver
  soc: ti: Add ti_sci_pm_domains driver
  mci: fix define
  mci: make debugging output more useful
  mci: sdhci: Add common wait for idle function
  mci: sdhci: wait for idle before stopping clock
  mci: Add am654 SDHCI driver
  ARM: Add Texas Instruments K3 architecture
  ARM: k3: Add initial BeaglePlay board support
  ARM: k3: BeaglePlay: Work around non working SD card
  ARM: k3: BeaglePlay: generate FIT image
  doc: K3: Add documentation
  ARM: multi_v8_defconfig: Enable K3 SoCs

 Documentation/boards/k3.rst           |   29 +
 arch/arm/Kconfig                      |   14 +
 arch/arm/Makefile                     |    1 +
 arch/arm/boards/Makefile              |    1 +
 arch/arm/boards/beagleplay/Makefile   |    1 +
 arch/arm/boards/beagleplay/entry.S    |   29 +
 arch/arm/boards/beagleplay/lowlevel.c |   33 +
 arch/arm/configs/multi_v8_defconfig   |   10 +-
 arch/arm/dts/Makefile                 |    1 +
 arch/arm/dts/k3-am625-beagleplay.dts  |   30 +
 arch/arm/include/asm/debug_ll.h       |    2 +
 arch/arm/mach-k3/Kconfig              |   11 +
 arch/arm/mach-k3/Makefile             |    1 +
 arch/arm/mach-k3/common.c             |   24 +
 common/Kconfig                        |   16 +-
 drivers/Kconfig                       |    1 +
 drivers/Makefile                      |    1 +
 drivers/base/power.c                  |   76 +
 drivers/clk/Makefile                  |    1 +
 drivers/clk/ti-sci-clk.c              |  630 ++++++
 drivers/firmware/Kconfig              |   15 +
 drivers/firmware/Makefile             |    1 +
 drivers/firmware/ti_sci.c             | 2745 +++++++++++++++++++++++++
 drivers/firmware/ti_sci.h             | 1533 ++++++++++++++
 drivers/gpio/Kconfig                  |    4 +-
 drivers/gpio/gpio-davinci.c           |   70 +-
 drivers/mailbox/Kconfig               |   22 +
 drivers/mailbox/Makefile              |    2 +
 drivers/mailbox/mailbox.c             |   92 +
 drivers/mailbox/ti-msgmgr.c           |  402 ++++
 drivers/mci/Makefile                  |    1 +
 drivers/mci/am654-sdhci.c             |  680 ++++++
 drivers/mci/arasan-sdhci.c            |   13 +-
 drivers/mci/atmel-sdhci-common.c      |   25 +-
 drivers/mci/dove-sdhci.c              |   23 +-
 drivers/mci/mci-bcm2835.c             |   13 +-
 drivers/mci/mci-core.c                |   13 +-
 drivers/mci/rockchip-dwcmshc-sdhci.c  |   16 +-
 drivers/mci/sdhci.c                   |   24 +
 drivers/mci/sdhci.h                   |    1 +
 drivers/serial/serial_ns16550.c       |    6 +
 drivers/soc/Kconfig                   |    1 +
 drivers/soc/Makefile                  |    1 +
 drivers/soc/ti/Kconfig                |    7 +
 drivers/soc/ti/Makefile               |    1 +
 drivers/soc/ti/ti_sci_pm_domains.c    |  196 ++
 images/Makefile                       |   10 +
 images/Makefile.k3                    |   13 +
 images/k3-am625-beagleplay.its        |   29 +
 include/linux/bsearch.h               |   33 +
 include/linux/types.h                 |    2 +
 include/mach/k3/debug_ll.h            |   49 +
 include/mailbox.h                     |   36 +
 include/mci.h                         |    4 +-
 include/pm_domain.h                   |    9 +
 include/soc/ti/k3-sec-proxy.h         |   25 +
 include/soc/ti/ti_sci_protocol.h      |  657 ++++++
 lib/Makefile                          |    1 +
 lib/bsearch.c                         |   34 +
 59 files changed, 7596 insertions(+), 125 deletions(-)
 create mode 100644 Documentation/boards/k3.rst
 create mode 100644 arch/arm/boards/beagleplay/Makefile
 create mode 100644 arch/arm/boards/beagleplay/entry.S
 create mode 100644 arch/arm/boards/beagleplay/lowlevel.c
 create mode 100644 arch/arm/dts/k3-am625-beagleplay.dts
 create mode 100644 arch/arm/mach-k3/Kconfig
 create mode 100644 arch/arm/mach-k3/Makefile
 create mode 100644 arch/arm/mach-k3/common.c
 create mode 100644 drivers/clk/ti-sci-clk.c
 create mode 100644 drivers/firmware/ti_sci.c
 create mode 100644 drivers/firmware/ti_sci.h
 create mode 100644 drivers/mailbox/Kconfig
 create mode 100644 drivers/mailbox/Makefile
 create mode 100644 drivers/mailbox/mailbox.c
 create mode 100644 drivers/mailbox/ti-msgmgr.c
 create mode 100644 drivers/mci/am654-sdhci.c
 create mode 100644 drivers/soc/ti/Kconfig
 create mode 100644 drivers/soc/ti/Makefile
 create mode 100644 drivers/soc/ti/ti_sci_pm_domains.c
 create mode 100644 images/Makefile.k3
 create mode 100644 images/k3-am625-beagleplay.its
 create mode 100644 include/linux/bsearch.h
 create mode 100644 include/mach/k3/debug_ll.h
 create mode 100644 include/mailbox.h
 create mode 100644 include/soc/ti/k3-sec-proxy.h
 create mode 100644 include/soc/ti/ti_sci_protocol.h
 create mode 100644 lib/bsearch.c

-- 
2.39.2



