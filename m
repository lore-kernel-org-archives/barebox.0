Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcsiE-0004hQ-5I
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 14:34:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hcsiC-0004Fh-H7
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 16:34:20 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hcsiC-0008Qo-9p
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 16:34:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Jun 2019 16:34:14 +0200
Message-Id: <20190617143418.32207-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v3 0/4] ARM: stm32mp: implement watchdog/reset handling
To: barebox@lists.infradead.org

Originally, I thought about having poller enabled by default if the
watchdog was active at barebox probe time, but I can't find a way
to check if the IWDG is active or not, thus the driver probe doesn't
touch the watchdog hardware anymore.

Changes since v2:
 * Dropped already applied patches from v2
 * reran savedefconfig as prep and added the commit
 * documented BROWNOUT reason in Documentation/
 * removed enabling watchdog by default
 * renamed the file to stm32_wdt.c to stm32_iwdg.c, because there is
   a distinct stm32_wwdg Watchdog as well
 * dropped &iwdg2 { status = "okay"; } because it's now part of the
   upstream device tree

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

Ahmad Fatoum (4):
  ARM: stm32mp1: rerun savedefconfig on stm32mp_defconfig
  Documentation: reset-reason: document new BROWNOUT reason
  watchdog: add stm32 watchdog and reset driver
  ARM: stm32mp: enable watchdog in oftree and defconfig

 Documentation/user/reset-reason.rst |   4 +
 arch/arm/configs/stm32mp_defconfig  |   6 +-
 arch/arm/dts/stm32mp157c-dk2.dts    |   4 +
 drivers/watchdog/Kconfig            |   8 +
 drivers/watchdog/Makefile           |   1 +
 drivers/watchdog/stm32_iwdg.c       | 298 ++++++++++++++++++++++++++++
 6 files changed, 319 insertions(+), 2 deletions(-)
 create mode 100644 drivers/watchdog/stm32_iwdg.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
