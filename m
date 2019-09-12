Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Izm-0003x1-OM
 for barebox@lists.infradead.org; Thu, 12 Sep 2019 06:54:24 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Sep 2019 08:54:10 +0200
Message-Id: <20190912065412.9459-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 0/2] ARM: imx6: add new MarsBoard support
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, eric@eukrea.com

I've picked up v1 of the patch from here:
https://barebox.infradead.narkive.com/mn9ZpGu6/patch-2-3-marsboard-add-new-board

and worked in the review feedback from back then.

v1 -> v2:
 - rebased on current upstream/next
 - removed seperate defconfig and added board to imx_v7_defconfig (Lucas)
 - added boot mode documentation
 - removed redundant VPU/IPU AXI configurations from DCD-Table (Sascha)
 - removed setting console in linux bootargs (Sascha)
 - have board-specific environment use bbenv-y in Makefile (Sascha)
 - added barebox device tree that includes kernel device tree
 - used imx6_uart_setup_ll and imx_setup_pad for debug_ll UART
 - used compressed DTB
 - used imx6q_barebox_entry instead of hardcoding RAM size

Ahmad Fatoum (2):
  ARM: imx6: add Embest MarSBoard support
  ARM: imx_v7_defconfig: enable Embdest MarS board

 Documentation/boards/imx/embest-marsboard.rst | 82 +++++++++++++++
 arch/arm/boards/Makefile                      |  1 +
 arch/arm/boards/embest-marsboard/Makefile     |  3 +
 arch/arm/boards/embest-marsboard/board.c      | 63 ++++++++++++
 .../defaultenv-mars/init/fastboot             |  7 ++
 .../flash-header-embest-marsboard.imxcfg      | 99 +++++++++++++++++++
 arch/arm/boards/embest-marsboard/lowlevel.c   | 41 ++++++++
 arch/arm/configs/imx_v7_defconfig             |  1 +
 arch/arm/dts/Makefile                         |  1 +
 arch/arm/dts/imx6q-marsboard.dts              | 43 ++++++++
 arch/arm/mach-imx/Kconfig                     |  5 +
 images/Makefile.imx                           |  5 +
 12 files changed, 351 insertions(+)
 create mode 100644 Documentation/boards/imx/embest-marsboard.rst
 create mode 100644 arch/arm/boards/embest-marsboard/Makefile
 create mode 100644 arch/arm/boards/embest-marsboard/board.c
 create mode 100644 arch/arm/boards/embest-marsboard/defaultenv-mars/init/fastboot
 create mode 100644 arch/arm/boards/embest-marsboard/flash-header-embest-marsboard.imxcfg
 create mode 100644 arch/arm/boards/embest-marsboard/lowlevel.c
 create mode 100644 arch/arm/dts/imx6q-marsboard.dts

-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
