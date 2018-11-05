Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJh9z-0000Or-27
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:51:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Nov 2018 16:50:51 +0100
Message-Id: <20181105155113.3434-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 00/22] AT91 header cleanup
To: Barebox List <barebox@lists.infradead.org>

The following series contains a bigger at91 header file cleanup. With
this the SoC header files become completely SoC namespaced which means
they can all be included as desired without conflicts. This makes the
way free for more at91 multiboard support.

I don't have that much AT91 hardware on my desk, so I am unable to test
this properly. Testing feedback very much appreciated. Sam maybe?

Sascha

Sascha Hauer (22):
  ARM: at91: remove unused AT_DMA_ID_ defines
  ARM: at91: remove unused CONSISTENT_DMA_SIZE defines
  ARM: at91rm9200ek: Use SoC specific defines
  ARM: at91sam926x: Add header for at91sam926x common base addresses
  ARM: at91: remove unused defines
  ARM: at91: drop AT91_NB_USART
  ARM: at91: remove AT91_SDRAM_BASE
  ARM: at91: consolidate phy reset functions
  ARM: at91: remove common matrix header file
  ARM: at91: Add SoC namespace to matrix defines
  ARM: at91: Use SoC specific base addresses where appropriate
  ARM: at91rm9200: Add SoC namespace to memory controller defines
  ARM: at91: remove unused header file
  ARM: at91rm9200 timer: remove unused include
  ARM: at91rm9200 timer: Make system timer defines SoC specific
  ARM: at91: remove mach/io.h
  ARM: at91sam926x use writel rather than pmc accessor function
  ARM: at91rm9200ek: use plain readl/writel for pmc accesses
  ARM: at91: drop at91_pmc_write()/at91_pmc_read()
  ARM: at91: make at91sam926x_board_init board specific
  ARM: at91: separate restart handler registration into SoC specific
    code
  ARM: at91: remove unused defines

 arch/arm/boards/animeo_ip/init.c              |  23 +-
 arch/arm/boards/at91rm9200ek/config.h         |  26 +-
 arch/arm/boards/at91rm9200ek/init.c           |   1 -
 arch/arm/boards/at91rm9200ek/lowlevel.c       |  44 +--
 arch/arm/boards/at91sam9260ek/init.c          |  22 +-
 arch/arm/boards/at91sam9261ek/init.c          |   1 -
 arch/arm/boards/at91sam9261ek/lowlevel_init.c |   6 +-
 arch/arm/boards/at91sam9263ek/init.c          |   1 -
 arch/arm/boards/at91sam9263ek/lowlevel_init.c |   8 +-
 arch/arm/boards/at91sam9263ek/of_init.c       |   8 +-
 arch/arm/boards/at91sam9m10g45ek/init.c       |   1 -
 arch/arm/boards/at91sam9m10ihd/init.c         |   1 -
 arch/arm/boards/at91sam9n12ek/init.c          |   1 -
 arch/arm/boards/at91sam9x5ek/init.c           |  17 +-
 arch/arm/boards/dss11/init.c                  |  23 +-
 arch/arm/boards/haba-knx/init.c               |  24 +-
 arch/arm/boards/pm9261/init.c                 |   1 -
 arch/arm/boards/pm9261/lowlevel_init.c        |   8 +-
 arch/arm/boards/pm9263/init.c                 |   1 -
 arch/arm/boards/pm9263/lowlevel_init.c        |   8 +-
 arch/arm/boards/pm9g45/init.c                 |   1 -
 arch/arm/boards/qil-a926x/init.c              |  23 +-
 arch/arm/boards/sama5d3_xplained/init.c       |   1 -
 arch/arm/boards/sama5d3xek/init.c             |   1 -
 arch/arm/boards/telit-evk-pro3/init.c         |  22 +-
 arch/arm/boards/tny-a926x/init.c              |   1 -
 .../arm/boards/tny-a926x/tny_a9263_lowlevel.c |   8 +-
 arch/arm/boards/usb-a926x/init.c              |  25 +-
 .../arm/boards/usb-a926x/usb_a9263_lowlevel.c |   8 +-
 arch/arm/mach-at91/Kconfig                    |  14 -
 arch/arm/mach-at91/Makefile                   |   6 +-
 arch/arm/mach-at91/at91rm9200_devices.c       |  21 +-
 arch/arm/mach-at91/at91rm9200_time.c          |  17 +-
 arch/arm/mach-at91/at91sam9260.c              |  11 +
 arch/arm/mach-at91/at91sam9260_devices.c      |  12 +-
 arch/arm/mach-at91/at91sam9261.c              |  11 +
 arch/arm/mach-at91/at91sam9261_devices.c      |   8 +-
 arch/arm/mach-at91/at91sam9263.c              |  11 +
 arch/arm/mach-at91/at91sam9263_devices.c      |  12 +-
 arch/arm/mach-at91/at91sam9_reset.S           |  12 +-
 arch/arm/mach-at91/at91sam9g45.c              |  12 +-
 arch/arm/mach-at91/at91sam9g45_devices.c      |  12 +-
 arch/arm/mach-at91/at91sam9g45_reset.S        |  12 +-
 arch/arm/mach-at91/at91sam9n12.c              |  12 +-
 arch/arm/mach-at91/at91sam9n12_devices.c      |  23 +-
 arch/arm/mach-at91/at91sam9x5.c               |  20 ++
 arch/arm/mach-at91/at91sam9x5_devices.c       |  16 +-
 arch/arm/mach-at91/clock.c                    |  22 +-
 arch/arm/mach-at91/include/mach/at91_pmc.h    |   6 -
 arch/arm/mach-at91/include/mach/at91_rstc.h   |   6 +-
 arch/arm/mach-at91/include/mach/at91_st.h     |  49 ----
 arch/arm/mach-at91/include/mach/at91_tc.h     | 146 ---------
 arch/arm/mach-at91/include/mach/at91rm9200.h  |  39 +--
 .../mach-at91/include/mach/at91rm9200_mc.h    | 277 +++++++++---------
 .../mach-at91/include/mach/at91rm9200_st.h    |  49 ++++
 arch/arm/mach-at91/include/mach/at91sam9260.h |  44 ---
 .../include/mach/at91sam9260_matrix.h         | 114 +++----
 arch/arm/mach-at91/include/mach/at91sam9261.h |  30 --
 .../include/mach/at91sam9261_matrix.h         |  82 +++---
 arch/arm/mach-at91/include/mach/at91sam9263.h |  40 ---
 .../include/mach/at91sam9263_matrix.h         | 208 ++++++-------
 arch/arm/mach-at91/include/mach/at91sam926x.h |   8 +
 .../include/mach/at91sam926x_board_init.h     |  65 ++--
 .../mach-at91/include/mach/at91sam9_ddrsdr.h  |   6 +-
 .../mach-at91/include/mach/at91sam9_matrix.h  |  30 --
 .../mach-at91/include/mach/at91sam9_sdramc.h  |   5 +-
 .../arm/mach-at91/include/mach/at91sam9_smc.h |   6 -
 arch/arm/mach-at91/include/mach/at91sam9g45.h |  56 ----
 .../include/mach/at91sam9g45_matrix.h         | 246 ++++++++--------
 arch/arm/mach-at91/include/mach/at91sam9n12.h |  67 -----
 .../include/mach/at91sam9n12_matrix.h         | 146 ++++-----
 arch/arm/mach-at91/include/mach/at91sam9x5.h  |  74 +----
 .../include/mach/at91sam9x5_matrix.h          | 228 +++++++-------
 arch/arm/mach-at91/include/mach/board.h       |   9 +-
 arch/arm/mach-at91/include/mach/hardware.h    |   7 -
 arch/arm/mach-at91/include/mach/io.h          |  38 ---
 arch/arm/mach-at91/include/mach/sama5d3.h     |  44 +--
 arch/arm/mach-at91/include/mach/sama5d4.h     |  10 +-
 arch/arm/mach-at91/sam9_smc.c                 |   1 -
 arch/arm/mach-at91/sama5d3.c                  |  12 +-
 arch/arm/mach-at91/sama5d3_devices.c          |   1 -
 arch/arm/mach-at91/sama5d4.c                  |  12 +-
 arch/arm/mach-at91/sama5d4_devices.c          |   1 -
 arch/arm/mach-at91/setup.c                    |  33 ++-
 drivers/clocksource/timer-atmel-pit.c         |   1 -
 drivers/spi/atmel_spi.c                       |   1 -
 drivers/usb/gadget/at91_udc.c                 |  21 +-
 drivers/video/atmel_hlcdfb.c                  |   1 -
 drivers/video/atmel_lcdfb.c                   |   1 -
 89 files changed, 1082 insertions(+), 1717 deletions(-)
 create mode 100644 arch/arm/mach-at91/at91sam9x5.c
 delete mode 100644 arch/arm/mach-at91/include/mach/at91_st.h
 delete mode 100644 arch/arm/mach-at91/include/mach/at91_tc.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91rm9200_st.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam926x.h
 delete mode 100644 arch/arm/mach-at91/include/mach/at91sam9_matrix.h
 delete mode 100644 arch/arm/mach-at91/include/mach/io.h

-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
