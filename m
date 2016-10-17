Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bw7zK-00011Z-Fn
 for barebox@lists.infradead.org; Mon, 17 Oct 2016 13:30:01 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <mgr@pengutronix.de>) id 1bw7yx-00048m-8T
 for barebox@lists.infradead.org; Mon, 17 Oct 2016 15:29:35 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.87)
 (envelope-from <mgr@pengutronix.de>) id 1bw7yx-0001VT-1Q
 for barebox@lists.infradead.org; Mon, 17 Oct 2016 15:29:35 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon, 17 Oct 2016 15:29:19 +0200
Message-Id: <20161017132923.31834-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 0/4] Add support to modify mbr partition layout
To: barebox@lists.infradead.org

This patchset adds the param dos_partitions to the mci device
node. By setting this param with the standard cmdlinepart notation,
it is possible to rewrite the MBR partition layout on runtime.

Michael Grzeschik (4):
  partitions: add DEVFS_PARTITION_IN_PT flag
  cmdlinepart: add option to set DEVFS_PARTITION_IN_PT flag
  partitions/dos: add function to write partition table
  mci: add MBR write and read function to block devices

 common/partitions.c     |   2 +-
 common/partitions/dos.c |  71 ++++++++++++++++++++++++++++
 drivers/mci/mci-core.c  | 122 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/cmdlinepart.h   |   1 +
 include/disks.h         |   1 +
 include/driver.h        |   1 +
 lib/cmdlinepart.c       |   3 ++
 7 files changed, 200 insertions(+), 1 deletion(-)

-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
