Delivery-date: Fri, 25 Jun 2021 09:45:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgWu-0007q8-11
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 09:45:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgWs-0005Jm-Cz
	for lore@pengutronix.de; Fri, 25 Jun 2021 09:45:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8irNCkSHGS2XrhCW0x1gbnpP2u6tbLijiWZIgm3sjuE=; b=m+JbFLULt3nv3T
	2vOCq6XuZMY5aU2VtgRQTXXdeULvIZwR1lqvOaWW65YsFdj9eOo2YdhEHC5w9VDGef9iKeoyJe6pU
	gFosndzjgQBwElsGuWSghQyuMzs7zxZeC3KZlaDGfiJ+LcVFPGMs8bJvLel6uFSeVtxwxaJwouEk2
	RTt80OcseAF9tuMiRTMpTdnrRg83UmoeK4UfDrF+0mY2tIpzLseIFL/8ZBqgCQhVb1SnLnZOC8wuK
	/TKLu4oyU1FhktOH342U6YV6jryKJpqxEqR0XpRAeIWxSDNB6DIxOF1WHAQh0iqWgDKDTHxl3RU9X
	JvVBTU8imRzlwnZiXO3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwgVS-0005PA-D0; Fri, 25 Jun 2021 07:44:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwgDg-00HZ1X-4F
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 07:25:47 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDd-0002QU-So; Fri, 25 Jun 2021 09:25:41 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDd-0000cu-91; Fri, 25 Jun 2021 09:25:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 25 Jun 2021 09:25:21 +0200
Message-Id: <20210625072540.32717-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_002544_373091_955D54F9 
X-CRM114-Status: GOOD (  16.71  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v6 00/19] barebox deep probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is hopefully last round for this series. I made a few adjustments
needed to get my Rockchip RK3568-EVB board working. Now with a
non-trivial, non-i.MX board working I am confident that this series
works as expected.

Changes since v5:
- Add deep-probe support for phy
- debug print deep-probed devices in the order they are needed, not in the
  order they are registered
- Add of dummy driver support to handle situations when a device node
  doesn't have a driver (because the driver is attached to the parent node)

Changes since v4:
  - Pass of_device_id array to BAREBOX_DEEP_PROBE_ENABLE()
  - convert dev_warn to dev_err

Changes since v3:
  - Add deep-probe support for pinctrl
  - Port over Phytec Physom to deep-probe
  - Make sure console is probed ealier at postconsole_initcall time
  - Let of_devices_ensure_probed_by_dev_id() probe all matching devices, not
    only the first one
  - add GPIO support to the base deep probe patch

Lucas Stach (1):
  of: base: move memory init from DT to initcall

Marco Felsch (9):
  imx53: remove unused imx53_add_nand
  of: platform: remove check of already added devices
  of: platform: Keep track of populated platform devices
  of: base: move clock init from of_probe() to barebox_register_of()
  initcall: add of_populate_initcall
  common: add initial barebox deep-probe support
  ARM: i.MX: esdctl: add deep-probe support
  ARM: stm32mp: ddrctrl: add deep-probe support
  ARM: boards: mx6-sabrelite: add deep-probe support

Sascha Hauer (9):
  of: Set of_chosen and of_model earlier
  of: implement of_get_stdoutpath()
  pinctrl: Find controller node first
  common: Explicitly probe consoles earlier with deep probe
  pinctrl: Add deep probe support
  phy: Add deep probe support
  ARM: i.MX Phytec physom: convert to board driver
  ARM: i.MX Phytec physom: Add deep-probe support
  of: Add dummy driver

 .../boards/freescale-mx6-sabrelite/board.c    |  58 +++--
 arch/arm/boards/phytec-som-imx6/board.c       | 159 +++++++++---
 arch/arm/mach-imx/esdctl.c                    |  12 +-
 .../arm/mach-imx/include/mach/devices-imx53.h |  27 --
 arch/arm/mach-stm32mp/ddrctrl.c               |  12 +-
 common/Makefile                               |   1 +
 common/deep-probe.c                           |  39 +++
 drivers/base/driver.c                         |  11 +-
 drivers/clk/clk.c                             |   5 +
 drivers/i2c/i2c.c                             |   8 +
 drivers/of/base.c                             |  60 +++--
 drivers/of/of_gpio.c                          |   4 +
 drivers/of/platform.c                         | 240 +++++++++++++++---
 drivers/phy/phy-core.c                        |   4 +
 drivers/pinctrl/pinctrl.c                     |  16 +-
 drivers/regulator/core.c                      |   6 +
 drivers/reset/core.c                          |   4 +
 drivers/spi/spi.c                             |   2 +
 include/asm-generic/barebox.lds.h             |  11 +-
 include/deep-probe.h                          |  26 ++
 include/init.h                                |  10 +-
 include/of.h                                  |  38 +++
 22 files changed, 605 insertions(+), 148 deletions(-)
 create mode 100644 common/deep-probe.c
 create mode 100644 include/deep-probe.h

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

