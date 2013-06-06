Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ukb5j-00028b-Iz
 for barebox@lists.infradead.org; Thu, 06 Jun 2013 14:23:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Jun 2013 16:22:34 +0200
Message-Id: <1370528559-15694-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] ata: move ATA_ID_ fields and functions to include/
To: barebox@lists.infradead.org

We need ata_id_has_lba48() in another C file, so move
the ATA_ID_* stuff to include/ata_drive.h like in the Linux
Kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/disk_ata_drive.c | 44 --------------------------------------------
 include/ata_drive.h          | 44 ++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 44 insertions(+), 44 deletions(-)

diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index 2cff584..034233d 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -26,41 +26,6 @@
 #include <disks.h>
 #include <dma.h>
 
-#define ata_id_u32(id,n)        \
-        (((uint32_t) (id)[(n) + 1] << 16) | ((uint32_t) (id)[(n)]))
-#define ata_id_u64(id,n)        \
-        ( ((uint64_t) (id)[(n) + 3] << 48) | \
-          ((uint64_t) (id)[(n) + 2] << 32) | \
-          ((uint64_t) (id)[(n) + 1] << 16) | \
-          ((uint64_t) (id)[(n) + 0]) )
-
-#define ata_id_has_lba(id)               ((id)[49] & (1 << 9))
-
-enum {
-	ATA_ID_SERNO		= 10,
-#define ATA_ID_SERNO_LEN 20
-	ATA_ID_FW_REV		= 23,
-#define ATA_ID_FW_REV_LEN 8
-	ATA_ID_PROD		= 27,
-#define ATA_ID_PROD_LEN 40
-	ATA_ID_CAPABILITY	= 49,
-	ATA_ID_FIELD_VALID	= 53,
-	ATA_ID_LBA_CAPACITY	= 60,
-	ATA_ID_MWDMA_MODES	= 63,
-	ATA_ID_PIO_MODES	= 64,
-	ATA_ID_QUEUE_DEPTH	= 75,
-	ATA_ID_MAJOR_VER	= 80,
-	ATA_ID_COMMAND_SET_1	= 82,
-	ATA_ID_COMMAND_SET_2	= 83,
-	ATA_ID_CFSSE		= 84,
-	ATA_ID_CFS_ENABLE_1	= 85,
-	ATA_ID_CFS_ENABLE_2	= 86,
-	ATA_ID_CSF_DEFAULT	= 87,
-	ATA_ID_UDMA_MODES	= 88,
-	ATA_ID_HW_CONFIG	= 93,
-	ATA_ID_LBA_CAPACITY_2	= 100,
-};
-
 static int ata_id_is_valid(const uint16_t *id)
 {
 	if ((id[ATA_ID_FIELD_VALID] & 1) == 0) {
@@ -71,15 +36,6 @@ static int ata_id_is_valid(const uint16_t *id)
 	return 0;
 }
 
-static inline int ata_id_has_lba48(const uint16_t *id)
-{
-	if ((id[ATA_ID_COMMAND_SET_2] & 0xC000) != 0x4000)
-		return 0;
-	if (!ata_id_u64(id, ATA_ID_LBA_CAPACITY_2))
-		return 0;
-	return id[ATA_ID_COMMAND_SET_2] & (1 << 10);
-}
-
 static uint64_t ata_id_n_sectors(uint16_t *id)
 {
 	if (ata_id_has_lba(id)) {
diff --git a/include/ata_drive.h b/include/ata_drive.h
index 049082f..abbafb9 100644
--- a/include/ata_drive.h
+++ b/include/ata_drive.h
@@ -55,6 +55,50 @@
 #define ATA_DEVCTL_SOFT_RESET	(1 << 2)
 #define ATA_DEVCTL_INTR_DISABLE	(1 << 1)
 
+#define ata_id_u32(id,n)        \
+        (((uint32_t) (id)[(n) + 1] << 16) | ((uint32_t) (id)[(n)]))
+#define ata_id_u64(id,n)        \
+        ( ((uint64_t) (id)[(n) + 3] << 48) | \
+          ((uint64_t) (id)[(n) + 2] << 32) | \
+          ((uint64_t) (id)[(n) + 1] << 16) | \
+          ((uint64_t) (id)[(n) + 0]) )
+
+#define ata_id_has_lba(id)               ((id)[49] & (1 << 9))
+
+enum {
+	ATA_ID_SERNO		= 10,
+#define ATA_ID_SERNO_LEN 20
+	ATA_ID_FW_REV		= 23,
+#define ATA_ID_FW_REV_LEN 8
+	ATA_ID_PROD		= 27,
+#define ATA_ID_PROD_LEN 40
+	ATA_ID_CAPABILITY	= 49,
+	ATA_ID_FIELD_VALID	= 53,
+	ATA_ID_LBA_CAPACITY	= 60,
+	ATA_ID_MWDMA_MODES	= 63,
+	ATA_ID_PIO_MODES	= 64,
+	ATA_ID_QUEUE_DEPTH	= 75,
+	ATA_ID_MAJOR_VER	= 80,
+	ATA_ID_COMMAND_SET_1	= 82,
+	ATA_ID_COMMAND_SET_2	= 83,
+	ATA_ID_CFSSE		= 84,
+	ATA_ID_CFS_ENABLE_1	= 85,
+	ATA_ID_CFS_ENABLE_2	= 86,
+	ATA_ID_CSF_DEFAULT	= 87,
+	ATA_ID_UDMA_MODES	= 88,
+	ATA_ID_HW_CONFIG	= 93,
+	ATA_ID_LBA_CAPACITY_2	= 100,
+};
+
+static inline int ata_id_has_lba48(const uint16_t *id)
+{
+	if ((id[ATA_ID_COMMAND_SET_2] & 0xC000) != 0x4000)
+		return 0;
+	if (!ata_id_u64(id, ATA_ID_LBA_CAPACITY_2))
+		return 0;
+	return id[ATA_ID_COMMAND_SET_2] & (1 << 10);
+}
+
 /** addresses of each individual IDE drive register */
 struct ata_ioports {
 	void __iomem *cmd_addr;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
