Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXY5B-0003gy-Dt
 for barebox@lists.infradead.org; Thu, 24 May 2012 13:28:02 +0000
Received: by lbbgg6 with SMTP id gg6so7416799lbb.36
 for <barebox@lists.infradead.org>; Thu, 24 May 2012 06:27:57 -0700 (PDT)
From: Alexey Galakhov <agalakhov@gmail.com>
Date: Thu, 24 May 2012 19:27:43 +0600
Message-Id: <1337866065-6775-1-git-send-email-agalakhov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC:PATCH 0/2] Revised S5PV210 DRAM support
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

This is S5PV210 DRAM support without #ifdefs. Any comments are welcome.

Alexey Galakhov (2):
  S5P DRAM support
  Add FriendlyArm Tiny210 board (S5PV210)

 arch/arm/Makefile                                 |    1 +
 arch/arm/boards/tiny210/Makefile                  |    1 +
 arch/arm/boards/tiny210/config.h                  |   19 ++
 arch/arm/boards/tiny210/lowlevel.c                |   76 +++++
 arch/arm/boards/tiny210/tiny210.c                 |  113 ++++++++
 arch/arm/configs/tiny210_defconfig                |   17 ++
 arch/arm/mach-samsung/Kconfig                     |    7 +
 arch/arm/mach-samsung/Makefile                    |    2 +-
 arch/arm/mach-samsung/include/mach/s3c-generic.h  |    6 +
 arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h |    3 +
 arch/arm/mach-samsung/mem-s5pcxx.c                |  319 +++++++++++++++++++++
 11 files changed, 563 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/tiny210/Makefile
 create mode 100644 arch/arm/boards/tiny210/config.h
 create mode 100644 arch/arm/boards/tiny210/lowlevel.c
 create mode 100644 arch/arm/boards/tiny210/tiny210.c
 create mode 100644 arch/arm/configs/tiny210_defconfig
 create mode 100644 arch/arm/mach-samsung/mem-s5pcxx.c

-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
