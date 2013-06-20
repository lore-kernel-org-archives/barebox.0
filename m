Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpfQQ-0007ny-1D
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 14:01:23 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UpfPy-0004Yr-Rj
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 16:00:54 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UpfPy-0006ww-QU
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 16:00:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 16:00:51 +0200
Message-Id: <1371736854-7543-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] more ata patches
To: barebox@lists.infradead.org

Another attempt to implement the detect callback for the imx pata
hardware device. I had to drop the previous attempt as it turned
out to be incompatible with ahci.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      ata: ide: embed ata_ioports into struct ide_port and export it
      ata: pata-imx: implement detect callback for hardware device
      ata: Make 'already initialized' a debug message

 drivers/ata/disk_ata_drive.c    |  2 +-
 drivers/ata/ide-sff.c           | 60 ++++++++++++++++-------------------------
 drivers/ata/intf_platform_ide.c | 14 +++++-----
 drivers/ata/pata-imx.c          | 23 ++++++++++++----
 include/ata_drive.h             |  7 ++++-
 5 files changed, 55 insertions(+), 51 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
