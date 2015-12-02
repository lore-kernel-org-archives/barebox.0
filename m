Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a47mQ-0001Ix-Nb
 for barebox@lists.infradead.org; Wed, 02 Dec 2015 13:49:15 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Wed,  2 Dec 2015 14:48:42 +0100
Message-Id: <1449064131-12659-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH 0/9] RAMOOPS read support for Barebox
To: barebox@lists.infradead.org

Hi,

These patches add support to read RAMOOPS files that were written by the last
booted kernel.

The first patches 1-4 add minor functions to barebox from the linux kernel.

Patch 5 adds reed solomon codes as library routines.

Patch 6-7 cleanup the current memory offset calculations for arm. There are a
lot of hardcoded sizes in the current code. I tried to centralize these sizes.

Patch 8 adds a memory region right after the barebox image before the stack for
RAMOOPS. This avoids any ramoops dependencies between different barebox
versions (unless the stack size is changed).

Patch 9 adds the actual implementation of pstore and RAMOOPS as filesystem. It
is based on the kernel implementation but lots of code was removed and the
filesystem layer rewritten for barebox. The files are available in the
automounted filesystem /pstore.

Best Regards,

Markus


Markus Pargmann (9):
  arm: boards: karo-tx6x remove definition of DIV_ROUND_UP
  log2: Add missing __rounddown_pow_of_two()
  printk: Add missing include/declaration
  vsprintf: Add scnprintf from kernel
  lib: Import reed solomon code from kernel
  arm: Clarify memory layout calculation
  arm: start: Add visible sdram region for barebox board data
  arm: Add RAMOOPS memory area
  fs: Add pstore filesystem

 arch/arm/boards/karo-tx6x/board.c  |   2 +-
 arch/arm/cpu/start-pbl.c           |  14 +-
 arch/arm/cpu/start.c               |  71 ++++--
 arch/arm/cpu/uncompress.c          |  31 +--
 arch/arm/include/asm/barebox-arm.h |  65 +++--
 common/startup.c                   |   5 +
 fs/Kconfig                         |   2 +
 fs/Makefile                        |   1 +
 fs/pstore/Kconfig                  |  88 +++++++
 fs/pstore/Makefile                 |  10 +
 fs/pstore/fs.c                     | 280 ++++++++++++++++++++
 fs/pstore/internal.h               |  19 ++
 fs/pstore/platform.c               | 138 ++++++++++
 fs/pstore/ram.c                    | 507 +++++++++++++++++++++++++++++++++++++
 fs/pstore/ram_core.c               | 426 +++++++++++++++++++++++++++++++
 include/linux/log2.h               |   9 +
 include/linux/pstore.h             |  90 +++++++
 include/linux/pstore_ram.h         |  87 +++++++
 include/linux/rslib.h              | 109 ++++++++
 include/printk.h                   |   3 +
 include/stdio.h                    |   1 +
 lib/Kconfig                        |  15 ++
 lib/Makefile                       |   1 +
 lib/reed_solomon/Makefile          |   6 +
 lib/reed_solomon/decode_rs.c       | 271 ++++++++++++++++++++
 lib/reed_solomon/encode_rs.c       |  54 ++++
 lib/reed_solomon/reed_solomon.c    | 377 +++++++++++++++++++++++++++
 lib/vsprintf.c                     |  24 ++
 28 files changed, 2641 insertions(+), 65 deletions(-)
 create mode 100644 fs/pstore/Kconfig
 create mode 100644 fs/pstore/Makefile
 create mode 100644 fs/pstore/fs.c
 create mode 100644 fs/pstore/internal.h
 create mode 100644 fs/pstore/platform.c
 create mode 100644 fs/pstore/ram.c
 create mode 100644 fs/pstore/ram_core.c
 create mode 100644 include/linux/pstore.h
 create mode 100644 include/linux/pstore_ram.h
 create mode 100644 include/linux/rslib.h
 create mode 100644 lib/reed_solomon/Makefile
 create mode 100644 lib/reed_solomon/decode_rs.c
 create mode 100644 lib/reed_solomon/encode_rs.c
 create mode 100644 lib/reed_solomon/reed_solomon.c

-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
