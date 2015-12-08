Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6EkK-0002e9-L4
 for barebox@lists.infradead.org; Tue, 08 Dec 2015 09:39:45 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Tue,  8 Dec 2015 10:39:23 +0100
Message-Id: <1449567572-21758-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH v2 0/9] RAMOOPS read support for Barebox
To: barebox@lists.infradead.org

Hi,

This is v2 with some smaller fixes. Changes are described at the individual
patches.

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
 arch/arm/include/asm/barebox-arm.h |  67 +++--
 common/startup.c                   |   5 +
 fs/Kconfig                         |   2 +
 fs/Makefile                        |   1 +
 fs/pstore/Kconfig                  |  86 +++++++
 fs/pstore/Makefile                 |   9 +
 fs/pstore/fs.c                     | 280 ++++++++++++++++++++
 fs/pstore/internal.h               |  19 ++
 fs/pstore/platform.c               | 138 ++++++++++
 fs/pstore/ram.c                    | 507 +++++++++++++++++++++++++++++++++++++
 fs/pstore/ram_core.c               | 426 +++++++++++++++++++++++++++++++
 include/linux/log2.h               |   9 +
 include/linux/pstore.h             |  90 +++++++
 include/linux/pstore_ram.h         |  87 +++++++
 include/linux/rslib.h              | 103 ++++++++
 include/printk.h                   |   3 +
 include/stdio.h                    |   1 +
 lib/Kconfig                        |   3 +
 lib/Makefile                       |   1 +
 lib/reed_solomon/Makefile          |   6 +
 lib/reed_solomon/decode_rs.c       | 271 ++++++++++++++++++++
 lib/reed_solomon/encode_rs.c       |  54 ++++
 lib/reed_solomon/reed_solomon.c    | 369 +++++++++++++++++++++++++++
 lib/vsprintf.c                     |  24 ++
 28 files changed, 2613 insertions(+), 66 deletions(-)
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
