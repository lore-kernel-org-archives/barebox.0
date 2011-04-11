Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9HqM-0005zX-4d
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:11:54 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Q9HqK-0007v3-Ll
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 16:11:52 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Q9HqK-0007gP-KQ
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 16:11:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:11:47 +0200
Message-Id: <1302531111-29244-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: nand patches
To: barebox@lists.infradead.org

Some more nand cleanup. The badblock device code is moved from
the nand command to drivers/mtd to make it work without the command.

Sascha Hauer (4):
      nand: nand_block_markbad is only used with nand write support
      nand: move bb handling code to drivers/mtd/nand
      nand bb: switch to cdev operations
      nand bb: add proper bb remove function

 commands/nand.c              |  263 +-------------------------------------
 drivers/mtd/nand/Makefile    |    2 +-
 drivers/mtd/nand/nand-bb.c   |  291 ++++++++++++++++++++++++++++++++++++++++++
 drivers/mtd/nand/nand.c      |    2 +
 drivers/mtd/nand/nand.h      |    1 +
 drivers/mtd/nand/nand_base.c |   23 +---
 include/nand.h               |    5 +
 7 files changed, 304 insertions(+), 283 deletions(-)
 create mode 100644 drivers/mtd/nand/nand-bb.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
