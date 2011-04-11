Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9HpA-0005wK-9i
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:10:41 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Q9Hp7-0007mn-L3
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 16:10:37 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Q9Hp7-0007Su-Jm
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 16:10:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:10:31 +0200
Message-Id: <1302531036-27906-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: omap nand patches
To: barebox@lists.infradead.org

Some more omap nand patches.

Sascha Hauer (5):
      nand omap: fix hamming romcode ecc code
      nand omap: turn debug messages into dev_dbg
      nand omap: use standard debug functions
      nand omap: use xzalloc instead of calloc
      nand omap: handle erased pages correctly in hamming ecc mode

 drivers/mtd/nand/nand_omap_gpmc.c |   70 ++++++++++++++++++------------------
 1 files changed, 35 insertions(+), 35 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
