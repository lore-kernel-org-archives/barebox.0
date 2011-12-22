Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rdkvl-00026r-7U
 for barebox@lists.infradead.org; Thu, 22 Dec 2011 15:51:44 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 22 Dec 2011 16:51:19 +0100
Message-Id: <1324569082-17117-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH V2 0/3] Add MSystems Disk-On-Chip G3 support
To: barebox@lists.infradead.org

This patchset brings support for M-Systems disk-on-chip G3
chips. Almost all code is taken from linux kernel (bitrev,
bch, docg3), and slightly amended for barebox.

This patchset relies on a previous patchset "drivers/mtd:
add a core" included in barebox.git/next, and is rebased on
top of it.

This patchset won't bring hopefully, as it doesn't change
anything outside of its own scope.

Cheers.

Robert Jarzmik (3):
  lib: add BCH encoding/decoding
  lib: add bitrev utility
  drivers/mtd: add docg3 chip

 drivers/mtd/Kconfig          |    1 +
 drivers/mtd/Makefile         |    1 +
 drivers/mtd/devices/Kconfig  |   16 +
 drivers/mtd/devices/Makefile |    5 +
 drivers/mtd/devices/docg3.c  | 1196 ++++++++++++++++++++++++++++++++++++
 drivers/mtd/devices/docg3.h  |  283 +++++++++
 include/linux/bch.h          |   79 +++
 include/linux/bitrev.h       |   16 +
 lib/Kconfig                  |    7 +
 lib/Makefile                 |    2 +
 lib/bch.c                    | 1366 ++++++++++++++++++++++++++++++++++++++++++
 lib/bitrev.c                 |   68 +++
 12 files changed, 3040 insertions(+), 0 deletions(-)
 create mode 100644 drivers/mtd/devices/Kconfig
 create mode 100644 drivers/mtd/devices/Makefile
 create mode 100644 drivers/mtd/devices/docg3.c
 create mode 100644 drivers/mtd/devices/docg3.h
 create mode 100644 include/linux/bch.h
 create mode 100644 include/linux/bitrev.h
 create mode 100644 lib/bch.c
 create mode 100644 lib/bitrev.c

-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
