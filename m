Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f179.google.com ([209.85.215.179])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBB9j-00053u-Sd
 for barebox@lists.infradead.org; Wed, 05 Feb 2014 22:41:20 +0000
Received: by mail-ea0-f179.google.com with SMTP id q10so449837ead.24
 for <barebox@lists.infradead.org>; Wed, 05 Feb 2014 14:40:20 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed,  5 Feb 2014 23:40:03 +0100
Message-Id: <1391640009-3399-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 0/6] Marvell MVEBU mbus and Orion GBE driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Michael Grzeschik <mgr@pengutronix.de>

This patch set provides a common driver for the mbus found on all
Marvell MVEBU SoCs and a ethernet driver for the IP found on Marvell
Orion SoCs. Regards go to Michael Grzeschik who forced me to work on
this by importing the borked mv643xx driver from u-boot.

Compared to the former patches sent by Michael, this driver now
separates mbus handling, mdio bus driver, and ethernet driver. The
mbus handling can be reused on all MVEBU SoCs and is based on what
we already have on Linux for it. The mdio bus driver can be reused
by Armada 370/XP Neta Ethernet core.

I have tested the driver on SolidRun CuBox (Dove) and also on
Globalscale Guruplug (Kirkwood). Kirkwood still need some loving care
before (88E1121 PHY init, pbl images, ...) so I decided to leave it
out of the patch set for now.

Patch 1 first reorders drivers/net/{Kconfig,Makefile} alphabetically.

Patch 2 then introduces a of_phy_device_connect to allow to connect
to a PHY without knowing the corresponding mdio bus.

Patches 3, 4, 5 add drivers for the mbus, mdio bus, and Orion GBE
respectively.

Patch 6 finally re-syncs Dove's DT files with v3.14 Linux DT files.

All patches are based on release v2014.02.0 and can also be found on
https://github.com/shesselba/barebox-dove.git topic/orion-gbe-v1

Sebastian Hesselbarth (6):
  net: reorder Kconfig and Makefile alphabetically
  net: phy: add of_phy_device_connect
  bus: mvebu: add mbus driver
  net: phy: add mvebu mdio bus driver
  net: orion: add ethernet driver
  ARM: dove: sync with DT files from Linux

 arch/arm/Kconfig             |   1 +
 arch/arm/dts/dove-cubox.dts  |  66 ++--
 arch/arm/dts/dove.dtsi       | 806 ++++++++++++++++++++++++++++++-------------
 drivers/bus/Kconfig          |  15 +-
 drivers/bus/Makefile         |   5 +-
 drivers/bus/mvebu-mbus.c     | 732 +++++++++++++++++++++++++++++++++++++++
 drivers/net/Kconfig          | 145 ++++----
 drivers/net/Makefile         |  28 +-
 drivers/net/orion-gbe.c      | 541 +++++++++++++++++++++++++++++
 drivers/net/orion-gbe.h      | 236 +++++++++++++
 drivers/net/phy/Kconfig      |   8 +
 drivers/net/phy/Makefile     |   2 +
 drivers/net/phy/mdio-mvebu.c | 152 ++++++++
 drivers/net/phy/phy.c        |  31 ++
 include/linux/mbus.h         |  61 ++++
 include/linux/phy.h          |  14 +
 16 files changed, 2480 insertions(+), 363 deletions(-)
 create mode 100644 drivers/bus/mvebu-mbus.c
 create mode 100644 drivers/net/orion-gbe.c
 create mode 100644 drivers/net/orion-gbe.h
 create mode 100644 drivers/net/phy/mdio-mvebu.c
 create mode 100644 include/linux/mbus.h

---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Michael Grzeschik <mgr@pengutronix.de>
Cc: barebox@lists.infradead.org
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
