Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPBR4-0003QR-Ao
 for barebox@lists.infradead.org; Sun, 16 Mar 2014 13:49:07 +0000
Received: by mail-lb0-f178.google.com with SMTP id s7so2911196lbd.23
 for <barebox@lists.infradead.org>; Sun, 16 Mar 2014 06:48:42 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 16 Mar 2014 17:48:11 +0400
Message-Id: <1394977701-5889-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 00/10] ARM: initial support for TI DaVinci SoCs and
 virt2real board
To: barebox@lists.infradead.org

Change since v1:

- add hardware-base clocksource and move dummy software-only
  clocksource to separate patchseries;
- add gpio driver;
- use devicetree for probing devices.

Antony Pavlov (10):
  import _AC and UL macros from linux kernel
  ARM: initial support for TI DaVinci SoCs
  ARM: davinci: add DEBUG_LL support
  ARM: davinci: add clocksource
  gpio: add driver for TI DaVinci SoCs
  ARM: dts: Add TI TMS320DM365 devicetree file
  ARM: davinci: add documentation
  ARM: davinci: add virt2real board support
  ARM: virt2real: add documentation
  ARM: davinci: add virt2real_defconfig

 Documentation/boards.dox                      |   1 +
 arch/arm/Kconfig                              |   7 +
 arch/arm/Makefile                             |   1 +
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/virt2real/Makefile            |   1 +
 arch/arm/boards/virt2real/board.c             |  27 ++++
 arch/arm/boards/virt2real/lowlevel.c          |  34 +++++
 arch/arm/boards/virt2real/virt2real.dox       |  41 +++++
 arch/arm/configs/virt2real_defconfig          |  49 ++++++
 arch/arm/dts/dm365.dtsi                       |  28 ++++
 arch/arm/dts/virt2real.dts                    |  35 +++++
 arch/arm/include/asm/memory.h                 |   7 +
 arch/arm/mach-arm.dox                         |   2 +
 arch/arm/mach-davinci/Kconfig                 |  16 ++
 arch/arm/mach-davinci/Makefile                |   1 +
 arch/arm/mach-davinci/include/mach/debug_ll.h |  42 +++++
 arch/arm/mach-davinci/include/mach/hardware.h |  29 ++++
 arch/arm/mach-davinci/include/mach/serial.h   |  20 +++
 arch/arm/mach-davinci/include/mach/time.h     |  20 +++
 arch/arm/mach-davinci/mach-davinci.dox        |   7 +
 arch/arm/mach-davinci/time.c                  | 209 +++++++++++++++++++++++++
 drivers/gpio/Kconfig                          |   7 +
 drivers/gpio/Makefile                         |   1 +
 drivers/gpio/gpio-davinci.c                   | 211 ++++++++++++++++++++++++++
 include/linux/const.h                         |  27 ++++
 25 files changed, 824 insertions(+)
 create mode 100644 arch/arm/boards/virt2real/Makefile
 create mode 100644 arch/arm/boards/virt2real/board.c
 create mode 100644 arch/arm/boards/virt2real/lowlevel.c
 create mode 100644 arch/arm/boards/virt2real/virt2real.dox
 create mode 100644 arch/arm/configs/virt2real_defconfig
 create mode 100644 arch/arm/dts/dm365.dtsi
 create mode 100644 arch/arm/dts/virt2real.dts
 create mode 100644 arch/arm/mach-davinci/Kconfig
 create mode 100644 arch/arm/mach-davinci/Makefile
 create mode 100644 arch/arm/mach-davinci/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-davinci/include/mach/hardware.h
 create mode 100644 arch/arm/mach-davinci/include/mach/serial.h
 create mode 100644 arch/arm/mach-davinci/include/mach/time.h
 create mode 100644 arch/arm/mach-davinci/mach-davinci.dox
 create mode 100644 arch/arm/mach-davinci/time.c
 create mode 100644 drivers/gpio/gpio-davinci.c
 create mode 100644 include/linux/const.h

-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
