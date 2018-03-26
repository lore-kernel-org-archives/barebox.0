Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f0Rse-0003jP-EV
 for barebox@lists.infradead.org; Mon, 26 Mar 2018 13:09:45 +0000
Received: by mail-pg0-x243.google.com with SMTP id v26so4725786pge.11
 for <barebox@lists.infradead.org>; Mon, 26 Mar 2018 06:09:33 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 26 Mar 2018 06:09:12 -0700
Message-Id: <20180326130915.8726-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/3] Linux's serdev framwork port
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hi everyone:

In an effort to bring this kernel driver
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/mfd/rave-sp.c?h=v4.16-rc7
to Barebox, I ended up creating a miniature and extremely simplified
version of 'serdev' subsystem which is presented in this patchset.

All feedback is wellcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (3):
  console: Introduce console_drain()
  console: Add simplified 'serdev' framework from Linux kernel
  serial: Check result of console_unregister()

 common/Kconfig                   |   6 +++
 common/Makefile                  |   1 +
 common/console.c                 |  24 +++++++--
 common/serdev.c                  |  87 ++++++++++++++++++++++++++++++
 drivers/serial/serial_auart.c    |   6 ++-
 drivers/serial/serial_cadence.c  |   6 ++-
 drivers/serial/serial_clps711x.c |   6 ++-
 drivers/serial/serial_imx.c      |   6 ++-
 drivers/serial/serial_lpuart.c   |   6 ++-
 drivers/serial/serial_pxa.c      |   6 ++-
 drivers/serial/serial_s3c.c      |   6 ++-
 drivers/serial/stm-serial.c      |   6 ++-
 include/console.h                | 112 ++++++++++++++++++++++++++++++++++++++-
 include/serdev.h                 |  36 +++++++++++++
 lib/xymodem.c                    |  30 ++---------
 15 files changed, 307 insertions(+), 37 deletions(-)
 create mode 100644 common/serdev.c
 create mode 100644 include/serdev.h

-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
