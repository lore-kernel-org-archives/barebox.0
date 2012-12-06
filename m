Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tgbay-000818-Ra
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 13:34:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Dec 2012 14:34:23 +0100
Message-Id: <1354800870-28385-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354800870-28385-1-git-send-email-s.hauer@pengutronix.de>
References: <1354800870-28385-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] ata: fix status flags
To: barebox@lists.infradead.org

Some status flags are wrong, fix them. All of them are currently unused,
so no functional change included.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/disk_ata_drive.c |    8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index 303d6d0..b65a660 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -61,9 +61,11 @@ struct ata_drive_access {
 #define ATA_STATUS_BUSY (1 << 7)
 #define ATA_STATUS_READY (1 << 6)
 #define ATA_STATUS_WR_FLT (1 << 5)
-#define ATA_STATUS_DRQ (1 << 4)
-#define ATA_STATUS_CORR (1 << 3)
-#define ATA_STATUS_ERROR (1 << 1)
+#define ATA_STATUS_DSC (1 << 4)
+#define ATA_STATUS_DRQ (1 << 3)
+#define ATA_STATUS_CORR (1 << 2)
+#define ATA_STATUS_IDX (1 << 1)
+#define ATA_STATUS_ERROR (1 << 0)
 /* command flags */
 #define LBA_FLAG (1 << 6)
 #define ATA_DEVCTL_SOFT_RESET (1 << 2)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
