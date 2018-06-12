Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x235.google.com ([2607:f8b0:400e:c00::235])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSoL5-0008QD-4r
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 18:48:20 +0000
Received: by mail-pf0-x235.google.com with SMTP id h12-v6so12560903pfk.11
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 11:48:08 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 11:47:46 -0700
Message-Id: <20180612184800.4940-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 00/14] VFxxx DCD fixes and improvements
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This series is the result of investigation into DDR failures on a ZII
VF610 Dev derivative design. It mostly code sharing changes, cleanups
and some fixes and a nasty DCD hack removal. All of the changes are
limited to VFxxx and shouldn't affect any other supported SoCs.

Feedback is wellcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (14):
  VFxxx: Remove stale code from DCD files
  VFxxx: Add common header for DDR IOMUX DCD configuration
  VFxxx: Add common DDR PHY DCD header
  VFxxx: Add common header for DDR clock setting DCD
  VFxxx: Add common DCD header for common DDR configuration
  VFxxx: Reconcile shared DDR DCD configuration with U-Boot
  VFxxx: Reconcile shared DDR DCD with memory datasheet
  VFxxx: zii-vf610-dev: Drop most custom DDRMC DCD code
  VFxxx: Initialize IOMUXC_DUMMY_DDRBYTE1/2 in default DDR DCD
  VFxxx: Reconcile shared DDR IOMUX DCD with schematic
  VFxxx: DCD: Remove CR151 initialization
  VFxxx: DCD: Drop initialization of CR139 - CR148
  VFxxx: DCD: Remove CR97, CR98 and CR99
  VFxxx: DCD: Remove read leveling and gate training delays

 .../flash-header-vf610-twr.imxcfg             | 277 +-----------------
 .../flash-header-zii-vf610-dev.imxcfg         | 241 +--------------
 .../flash-header/vf610-ddr-cr-default.imxcfg  | 131 +++++++++
 .../flash-header/vf610-ddr-phy-default.imxcfg |  41 +++
 .../flash-header/vf610-ddr-pll2-400mhz.imxcfg |  46 +++
 .../vf610-iomux-ddr-default.imxcfg            |  63 ++++
 .../mach-imx/include/mach/vf610-ddrmc-regs.h  | 109 +++++++
 .../mach-imx/include/mach/vf610-iomux-regs.h  |  58 ++++
 8 files changed, 468 insertions(+), 498 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
 create mode 100644 arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-phy-default.imxcfg
 create mode 100644 arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-pll2-400mhz.imxcfg
 create mode 100644 arch/arm/mach-imx/include/mach/flash-header/vf610-iomux-ddr-default.imxcfg
 create mode 100644 arch/arm/mach-imx/include/mach/vf610-ddrmc-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/vf610-iomux-regs.h

-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
