Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwINt-0007xo-0Y
 for barebox@lists.infradead.org; Tue, 31 Jul 2012 19:45:38 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SwINU-0003mz-25
 for barebox@lists.infradead.org; Tue, 31 Jul 2012 21:45:12 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1SwINU-0001Hc-0s
 for barebox@lists.infradead.org; Tue, 31 Jul 2012 21:45:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 31 Jul 2012 21:45:09 +0200
Message-Id: <1343763911-4410-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] UBI work
To: barebox@lists.infradead.org

Some UBI fixes, one to make writing to UBI devices actually work.

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      ubi: cdev->write has to return the bytes read, not 0
      ubi: align ubi writes to LEB size

 drivers/mtd/ubi/cdev.c |   35 +++++++++++++++++++++++++++--------
 1 file changed, 27 insertions(+), 8 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
