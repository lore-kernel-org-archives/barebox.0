Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDueZ-0003PP-QC
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 10:35:57 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UDueX-00051T-Ga
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 11:35:53 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UDueX-00024k-FW
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 11:35:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Mar 2013 11:35:46 +0100
Message-Id: <1362738951-25614-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ata/ahci work
To: barebox@lists.infradead.org

disks need a long time to spin up, so only initialize them when
they are needed. This series adds a ata logical device and attaches
a probe parameter to it, similar to what MMC does.

Also, some refactoring of the ahci driver.

Sascha

----------------------------------------------------------------
Sascha Hauer (5):
      ata: ahci: fix wrong link check
      ata: add ata logical device to defer probe
      ata: Add init callback to ata_port_operations
      ata: ahci: implement init callback
      ata: ahci: refactor init functions

 drivers/ata/ahci.c           | 170 ++++++++++++++++++-------------------------
 drivers/ata/ahci.h           |   1 -
 drivers/ata/disk_ata_drive.c |  63 ++++++++++++++--
 include/ata_drive.h          |   3 +
 4 files changed, 129 insertions(+), 108 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
