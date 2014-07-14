Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f181.google.com ([209.85.217.181])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X6dwC-0005tb-3u
 for barebox@lists.infradead.org; Mon, 14 Jul 2014 10:56:52 +0000
Received: by mail-lb0-f181.google.com with SMTP id p9so2661001lbv.40
 for <barebox@lists.infradead.org>; Mon, 14 Jul 2014 03:56:26 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 14 Jul 2014 14:56:15 +0400
Message-Id: <1405335380-17996-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v2 0/5] add rtc support
To: barebox@lists.infradead.org

Chages since RFC v1:

 * rebase over latest 'next';
 * fix copy'n'paste side effects;
 * add hwclock set time function;
 * make hwclock options more close to util-linux hwclock;
 * rtc-ds1307: add ds1338 chip support (used in versatile);
 * use qemu-versatile for testing.

TODOs:
 * make it possible to read time into environment variable.

Antony Pavlov (5):
  lib: import 'bcd' from linux-3.15
  add rtc support
  rtc: import ds1307 driver from linux-3.15
  commands: add hwclock
  ARM: versatilepb_defconfig: enable RTC support

 arch/arm/configs/versatilepb_defconfig |   2 +
 commands/Kconfig                       |   8 +
 commands/Makefile                      |   1 +
 commands/hwclock.c                     | 136 +++++++++++++
 drivers/Kconfig                        |   1 +
 drivers/Makefile                       |   1 +
 drivers/rtc/Kconfig                    |  45 +++++
 drivers/rtc/Makefile                   |  10 +
 drivers/rtc/class.c                    |  53 +++++
 drivers/rtc/rtc-ds1307.c               | 345 +++++++++++++++++++++++++++++++++
 drivers/rtc/rtc-lib.c                  |  55 ++++++
 include/linux/bcd.h                    |  22 +++
 include/linux/rtc.h                    |  45 +++++
 include/rtc.h                          |   2 +
 lib/Makefile                           |   1 +
 lib/bcd.c                              |  14 ++
 16 files changed, 741 insertions(+)
 create mode 100644 commands/hwclock.c
 create mode 100644 drivers/rtc/Kconfig
 create mode 100644 drivers/rtc/Makefile
 create mode 100644 drivers/rtc/class.c
 create mode 100644 drivers/rtc/rtc-ds1307.c
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
