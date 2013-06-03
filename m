Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjSL2-0004Fj-HR
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 10:50:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  3 Jun 2013 12:49:38 +0200
Message-Id: <1370256580-3113-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1370256580-3113-1-git-send-email-s.hauer@pengutronix.de>
References: <1370256580-3113-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] mci: Print more info
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

In devinfo for the card also print:

- capabilities for host and card
- current bus width
- current clock

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index fc921e5..86600ec 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1366,6 +1366,16 @@ static unsigned extract_mtd_year(struct mci *mci)
 		return UNSTUFF_BITS(mci->cid, 8, 4) + 1997;
 }
 
+static void mci_print_caps(unsigned caps)
+{
+	printf("  capabilities: %s%s%s%s%s\n",
+		caps & MMC_CAP_4_BIT_DATA ? "4bit " : "",
+		caps & MMC_CAP_8_BIT_DATA ? "8bit " : "",
+		caps & MMC_CAP_SD_HIGHSPEED ? "sd-hs " : "",
+		caps & MMC_CAP_MMC_HIGHSPEED ? "mmc-hs " : "",
+		caps & MMC_CAP_MMC_HIGHSPEED_52MHZ ? "mmc-52MHz " : "");
+}
+
 /**
  * Output some valuable information when the user runs 'devinfo' on an MCI device
  * @param mci MCI device instance
@@ -1373,13 +1383,28 @@ static unsigned extract_mtd_year(struct mci *mci)
 static void mci_info(struct device_d *dev)
 {
 	struct mci *mci = container_of(dev, struct mci, dev);
+	struct mci_host *host = mci->host;
+	int bw;
 
 	if (mci->ready_for_use == 0) {
 		printf(" No information available:\n  MCI card not probed yet\n");
 		return;
 	}
 
-	printf(" Card:\n");
+	printf("Host information:\n");
+	printf("  current clock: %d\n", host->clock);
+
+	if (host->bus_width == MMC_BUS_WIDTH_8)
+		bw = 8;
+	else if (host->bus_width == MMC_BUS_WIDTH_4)
+		bw = 4;
+	else
+		bw = 1;
+
+	printf("  current buswidth: %d\n", bw);
+	mci_print_caps(host->host_caps);
+
+	printf("Card information:\n");
 	if (mci->version < SD_VERSION_SD) {
 		printf("  Attached is a MultiMediaCard (Version: %u.%u)\n",
 			(mci->version >> 4) & 0xf, mci->version & 0xf);
@@ -1396,6 +1421,7 @@ static void mci_info(struct device_d *dev)
 	printf("   CSD: %08X-%08X-%08X-%08X\n", mci->csd[0], mci->csd[1],
 		mci->csd[2], mci->csd[3]);
 	printf("  Max. transfer speed: %u Hz\n", mci->tran_speed);
+	mci_print_caps(mci->card_caps);
 	printf("  Manufacturer ID: %02X\n", extract_mid(mci));
 	printf("  OEM/Application ID: %04X\n", extract_oid(mci));
 	printf("  Product name: '%c%c%c%c%c'\n", mci->cid[0] & 0xff,
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
