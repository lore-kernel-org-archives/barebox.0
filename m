Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g3JSH-0004qo-72
 for barebox@lists.infradead.org; Fri, 21 Sep 2018 11:18:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 21 Sep 2018 13:18:12 +0200
Message-Id: <20180921111820.29742-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/8] mtd: work on mtdraw
To: Barebox List <barebox@lists.infradead.org>

I did several cleanups on the mtdraw device until I finally found the
bug that nagged me. The alignment check when writing is wrong. On write
entry we have to check if the offset is raw page size aligned and not
writesize aligned. With that I could successfully use fastboot to write
a raw image to NAND.

Sascha Hauer (8):
  mtd: mtdraw: Simplify error path
  mtd: mtdraw: use dev_* for printing
  mtd: mtdraw: do not write empty buffers
  mtd: mtdraw: pass mtdraw around
  mtd: mtdraw: add raw page size to private data
  mtd: mtdraw: fail when writing fails
  mtd: mtdraw: replace "block" with "page"
  mtd: mtdraw: fix wrong alignment check

 drivers/mtd/mtdraw.c | 124 +++++++++++++++++++++----------------------
 1 file changed, 62 insertions(+), 62 deletions(-)

-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
