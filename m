Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WN7qw-00068F-Lz
 for barebox@lists.infradead.org; Mon, 10 Mar 2014 21:35:19 +0000
Received: by mail-lb0-f170.google.com with SMTP id s7so5148525lbd.29
 for <barebox@lists.infradead.org>; Mon, 10 Mar 2014 14:34:55 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 11 Mar 2014 01:34:33 +0400
Message-Id: <1394487281-10462-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/8] ARM: initial support for TI DaVinci SoCs and virt2real
 board
To: barebox@lists.infradead.org

Antony Pavlov (8):
  clocksource: add dummy software-only clocksource
  import _AC and UL macros from linux kernel
  ARM: initial support for TI DaVinci SoCs
  ARM: davinci: add DEBUG_LL support
  ARM: davinci: add documentation
  ARM: davinci: add virt2real board support
  ARM: virt2real: add documentation
  ARM: davinci: add virt2real_defconfig

 Documentation/boards.dox                      |  1 +
 arch/arm/Kconfig                              |  6 ++
 arch/arm/Makefile                             |  1 +
 arch/arm/boards/Makefile                      |  1 +
 arch/arm/boards/virt2real/Makefile            |  1 +
 arch/arm/boards/virt2real/board.c             | 49 ++++++++++++++
 arch/arm/boards/virt2real/lowlevel.c          | 34 ++++++++++
 arch/arm/boards/virt2real/virt2real.dox       | 41 ++++++++++++
 arch/arm/configs/virt2real_defconfig          | 39 +++++++++++
 arch/arm/include/asm/memory.h                 |  7 ++
 arch/arm/mach-arm.dox                         |  2 +
 arch/arm/mach-davinci/Kconfig                 | 16 +++++
 arch/arm/mach-davinci/Makefile                |  1 +
 arch/arm/mach-davinci/include/mach/debug_ll.h | 42 ++++++++++++
 arch/arm/mach-davinci/include/mach/hardware.h | 29 ++++++++
 arch/arm/mach-davinci/include/mach/serial.h   | 20 ++++++
 arch/arm/mach-davinci/include/mach/time.h     | 18 +++++
 arch/arm/mach-davinci/mach-davinci.dox        |  7 ++
 arch/arm/mach-davinci/time.c                  | 95 +++++++++++++++++++++++++++
 drivers/clocksource/Kconfig                   |  9 +++
 drivers/clocksource/Makefile                  |  1 +
 drivers/clocksource/dummy.c                   | 56 ++++++++++++++++
 include/linux/const.h                         | 27 ++++++++
 23 files changed, 503 insertions(+)
 create mode 100644 arch/arm/boards/virt2real/Makefile
 create mode 100644 arch/arm/boards/virt2real/board.c
 create mode 100644 arch/arm/boards/virt2real/lowlevel.c
 create mode 100644 arch/arm/boards/virt2real/virt2real.dox
 create mode 100644 arch/arm/configs/virt2real_defconfig
 create mode 100644 arch/arm/mach-davinci/Kconfig
 create mode 100644 arch/arm/mach-davinci/Makefile
 create mode 100644 arch/arm/mach-davinci/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-davinci/include/mach/hardware.h
 create mode 100644 arch/arm/mach-davinci/include/mach/serial.h
 create mode 100644 arch/arm/mach-davinci/include/mach/time.h
 create mode 100644 arch/arm/mach-davinci/mach-davinci.dox
 create mode 100644 arch/arm/mach-davinci/time.c
 create mode 100644 drivers/clocksource/dummy.c
 create mode 100644 include/linux/const.h

-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
