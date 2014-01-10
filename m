Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay01.ispgateway.de ([80.67.31.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1XuQ-0003Wb-HL
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 08:57:43 +0000
From: Markus Niebel <list-09_barebox@tqsc.de>
Date: Fri, 10 Jan 2014 10:05:32 +0100
Message-Id: <1389344733-13203-1-git-send-email-list-09_barebox@tqsc.de>
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
Subject: [PATCH 1/2] mci: Support the correct version for eMMC
To: barebox@lists.infradead.org
Cc: Markus Niebel <Markus.Niebel@tqs.de>

From: Markus Niebel <Markus.Niebel@tqs.de>

eMMC is available up to version 4.5 but the
correct version is not decoded. Change version
definitions to support more minor verions, add
missing versions and parse the minor versions from
ext_csd.

After this, card detection code and devinfo reports
correct versions.

Handling is inspired by u-boot code.

Signed-off-by: Markus Niebel <Markus.Niebel@tqs.de>
---
 drivers/mci/mci-core.c |   38 ++++++++++++++++++++++++++++++--------
 include/mci.h          |   21 +++++++++++++--------
 2 files changed, 43 insertions(+), 16 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index a232679..9bdcdbe 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -695,7 +695,6 @@ static void mci_set_bus_width(struct mci *mci, unsigned width)
 static void mci_detect_version_from_csd(struct mci *mci)
 {
 	int version;
-	char *vstr;
 
 	if (mci->version == MMC_VERSION_UNKNOWN) {
 		/* the version is coded in the bits 127:126 (left aligned) */
@@ -703,32 +702,52 @@ static void mci_detect_version_from_csd(struct mci *mci)
 
 		switch (version) {
 		case 0:
-			vstr = "1.2";
 			mci->version = MMC_VERSION_1_2;
 			break;
 		case 1:
-			vstr = "1.4";
 			mci->version = MMC_VERSION_1_4;
 			break;
 		case 2:
-			vstr = "2.2";
 			mci->version = MMC_VERSION_2_2;
 			break;
 		case 3:
-			vstr = "3.0";
 			mci->version = MMC_VERSION_3;
 			break;
 		case 4:
-			vstr = "4.0";
 			mci->version = MMC_VERSION_4;
 			break;
 		default:
-			vstr = "unknown, fallback to 1.2";
+			printf("unknown card version, fallback to 1.2\n");
 			mci->version = MMC_VERSION_1_2;
 			break;
 		}
+	}
+}
 
-		dev_info(&mci->dev, "detected card version %s\n", vstr);
+/**
+ * correct the version from ext_csd data if it's not an SD-card, detected
+ * version is at least 4 and we have ext_csd data
+ */
+static void mci_correct_version_from_ext_csd(struct mci *mci)
+{
+	if (!IS_SD(mci) && (mci->version >= MMC_VERSION_4) && mci->ext_csd) {
+		switch (mci->ext_csd[EXT_CSD_REV]) {
+		case 1:
+			mci->version = MMC_VERSION_4_1;
+			break;
+		case 2:
+			mci->version = MMC_VERSION_4_2;
+			break;
+		case 3:
+			mci->version = MMC_VERSION_4_3;
+			break;
+		case 5:
+			mci->version = MMC_VERSION_4_41;
+			break;
+		case 6:
+			mci->version = MMC_VERSION_4_5;
+			break;
+		}
 	}
 }
 
@@ -1093,6 +1112,9 @@ static int mci_startup(struct mci *mci)
 	if (err)
 		return err;
 
+	mci_correct_version_from_ext_csd(mci);
+	printf("detected %s card version %d.%d\n", IS_SD(mci) ? "SD" : "MMC",
+		(mci->version >> 8) & 0xf, mci->version & 0xff);
 	mci_extract_card_capacity_from_csd(mci);
 
 	if (IS_SD(mci))
diff --git a/include/mci.h b/include/mci.h
index 0f10e8a..65f90ca 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -31,18 +31,23 @@
 
 /* Firmware revisions for SD cards */
 #define SD_VERSION_SD		0x20000
-#define SD_VERSION_2		(SD_VERSION_SD | 0x20)
-#define SD_VERSION_1_0		(SD_VERSION_SD | 0x10)
-#define SD_VERSION_1_10		(SD_VERSION_SD | 0x1a)
+#define SD_VERSION_2		(SD_VERSION_SD | 0x200)
+#define SD_VERSION_1_0		(SD_VERSION_SD | 0x100)
+#define SD_VERSION_1_10		(SD_VERSION_SD | 0x10a)
 
 /* Firmware revisions for MMC cards */
 #define MMC_VERSION_MMC		0x10000
 #define MMC_VERSION_UNKNOWN	(MMC_VERSION_MMC)
-#define MMC_VERSION_1_2		(MMC_VERSION_MMC | 0x12)
-#define MMC_VERSION_1_4		(MMC_VERSION_MMC | 0x14)
-#define MMC_VERSION_2_2		(MMC_VERSION_MMC | 0x22)
-#define MMC_VERSION_3		(MMC_VERSION_MMC | 0x30)
-#define MMC_VERSION_4		(MMC_VERSION_MMC | 0x40)
+#define MMC_VERSION_1_2		(MMC_VERSION_MMC | 0x102)
+#define MMC_VERSION_1_4		(MMC_VERSION_MMC | 0x104)
+#define MMC_VERSION_2_2		(MMC_VERSION_MMC | 0x202)
+#define MMC_VERSION_3		(MMC_VERSION_MMC | 0x300)
+#define MMC_VERSION_4		(MMC_VERSION_MMC | 0x400)
+#define MMC_VERSION_4_1		(MMC_VERSION_MMC | 0x401)
+#define MMC_VERSION_4_2		(MMC_VERSION_MMC | 0x402)
+#define MMC_VERSION_4_3		(MMC_VERSION_MMC | 0x403)
+#define MMC_VERSION_4_41	(MMC_VERSION_MMC | 0x429)
+#define MMC_VERSION_4_5		(MMC_VERSION_MMC | 0x405)
 
 #define MMC_CAP_SPI			(1 << 0)
 #define MMC_CAP_4_BIT_DATA		(1 << 1)
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
