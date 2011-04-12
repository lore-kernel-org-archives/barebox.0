Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9YnL-0005qm-Kh
	for barebox@lists.infradead.org; Tue, 12 Apr 2011 08:17:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Apr 2011 10:17:50 +0200
Message-Id: <1302596272-21635-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302596272-21635-1-git-send-email-s.hauer@pengutronix.de>
References: <1302596272-21635-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] mci: shrink string footprint
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |   14 ++++++++------
 1 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index a3ad809..a51c44b 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -599,6 +599,7 @@ static void mci_detect_version_from_csd(struct device_d *mci_dev)
 {
 	struct mci *mci = GET_MCI_DATA(mci_dev);
 	int version;
+	char *vstr;
 
 	if (mci->version == MMC_VERSION_UNKNOWN) {
 		/* the version is coded in the bits 127:126 (left aligned) */
@@ -606,30 +607,31 @@ static void mci_detect_version_from_csd(struct device_d *mci_dev)
 
 		switch (version) {
 		case 0:
-			printf("Detecting a 1.2 revision card\n");
+			vstr = "1.2";
 			mci->version = MMC_VERSION_1_2;
 			break;
 		case 1:
-			printf("Detecting a 1.4 revision card\n");
+			vstr = "1.4";
 			mci->version = MMC_VERSION_1_4;
 			break;
 		case 2:
-			printf("Detecting a 2.2 revision card\n");
+			vstr = "2.2";
 			mci->version = MMC_VERSION_2_2;
 			break;
 		case 3:
-			printf("Detecting a 3.0 revision card\n");
+			vstr = "3.0";
 			mci->version = MMC_VERSION_3;
 			break;
 		case 4:
-			printf("Detecting a 4.0 revision card\n");
+			vstr = "4.0";
 			mci->version = MMC_VERSION_4;
 			break;
 		default:
-			printf("Unknow revision. Falling back to a 1.2 revision card\n");
+			vstr = "unknown, fallback to 1.2";
 			mci->version = MMC_VERSION_1_2;
 			break;
 		}
+		printf("detected card version %s\n", vstr);
 	}
 }
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
