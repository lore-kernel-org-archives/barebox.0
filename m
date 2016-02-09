Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aT51n-0004aA-Q6
 for barebox@lists.infradead.org; Tue, 09 Feb 2016 09:56:12 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1aT51R-0008Hl-SL
 for barebox@lists.infradead.org; Tue, 09 Feb 2016 10:55:49 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <sha@pengutronix.de>) id 1aT51R-0007W7-KG
 for barebox@lists.infradead.org; Tue, 09 Feb 2016 10:55:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Feb 2016 10:55:41 +0100
Message-Id: <1455011748-5538-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: >4GiB fixes
To: Barebox List <barebox@lists.infradead.org>

This series has several fixes to make mtd devices >4GiB usable. We had
several places where we still used 32bit types, these are converted to
64bit types here. Also included is a fix for 8KiB Nand page size.

Sascha

----------------------------------------------------------------
Sascha Hauer (7):
      mtd: nand-bb: Fix 8k page size nands
      mtd: Fix mtdraw for Nand > 4GiB
      mtd: Make erase_info structs 64bit where necessary
      mtd: Fix mtd_op_read for devices >4GiB
      mtd: Fix mtd_op_erase for devices >4GiB
      mtd: Fix erasing of devices >4GiB
      mtd: mtdoob device: change name to have the chip name first

 drivers/mtd/core.c          | 17 +++++++--------
 drivers/mtd/mtdoob.c        |  2 +-
 drivers/mtd/mtdraw.c        | 53 ++++++++++++++++++++++++++++-----------------
 drivers/mtd/nand/nand-bb.c  |  4 ++--
 fs/devfs-core.c             |  2 +-
 fs/devfs.c                  |  2 +-
 fs/fs.c                     |  2 +-
 include/driver.h            |  4 ++--
 include/fs.h                |  4 ++--
 include/linux/mtd/mtd-abi.h |  8 +++----
 include/linux/mtd/mtd.h     |  8 +++----
 11 files changed, 59 insertions(+), 47 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
