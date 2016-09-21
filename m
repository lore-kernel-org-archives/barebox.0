Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-in-11.arcor-online.net ([151.189.21.51])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmcXQ-0000Js-9L
 for barebox@lists.infradead.org; Wed, 21 Sep 2016 08:05:53 +0000
Received: from mail-in-03-z2.arcor-online.net (mail-in-03-z2.arcor-online.net
 [151.189.8.15])
 by mx.arcor.de (Postfix) with ESMTP id 3sfBxz3Fncz34Lk
 for <barebox@lists.infradead.org>; Wed, 21 Sep 2016 10:05:27 +0200 (CEST)
From: Giorgio Dal Molin <iw3gtf@arcor.de>
Date: Wed, 21 Sep 2016 10:04:41 +0200
Message-Id: <20160921080443.21522-1-iw3gtf@arcor.de>
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
Subject: [PATCH 0/2] added support for renaming UBI volumes.
To: barebox@lists.infradead.org
Cc: Giorgio Dal Molin <iw3gtf@arcor.de>

These two patches implement the ioctl UBI_IOCRNVOL for UBI devices and a new
command, 'ubirename' that calls the ioctl from the shell to rename UBI volumes.

The ioctl implementation was ported from the linux kernel v4.7.4, with minimal
changes; a further change was needed for the function 'ubi_rename_volumes()' in
drivers/mtd/ubi/vmt.c to also change the name(s) of the file(s) corresponding to
the renamed UBI volumes under /dev/...

Expecially this last change needs to be reviewed and validated by a barebox
developer more experienced than me.

	
Giorgio Dal Molin (2):
  mtd: UBI: add support (ioctl) for renaming ubi volumes.
  commands: ubi: added the new command 'ubirename' to rename ubi
    volumes.

 commands/ubi.c            |  87 ++++++++++++++++++++++
 drivers/mtd/ubi/barebox.c | 182 ++++++++++++++++++++++++++++++++++++++++++++--
 drivers/mtd/ubi/vmt.c     |   3 +
 3 files changed, 267 insertions(+), 5 deletions(-)

-- 
2.10.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
