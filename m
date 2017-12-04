Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eLsez-0001tk-C9
 for barebox@lists.infradead.org; Mon, 04 Dec 2017 15:27:59 +0000
Received: by mail-pf0-x241.google.com with SMTP id a90so8769527pfk.1
 for <barebox@lists.infradead.org>; Mon, 04 Dec 2017 07:27:37 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  4 Dec 2017 07:27:12 -0800
Message-Id: <20171204152718.10674-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 0/6] MDIO bus multiplexer support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hi everyone,

This is the second version of my original, with few modifications and
fixes.

Changes since [v1]:

 - Addressed smalle issues pointed out by Sascha (leftover comment,
   bad identation)

 - Added patch enabling MDIO GPIO mux driver for ZII VF610 boards
   since the are the HW this patchset targets.
   
[v1] http://lists.infradead.org/pipermail/barebox/2017-November/031589.html

Andrey Smirnov (6):
  ARM: vybrid: zii: Make use of DT code from Linux kernel
  mdio_bus: Port of_mdio_find_bus() from Linux kernel
  net: phy: Port MDIO bus miltiplexer framework from Linux kernel
  net: phy: Port GPIO controlled MDIO multiplexer driver
  net: mdio-mux: Avoid probing multiplexed busses
  zii_vf610_dev_defconfig: Select MDIO bus GPIO multiplexer

 arch/arm/configs/zii_vf610_dev_defconfig  |   1 +
 arch/arm/dts/vf610-zii-cfu1-rev-a.dts     |   3 +-
 arch/arm/dts/vf610-zii-dev-rev-b.dts      | 386 +----------------------------
 arch/arm/dts/vf610-zii-dev-rev-c.dts      | 391 +-----------------------------
 arch/arm/dts/vf610-zii-dev.dtsi           | 354 ---------------------------
 arch/arm/dts/vf610-zii-scu4-aib-rev-c.dts |   2 +
 arch/arm/dts/vf610-zii-spu3-rev-a.dts     |   4 +-
 drivers/net/phy/Kconfig                   |  18 ++
 drivers/net/phy/Makefile                  |   3 +
 drivers/net/phy/mdio-mux-gpio.c           | 147 +++++++++++
 drivers/net/phy/mdio-mux.c                | 143 +++++++++++
 drivers/net/phy/mdio_bus.c                |  30 +++
 include/linux/mdio-mux.h                  |  30 +++
 include/linux/phy.h                       |   4 +
 14 files changed, 385 insertions(+), 1131 deletions(-)
 create mode 100644 drivers/net/phy/mdio-mux-gpio.c
 create mode 100644 drivers/net/phy/mdio-mux.c
 create mode 100644 include/linux/mdio-mux.h

-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
