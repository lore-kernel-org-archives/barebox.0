Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x232.google.com ([2a00:1450:4013:c00::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgMjk-000671-KT
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 22:47:09 +0000
Received: by mail-ee0-f50.google.com with SMTP id b45so3473395eek.37
 for <barebox@lists.infradead.org>; Tue, 12 Nov 2013 14:46:43 -0800 (PST)
From: Rostislav Lisovy <lisovy@gmail.com>
Date: Tue, 12 Nov 2013 23:46:33 +0100
Message-Id: <1384296396-18841-1-git-send-email-lisovy@gmail.com>
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
Subject: [PATCH 0/3 v2] Support for Voipac X53-DMM-668 module and Voipac
 Baseboard
To: barebox@lists.infradead.org
Cc: Rostislav Lisovy <lisovy@gmail.com>, pisa@cmp.felk.cvut.cz

This patchset adds support for Voipac Baseboard using x53-dmm-668
module (equipped with i.mx53 CPU). More info about the module may
be found at: http://www.voipac.com/#X53-DMM-668

Changes since v1:
* Fixed error checking in fec_imx.c
* Board support is now done in the 'multiboard way'

Rostislav Lisovy (3):
  ARM: dts: i.mx53: Internal keyboard controller + i2c pinmux
  ARM: i.mx53: Parse Reset GPIO pin in FEC driver from Devicetree
  ARM: i.mx53: Support for Voipac board with X53-DMM-668 module.

 arch/arm/boards/Makefile                           |    1 +
 arch/arm/boards/freescale-mx53-vmx53/Makefile      |    3 +
 arch/arm/boards/freescale-mx53-vmx53/board.c       |   42 +++++
 .../boards/freescale-mx53-vmx53/env/config-board   |    8 +
 .../flash-header-imx53-vmx53.imxcfg                |   54 ++++++
 arch/arm/boards/freescale-mx53-vmx53/lowlevel.c    |   19 ++
 arch/arm/dts/Makefile                              |    4 +-
 arch/arm/dts/imx53-voipac-bsb.dts                  |  135 ++++++++++++++
 arch/arm/dts/imx53-voipac-dmm-668.dtsi             |  196 ++++++++++++++++++++
 arch/arm/dts/imx53.dtsi                            |   15 ++
 arch/arm/mach-imx/Kconfig                          |    8 +
 drivers/net/fec_imx.c                              |   33 ++++
 images/Makefile.imx                                |    5 +
 13 files changed, 522 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/Makefile
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/board.c
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/env/config-board
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/flash-header-imx53-vmx53.imxcfg
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
 create mode 100644 arch/arm/dts/imx53-voipac-bsb.dts
 create mode 100644 arch/arm/dts/imx53-voipac-dmm-668.dtsi

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
