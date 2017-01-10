Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQy3i-0001Be-3R
 for barebox@lists.infradead.org; Tue, 10 Jan 2017 15:10:01 +0000
Received: by mail-pf0-x241.google.com with SMTP id y143so8292014pfb.1
 for <barebox@lists.infradead.org>; Tue, 10 Jan 2017 07:09:37 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Jan 2017 07:08:53 -0800
Message-Id: <20170110150913.31416-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 00/20] Vybrid related patches
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hi everyone,

Here goes third version of the "Vybrid related patches" patchset,
here's what's new since v2 (for v2 see[3]):

       - Dropped incorrect "i.MX: ocotp: Simplify MAC address storing
         logic" patch

       - IOMUXv3 header helper functions converted to use macros
         instead of packed struct

       - Minor spelling corections

As a reminder here's the list of changes since v1(for v1
see [1]):

    - Converted multi-MAC patch to name the device variables as per
      discussion with Sascha and Stefan [2]. (Stefan, I hope you don't
      mind my taking the liberty to implement this and it is not too
      much inconvenice to rebase your patch on top of this change. Let
      me know if there's a better way for us to sync up on this)

    - Dropped configurability from VF610 clock ramping code

    - Converted said code to use imx_ocotp_read_field

    - Added fusemap for VF610 to accomodate previous change

    - Added imx_ocotp_sense_enable() API to accomodate reading speed
      grading information on VF610 (it doesn't seem to be read into
      shadow memory on chip's bootup)

    - Add a number of small code cleanups for OCOTP driver


[1] http://lists.infradead.org/pipermail/barebox/2016-December/028652.html
[2] http://lists.infradead.org/pipermail/barebox/2016-December/028669.html
[3] http://lists.infradead.org/pipermail/barebox/2016-December/028727.html


Andrey Smirnov (20):
  i.MX: esdhc: Enable host->clk during initialization
  i.MX: ocotp: Move memory reversing into a subroutine
  i.MX: ocotp: Add provisions for storing multiple MAC addresses
  i.MX: ocotp: Initialize OCOTP as early as possible
  i.MX: clk: Add IMX_PLLV3_SYS_VF610 subtype
  i.MX: ocotp: Add imx_ocotp_sense_enable()
  i.MX: imx6-fusemap: Fix SJC_RESP_LOCK width
  i.MX: Add fusemap for VF610
  i.MX: vf610: Ramp CPU clock to maximum frequency
  i.MX: iomuxv3: Add low-level pad code to headers
  i.MX: iomuxv3: Add helper macros to deconstruct iomux_v3_cfg_t values
  i.MX: iomuxv3: Add low-level pad configuration routine
  i.MX6: sabresd: Remove magic numbers in setup_uart
  i.MX: iomuxv3: Use helper functions in iomux-v3.h
  i.MX: vf610: Add low-level pin configuration helper
  i.MX: iomux-vf610: Add missing pad definitions
  i.MX: imx-usb-phy: Add VF610 OF compatiblity string
  i.MX: Default CONFIG_USB_IMX_PHY to 'y' on Vybrid
  i.MX: imx-usb-misc: Add Vybrid support
  i.MX: vf610-twr: Remove MSCM setup code

 arch/arm/boards/freescale-mx6-sabresd/lowlevel.c |   9 +-
 arch/arm/boards/freescale-vf610-twr/lowlevel.c   |   5 -
 arch/arm/mach-imx/Kconfig                        |   1 +
 arch/arm/mach-imx/include/mach/imx6-fusemap.h    |  42 +-----
 arch/arm/mach-imx/include/mach/iomux-v3.h        |  53 ++++++++
 arch/arm/mach-imx/include/mach/iomux-vf610.h     |  19 +++
 arch/arm/mach-imx/include/mach/ocotp-fusemap.h   |  49 +++++++
 arch/arm/mach-imx/include/mach/ocotp.h           |   1 +
 arch/arm/mach-imx/include/mach/vf610-fusemap.h   |  15 +++
 arch/arm/mach-imx/ocotp.c                        |  93 +++++++++----
 drivers/clk/imx/clk-pllv3.c                      | 108 +++++++++++++++
 drivers/clk/imx/clk-vf610.c                      | 163 ++++++++++++++++++++++-
 drivers/clk/imx/clk.h                            |   5 +
 drivers/mci/imx-esdhc.c                          |   7 +
 drivers/pinctrl/imx-iomux-v3.c                   |  38 +-----
 drivers/pinctrl/pinctrl-vf610.c                  |  11 +-
 drivers/usb/imx/Kconfig                          |   2 +-
 drivers/usb/imx/imx-usb-misc.c                   |  28 ++++
 drivers/usb/imx/imx-usb-phy.c                    |   2 +
 19 files changed, 533 insertions(+), 118 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/ocotp-fusemap.h
 create mode 100644 arch/arm/mach-imx/include/mach/vf610-fusemap.h

-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
