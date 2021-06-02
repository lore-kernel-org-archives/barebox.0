Delivery-date: Wed, 02 Jun 2021 12:04:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNjs-0000lk-M0
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:04:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNjo-0002MR-1C
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:04:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=plUIps6zLnroFnO0JY3D8+8OeHZcY5YnkDLg+kDjP+g=; b=FOZLUvirT6O/PS
	17VKvuYwQtzI7r3as6YhcYuPrXujzOInJD6WkkD98UsRzqv3eikHotjh2pEug3b/rL1HcH8vohXS3
	9f0iSxgIG3HqZMQsvI5dc41RllYDjI0B8giOT61zhxkZmL30DY+MRwoULJAvEu68z3aexx9iiRjNW
	1TiWvIj2AmAZu2DIi979Rg5Lp8rkyWfG+mUPHVBK4sKLzP4FVPmbvbqWQ0ovfWldVla5wvv+hoeSQ
	wN4e4eljRf0+BUhqmxppcvD7KKgiiWjZdyPQRr16nHbH2kjgWQVSUsU9uL0AJBQ1bBsjYavWLzttL
	R8HzH1AhIcei28UmWSvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loNgL-0038Cp-Go; Wed, 02 Jun 2021 10:01:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loNal-0036F8-Bm
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 09:55:21 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNah-0000M1-Sr; Wed, 02 Jun 2021 11:55:11 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNag-00038J-LB; Wed, 02 Jun 2021 11:55:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 11:54:43 +0200
Message-Id: <20210602095507.24609-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_025515_727134_CE9C080C 
X-CRM114-Status: GOOD (  15.10  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/24] clk updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The barebox clk framework has diverged a lot from Linux. Specifically
the separation of a struct clk_hw from struct clk causes some pain when
porting over code from Linux. This series aims to reduce the differences
a bit. New this time is the addition of the rk3568 clock code which is
a first step to get rk3568 up.

Changes since v1:
- Make exported clk ops const
- Add more patches to get closer to Linux
- Update Rockchip Clock support to current Linux
- Add rk3568 clk support

Sascha Hauer (24):
  clk: clk-mux: Fix handling of CLK_MUX_HIWORD_MASK
  clk: introduce clk init op
  clk: rename clk_register() to bclk_register()
  clk: introduce struct clk_hw
  clk: introduce clk_register()
  clk: divider: Make clk_divider_ops const
  clk: divider: Add ro ops
  clk: divider: Make clk_mux_ops const
  clk: mux: Add ro ops
  clk: move fixed_factor to include/linux/clk.h
  Add rational_best_approximation()
  clk: Update fractional divider from Linux
  clk: Add lock to different clock types
  clk: Add Linux functions to register a divider
  clk: Add Linux functions to register a fixed factor clock
  clk: Add Linux functions to register a gate
  clk: Add Linux functions to register a mux
  clk: Add CLK_GET_RATE_NOCACHE
  clk: Rename CLK_GATE_INVERTED to CLK_GATE_SET_TO_DISABLE
  clk: implement CLK_SET_RATE_UNGATE
  clk: implement set/get phase
  regmap: Add regmap_read_poll_timeout
  clk: rockchip: Update to current Linux
  clk: Rockchip: Add rk3568 clk support

 drivers/clk/at91/clk-audio-pll.c        |  103 +-
 drivers/clk/at91/clk-generated.c        |   42 +-
 drivers/clk/at91/clk-h32mx.c            |   22 +-
 drivers/clk/at91/clk-i2s-mux.c          |   24 +-
 drivers/clk/at91/clk-main.c             |  126 +-
 drivers/clk/at91/clk-master.c           |   32 +-
 drivers/clk/at91/clk-peripheral.c       |   72 +-
 drivers/clk/at91/clk-pll.c              |   40 +-
 drivers/clk/at91/clk-plldiv.c           |   26 +-
 drivers/clk/at91/clk-programmable.c     |   32 +-
 drivers/clk/at91/clk-sam9x60-pll.c      |   28 +-
 drivers/clk/at91/clk-slow.c             |   20 +-
 drivers/clk/at91/clk-smd.c              |   36 +-
 drivers/clk/at91/clk-system.c           |   28 +-
 drivers/clk/at91/clk-usb.c              |   92 +-
 drivers/clk/at91/clk-utmi.c             |   32 +-
 drivers/clk/at91/sckc.c                 |  114 +-
 drivers/clk/clk-ar933x.c                |   18 +-
 drivers/clk/clk-ar9344.c                |   18 +-
 drivers/clk/clk-composite.c             |   74 +-
 drivers/clk/clk-divider.c               |   78 +-
 drivers/clk/clk-fixed-factor.c          |   44 +-
 drivers/clk/clk-fixed.c                 |   20 +-
 drivers/clk/clk-fractional-divider.c    |  133 +-
 drivers/clk/clk-gate-shared.c           |   33 +-
 drivers/clk/clk-gate.c                  |   52 +-
 drivers/clk/clk-gpio.c                  |   32 +-
 drivers/clk/clk-mux.c                   |   48 +-
 drivers/clk/clk-qoric.c                 |   34 +-
 drivers/clk/clk-stm32mp1.c              |  103 +-
 drivers/clk/clk.c                       |  207 ++-
 drivers/clk/imx/clk-composite-8m.c      |   33 +-
 drivers/clk/imx/clk-cpu.c               |   32 +-
 drivers/clk/imx/clk-frac-pll.c          |   38 +-
 drivers/clk/imx/clk-gate-exclusive.c    |   36 +-
 drivers/clk/imx/clk-gate2.c             |   45 +-
 drivers/clk/imx/clk-imx6ul.c            |    4 +-
 drivers/clk/imx/clk-pfd.c               |   34 +-
 drivers/clk/imx/clk-pll14xx.c           |   47 +-
 drivers/clk/imx/clk-pllv1.c             |   18 +-
 drivers/clk/imx/clk-pllv2.c             |   24 +-
 drivers/clk/imx/clk-pllv3.c             |   70 +-
 drivers/clk/imx/clk-sccg-pll.c          |   51 +-
 drivers/clk/loongson/clk-ls1b200.c      |   18 +-
 drivers/clk/mvebu/corediv.c             |   30 +-
 drivers/clk/mxs/clk-div.c               |   36 +-
 drivers/clk/mxs/clk-frac.c              |   30 +-
 drivers/clk/mxs/clk-lcdif.c             |   20 +-
 drivers/clk/mxs/clk-pll.c               |   32 +-
 drivers/clk/mxs/clk-ref.c               |   38 +-
 drivers/clk/rockchip/Makefile           |    3 +-
 drivers/clk/rockchip/clk-cpu.c          |   82 +-
 drivers/clk/rockchip/clk-inverter.c     |  107 ++
 drivers/clk/rockchip/clk-mmc-phase.c    |  192 +++
 drivers/clk/rockchip/clk-muxgrf.c       |   95 ++
 drivers/clk/rockchip/clk-pll.c          |  853 ++++++++++--
 drivers/clk/rockchip/clk-rk3188.c       |  363 ++---
 drivers/clk/rockchip/clk-rk3288.c       |  309 ++--
 drivers/clk/rockchip/clk-rk3568.c       | 1704 +++++++++++++++++++++++
 drivers/clk/rockchip/clk.c              |  489 +++++--
 drivers/clk/rockchip/clk.h              |  500 ++++++-
 drivers/clk/socfpga/clk-gate-a10.c      |   32 +-
 drivers/clk/socfpga/clk-periph-a10.c    |   28 +-
 drivers/clk/socfpga/clk-pll-a10.c       |   30 +-
 drivers/clk/socfpga/clk.c               |   74 +-
 drivers/clk/socfpga/clk.h               |    6 +-
 drivers/clk/tegra/clk-divider.c         |   17 +-
 drivers/clk/tegra/clk-periph.c          |   44 +-
 drivers/clk/tegra/clk-pll-out.c         |   30 +-
 drivers/clk/tegra/clk-pll.c             |   52 +-
 drivers/clk/tegra/clk.h                 |    6 +-
 drivers/clk/vexpress/clk-sp810.c        |   24 +-
 drivers/clk/zynq/clkc.c                 |  100 +-
 drivers/clk/zynqmp/clk-divider-zynqmp.c |   30 +-
 drivers/clk/zynqmp/clk-gate-zynqmp.c    |   30 +-
 drivers/clk/zynqmp/clk-mux-zynqmp.c     |   30 +-
 drivers/clk/zynqmp/clk-pll-zynqmp.c     |   48 +-
 drivers/video/imx-ipu-v3/ipu-di.c       |   17 +-
 include/linux/clk.h                     |  199 ++-
 include/linux/rational.h                |   20 +
 include/regmap.h                        |   24 +
 lib/math/Makefile                       |    1 +
 lib/math/rational.c                     |  100 ++
 83 files changed, 6089 insertions(+), 1949 deletions(-)
 create mode 100644 drivers/clk/rockchip/clk-inverter.c
 create mode 100644 drivers/clk/rockchip/clk-mmc-phase.c
 create mode 100644 drivers/clk/rockchip/clk-muxgrf.c
 create mode 100644 drivers/clk/rockchip/clk-rk3568.c
 create mode 100644 include/linux/rational.h
 create mode 100644 lib/math/rational.c

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

