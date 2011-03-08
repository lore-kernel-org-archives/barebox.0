Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwyDA-0003NO-T0
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 14:48:34 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1PwyD3-0007pD-SF
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 15:48:25 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PwyD3-0003Fi-Q5
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 15:48:25 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue,  8 Mar 2011 15:48:17 +0100
Message-Id: <1299595704-11733-4-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1299595704-11733-1-git-send-email-jbe@pengutronix.de>
References: <1299595704-11733-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 03/10] x86 ATA: Don't touch the size entry for the BIOS disk
	based device
To: barebox@lists.infradead.org

Only the platform sets this entry to setup the correct size or
signals the driver to guess the size of the attached disk.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/ata/bios.c |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/drivers/ata/bios.c b/drivers/ata/bios.c
index 51e2425..3f419cc 100644
--- a/drivers/ata/bios.c
+++ b/drivers/ata/bios.c
@@ -257,7 +257,6 @@ static int biosdisk_probe(struct device_d *dev)
 
 		strcpy(drive_dev->name, "biosdisk");
 		drive_dev->id = drive - 0x80;
-		drive_dev->size = 1;
 		drive_dev->map_base = 0;
 		drive_dev->platform_data = p;
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
