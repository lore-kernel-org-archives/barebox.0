Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j43mG-0002el-9w
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 14:23:10 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Feb 2020 15:22:59 +0100
Message-Id: <20200218142305.26992-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/6] ARM: stm32mp: fix Ethernet after dts/ update
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The upstream device tree no longer lists "syscfg-clk" as clock because
the syscon node had a clocks property, which the syscon driver is
supposed to attach to the regmap.

Teach the barebox syscon driver how to do so and do the necessary
things, so that network on the STM32MP works again.

Cheers,
Ahmad Fatoum (6):
  ARM: dts: stm32mp: align barebox dtsi name with upstream
  regmap: make internal.h a self-contained header
  regmap: add support for regmap_init_mmio_clk
  mfd: syscon: use regmap-mmio as backend
  mfd: syscon: clock peripheral if specified in device tree
  net: designware: eqos: stm32: drop no longer needed syscfg-clk

 .../dts/{stm32mp157c.dtsi => stm32mp151.dtsi} |   0
 arch/arm/dts/stm32mp157a-dk1.dtsi             |   2 +-
 drivers/base/regmap/Makefile                  |   3 +-
 drivers/base/regmap/internal.h                |   9 +-
 drivers/base/regmap/regmap-mmio.c             | 271 ++++++++++++++++++
 drivers/mfd/syscon.c                          |  47 ++-
 drivers/net/designware_stm32.c                |   3 +-
 include/regmap.h                              |  50 ++++
 8 files changed, 353 insertions(+), 32 deletions(-)
 rename arch/arm/dts/{stm32mp157c.dtsi => stm32mp151.dtsi} (100%)
 create mode 100644 drivers/base/regmap/regmap-mmio.c

-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
