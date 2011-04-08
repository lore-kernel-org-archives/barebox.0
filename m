Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8D6k-000191-Fw
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:56:23 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Q8D6i-0006SN-Pq
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 16:56:20 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Q8D6i-000301-Op
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 16:56:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:56:11 +0200
Message-Id: <1302274579-11158-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Size reduction patches
To: barebox@lists.infradead.org

The following patches aim to make a smaller barebox possible. They
make several things like command handling, having a shell or having
a fullblown malloc support configurable.

Sascha Hauer (12):
      add block support
      ata: use block support
      ata: make write support optional
      mci: make write support optional
      env: Make environment variable support optional
      make command support optional
      add noshell support
      arm: compile icache command only when command support is present
      malloc: put common memory functions to seperate file
      add dummy_malloc functions
      ARM: make exception handling optional
      nand: make reading oob optional

 arch/arm/Kconfig              |    5 +
 arch/arm/cpu/Makefile         |    4 +-
 arch/arm/cpu/cpu.c            |    3 +-
 arch/arm/cpu/start.c          |   10 ++
 commands/Kconfig              |   13 ++-
 common/Kconfig                |   42 +++++++-
 common/Makefile               |    9 +-
 common/block.c                |  263 +++++++++++++++++++++++++++++++++++++++++
 common/dlmalloc.c             |   50 --------
 common/dummy_malloc.c         |   26 ++++
 common/memory.c               |   71 +++++++++++
 common/startup.c              |    5 +-
 drivers/ata/Kconfig           |    5 +
 drivers/ata/disk_drive.c      |  196 ++++++------------------------
 drivers/mci/Kconfig           |    5 +
 drivers/mci/mci-core.c        |    6 +
 drivers/mtd/nand/Kconfig      |    5 +
 drivers/mtd/nand/nand.c       |   42 ++++++--
 drivers/mtd/nand/nand_base.c  |    9 ++-
 drivers/mtd/nand/nand_hwecc.c |    2 +
 fs/Makefile                   |    2 +-
 include/block.h               |   32 +++++
 include/environment.h         |   12 ++
 include/malloc.h              |    1 +
 24 files changed, 591 insertions(+), 227 deletions(-)
 create mode 100644 common/block.c
 create mode 100644 common/dummy_malloc.c
 create mode 100644 common/memory.c
 create mode 100644 include/block.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
