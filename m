Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCDjb-0005Qk-Td
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 20:10:56 +0000
Received: by mail-la0-f43.google.com with SMTP id hr17so143454lab.2
 for <barebox@lists.infradead.org>; Tue, 29 Jul 2014 13:10:33 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 30 Jul 2014 00:10:16 +0400
Message-Id: <1406664625-19653-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v4 0/9] Add a simple rtc framework
To: barebox@lists.infradead.org

Changes since RFC v3:

 * rebase over latest 'next';
 * hwclock: add additional checks;
 * add jz4740 driver; make appropriate changes
   for jz4755 and Ritmix RZX50 support;
 * fix copyright information.

Changes since RFC v2:

 * rtc/Kconfig: fix formatting, dependencies and help sections;
 * hwclock: read time into environment variable.

Changes since RFC v1:

 * rebase over latest 'next';
 * fix copy'n'paste side effects;
 * add hwclock set time function;
 * make hwclock options more close to util-linux hwclock;
 * rtc-ds1307: add ds1338 chip support (used in versatile);
 * use qemu-versatile for testing.


Antony Pavlov (9):
  lib: import 'bcd' from linux-3.15
  Add a simple rtc framework
  rtc: import ds1307 driver from linux-3.15
  commands: add hwclock
  ARM: versatilepb_defconfig: enable RTC support
  rtc-lib: import rtc_time_to_tm() from linux-3.15
  rtc: add jz4740 driver
  MIPS: dts: jz4755.dtsi: add jz4740-rtc
  MIPS: ritmix-rzx50_defconfig: enable RTC support

 arch/arm/configs/versatilepb_defconfig   |   2 +
 arch/mips/configs/ritmix-rzx50_defconfig |   3 +
 arch/mips/dts/jz4755.dtsi                |   5 +
 commands/Kconfig                         |   8 +
 commands/Makefile                        |   1 +
 commands/hwclock.c                       | 161 ++++++++++++++
 drivers/Kconfig                          |   1 +
 drivers/Makefile                         |   1 +
 drivers/rtc/Kconfig                      |  44 ++++
 drivers/rtc/Makefile                     |  11 +
 drivers/rtc/class.c                      |  70 +++++++
 drivers/rtc/rtc-ds1307.c                 | 347 +++++++++++++++++++++++++++++++
 drivers/rtc/rtc-jz4740.c                 | 165 +++++++++++++++
 drivers/rtc/rtc-lib.c                    | 113 ++++++++++
 include/linux/bcd.h                      |  22 ++
 include/linux/rtc.h                      |  47 +++++
 include/rtc.h                            |   2 +
 lib/Makefile                             |   1 +
 lib/bcd.c                                |  14 ++
 19 files changed, 1018 insertions(+)
 create mode 100644 commands/hwclock.c
 create mode 100644 drivers/rtc/Kconfig
 create mode 100644 drivers/rtc/Makefile
 create mode 100644 drivers/rtc/class.c
 create mode 100644 drivers/rtc/rtc-ds1307.c
 create mode 100644 drivers/rtc/rtc-jz4740.c
 create mode 100644 drivers/rtc/rtc-lib.c
 create mode 100644 include/linux/bcd.h
 create mode 100644 include/linux/rtc.h
 create mode 100644 lib/bcd.c

-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
