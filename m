Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjBUS-0004FQ-OI
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 16:18:29 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Thu, 13 Dec 2012 17:18:20 +0100
Message-Id: <1355415502-30673-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 0/2] allow scrubbing (erasing of bad blocks)
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

This patch series first adds a flag to mtd devices which disables special
treatment for bad blocks. That means, they are handled like every other good
block. The second one then adds a scrub command which is basically a simple
erase, only that bad blocks are treated like good blocks and are trying to be
erased (which may succeed or not). This is really *not recommended*, except for
certain development use cases!

Wolfram Sang (2):
  mtd: nand: add flag to allow erasing of bad blocks
  commands: add scrub

 commands/Kconfig              |    8 +++++
 commands/flash.c              |   68 ++++++++++++++++++++++++++++++++++++++++-
 drivers/mtd/core.c            |    9 +++++-
 drivers/mtd/nand/nand_write.c |   37 +++++++++++-----------
 include/linux/mtd/mtd-abi.h   |    2 ++
 5 files changed, 105 insertions(+), 19 deletions(-)

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
