Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.245]
 helo=DVREDG01.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XUCNK-0007yN-UG
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 10:22:15 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Wed, 17 Sep 2014 18:21:26 +0800
Message-ID: <1410949295-30296-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH 0/9] ARM: at91: add sama5d4ek board support
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

This patch series add Atmel new SoC SAMA5D4 support, which embedded
the Cortex-A5 core.
This patch series also add the EK board base on SAMA5D4 SoC support.


Bo Shen (9):
  ARM: at91: move pmc base address into soc header
  ARM: atmel: sama5d3 is a family member of sama5
  ARM: at91: clock: use cpu_has_pcr for pcr1 checking
  nand: atmel: runtime to generate galois table
  net: macb: using default value for FBLDO
  mci: atmel: add new ip version 0x600 support
  ARM: at91: add sama5d4 soc support #1
  ARM: at91: add sama5d4 soc support #2
  ARM: at91: add sama5d4ek board support

 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/sama5d4ek/Makefile            |   1 +
 arch/arm/boards/sama5d4ek/env/bin/init_board  |  15 +
 arch/arm/boards/sama5d4ek/env/config          |  42 +++
 arch/arm/boards/sama5d4ek/init.c              | 311 ++++++++++++++++
 arch/arm/configs/sama5d4ek_defconfig          |  85 +++++
 arch/arm/mach-at91/Kconfig                    |  26 ++
 arch/arm/mach-at91/Makefile                   |   2 +
 arch/arm/mach-at91/clock.c                    |  72 +++-
 arch/arm/mach-at91/clock.h                    |   2 +-
 arch/arm/mach-at91/include/mach/at91_pmc.h    |   1 +
 arch/arm/mach-at91/include/mach/at91rm9200.h  |   1 +
 arch/arm/mach-at91/include/mach/at91sam9260.h |   2 +
 arch/arm/mach-at91/include/mach/at91sam9261.h |   1 +
 arch/arm/mach-at91/include/mach/at91sam9263.h |   2 +
 arch/arm/mach-at91/include/mach/at91sam9g45.h |   2 +
 arch/arm/mach-at91/include/mach/at91sam9n12.h |   1 +
 arch/arm/mach-at91/include/mach/at91sam9x5.h  |   1 +
 arch/arm/mach-at91/include/mach/cpu.h         |  30 +-
 arch/arm/mach-at91/include/mach/hardware.h    |   6 +-
 arch/arm/mach-at91/include/mach/sama5d3.h     |   2 +
 arch/arm/mach-at91/include/mach/sama5d4.h     | 134 +++++++
 arch/arm/mach-at91/sam9_smc.c                 |   6 +-
 arch/arm/mach-at91/sama5d4.c                  | 303 ++++++++++++++++
 arch/arm/mach-at91/sama5d4_devices.c          | 495 ++++++++++++++++++++++++++
 arch/arm/mach-at91/setup.c                    |  43 ++-
 arch/arm/mach-at91/soc.h                      |   7 +-
 drivers/mci/atmel_mci.c                       |   1 +
 drivers/mtd/nand/atmel_nand.c                 | 121 ++++++-
 drivers/net/macb.c                            |   1 -
 30 files changed, 1680 insertions(+), 37 deletions(-)
 create mode 100644 arch/arm/boards/sama5d4ek/Makefile
 create mode 100644 arch/arm/boards/sama5d4ek/env/bin/init_board
 create mode 100644 arch/arm/boards/sama5d4ek/env/config
 create mode 100644 arch/arm/boards/sama5d4ek/init.c
 create mode 100644 arch/arm/configs/sama5d4ek_defconfig
 create mode 100644 arch/arm/mach-at91/include/mach/sama5d4.h
 create mode 100644 arch/arm/mach-at91/sama5d4.c
 create mode 100644 arch/arm/mach-at91/sama5d4_devices.c

-- 
2.1.0.24.g4109c28


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
