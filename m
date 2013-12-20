Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vu0mq-0004Ww-4G
 for barebox@lists.infradead.org; Fri, 20 Dec 2013 14:10:44 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Vu0mU-0002OK-BD
 for barebox@lists.infradead.org; Fri, 20 Dec 2013 15:10:22 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1Vu0mU-0001tX-A4
 for barebox@lists.infradead.org; Fri, 20 Dec 2013 15:10:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Dec 2013 15:10:17 +0100
Message-Id: <1387548620-26893-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: mtd/UBI fixes
To: barebox@lists.infradead.org

This fixes some confusion in the mtd layer. the mtd->read callback
now can return positive numbers for the number of bitflips detected.
We have to convert the callers to handle this correctly.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      mtd: fix wrong return values in cdev read
      mtd: fix mtd_read return value
      mtd: Add subpagesize to mtd_info_user

 drivers/mtd/core.c          | 25 +++++++++++++++++++------
 fs/devfs-core.c             |  1 +
 include/linux/mtd/mtd-abi.h |  1 +
 lib/libmtd.c                |  2 +-
 4 files changed, 22 insertions(+), 7 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
