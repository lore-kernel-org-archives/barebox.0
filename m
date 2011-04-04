Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6l3F-0003Tl-3I
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 14:46:56 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Q6l3D-0008BG-67
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 16:46:43 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Q6l3D-0003dL-52
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 16:46:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 16:46:32 +0200
Message-Id: <1301928401-13571-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Nand: make nand support more configurable
To: barebox@lists.infradead.org

The following series makes the nand support more configurable. Currently
the nand support is quite big. Often enough a given nand controller only
needs a single ecc mode. In a xloader environment we do not need write
support and bad block tables. Support being made optional in this series
has default y to not change the existing defconfigs.

Sascha Hauer (12):
      commands: Make nand command optional
      nand: remove unused suspend/resume functions
      nand: remove unneeded nand_[get|release]_device functions
      nand: do not fall through in nand_scan_tail()
      nand: Factor out hw ecc support to seperate file
      nand: factor out software ecc support to seperate file
      nand: factor out syndrome support to seperate file
      nand: factor out nand write support
      nand: Make write support optional
      nand: Make different ecc modes optional
      nand: make vendor/type printout optional
      nand: make bbt support optional

 commands/Kconfig                       |    6 +
 commands/Makefile                      |    2 +-
 commands/nand.c                        |    7 +-
 drivers/mtd/nand/Kconfig               |   41 +
 drivers/mtd/nand/Makefile              |    7 +-
 drivers/mtd/nand/nand.c                |    9 +-
 drivers/mtd/nand/nand.h                |   30 +
 drivers/mtd/nand/nand_base.c           | 1399 +++-----------------------------
 drivers/mtd/nand/nand_bbt.c            |    9 +
 drivers/mtd/nand/nand_hwecc.c          |  101 +++
 drivers/mtd/nand/nand_hwecc_syndrome.c |  225 +++++
 drivers/mtd/nand/nand_ids.c            |  145 ++--
 drivers/mtd/nand/nand_swecc.c          |   94 +++
 drivers/mtd/nand/nand_write.c          |  746 +++++++++++++++++
 include/linux/mtd/mtd.h                |    4 -
 15 files changed, 1465 insertions(+), 1360 deletions(-)
 create mode 100644 drivers/mtd/nand/nand.h
 create mode 100644 drivers/mtd/nand/nand_hwecc.c
 create mode 100644 drivers/mtd/nand/nand_hwecc_syndrome.c
 create mode 100644 drivers/mtd/nand/nand_swecc.c
 create mode 100644 drivers/mtd/nand/nand_write.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
