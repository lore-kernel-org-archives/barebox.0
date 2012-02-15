Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RxZx4-0004FH-2n
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:10:59 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RxZwy-0001D3-Gp
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 09:10:52 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RxZwy-0002xR-Fq
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 09:10:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2012 09:10:47 +0100
Message-Id: <1329293450-10234-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Fix FAT block caching
To: barebox@lists.infradead.org

The FAT driver has to access the file allocation table and also the
data on the device. This case hasn't been covered by the current
block caching mechanism. For this reason the FAT driver cached the
file allocation table itself. Due to some bugs the file allocation
table in the cache and on the device can get out of sync. A quite
simple way to trigger this is to create a directory and unmount
the filesystem afterwards. The directory will not be written to
disk. This series fixes this by reverting the FAT internal caching
mechanism and instead extend the block caching layer to cover
this case.

Sascha Hauer (3):
      list: add list_last_entry function
      fat: revert fat caching mechanism
      block: reimplement caching

 common/block.c       |  274 ++++++++++++++++++++++++++++++++++++-------------
 fs/fat/ff.c          |   93 ++++-------------
 include/block.h      |   16 ++--
 include/linux/list.h |   11 ++
 4 files changed, 241 insertions(+), 153 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
