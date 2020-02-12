Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1smn-0002yV-Kw
 for barebox@lists.infradead.org; Wed, 12 Feb 2020 14:14:43 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 12 Feb 2020 15:14:30 +0100
Message-Id: <20200212141430.8800-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200212141430.8800-1-a.fatoum@pengutronix.de>
References: <20200212141430.8800-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] mci: core: populate mci_ios.timing member
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

So far we passed an uninitialized timing member in the ios to the
->set_ios of the host controller drivers.

To allow extension for new modes that need MCI host support beyond
the usual clock rate change, make the member useful:

- populate is with the correct value
- add some type safety by using an enum
- print it in the devinfo output

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 29 +++++++++++++++++++++++++----
 include/mci.h          | 25 ++++++++++++++-----------
 2 files changed, 39 insertions(+), 15 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index dd163c3d1652..e5b5e8a27539 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -668,10 +668,11 @@ retry_scr:
 static void mci_set_ios(struct mci *mci)
 {
 	struct mci_host *host = mci->host;
-	struct mci_ios ios;
-
-	ios.bus_width = host->bus_width;
-	ios.clock = host->clock;
+	struct mci_ios ios = {
+		.bus_width = host->bus_width,
+		.clock = host->clock,
+		.timing = host->timing,
+	};
 
 	host->set_ios(host, &ios);
 }
@@ -996,6 +997,9 @@ static int mci_startup_sd(struct mci *mci)
 		mci_set_bus_width(mci, MMC_BUS_WIDTH_4);
 	}
 
+	if (mci->tran_speed > 25000000)
+		mci->host->timing = MMC_TIMING_SD_HS;
+
 	mci_set_clock(mci, mci->tran_speed);
 
 	return 0;
@@ -1021,6 +1025,8 @@ static int mci_startup_mmc(struct mci *mci)
 			mci->tran_speed = 52000000;
 		else
 			mci->tran_speed = 26000000;
+
+		host->timing = MMC_TIMING_MMC_HS;
 	}
 
 	mci_set_clock(mci, mci->tran_speed);
@@ -1473,6 +1479,20 @@ static unsigned extract_mtd_year(struct mci *mci)
 	return year;
 }
 
+static const char *mci_timing_tostr(unsigned timing)
+{
+	switch (timing) {
+	case MMC_TIMING_LEGACY:
+		return "legacy";
+	case MMC_TIMING_MMC_HS:
+		return "MMC HS";
+	case MMC_TIMING_SD_HS:
+		return "SD HS";
+	default:
+		return "unknown"; /* shouldn't happen */
+	}
+}
+
 static void mci_print_caps(unsigned caps)
 {
 	printf("  capabilities: %s%s%s%s%s\n",
@@ -1509,6 +1529,7 @@ static void mci_info(struct device_d *dev)
 		bw = 1;
 
 	printf("  current buswidth: %d\n", bw);
+	printf("  current timing: %s\n", mci_timing_tostr(host->timing));
 	mci_print_caps(host->host_caps);
 
 	printf("Card information:\n");
diff --git a/include/mci.h b/include/mci.h
index a45d744761a2..57a4629d1293 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -367,6 +367,18 @@ struct mci_data {
 	unsigned blocksize;	/**< block size in bytes (mostly 512) */
 };
 
+enum mci_timing {
+	MMC_TIMING_LEGACY	= 0,
+	MMC_TIMING_MMC_HS	= 1,
+	MMC_TIMING_SD_HS	= 2,
+	MMC_TIMING_UHS_SDR12	= MMC_TIMING_LEGACY,
+	MMC_TIMING_UHS_SDR25	= MMC_TIMING_SD_HS,
+	MMC_TIMING_UHS_SDR50	= 3,
+	MMC_TIMING_UHS_SDR104	= 4,
+	MMC_TIMING_UHS_DDR50	= 5,
+	MMC_TIMING_MMC_HS200	= 6,
+};
+
 struct mci_ios {
 	unsigned int	clock;			/* clock rate */
 
@@ -376,17 +388,7 @@ struct mci_ios {
 #define MMC_BUS_WIDTH_4		2
 #define MMC_BUS_WIDTH_8		3
 
-	unsigned char	timing;			/* timing specification used */
-
-#define MMC_TIMING_LEGACY	0
-#define MMC_TIMING_MMC_HS	1
-#define MMC_TIMING_SD_HS	2
-#define MMC_TIMING_UHS_SDR12	MMC_TIMING_LEGACY
-#define MMC_TIMING_UHS_SDR25	MMC_TIMING_SD_HS
-#define MMC_TIMING_UHS_SDR50	3
-#define MMC_TIMING_UHS_SDR104	4
-#define MMC_TIMING_UHS_DDR50	5
-#define MMC_TIMING_MMC_HS200	6
+	enum mci_timing	timing;			/* timing specification used */
 
 #define MMC_SDR_MODE		0
 #define MMC_1_2V_DDR_MODE	1
@@ -408,6 +410,7 @@ struct mci_host {
 	unsigned f_max;		/**< host interface upper limit */
 	unsigned clock;		/**< Current clock used to talk to the card */
 	unsigned bus_width;	/**< used data bus width to the card */
+	enum mci_timing timing;	/**< used timing specification to the card */
 	unsigned max_req_size;
 	unsigned dsr_val;	/**< optional dsr value */
 	int use_dsr;		/**< optional dsr usage flag */
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
