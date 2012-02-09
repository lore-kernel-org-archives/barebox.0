Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvSZm-0004dv-4b
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 11:54:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Feb 2012 12:53:45 +0100
Message-Id: <1328788438-19717-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1328788438-19717-1-git-send-email-s.hauer@pengutronix.de>
References: <1328788438-19717-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/15] mci: use card type definitions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |    4 ++--
 include/mci.h          |    1 -
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index e9fe87c..db69b27 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -417,7 +417,7 @@ static int mmc_change_freq(struct device_d *mci_dev)
 	if (ext_csd[212] || ext_csd[213] || ext_csd[214] || ext_csd[215])
 		mci->high_capacity = 1;
 
-	cardtype = ext_csd[196] & 0xf;
+	cardtype = ext_csd[EXT_CSD_CARD_TYPE] & EXT_CSD_CARD_TYPE_MASK;
 
 	err = mci_switch(mci_dev, EXT_CSD_CMD_SET_NORMAL, EXT_CSD_HS_TIMING, 1);
 
@@ -439,7 +439,7 @@ static int mmc_change_freq(struct device_d *mci_dev)
 		return 0;
 
 	/* High Speed is set, there are two types: 52MHz and 26MHz */
-	if (cardtype & MMC_HS_52MHZ)
+	if (cardtype & EXT_CSD_CARD_TYPE_52)
 		mci->card_caps |= MMC_MODE_HS_52MHz | MMC_MODE_HS;
 	else
 		mci->card_caps |= MMC_MODE_HS;
diff --git a/include/mci.h b/include/mci.h
index 87c7194..6d8468c 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -102,7 +102,6 @@
 #define SD_HIGHSPEED_SUPPORTED	0x00020000
 
 #define MMC_HS_TIMING		0x00000100
-#define MMC_HS_52MHZ		0x2
 
 #define OCR_BUSY		0x80000000
 /** card's response in its OCR if it is a high capacity card */
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
