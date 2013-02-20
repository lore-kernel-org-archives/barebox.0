Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U87DN-0005s0-JA
 for barebox@lists.infradead.org; Wed, 20 Feb 2013 10:47:54 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1U87DL-0006OA-7w
 for barebox@lists.infradead.org; Wed, 20 Feb 2013 11:47:51 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1U87DL-0004QB-6h
 for barebox@lists.infradead.org; Wed, 20 Feb 2013 11:47:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Feb 2013 11:47:48 +0100
Message-Id: <1361357270-8700-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: Do not write empty pages, UBI fix
To: barebox@lists.infradead.org

This is a patch for everybody flashing UBI images to nand devices.
Since some time we no longer skip empty pages during writes which
leads to CRC errors once an UBIFS is mounted r/w on a nand device.

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      mtd: nand: do not write empty pages
      libubi: Use global mtd_all_ff function

 drivers/mtd/core.c            |   32 ++++++++++++++++++++++++++++++++
 drivers/mtd/nand/nand_write.c |   10 ++++++----
 include/linux/mtd/mtd.h       |    2 ++
 lib/libscan.c                 |   13 +------------
 4 files changed, 41 insertions(+), 16 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
