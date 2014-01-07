Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0Tcj-0002PP-BE
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 10:11:02 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1W0TXX-0002TK-J8
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 11:05:39 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1W0TXX-0002vd-I0
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 11:05:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  7 Jan 2014 11:05:26 +0100
Message-Id: <1389089135-29986-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: UBI patches
To: barebox@lists.infradead.org

These are some UBI fixes directly taken from Kernel commits.

Sascha

----------------------------------------------------------------
Richard Genoud (2):
      UBI: fastmap: fix backward compatibility with image_seq
      UBI: simplify image sequence test

Richard Weinberger (7):
      UBI: Fix PEB leak in wear_leveling_worker()
      UBI: Fix invalidate_fastmap()
      UBI: fix refill_wl_user_pool()
      UBI: Fix error path in scan_pool()
      UBI: Call scan_all() with correct offset in error case
      UBI: Fix memory leak in ubi_attach_fastmap() error path
      UBI: Add some asserts to ubi_attach_fastmap()

 drivers/mtd/ubi/attach.c  | 11 ++++++-----
 drivers/mtd/ubi/fastmap.c | 46 ++++++++++++++++++++++++++++++++++++++--------
 drivers/mtd/ubi/wl.c      |  7 +++----
 3 files changed, 47 insertions(+), 17 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
