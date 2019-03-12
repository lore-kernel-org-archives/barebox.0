Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3eWr-0006tf-9C
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 10:21:03 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 12 Mar 2019 11:20:49 +0100
Message-Id: <20190312102055.12386-1-m.tretter@pengutronix.de>
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
Subject: [PATCH 0/6] ZynqMP clock driver
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

Hello,

This series adds a clock driver for the ZynqMP. On ZynqMP, Barebox does not
have direct access to the hardware but needs to go through the firmware to
configure the clock tree.

Patches 1 and 2 update how firmware device tree nodes are populated. The
behavior for this is copied from Linux.

Patch 3 provides the size of the return value from the ZynqMP firmware to
firmware client drivers. This is necessary to use the "query" call.

Patch 4 adds the actual driver.

Patches 5 and 6 add the firmware to the device tree and connect various
devices to the clock controller.

Michael

Michael Tretter (3):
  ARM: zynqmp: move PAYLOAD_ARG_CNT to firmware header
  clk: add ZynqMP clock driver
  ARM: zynqmp: switch to firmware clock driver

Thomas Haemmerle (3):
  of: populate "/firmware" while populating device tree
  ARM: zynqmp: populate zynqmp_firmware dt node
  ARM: zynqmp: add firmware DT node

 arch/arm/dts/zynqmp-clk.dtsi                  | 155 +++++
 arch/arm/dts/zynqmp-zcu104-revA.dts           |   2 +
 arch/arm/dts/zynqmp.dtsi                      |  17 +
 arch/arm/mach-zynqmp/firmware-zynqmp.c        |   3 +-
 .../include/mach/firmware-zynqmp.h            |   2 +
 drivers/clk/Makefile                          |   1 +
 drivers/clk/zynqmp/Makefile                   |   5 +
 drivers/clk/zynqmp/clk-divider-zynqmp.c       | 111 ++++
 drivers/clk/zynqmp/clk-gate-zynqmp.c          |  93 +++
 drivers/clk/zynqmp/clk-mux-zynqmp.c           | 102 +++
 drivers/clk/zynqmp/clk-pll-zynqmp.c           | 213 +++++++
 drivers/clk/zynqmp/clk-zynqmp.h               |  55 ++
 drivers/clk/zynqmp/clkc.c                     | 582 ++++++++++++++++++
 drivers/of/base.c                             |   6 +-
 14 files changed, 1344 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/dts/zynqmp-clk.dtsi
 create mode 100644 arch/arm/dts/zynqmp.dtsi
 create mode 100644 drivers/clk/zynqmp/Makefile
 create mode 100644 drivers/clk/zynqmp/clk-divider-zynqmp.c
 create mode 100644 drivers/clk/zynqmp/clk-gate-zynqmp.c
 create mode 100644 drivers/clk/zynqmp/clk-mux-zynqmp.c
 create mode 100644 drivers/clk/zynqmp/clk-pll-zynqmp.c
 create mode 100644 drivers/clk/zynqmp/clk-zynqmp.h
 create mode 100644 drivers/clk/zynqmp/clkc.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
