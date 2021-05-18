Delivery-date: Tue, 18 May 2021 13:50:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyFX-0004B6-SD
	for lore@lore.pengutronix.de; Tue, 18 May 2021 13:50:59 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyFW-0001lu-Df
	for lore@pengutronix.de; Tue, 18 May 2021 13:50:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JMmPIsSRqzHEMm6h+H62PTgOnAGasTXDfEvo4WuL9rU=; b=SIERSYsKGwIXxk
	mxv6TYWHhHfzk90TUOD4Dd1U0/lJOJr70zvOvNorENLW9WGWWvlj0pmgISXg+0vhGAi73tyIMiwmg
	JtRV5wD3VrKUAI6V6esY0W7o+PfrjFkdVYo5iZV3RqAKe6d6fyLh3SKQjqf388+SYAdiRqOCBC2qY
	pXBhk9kSi8jls0n4UNVjRPsv/e5a+XmLQB2+XChAuxSiQ3nM1R4Fd/VGx7ZZjF/myA9GhvS061nzd
	Ug6hGUMA4vqkBxgRQRI8tDBsz0zZlHdyULSJT0gJ/mP6AvUF+z+83yPCuW6mLenJ4Ma97CGe86IDP
	+0csiT4g2JO65AFfEGOw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liyEb-000djO-4E; Tue, 18 May 2021 11:50:01 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyEB-000dcA-3V
 for barebox@desiato.infradead.org; Tue, 18 May 2021 11:49:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=JRPZh+fcgtqkHv8QjfeWtgiyeGHAIn9+gKwEppdJlXw=; b=Yxj2DajtcsKeyV8ykaJo2J1p4w
 MTgpXhq3T9Ja3YJnWpXKwMqWcxLF8vpK6v8IcQaJOmQdsNuCnQFBSCdL2vOY8DM6y+H22CM4aq2iE
 qKiFqzcNdNCKTv9dQ+QrnPdB4+ghTQOWxdr4YT+H2N3w5vT//1pDjzoLU6CzwKmFp6qdvXp+pRF8n
 5cgOLB84DXmytuhTTz5E5LKLQqTx7rnEA4xV0dxOa4pCUZJiLiMaN8qEYkXRcUx6ZW5eGUv5pzI9f
 e0JNRnIEPaXjlZVxcG+AIXK5iGlVfRF3md06bLNAnKtZfv7xCRp4R8uLoEsg2/dOFTC5XrB2g95ms
 HTEJNRFg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyE8-00EcHZ-9f
 for barebox@lists.infradead.org; Tue, 18 May 2021 11:49:33 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE6-0001Gk-Pb; Tue, 18 May 2021 13:49:30 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE6-00014q-7w; Tue, 18 May 2021 13:49:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 18 May 2021 13:49:15 +0200
Message-Id: <20210518114929.12964-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_044932_380332_D813A147 
X-CRM114-Status: GOOD (  13.26  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/14] clk updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The barebox clk framework has diverged a lot from Linux. Specifically
the separation of a struct clk_hw from struct clk causes some pain when
porting over code from Linux. This series aims to reduce the differences
a bit. I am currently working on adding Rockchip rk3568 support and with
this series porting over the Linux clk driver has become much easier.

Sascha

Sascha Hauer (14):
  clk: introduce clk init op
  clk: rename clk_register() to bclk_register()
  clk: introduce struct clk_hw
  clk: introduce clk_register()
  clk: divider: Add ro ops
  clk: mux: Add ro ops
  clk: move fixed_factor to include/linux/clk.h
  Add rational_best_approximation()
  clk: Update fractional divider from Linux
  clk: Add lock to different clock types
  clk: Add Linux functions to register a divider
  clk: Add Linux functions to register a fixed factor clock
  clk: Add Linux functions to register a gate
  clk: Add Linux functions to register a mux

 drivers/clk/at91/clk-audio-pll.c        | 103 ++++++-------
 drivers/clk/at91/clk-generated.c        |  42 +++---
 drivers/clk/at91/clk-h32mx.c            |  22 +--
 drivers/clk/at91/clk-i2s-mux.c          |  24 +--
 drivers/clk/at91/clk-main.c             | 126 ++++++++--------
 drivers/clk/at91/clk-master.c           |  32 ++--
 drivers/clk/at91/clk-peripheral.c       |  72 ++++-----
 drivers/clk/at91/clk-pll.c              |  40 ++---
 drivers/clk/at91/clk-plldiv.c           |  26 ++--
 drivers/clk/at91/clk-programmable.c     |  32 ++--
 drivers/clk/at91/clk-sam9x60-pll.c      |  28 ++--
 drivers/clk/at91/clk-slow.c             |  20 +--
 drivers/clk/at91/clk-smd.c              |  36 ++---
 drivers/clk/at91/clk-system.c           |  28 ++--
 drivers/clk/at91/clk-usb.c              |  92 ++++++------
 drivers/clk/at91/clk-utmi.c             |  32 ++--
 drivers/clk/at91/sckc.c                 | 114 +++++++--------
 drivers/clk/clk-ar933x.c                |  18 +--
 drivers/clk/clk-ar9344.c                |  18 +--
 drivers/clk/clk-composite.c             |  74 +++++-----
 drivers/clk/clk-divider.c               |  76 +++++++---
 drivers/clk/clk-fixed-factor.c          |  44 +++---
 drivers/clk/clk-fixed.c                 |  20 +--
 drivers/clk/clk-fractional-divider.c    | 133 +++++++++++------
 drivers/clk/clk-gate-shared.c           |  33 +++--
 drivers/clk/clk-gate.c                  |  44 +++---
 drivers/clk/clk-gpio.c                  |  32 ++--
 drivers/clk/clk-mux.c                   |  45 ++++--
 drivers/clk/clk-qoric.c                 |  34 ++---
 drivers/clk/clk-stm32mp1.c              | 103 +++++++------
 drivers/clk/clk.c                       | 138 ++++++++++++++++--
 drivers/clk/imx/clk-composite-8m.c      |  33 ++---
 drivers/clk/imx/clk-cpu.c               |  32 ++--
 drivers/clk/imx/clk-frac-pll.c          |  38 ++---
 drivers/clk/imx/clk-gate-exclusive.c    |  36 ++---
 drivers/clk/imx/clk-gate2.c             |  36 +++--
 drivers/clk/imx/clk-imx6ul.c            |   4 +-
 drivers/clk/imx/clk-pfd.c               |  34 ++---
 drivers/clk/imx/clk-pll14xx.c           |  47 +++---
 drivers/clk/imx/clk-pllv1.c             |  18 +--
 drivers/clk/imx/clk-pllv2.c             |  24 +--
 drivers/clk/imx/clk-pllv3.c             |  70 ++++-----
 drivers/clk/imx/clk-sccg-pll.c          |  51 +++----
 drivers/clk/loongson/clk-ls1b200.c      |  18 +--
 drivers/clk/mvebu/corediv.c             |  30 ++--
 drivers/clk/mxs/clk-div.c               |  36 ++---
 drivers/clk/mxs/clk-frac.c              |  30 ++--
 drivers/clk/mxs/clk-lcdif.c             |  20 +--
 drivers/clk/mxs/clk-pll.c               |  32 ++--
 drivers/clk/mxs/clk-ref.c               |  38 ++---
 drivers/clk/rockchip/clk-cpu.c          |  20 +--
 drivers/clk/rockchip/clk-pll.c          |  42 +++---
 drivers/clk/socfpga/clk-gate-a10.c      |  32 ++--
 drivers/clk/socfpga/clk-periph-a10.c    |  28 ++--
 drivers/clk/socfpga/clk-pll-a10.c       |  30 ++--
 drivers/clk/socfpga/clk.c               |  74 +++++-----
 drivers/clk/socfpga/clk.h               |   6 +-
 drivers/clk/tegra/clk-divider.c         |  17 ++-
 drivers/clk/tegra/clk-periph.c          |  44 +++---
 drivers/clk/tegra/clk-pll-out.c         |  30 ++--
 drivers/clk/tegra/clk-pll.c             |  52 +++----
 drivers/clk/tegra/clk.h                 |   6 +-
 drivers/clk/vexpress/clk-sp810.c        |  24 +--
 drivers/clk/zynq/clkc.c                 | 100 ++++++-------
 drivers/clk/zynqmp/clk-divider-zynqmp.c |  30 ++--
 drivers/clk/zynqmp/clk-gate-zynqmp.c    |  30 ++--
 drivers/clk/zynqmp/clk-mux-zynqmp.c     |  30 ++--
 drivers/clk/zynqmp/clk-pll-zynqmp.c     |  48 +++---
 drivers/video/imx-ipu-v3/ipu-di.c       |  17 ++-
 include/linux/clk.h                     | 186 +++++++++++++++++++++---
 include/linux/rational.h                |  20 +++
 lib/math/Makefile                       |   1 +
 lib/math/rational.c                     | 100 +++++++++++++
 73 files changed, 1899 insertions(+), 1376 deletions(-)
 create mode 100644 include/linux/rational.h
 create mode 100644 lib/math/rational.c

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

