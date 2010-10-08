Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P4Fqt-0005bS-QR
	for barebox@lists.infradead.org; Fri, 08 Oct 2010 16:31:24 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri,  8 Oct 2010 18:30:49 +0200
Message-Id: <1286555458-20125-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1286555458-20125-1-git-send-email-jbe@pengutronix.de>
References: <1286555458-20125-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 01/10] x-functions do not return in case of failure.
To: barebox@lists.infradead.org

Remove error handling, because in case of failure the xzalloc() function
does not return.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/ata/disk_drive.c |    4 ----
 1 files changed, 0 insertions(+), 4 deletions(-)

diff --git a/drivers/ata/disk_drive.c b/drivers/ata/disk_drive.c
index 250dada..6d5c87a 100644
--- a/drivers/ata/disk_drive.c
+++ b/drivers/ata/disk_drive.c
@@ -281,10 +281,6 @@ static int disk_probe(struct device_d *dev)
 
 	/* It seems a valuable disk. Register it */
 	disk_cdev = xzalloc(sizeof(struct cdev));
-	if (disk_cdev == NULL) {
-		dev_err(dev, "Out of memory\n");
-		return -ENOMEM;
-	}
 
 	/*
 	 * BIOS based disks needs special handling. Not the driver can
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
