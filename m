Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8Co6-0000rl-CL
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:37:10 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Q8Co4-0005TU-3q
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 16:37:04 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Q8Co4-0001qb-2m
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 16:37:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:36:46 +0200
Message-Id: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: various cleanup patches
To: barebox@lists.infradead.org

The following series contains several cleanup patches I created while working
on omap4.

Sascha Hauer (16):
      fs: remove unused field 'type' from struct fs_driver_d
      mci: make it compile without info support
      ubi: do not use filep
      devfs: remove unused struct filep* argument from open/close
      fs: implement flush function
      devfs: factor out core devfs functionality
      nand: remove unused header file
      startup: we can only mount root and devfs when compiled in
      nand: remove unused nand_util file
      move version_string to seperate file
      fs: use safe_strncpy instead of sprintf
      script: update git ignore file
      serial 16550: use xzalloc
      ARM: compile in image size and magic into barebox image
      commands: seperate usb command from usb core
      fs mount: fix error handling

 arch/arm/cpu/start.c            |    6 +
 arch/arm/lib/barebox.lds.S      |    1 +
 commands/Kconfig                |    8 +
 commands/Makefile               |    1 +
 commands/nand.c                 |    4 +-
 commands/usb.c                  |   41 ++
 common/Makefile                 |    1 +
 common/command.c                |    4 -
 common/console.c                |   10 +-
 common/console_simple.c         |    2 +
 common/startup.c                |    2 +
 common/version.c                |   13 +
 drivers/mci/mci-core.c          |    2 +
 drivers/mtd/nand/Makefile       |    1 -
 drivers/mtd/nand/nand_util.c    |  858 ---------------------------------------
 drivers/mtd/ubi/cdev.c          |   12 +-
 drivers/serial/serial_ns16550.c |    4 +-
 drivers/usb/core/usb.c          |   21 +-
 fs/Makefile                     |    1 +
 fs/cramfs/cramfs.c              |    1 -
 fs/devfs-core.c                 |  236 +++++++++++
 fs/devfs.c                      |  177 +--------
 fs/fs.c                         |   44 ++-
 fs/ramfs.c                      |    1 -
 include/asm-generic/sections.h  |    3 +
 include/common.h                |    1 +
 include/driver.h                |   10 +-
 include/fs.h                    |    7 +-
 include/linux/mtd/compat.h      |   46 --
 include/usb/usb.h               |    2 +
 scripts/.gitignore              |    3 +-
 31 files changed, 389 insertions(+), 1134 deletions(-)
 create mode 100644 commands/usb.c
 create mode 100644 common/version.c
 delete mode 100644 drivers/mtd/nand/nand_util.c
 create mode 100644 fs/devfs-core.c
 delete mode 100644 include/linux/mtd/compat.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
