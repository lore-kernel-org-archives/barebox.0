Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQZp0-0005HO-RV
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 12:44:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1bQZof-0008PG-5o
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 14:44:33 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.87)
 (envelope-from <sha@pengutronix.de>) id 1bQZoe-0005kh-SH
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 14:44:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 14:44:14 +0200
Message-Id: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: 
To: Barebox List <barebox@lists.infradead.org>

From Sascha Hauer <s.hauer@pengutronix.de> # This line is ignored.
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: rework boot/blspec code
In-Reply-To: 

The boot command code is for converting a list of strings into boot
entries and iterating over the boot entries starting one after the
other until one succeeds. boot entries can be boot scripts or bootloader
spec entries, nevertheless the boot code uses a "struct blspec" for
both. This series separated this properly, puts the bootloader spec
specific data into its own struct leaving the generic data for the boot
code.
As a central component the boot code should also have a C API, which it
currently does not have as the it's implemented in the boot command
code, so this series move the bulk of the code to a place under common/
where it can be called by C code aswell.
Also several other cleanups are done like (hopefully) more consistent
message printing.

Sascha

----------------------------------------------------------------
Sascha Hauer (18):
      blspec: remove unused blspec_boot_devicename
      blspec: Remove once/default handling
      blspec: remove unused function prototype
      boot: Call blspec_scan_directory() only on strings containing an absolute path
      include: Move bulk of boot.h to bootm.h
      blpec: rename struct lspec -> bootentries
      blspec: factor out a struct bootentry
      bootentries: Add title/description
      blspec: separate bootentries from blspec entries
      blspec: Make blspec_boot static
      bootentries: Move menu display string allocation to bootentries_alloc()
      bootentries: Move struct bootentries to include/boot.h
      boot: Use struct bootentries to pass around data
      boot: Move code to common/
      boot: add single quotes when printing boot target names
      boot command: Explicitly complain when boot target list is empty
      blspec: Turn message back to debug level
      boot: Print a message when a boot target string does not lead to a boot target

 arch/arm/boards/archosg9/archos_features.c |   1 -
 arch/arm/lib/bootm.c                       |   1 +
 commands/Kconfig                           |   1 +
 commands/boot.c                            | 415 ++---------------------------
 commands/bootm.c                           |   2 +-
 common/Kconfig                             |   3 +
 common/Makefile                            |   1 +
 common/blspec.c                            | 343 ++++++++++--------------
 common/boot.c                              | 339 +++++++++++++++++++++++
 common/bootm.c                             |   3 +-
 common/image-fit.c                         |   2 +-
 drivers/usb/gadget/f_fastboot.c            |   2 +-
 include/blspec.h                           |  91 +------
 include/boot.h                             | 139 ++--------
 include/bootm.h                            | 125 +++++++++
 include/image-fit.h                        |   2 +-
 16 files changed, 676 insertions(+), 794 deletions(-)
 create mode 100644 common/boot.c
 create mode 100644 include/bootm.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
