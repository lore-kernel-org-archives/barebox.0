Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ukb5j-00028c-Iw
 for barebox@lists.infradead.org; Thu, 06 Jun 2013 14:23:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Jun 2013 16:22:35 +0200
Message-Id: <1370528559-15694-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1370528559-15694-1-git-send-email-s.hauer@pengutronix.de>
References: <1370528559-15694-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] ata: ahci: only use lba48 on drives which support it
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/ahci.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 7def9a0..19d445a 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -224,13 +224,19 @@ static int ahci_rw(struct ata_port *ata, void *rbuf, const void *wbuf,
 	struct ahci_port *ahci = container_of(ata, struct ahci_port, ata);
 	u8 fis[20];
 	int ret;
+	int lba48 = ata_id_has_lba48(ata->id);
 
 	memset(fis, 0, sizeof(fis));
 
 	/* Construct the FIS */
 	fis[0] = 0x27;			/* Host to device FIS. */
 	fis[1] = 1 << 7;		/* Command FIS. */
-	fis[2] = wbuf ? ATA_CMD_WRITE_EXT : ATA_CMD_READ_EXT;	/* Command byte. */
+
+	/* Command byte. */
+	if (lba48)
+		fis[2] = wbuf ? ATA_CMD_WRITE_EXT : ATA_CMD_READ_EXT;
+	else
+		fis[2] = wbuf ? ATA_CMD_WRITE : ATA_CMD_READ;
 
 	while (num_blocks) {
 		int now;
@@ -240,9 +246,14 @@ static int ahci_rw(struct ata_port *ata, void *rbuf, const void *wbuf,
 		fis[4] = (block >> 0) & 0xff;
 		fis[5] = (block >> 8) & 0xff;
 		fis[6] = (block >> 16) & 0xff;
-		fis[7] = 1 << 6; /* device reg: set LBA mode */
-		fis[8] = ((block >> 24) & 0xff);
-		fis[3] = 0xe0; /* features */
+
+		if (lba48) {
+			fis[7] = 1 << 6; /* device reg: set LBA mode */
+			fis[8] = ((block >> 24) & 0xff);
+			fis[3] = 0xe0; /* features */
+		} else {
+			fis[7] = ((block >> 24) & 0xf) | 0xe0;
+		}
 
 		/* Block (sector) count */
 		fis[12] = (now >> 0) & 0xff;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
