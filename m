Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay01.ispgateway.de ([80.67.31.24])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1XuR-0003Wm-54
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 08:57:43 +0000
From: Markus Niebel <list-09_barebox@tqsc.de>
Date: Fri, 10 Jan 2014 10:05:33 +0100
Message-Id: <1389344733-13203-2-git-send-email-list-09_barebox@tqsc.de>
In-Reply-To: <1389344733-13203-1-git-send-email-list-09_barebox@tqsc.de>
References: <1389344733-13203-1-git-send-email-list-09_barebox@tqsc.de>
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
Subject: [PATCH 2/2] mci: production year for eMMC 4.41 and later
To: barebox@lists.infradead.org
Cc: Markus Niebel <Markus.Niebel@tqs.de>

From: Markus Niebel <Markus.Niebel@tqs.de>

Year is coded in 4 bits of CID. eMMC 4.41
adds a new interpretation rule: production
year for 4.41 cards and newer is between 2010
and 2025 with 0 corresponding to 2013.

This fix was inspired by currect kernel code.

Signed-off-by: Markus Niebel <Markus.Niebel@tqs.de>
---
 drivers/mci/mci-core.c |   15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 9bdcdbe..7161af1 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -717,7 +717,7 @@ static void mci_detect_version_from_csd(struct mci *mci)
 			mci->version = MMC_VERSION_4;
 			break;
 		default:
-			printf("unknown card version, fallback to 1.2\n");
+			printf("unknown card version, fallback to 1.02\n");
 			mci->version = MMC_VERSION_1_2;
 			break;
 		}
@@ -1398,10 +1398,17 @@ static unsigned extract_mtd_month(struct mci *mci)
  */
 static unsigned extract_mtd_year(struct mci *mci)
 {
+	unsigned year;
 	if (IS_SD(mci))
-		return UNSTUFF_BITS(mci->cid, 12, 8) + 2000;
-	else
+		year = UNSTUFF_BITS(mci->cid, 12, 8) + 2000;
+	else if (mci->version < MMC_VERSION_4_41)
 		return UNSTUFF_BITS(mci->cid, 8, 4) + 1997;
+	else {
+		year = UNSTUFF_BITS(mci->cid, 8, 4) + 1997;
+		if (year < 2010)
+			year += 16;
+	}
+	return year;
 }
 
 static void mci_print_caps(unsigned caps)
@@ -1448,7 +1455,7 @@ static void mci_info(struct device_d *dev)
 			(mci->version >> 4) & 0xf, mci->version & 0xf);
 	} else {
 		printf("  Attached is an SD Card (Version: %u.%u)\n",
-			(mci->version >> 4) & 0xf, mci->version & 0xf);
+			(mci->version >> 8) & 0xf, mci->version & 0xff);
 	}
 	printf("  Capacity: %u MiB\n", (unsigned)(mci->capacity >> 20));
 
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
