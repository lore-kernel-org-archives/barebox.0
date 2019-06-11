Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadJL-00046k-SS
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 09:43:27 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hadJK-000790-A6
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 11:43:22 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hadJJ-00058X-W2
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 11:43:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Jun 2019 11:43:13 +0200
Message-Id: <20190611094319.9143-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 0/6] ARM: stm32mp: implement watchdog/reset handling
To: barebox@lists.infradead.org

Changes since v1:
 * renamed BOR reset reason to BROWNOUT
 * replaced leading spaces with tabs
 * s/of_clk_get_by_name/clk_get/ in probe
 * moved RCC reset reason bit definitions into stm32_wdt.c
 * removed unnecessary indentation/alignment
 * had failures of reset reason & handler only print a warning
   but not fail the driver probe. All of these by Sascha
 * fixed an instance of stm32mp1 after the subarch was renamed
   to stm32mp, Spotted by Sam
 * Shortened the Kconfig label text for IWDG. Suggested by Roland
 * Dropped low level UART setup. It was incomplete and will be
   included in the first stage supprot patchset instead.

Cheers
Ahmad


Ahmad Fatoum (6):
  ARM: stm32mp1: rename to stm32mp
  reset_source: add new Brownout reset (BOR) source
  watchdog: add stm32 watchdog and reset driver
  ARM: stm32mp: enable watchdog in oftree and defconfig
  ARM: stm32mp: stm32mp157c-dk2: compress the DTB
  ARM: stm32mp: add entry point, not point.pblb to pblb-y

 arch/arm/Kconfig                              |   4 +-
 arch/arm/Makefile                             |   2 +-
 arch/arm/boards/stm32mp157c-dk2/lowlevel.c    |   4 +-
 .../{stm32mp1_defconfig => stm32mp_defconfig} |   7 +-
 arch/arm/dts/stm32mp157c-dk2.dts              |   4 +
 .../{mach-stm32mp1 => mach-stm32mp}/Kconfig   |   3 +-
 .../{mach-stm32mp1 => mach-stm32mp}/Makefile  |   0
 .../include/mach/debug_ll.h                   |   0
 .../include/mach/stm32.h                      |   0
 common/reset_source.c                         |   1 +
 drivers/watchdog/Kconfig                      |   8 +
 drivers/watchdog/Makefile                     |   1 +
 drivers/watchdog/stm32_wdt.c                  | 304 ++++++++++++++++++
 images/Makefile                               |   2 +-
 .../{Makefile.stm32mp1 => Makefile.stm32mp}   |   2 +-
 include/reset_source.h                        |   1 +
 16 files changed, 333 insertions(+), 10 deletions(-)
 rename arch/arm/configs/{stm32mp1_defconfig => stm32mp_defconfig} (95%)
 rename arch/arm/{mach-stm32mp1 => mach-stm32mp}/Kconfig (72%)
 rename arch/arm/{mach-stm32mp1 => mach-stm32mp}/Makefile (100%)
 rename arch/arm/{mach-stm32mp1 => mach-stm32mp}/include/mach/debug_ll.h (100%)
 rename arch/arm/{mach-stm32mp1 => mach-stm32mp}/include/mach/stm32.h (100%)
 create mode 100644 drivers/watchdog/stm32_wdt.c
 rename images/{Makefile.stm32mp1 => Makefile.stm32mp} (78%)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
