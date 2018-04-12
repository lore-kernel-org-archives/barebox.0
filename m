Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6jql-0005rn-Qh
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 21:33:49 +0000
Received: by mail-pf0-x241.google.com with SMTP id u86so4882921pfd.2
 for <barebox@lists.infradead.org>; Thu, 12 Apr 2018 14:33:41 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 12 Apr 2018 14:33:12 -0700
Message-Id: <20180412213317.13199-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 0/5] Linux's serdev framwork port
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hi everyone:

In an effort to bring this kernel driver
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/mfd/rave-sp.c?h=v4.16-rc7
to Barebox, I ended up creating a miniature and extremely simplified
version of 'serdev' subsystem which is presented in this patchset.

Changes since [v1]:

	- Blocking read function was added as example of API usage

	- "serial: Check result of console_unregister()" was converted
          to become "serial: Drop .remove functions from all drivers"

	- Minor spelling fixes

	- Original serdev framework patch modified to allow devices
          that do not require polling (I don't have such a usecase,
          but for the sake of being generic I added one line needed
          for that)

	- SERIAL_DEV_BUS Kconfig symbol moved into
          drivers/serial/Kconfig (where it, IMHO, fits much better)

	- Added a patch to dynamically adjust serdev's polling
          interval via device paramter. This was warranted by the
          problems that arose from real-life usage.

Feedback is wellcome!

Thanks,
Andrey Smirnov

[v1] https://www.spinics.net/lists/u-boot-v2/msg32322.html

Andrey Smirnov (5):
  console: Introduce console_drain()
  console: Add simplified 'serdev' framework from Linux kernel
  serdev: Add trivial blocking read function
  serial: Drop .remove functions from all drivers
  serdev: Allow polling interval to be adjusted at runtime

 common/Makefile                  |   1 +
 common/console.c                 |  24 ++++-
 common/serdev.c                  | 208 +++++++++++++++++++++++++++++++++++++++
 drivers/serial/Kconfig           |   6 ++
 drivers/serial/serial_auart.c    |  11 ---
 drivers/serial/serial_cadence.c  |   9 --
 drivers/serial/serial_clps711x.c |  10 --
 drivers/serial/serial_imx.c      |  10 --
 drivers/serial/serial_lpuart.c   |  13 ---
 drivers/serial/serial_pxa.c      |   9 --
 drivers/serial/serial_s3c.c      |  10 --
 drivers/serial/stm-serial.c      |  10 --
 include/console.h                | 110 +++++++++++++++++++++
 include/serdev.h                 |  44 +++++++++
 lib/xymodem.c                    |  30 +-----
 15 files changed, 395 insertions(+), 110 deletions(-)
 create mode 100644 common/serdev.c
 create mode 100644 include/serdev.h

-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
