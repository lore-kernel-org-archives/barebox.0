Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WEKjf-0004Ji-8T
 for barebox@lists.infradead.org; Fri, 14 Feb 2014 15:31:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Feb 2014 16:31:03 +0100
Message-Id: <1392391863-27454-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mci: Fix version handling
To: barebox@lists.infradead.org

Currently the version defines reflect the digits in the version
number. MMC_VERSION_4_41 is defined as 0x441 and MMC_VERSION_4_5
is defined as 0x405. This results in MMC_VERSION_4_5 < MMC_VERSION_4_41
becoming true which was surely not intended. Fix this by
redefining the versions as 0x<major><minor><micro>. This makes the
string generation more complicated but makes versions comparable
again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 28 +++++++++++++++++++---------
 include/mci.h          | 18 +++++++++---------
 2 files changed, 28 insertions(+), 18 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index cf38a88..a18b555 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -939,6 +939,21 @@ out:
 	return err;
 }
 
+static char *mci_version_string(struct mci *mci)
+{
+	static char version[sizeof("x.xx")];
+	unsigned major, minor, micro;
+
+	major = (mci->version >> 8) & 0xf;
+	minor = (mci->version >> 4) & 0xf;
+	micro = mci->version & 0xf;
+
+	sprintf(version, "%u.%u", major,
+			micro ? (minor << 4) | micro : minor);
+
+	return version;
+}
+
 static int mci_startup_sd(struct mci *mci)
 {
 	struct mci_cmd cmd;
@@ -1140,8 +1155,8 @@ static int mci_startup(struct mci *mci)
 		return err;
 
 	mci_correct_version_from_ext_csd(mci);
-	printf("detected %s card version %d.%d\n", IS_SD(mci) ? "SD" : "MMC",
-		(mci->version >> 8) & 0xf, mci->version & 0xff);
+	dev_info(&mci->dev, "detected %s card version %s\n", IS_SD(mci) ? "SD" : "MMC",
+		mci_version_string(mci));
 	mci_extract_card_capacity_from_csd(mci);
 
 	if (IS_SD(mci))
@@ -1477,13 +1492,8 @@ static void mci_info(struct device_d *dev)
 	mci_print_caps(host->host_caps);
 
 	printf("Card information:\n");
-	if (mci->version < SD_VERSION_SD) {
-		printf("  Attached is a MultiMediaCard (Version: %u.%u)\n",
-			(mci->version >> 4) & 0xf, mci->version & 0xf);
-	} else {
-		printf("  Attached is an SD Card (Version: %u.%u)\n",
-			(mci->version >> 8) & 0xf, mci->version & 0xff);
-	}
+	printf("  Attached is a %s card\n", IS_SD(mci) ? "SD" : "MMC");
+	printf("  Version: %s\n", mci_version_string(mci));
 	printf("  Capacity: %u MiB\n", (unsigned)(mci->capacity >> 20));
 
 	if (mci->high_capacity)
diff --git a/include/mci.h b/include/mci.h
index 40a712b..cd3e2c2 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -33,21 +33,21 @@
 #define SD_VERSION_SD		0x20000
 #define SD_VERSION_2		(SD_VERSION_SD | 0x200)
 #define SD_VERSION_1_0		(SD_VERSION_SD | 0x100)
-#define SD_VERSION_1_10		(SD_VERSION_SD | 0x10a)
+#define SD_VERSION_1_10		(SD_VERSION_SD | 0x1a0)
 
 /* Firmware revisions for MMC cards */
 #define MMC_VERSION_MMC		0x10000
 #define MMC_VERSION_UNKNOWN	(MMC_VERSION_MMC)
-#define MMC_VERSION_1_2		(MMC_VERSION_MMC | 0x102)
-#define MMC_VERSION_1_4		(MMC_VERSION_MMC | 0x104)
-#define MMC_VERSION_2_2		(MMC_VERSION_MMC | 0x202)
+#define MMC_VERSION_1_2		(MMC_VERSION_MMC | 0x120)
+#define MMC_VERSION_1_4		(MMC_VERSION_MMC | 0x140)
+#define MMC_VERSION_2_2		(MMC_VERSION_MMC | 0x220)
 #define MMC_VERSION_3		(MMC_VERSION_MMC | 0x300)
 #define MMC_VERSION_4		(MMC_VERSION_MMC | 0x400)
-#define MMC_VERSION_4_1		(MMC_VERSION_MMC | 0x401)
-#define MMC_VERSION_4_2		(MMC_VERSION_MMC | 0x402)
-#define MMC_VERSION_4_3		(MMC_VERSION_MMC | 0x403)
-#define MMC_VERSION_4_41	(MMC_VERSION_MMC | 0x429)
-#define MMC_VERSION_4_5		(MMC_VERSION_MMC | 0x405)
+#define MMC_VERSION_4_1		(MMC_VERSION_MMC | 0x410)
+#define MMC_VERSION_4_2		(MMC_VERSION_MMC | 0x420)
+#define MMC_VERSION_4_3		(MMC_VERSION_MMC | 0x430)
+#define MMC_VERSION_4_41	(MMC_VERSION_MMC | 0x441)
+#define MMC_VERSION_4_5		(MMC_VERSION_MMC | 0x450)
 
 #define MMC_CAP_SPI			(1 << 0)
 #define MMC_CAP_4_BIT_DATA		(1 << 1)
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
