Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEHOu-0000i9-R2
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 10:53:17 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UEHOt-0005X6-B3
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 11:53:15 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UEHOt-0006Ty-9U
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 11:53:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat,  9 Mar 2013 11:53:01 +0100
Message-Id: <1362826391-16215-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] image and bss size decrease
To: barebox@lists.infradead.org

This series decreases the image size and bss size a bit. First
we make malloc available in all initcalls by moving the malloc
pool initialization before start_barebox().

We then decrease the image size by making some statically initialized
structs smaller. struct command has a struct list_head member
which can be removed by wrapping the static struct command into
a dynamically initialized one which contains the list_head. Also
the embedded struct device_d in struct bus_type is removed in
favour for a dynamically allocated one.

Also we make the bss smaller by allocating the FILE table and
the gpio_desc table dynamically. The bss size is may become
a problem on boards which run from SRAM. Here the malloc pool
is in the big SDRAM area, but the bss is in SRAM, so it makes
sense to move the big tables from bss to SDRAM by using malloc.

Sascha

----------------------------------------------------------------
Sascha Hauer (10):
      mips: initialize malloc pool before start_barebox()
      nios: initialize malloc pool before start_barebox()
      openrisc: initialize malloc pool before start_barebox()
      blackfin: initialize malloc pool before start_barebox()
      x86: initialize malloc pool before start_barebox()
      bus: Make struct device a pointer
      command: remove list_head from struct command
      command: remove statically initialized aliases
      fs: allocate FILE table dynamically
      gpio: allocate gpio_desc table dynamically

 arch/blackfin/cpu-bf561/start.S |  4 +--
 arch/blackfin/lib/board.c       |  6 ++--
 arch/mips/boot/main_entry.c     |  5 ++++
 arch/mips/lib/Makefile          |  1 -
 arch/mips/lib/memory.c          | 29 --------------------
 arch/nios2/cpu/start.S          |  4 +--
 arch/nios2/lib/board.c          |  8 ++----
 arch/openrisc/cpu/start.S       |  2 +-
 arch/openrisc/lib/board.c       |  7 ++---
 arch/x86/boot/main_entry.c      |  4 +--
 arch/x86/lib/memory.c           |  7 ++---
 commands/edit.c                 |  8 ++++--
 commands/help.c                 | 16 +++++++----
 commands/test.c                 |  8 ++++--
 common/command.c                | 61 +++++++++++++++++++++--------------------
 common/complete.c               | 12 ++++----
 common/hush.c                   |  7 +++--
 common/module.c                 |  2 +-
 drivers/base/bus.c              |  7 +++--
 drivers/base/driver.c           |  2 +-
 drivers/gpio/gpio.c             | 11 +++++++-
 fs/fs.c                         | 11 +++++---
 include/command.h               | 25 +++++++++++------
 include/driver.h                |  2 +-
 24 files changed, 126 insertions(+), 123 deletions(-)
 delete mode 100644 arch/mips/lib/memory.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
