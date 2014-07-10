Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X59nZ-0001Dj-Id
 for barebox@lists.infradead.org; Thu, 10 Jul 2014 08:33:50 +0000
Received: by mail-la0-f46.google.com with SMTP id el20so5781545lab.5
 for <barebox@lists.infradead.org>; Thu, 10 Jul 2014 01:33:26 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 10 Jul 2014 12:33:14 +0400
Message-Id: <1404981199-21293-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 0/5] add rtc support
To: barebox@lists.infradead.org

This patchseries imports RTC support from linux-3.15.

User can use 'hwclock' command to see realtime clock readout.

Tested with DS1307.

TODOs:

 * rtc_set_time() is not realized;
 * ds1307_set_time() is not tested;
 * bcd lib is compiled in even if rtc support is disabled (as linux does);
   we can make it optional;
 * adjust include/linux/rtc.h and include/rtc.h;
 * rtc_unregister() is not realized.


Antony Pavlov (5):
  lib: import 'bcd' from linux-3.15
  add rtc support
  i2c: import SMBus stuff from linux
  rtc: add ds1307 support
  commands: add hwclock

 commands/Kconfig         |   8 ++
 commands/Makefile        |   1 +
 commands/hwclock.c       |  37 +++++
 drivers/Kconfig          |   1 +
 drivers/Makefile         |   1 +
 drivers/i2c/i2c.c        | 368 +++++++++++++++++++++++++++++++++++++++++++++++
 drivers/rtc/Kconfig      |  45 ++++++
 drivers/rtc/Makefile     |  10 ++
 drivers/rtc/class.c      |  62 ++++++++
 drivers/rtc/rtc-ds1307.c | 315 ++++++++++++++++++++++++++++++++++++++++
 drivers/rtc/rtc-lib.c    |  64 +++++++++
 include/i2c/i2c.h        |  64 +++++++++
 include/linux/bcd.h      |  22 +++
 include/linux/rtc.h      |  46 ++++++
 include/rtc.h            |   2 +
 lib/Makefile             |   1 +
 lib/bcd.c                |  14 ++
 17 files changed, 1061 insertions(+)
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
