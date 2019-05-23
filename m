Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpoy-00022s-Lv
 for barebox@lists.infradead.org; Thu, 23 May 2019 15:40:02 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 23 May 2019 17:39:34 +0200
Message-Id: <20190523153943.7995-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v3 0/9] ARM: at91: misc fixes and cleanup
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

The fixes are the same as in v2. The cleanup was made cleaner
a bit.

Changes since v2:
  - Collected Sam's Tested-by and Reviewed-by
  - Reinstated *_get_ddram_size helpers, but without #ifdefs,
    as suggested by Sascha
  - While doing that, some more unnecessary #ifdef usage unraveled,
    so added two patches for those as well
  - Squashed in a fix for another const-safety warning, suggested by Sam

Changes since v1:
  - Collected Sam's Tested-by and Reviewed-by
  - Included Sam's fix for the sama5d4 as patch 03
  - moved debug_ll base address defaults to common/Kconfig
  - above also got rid of a typo in the base address constant name
  - added patches 06-09 which remove board-specific helpers as suggested
    by Sascha in the review of the sama5d3 first stage patchset
  - added patch 10 with a fix for a warning I ran into in the newly
    ported clock drivers

Ahmad Fatoum (8):
  ARM: at91: replace __raw_{readl,writel} of peripherals with
    readl,writel
  ARM: at91: debug_ll: make UART base address configurable
  ARM: at91: remove references to non-existing CONFIG_ARCH_AT91*
  ARM: at91: remove no-longer needed subarch #ifdefery
  ARM: at91: remove #ifdefery around *_get_ddram_size helpers
  ARM: at91: fix at91sama5_get_ddram_size for sama5d4
  ARM: at91: remove duplicate get_ddram_size code
  clk: at91: fix warning about missing const-safety

Sam Ravnborg (1):
  arm: sama5d4: fix stack setup

 arch/arm/boards/at91rm9200ek/lowlevel.c       | 40 ++++-----
 arch/arm/boards/sama5d3_xplained/lowlevel.c   |  2 +-
 arch/arm/boards/sama5d3xek/lowlevel.c         |  2 +-
 arch/arm/boards/sama5d4_xplained/lowlevel.c   |  4 +-
 arch/arm/boards/sama5d4ek/lowlevel.c          |  4 +-
 arch/arm/mach-at91/Kconfig                    | 17 ----
 arch/arm/mach-at91/include/mach/at91_dbgu.h   |  2 -
 .../include/mach/at91sam926x_board_init.h     | 22 ++---
 .../mach-at91/include/mach/at91sam9_ddrsdr.h  | 68 ++-------------
 .../mach-at91/include/mach/at91sam9_sdramc.h  |  4 +-
 arch/arm/mach-at91/include/mach/debug_ll.h    | 13 +--
 arch/arm/mach-at91/include/mach/gpio.h        | 57 ++++++------
 arch/arm/mach-at91/include/mach/hardware.h    | 18 ----
 arch/arm/mach-at91/sam9_smc.c                 | 58 ++++++-------
 arch/arm/mach-at91/sama5d3_devices.c          |  2 +-
 arch/arm/mach-at91/sama5d4_devices.c          |  2 +-
 arch/arm/mach-at91/setup.c                    |  4 +-
 common/Kconfig                                | 21 +++++
 drivers/clk/at91/clk-generated.c              |  3 +-
 drivers/clk/at91/clk-main.c                   |  3 +-
 drivers/clocksource/timer-atmel-pit.c         |  4 +-
 drivers/mci/atmel-mci-regs.h                  |  4 +-
 drivers/net/at91_ether.h                      |  4 +-
 drivers/net/macb.h                            |  8 +-
 drivers/pinctrl/pinctrl-at91.c                | 28 +++---
 drivers/spi/atmel_spi.h                       |  4 +-
 drivers/usb/gadget/at91_udc.c                 | 86 +++++++++----------
 drivers/video/atmel_lcdfb.h                   |  4 +-
 28 files changed, 204 insertions(+), 284 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
