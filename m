Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPCk7-0003n8-Mo
 for barebox@lists.infradead.org; Mon, 28 Oct 2019 21:40:05 +0000
Received: from geraet.fritz.box (unknown [46.218.74.72])
 (Authenticated sender: ahmad@a3f.at)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 494A860003
 for <barebox@lists.infradead.org>; Mon, 28 Oct 2019 21:39:55 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 28 Oct 2019 22:39:37 +0100
Message-Id: <20191028213943.32071-1-ahmad@a3f.at>
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
Subject: [PATCH v2 0/6] ARM: stm32mp: finalize second stage support
To: barebox@lists.infradead.org

Add barebox update handler and Ethernet driver.

v1 -> v2:
 - Split off patch to override unsupported device tree specified
   bus-widths
 - Delete fixing the frequency to 208MHz. I can no longer reproduce
   120MHz to trigger timeouts
 - Last 4 patches are new

Ahmad Fatoum (6):
  mci: stm32_sdmmc2: parse generic MCI oftree properties
  ARM: stm32mp: dk2: add barebox SD-Card update handler
  net: add Designware Ethernet QoS for STM32MP
  net: eqos: extend Designware Ethernet QoS for Tegra 186 support
  ARM: stm32mp: include new drivers in defconfig
  Documentation: boards: stm32mp: remove done TODOs

 Documentation/boards/stm32mp.rst         |  11 -
 arch/arm/boards/stm32mp157c-dk2/board.c  |  13 +
 arch/arm/configs/stm32mp_defconfig       |  20 +-
 arch/arm/dts/stm32mp157a-dk1.dtsi        |   4 +
 arch/arm/mach-stm32mp/include/mach/bbu.h |  14 +
 drivers/mci/stm32_sdmmc2.c               |   7 +
 drivers/net/Kconfig                      |  27 +-
 drivers/net/Makefile                     |   3 +
 drivers/net/designware_eqos.c            | 876 +++++++++++++++++++++++
 drivers/net/designware_eqos.h            |  84 +++
 drivers/net/designware_stm32.c           | 245 +++++++
 drivers/net/designware_tegra186.c        | 347 +++++++++
 12 files changed, 1636 insertions(+), 15 deletions(-)
 create mode 100644 arch/arm/mach-stm32mp/include/mach/bbu.h
 create mode 100644 drivers/net/designware_eqos.c
 create mode 100644 drivers/net/designware_eqos.h
 create mode 100644 drivers/net/designware_stm32.c
 create mode 100644 drivers/net/designware_tegra186.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
