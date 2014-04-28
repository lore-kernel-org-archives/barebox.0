Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WegGe-0003WC-R9
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 07:46:26 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WegGG-0005Wc-KH
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 09:46:00 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1WegGI-0000OT-VV
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 09:46:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Apr 2014 09:45:50 +0200
Message-Id: <1398671161-29045-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Add Linux dts files and use them
To: barebox@lists.infradead.org

This series adds the Linux dts files to barebox and starts the
conversion to actually use them.

Background for doing this is that we currently duplicate the dts
files from the Kernel to barebox and keeping the files in sync with
the Kernel is a pain.

The files are merged from Ian Campbells device-tree-rebasing repository
at:

git://xenbits.xen.org/people/ianc/device-tree-rebasing.git

This repository contains all devicetrees from the kernel along with the
dt-bindings header files. This repository contains the complete history
to all Linux dts changes. I decided to drop the history since adding it
would hide the barebox history under a huge pile of kernel commits.

All dts files are under dts/ in the barebox repository. These will
always be kept in their original state, no changes are allowed here.
Instead, the devicetrees barebox uses are still under arch/$ARCH/dts and
include the Kernel dts files. My hope is that the overlay/include
mechanisms are capable of handling this.

With this series most SoC dtsi files are used from their upstream
versions. The board files are not yet changed, that must be done step by
step in the next releases.

I hope the conversion does not cause too many regressions, but I think
we have to make this conversion anyway as every new day we wait creates
more pain in the future.

I'm not sending the patch adding the dts files to barebox to the list as
it's over 8MB in size. Check the patch directly in the branch below instead.

Sascha

----------------------------8<----------------------------

The following changes since commit 00ce25c6dcdae5582ae4be37147ab33678adc995:

  Add devicetree source files as of Linux-3.15-rc2 (2014-04-28 09:08:46 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git dts

for you to fetch changes up to 09015ae52c18424cd2928b1ab91b6c5b4e54aa0d:

  ARM: dove: Use upstream dtsi file (2014-04-28 09:08:48 +0200)

----------------------------------------------------------------
Sascha Hauer (11):
      serial: ns16550: omap: set register shift from code
      dts: Use dt-bindings from kernel
      dts: i.MX51 efika sb: Roll back pingroup changes
      ARM: dts: i.MX51: Use upstream dts files
      ARM: i.MX6: Use upstream dtsi files
      ARM: i.MX53: Use upstream dtsi files
      ARM: i.MX25: Use upstream dtsi file
      ARM: i.MX27: Use upstream dtsi file
      ARM: AM33xx: Use upstream dtsi file
      ARM: Tegra20: Use upstream dtsi files
      ARM: dove: Use upstream dtsi file

 Makefile                                           |    2 +-
 arch/arm/dts/am33xx.dtsi                           |  789 +------------
 arch/arm/dts/dove.dtsi                             |  627 +----------
 arch/arm/dts/imx25.dtsi                            |  535 +--------
 arch/arm/dts/imx27.dtsi                            |  553 +--------
 arch/arm/dts/imx51-babbage.dts                     |  392 +------
 arch/arm/dts/imx51-genesi-efika-sb.dts             |  131 ++-
 arch/arm/dts/imx51-pinfunc.h                       |  773 -------------
 arch/arm/dts/imx51-pingrp.h                        |  249 ----
 arch/arm/dts/imx51.dtsi                            |  551 ---------
 arch/arm/dts/imx53-mba53.dts                       |  220 +---
 arch/arm/dts/imx53-pinfunc.h                       | 1189 --------------------
 arch/arm/dts/imx53-qsb-common.dtsi                 |  200 ----
 arch/arm/dts/imx53-qsb.dts                         |  104 +-
 arch/arm/dts/imx53-qsrb.dts                        |  145 +--
 arch/arm/dts/imx53-tqma53.dtsi                     |  170 +--
 arch/arm/dts/imx53-voipac-bsb.dts                  |  125 +-
 arch/arm/dts/imx53-voipac-dmm-668.dtsi             |  204 ----
 arch/arm/dts/imx53.dtsi                            | 1117 +-----------------
 arch/arm/dts/imx6dl-pinfunc.h                      | 1091 ------------------
 arch/arm/dts/imx6dl.dtsi                           |  112 +-
 arch/arm/dts/imx6q-pinfunc.h                       | 1047 -----------------
 arch/arm/dts/imx6q.dtsi                            |  174 +--
 arch/arm/dts/imx6qdl.dtsi                          |  951 +---------------
 arch/arm/dts/include/dt-bindings                   |    1 -
 arch/arm/dts/tegra20-colibri-iris.dts              |    2 +-
 arch/arm/dts/tegra20-colibri.dtsi                  |  525 +--------
 arch/arm/dts/tegra20-paz00.dts                     |  540 +--------
 arch/arm/dts/tegra20.dtsi                          |  650 +----------
 drivers/serial/serial_ns16550.c                    |    4 +
 include/dt-bindings/clock/ar933x-clk.h             |   22 -
 include/dt-bindings/clock/imx5-clock.h             |  203 ----
 include/dt-bindings/clock/tegra20-car.h            |  158 ---
 include/dt-bindings/gpio/gpio.h                    |   15 -
 include/dt-bindings/gpio/tegra-gpio.h              |   50 -
 include/dt-bindings/input/input.h                  |  525 ---------
 include/dt-bindings/interrupt-controller/arm-gic.h |   22 -
 include/dt-bindings/interrupt-controller/irq.h     |   19 -
 include/dt-bindings/pinctrl/am33xx.h               |   42 -
 include/dt-bindings/pinctrl/omap.h                 |   53 -
 scripts/Makefile.lib                               |    5 +-
 41 files changed, 148 insertions(+), 14139 deletions(-)
 delete mode 100644 arch/arm/dts/imx51-pinfunc.h
 delete mode 100644 arch/arm/dts/imx51-pingrp.h
 delete mode 100644 arch/arm/dts/imx51.dtsi
 delete mode 100644 arch/arm/dts/imx53-pinfunc.h
 delete mode 100644 arch/arm/dts/imx53-voipac-dmm-668.dtsi
 delete mode 100644 arch/arm/dts/imx6dl-pinfunc.h
 delete mode 100644 arch/arm/dts/imx6q-pinfunc.h
 delete mode 120000 arch/arm/dts/include/dt-bindings
 delete mode 100644 include/dt-bindings/clock/ar933x-clk.h
 delete mode 100644 include/dt-bindings/clock/imx5-clock.h
 delete mode 100644 include/dt-bindings/clock/tegra20-car.h
 delete mode 100644 include/dt-bindings/gpio/gpio.h
 delete mode 100644 include/dt-bindings/gpio/tegra-gpio.h
 delete mode 100644 include/dt-bindings/input/input.h
 delete mode 100644 include/dt-bindings/interrupt-controller/arm-gic.h
 delete mode 100644 include/dt-bindings/interrupt-controller/irq.h
 delete mode 100644 include/dt-bindings/pinctrl/am33xx.h
 delete mode 100644 include/dt-bindings/pinctrl/omap.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
