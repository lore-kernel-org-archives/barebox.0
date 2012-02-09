Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvUEN-0006gA-Ri
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 13:40:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Feb 2012 14:39:56 +0100
Message-Id: <1328794798-17699-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1328794798-17699-1-git-send-email-s.hauer@pengutronix.de>
References: <1328794798-17699-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] mci: Add a complete list of EXT_CSD_* fields from the
 kernel
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |    2 +-
 include/mci.h          |   50 +++++++++++++++++++++++++++++++++++++++++++----
 2 files changed, 46 insertions(+), 6 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index c6e8669..2377fef 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -427,7 +427,7 @@ static int mmc_change_freq(struct mci *mci)
 	}
 
 	/* No high-speed support */
-	if (!ext_csd[185])
+	if (!ext_csd[EXT_CSD_HS_TIMING])
 		return 0;
 
 	/* High Speed is set, there are two types: 52MHz and 26MHz */
diff --git a/include/mci.h b/include/mci.h
index d8a88da..7e3b459 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -140,11 +140,51 @@
  * EXT_CSD fields
  */
 
-#define EXT_CSD_BUS_WIDTH	183	/* R/W */
-#define EXT_CSD_HS_TIMING	185	/* R/W */
-#define EXT_CSD_CARD_TYPE	196	/* RO */
-#define EXT_CSD_REV		192	/* RO */
-#define EXT_CSD_SEC_CNT		212	/* RO, 4 bytes */
+#define EXT_CSD_FLUSH_CACHE		32      /* W */
+#define EXT_CSD_CACHE_CTRL		33      /* R/W */
+#define EXT_CSD_POWER_OFF_NOTIFICATION	34	/* R/W */
+#define EXT_CSD_GP_SIZE_MULT		143	/* R/W */
+#define EXT_CSD_PARTITION_ATTRIBUTE	156	/* R/W */
+#define EXT_CSD_PARTITION_SUPPORT	160	/* RO */
+#define EXT_CSD_HPI_MGMT		161	/* R/W */
+#define EXT_CSD_RST_N_FUNCTION		162	/* R/W */
+#define EXT_CSD_SANITIZE_START		165     /* W */
+#define EXT_CSD_WR_REL_PARAM		166	/* RO */
+#define EXT_CSD_BOOT_WP			173	/* R/W */
+#define EXT_CSD_ERASE_GROUP_DEF		175	/* R/W */
+#define EXT_CSD_PART_CONFIG		179	/* R/W */
+#define EXT_CSD_ERASED_MEM_CONT		181	/* RO */
+#define EXT_CSD_BUS_WIDTH		183	/* R/W */
+#define EXT_CSD_HS_TIMING		185	/* R/W */
+#define EXT_CSD_POWER_CLASS		187	/* R/W */
+#define EXT_CSD_REV			192	/* RO */
+#define EXT_CSD_STRUCTURE		194	/* RO */
+#define EXT_CSD_CARD_TYPE		196	/* RO */
+#define EXT_CSD_OUT_OF_INTERRUPT_TIME	198	/* RO */
+#define EXT_CSD_PART_SWITCH_TIME        199     /* RO */
+#define EXT_CSD_PWR_CL_52_195		200	/* RO */
+#define EXT_CSD_PWR_CL_26_195		201	/* RO */
+#define EXT_CSD_PWR_CL_52_360		202	/* RO */
+#define EXT_CSD_PWR_CL_26_360		203	/* RO */
+#define EXT_CSD_SEC_CNT			212	/* RO, 4 bytes */
+#define EXT_CSD_S_A_TIMEOUT		217	/* RO */
+#define EXT_CSD_REL_WR_SEC_C		222	/* RO */
+#define EXT_CSD_HC_WP_GRP_SIZE		221	/* RO */
+#define EXT_CSD_ERASE_TIMEOUT_MULT	223	/* RO */
+#define EXT_CSD_HC_ERASE_GRP_SIZE	224	/* RO */
+#define EXT_CSD_BOOT_MULT		226	/* RO */
+#define EXT_CSD_SEC_TRIM_MULT		229	/* RO */
+#define EXT_CSD_SEC_ERASE_MULT		230	/* RO */
+#define EXT_CSD_SEC_FEATURE_SUPPORT	231	/* RO */
+#define EXT_CSD_TRIM_MULT		232	/* RO */
+#define EXT_CSD_PWR_CL_200_195		236	/* RO */
+#define EXT_CSD_PWR_CL_200_360		237	/* RO */
+#define EXT_CSD_PWR_CL_DDR_52_195	238	/* RO */
+#define EXT_CSD_PWR_CL_DDR_52_360	239	/* RO */
+#define EXT_CSD_POWER_OFF_LONG_TIME	247	/* RO */
+#define EXT_CSD_GENERIC_CMD6_TIME	248	/* RO */
+#define EXT_CSD_CACHE_SIZE		249	/* RO, 4 bytes */
+#define EXT_CSD_HPI_FEATURES		503	/* RO */
 
 /*
  * EXT_CSD field definitions
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
