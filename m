Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-in-06.arcor-online.net ([151.189.21.46])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1boTX6-0006zr-Jm
 for barebox@lists.infradead.org; Mon, 26 Sep 2016 10:53:14 +0000
Received: from mail-in-17-z2.arcor-online.net (mail-in-17-z2.arcor-online.net
 [151.189.8.34]) by mx.arcor.de (Postfix) with ESMTP id 3sjLQl38tRzvmJ
 for <barebox@lists.infradead.org>; Mon, 26 Sep 2016 12:52:47 +0200 (CEST)
From: Giorgio Dal Molin <iw3gtf@arcor.de>
Date: Mon, 26 Sep 2016 12:52:31 +0200
Message-Id: <20160926105233.26387-1-iw3gtf@arcor.de>
In-Reply-To: <20160926061912.elzmjbs4mdv5ztrb@pengutronix.de>
References: <20160926061912.elzmjbs4mdv5ztrb@pengutronix.de>
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
Subject: [PATCH 0/2 (try 2)] mtd: ubi: implement the new command 'ubirename'
To: barebox@lists.infradead.org
Cc: Giorgio Dal Molin <iw3gtf@arcor.de>

Here a new set of patches implementing the command 'ubirename'.

They are based on a patch serie from Sascha that restructures a bit
the barebox UBI APIs. In particular it is now easier to find the ubi
volume ids from the command code. Moreover the command code uses now
api functions to do the rename.

This new set also fixes some minor cosmetic details noted by Sascha and
a real problem found in the function 'get_vol_id()': it was missing
a call to 'ubi_close_volume(desc)' hence leaving ubi volumes busy.
A simple test that showed the problem was:

bb> ubimkvol /dev/nand0.ubi_volumes.ubi vol_A 10MiB
bb> ubirename /dev/nand0.ubi_volumes.ubi vol_A vol_B
bb> ubirmvol /dev/nand0.ubi_volumes.ubi vol_B

The last command, ubirmvol, failed because 'vol_B' appeared to be still
busy after the rename (vol->readers==1).
	
Giorgio Dal Molin (2):
  mtd: ubi: add API call to rename volumes.
  mtd: ubi: commands: added the new command 'ubirename'.

 commands/ubi.c            |  72 +++++++++++++++++++++
 drivers/mtd/ubi/barebox.c | 156 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/mtd/ubi/vmt.c     |   3 +
 include/linux/mtd/ubi.h   |   1 +
 4 files changed, 232 insertions(+)

-- 
2.10.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
