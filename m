Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x235.google.com ([2a00:1450:4013:c01::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vdhq6-0004F5-FN
 for barebox@lists.infradead.org; Tue, 05 Nov 2013 14:42:44 +0000
Received: by mail-ea0-f181.google.com with SMTP id d10so4185562eaj.26
 for <barebox@lists.infradead.org>; Tue, 05 Nov 2013 06:42:17 -0800 (PST)
From: Rostislav Lisovy <lisovy@gmail.com>
Date: Tue,  5 Nov 2013 15:42:04 +0100
Message-Id: <1383662527-8538-1-git-send-email-lisovy@gmail.com>
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
Subject: [PATCH 0/3] Support for Voipac X53-DMM-668 module and Voipac Baseboard
To: barebox@lists.infradead.org
Cc: Rostislav Lisovy <lisovy@gmail.com>, pisa@cmp.felk.cvut.cz

The first patch modifies the general imx53.dtsi file. The reason is to
make it possible to add Devicetree definition for the board (later in
this patch) as a copy from the Linux kernel -- such a DTS can be used
also to boot Linux kernel.
I am not sure if this should be in a separate patch or if this file
(imx53.dtsi) is being regularly mirrored from the Linux kernel.

The second patch modifies the IMX FEC driver to make it possible to
parse the gpio reset pin from the Devicetree and perform the reset in
the driver (thus saving unnecessary code duplication in different
board.c files). The added code is very similar to one in Linux kernel
driver.

The 3rd patch adds the Devicetree definition for the Voipac
x53-dmm-668 module (equipped with i.mx53 CPU) and Voipac Baseboard.
More info about the module might be found at:
http://www.voipac.com/#X53-DMM-668
The DTS files have already been accepted to Linux kernel (waiting in
linux-next). The rest is the necessary hardware initialization etc.  The
devices successfully initialized (and tested) are uart0 and Ethernet.

Rostislav Lisovy (3):
  ARM: dts: i.mx53: Internal keyboard controller + i2c pinmux
  ARM: i.mx53: Parse Reset GPIO pin in FEC driver from Devicetree
  ARM: i.mx53: Support for Voipac board. Device definition is read from
    Devicetree

 arch/arm/boards/Makefile                           |    1 +
 arch/arm/boards/freescale-mx53-vmx53/Makefile      |    3 +
 arch/arm/boards/freescale-mx53-vmx53/board.c       |   42 +++++
 arch/arm/boards/freescale-mx53-vmx53/env/config    |   46 +++++
 .../arm/boards/freescale-mx53-vmx53/flash_header.c |  103 ++++++++++
 arch/arm/boards/freescale-mx53-vmx53/lowlevel.c    |    9 +
 arch/arm/dts/Makefile                              |    4 +-
 arch/arm/dts/imx53-voipac-bsb.dts                  |  135 ++++++++++++++
 arch/arm/dts/imx53-voipac-dmm-668.dtsi             |  196 ++++++++++++++++++++
 arch/arm/dts/imx53.dtsi                            |   15 ++
 arch/arm/mach-imx/Kconfig                          |    9 +
 drivers/net/fec_imx.c                              |   21 +++
 12 files changed, 583 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/Makefile
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/board.c
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/env/config
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/flash_header.c
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
 create mode 100644 arch/arm/dts/imx53-voipac-bsb.dts
 create mode 100644 arch/arm/dts/imx53-voipac-dmm-668.dtsi

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
