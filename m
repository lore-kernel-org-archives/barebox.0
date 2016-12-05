Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cDufx-0005K3-0E
 for barebox@lists.infradead.org; Mon, 05 Dec 2016 14:55:30 +0000
Received: by mail-pg0-x241.google.com with SMTP id x23so16673032pgx.3
 for <barebox@lists.infradead.org>; Mon, 05 Dec 2016 06:55:08 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  5 Dec 2016 06:54:28 -0800
Message-Id: <1480949684-18520-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 00/16] Vybrid related patches
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hi everyone,

Here's a second wave of Vybrid related patches that I developed
working with custom Vybrid board.

Most notable features of this patchset are:

     - CPU re-clocking for Vybrid
     - USB support on Vybrid
     - Early pinmux configuration routines for i.MX and Vybrid. An
       example of their utility is shown in the patch for i.MX6
       SabreSD board (I also have custom code using Vybrid version of
       those to read various "bootstraping" pins on my custom design)
     

Andrey Smirnov (16):
  i.MX: esdhc: Enable host->clk during initialization
  i.MX: ocotp: Add provisions for storing multiple MAC addresses
  i.MX: ocotp: Initialize OCOTP as early as possible
  i.MX: ocotp: Initialize 'sense_enable' to true on Vybrid
  i.MX: clk: Add IMX_PLLV3_SYS_VF610 subtype
  i.MX: vf610: Ramp CPU clock to maximum frequency
  i.MX: iomuxv3: Add low-level pad code to headers
  i.MX: iomuxv3: Add helper type to deconstruct iomux_v3_cfg_t values
  i.MX: iomuxv3: Add low-level pad configuration routine
  i.MX6: sabresd: Remove magic numbers in setup_uart
  i.MX: iomuxv3: Use helper functions in iomux-v3.h
  i.MX: vf610: Add low-level pin configuration helper
  i.MX: iomux-vf610: Add missing pad definitions
  i.MX: imx-usb-phy: Add VF610 OF compatiblity string
  i.MX: Default CONFI_USB_IMX_PHY to 'y' on Vybrid
  i.MX: imx-usb-misc: Add Vybrid support

 arch/arm/boards/freescale-mx6-sabresd/lowlevel.c |   9 +-
 arch/arm/mach-imx/Kconfig                        |  13 ++
 arch/arm/mach-imx/include/mach/iomux-v3.h        |  61 ++++++++
 arch/arm/mach-imx/include/mach/iomux-vf610.h     |  20 +++
 arch/arm/mach-imx/ocotp.c                        |  58 ++++++-
 drivers/clk/imx/clk-pllv3.c                      | 108 +++++++++++++
 drivers/clk/imx/clk-vf610.c                      | 187 ++++++++++++++++++++++-
 drivers/clk/imx/clk.h                            |   5 +
 drivers/mci/imx-esdhc.c                          |   7 +
 drivers/pinctrl/imx-iomux-v3.c                   |  38 +----
 drivers/pinctrl/pinctrl-vf610.c                  |  11 +-
 drivers/usb/imx/Kconfig                          |   2 +-
 drivers/usb/imx/imx-usb-misc.c                   |  28 ++++
 drivers/usb/imx/imx-usb-phy.c                    |   2 +
 14 files changed, 496 insertions(+), 53 deletions(-)

-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
