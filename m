Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x232.google.com ([2a00:1450:400c:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wznsw-00081b-CO
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 14:09:15 +0000
Received: by mail-we0-f178.google.com with SMTP id x48so2077472wes.37
 for <barebox@lists.infradead.org>; Wed, 25 Jun 2014 07:08:50 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 25 Jun 2014 16:08:44 +0200
Message-Id: <1403705328-9924-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH RFC 0/4] MVEBU SoC full USB support
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>

This *RFC* adds a driver stub for ChipIdea USB dual role controllers
found on Marvell MVEBU SoCs. Although, I consider this driver quite
finished, the corresponding DT binding is not. Also, we currently
have no corresponding driver in Linux for both MVEBU CI stub and
USB PHY.

The reason I send it here and now, is to get some input from the
(Linux) MVEBU guys on the binding and functional tests on Armada XP.

While we happily lived some years with ehci-orion ignoring usb-phys
and no usb device support at all on Linux, the situation for barebox
is different, of course. For a boot loader, we desperately need
usb-phy setup (and fixup) and proper DT bindings.

I decided to just add the new binding style to the three board dts
overlays we have for barebox. If we are all happy with it, I'd start
implementing the required Linux driver for usb-phy and CI stub with
mbus setup. As usual, binding docs are missing but I think it is
straight forward from what we know of other SoCs/PHYs already.

I also pushed a branch on barebox/next + a fixup for pinctrl and
the USB patches to
https://github.com/shesselba/barebox-dove.git mvebu/usb

USB host has been tested on all three board obviously, I plan to
test USB device on Dove D3Plug which has an USB device jack, but
similar patches for Marvell Berlin (also CI) worked fine.

Comments?

Sebastian Hesselbarth (4):
  usb: add Marvell MVEBU USB support
  ARM: dts: add new USB nodes to Kirkwood Guruplug
  ARM: dts: add new USB nodes to Dove CuBox
  ARM: dts: add new USB nodes to Armada 370 Mirabox

 arch/arm/dts/armada-370-mirabox-bb.dts            |  35 +++
 arch/arm/dts/dove-cubox-bb.dts                    |  42 +++
 arch/arm/dts/kirkwood-guruplug-server-plus-bb.dts |  20 ++
 drivers/usb/Kconfig                               |   1 +
 drivers/usb/Makefile                              |   1 +
 drivers/usb/gadget/Kconfig                        |   4 +-
 drivers/usb/mvebu/Kconfig                         |  35 +++
 drivers/usb/mvebu/Makefile                        |   2 +
 drivers/usb/mvebu/core.c                          | 155 +++++++++++
 drivers/usb/mvebu/phy.c                           | 301 ++++++++++++++++++++++
 10 files changed, 594 insertions(+), 2 deletions(-)
 create mode 100644 drivers/usb/mvebu/Kconfig
 create mode 100644 drivers/usb/mvebu/Makefile
 create mode 100644 drivers/usb/mvebu/core.c
 create mode 100644 drivers/usb/mvebu/phy.c

---
Cc: barebox@lists.infradead.org
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Gregory Clement <gregory.clement@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
