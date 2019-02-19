Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gw4AC-0006nO-3r
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 12:06:17 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gw4A9-0001ym-Hz
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 13:06:13 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC5)
 (envelope-from <afa@pengutronix.de>) id 1gw4A9-0003mn-82
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 13:06:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 Feb 2019 13:06:08 +0100
Message-Id: <20190219120612.728-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 0/4] ARM: at91: misc fixes and cleanup
To: barebox@lists.infradead.org

Hello,

I noticed these issues while preparing v2 of the sama5d3 first stage
patch set. As they are applicable on their own, I am sending them out
as a separate patch set.

They apply on top of Sam's "at91: Support PMC clock bindings" v3, but
I guess, they should apply on top of v4 as well.

Cheers
Ahmad

Ahmad Fatoum (4):
  ARM: at91: replace __raw_{readl,writel} of peripherals with
    readl,writel
  ARM: at91: debug_ll: make UART base address configurable
  ARM: at91: fix at91sama5_get_ddram_size for sama5d4
  ARM: at91: remove duplicate get_ddram_size code

 arch/arm/boards/at91rm9200ek/lowlevel.c       | 40 ++++-----
 arch/arm/boards/sama5d3_xplained/lowlevel.c   |  2 +-
 arch/arm/boards/sama5d3xek/lowlevel.c         |  2 +-
 arch/arm/boards/sama5d4_xplained/lowlevel.c   |  2 +-
 arch/arm/boards/sama5d4ek/lowlevel.c          |  2 +-
 arch/arm/mach-at91/Kconfig                    | 23 ++---
 .../include/mach/at91sam926x_board_init.h     | 22 ++---
 .../mach-at91/include/mach/at91sam9_ddrsdr.h  | 37 ++------
 .../mach-at91/include/mach/at91sam9_sdramc.h  |  4 +-
 arch/arm/mach-at91/include/mach/debug_ll.h    | 12 +--
 arch/arm/mach-at91/include/mach/gpio.h        | 56 ++++++------
 arch/arm/mach-at91/sam9_smc.c                 | 58 ++++++-------
 arch/arm/mach-at91/sama5d3_devices.c          |  2 +-
 arch/arm/mach-at91/sama5d4_devices.c          |  2 +-
 arch/arm/mach-at91/setup.c                    |  4 +-
 common/Kconfig                                | 14 +++
 drivers/clocksource/timer-atmel-pit.c         |  4 +-
 drivers/mci/atmel-mci-regs.h                  |  4 +-
 drivers/net/at91_ether.h                      |  4 +-
 drivers/net/macb.h                            |  8 +-
 drivers/pinctrl/pinctrl-at91.c                | 28 +++---
 drivers/spi/atmel_spi.h                       |  4 +-
 drivers/usb/gadget/at91_udc.c                 | 86 +++++++++----------
 drivers/video/atmel_lcdfb.h                   |  4 +-
 24 files changed, 197 insertions(+), 227 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
