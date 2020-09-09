Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFxrQ-0002xg-3Q
 for barebox@lists.infradead.org; Wed, 09 Sep 2020 11:01:57 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Wed,  9 Sep 2020 13:01:18 +0200
Message-Id: <20200909110118.19923-5-jbe@pengutronix.de>
In-Reply-To: <20200909110118.19923-1-jbe@pengutronix.de>
References: <20200909110118.19923-1-jbe@pengutronix.de>
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
Subject: [PATCH 5/5] mci: mci-core: add GPP support
To: barebox@lists.infradead.org
Cc: Juergen Borleis <jbe@pengutronix.de>

General Purpose Partitions (GPP) are hardware partitions like the boot
partitions. And like the boot partitions they are limited to MMCs only.
Most applications running an eMMC do not use GPPs, so this feature can be
disabled.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 drivers/mci/Kconfig    | 13 ++++++++
 drivers/mci/mci-core.c | 76 ++++++++++++++++++++++++++++++++++++++++--
 include/mci.h          |  1 +
 3 files changed, 88 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 996d8ff122..4d7f5beb42 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -42,6 +42,19 @@ config MCI_MMC_BOOT_PARTITIONS
 	  Note: only 'MMC' have 'boot partitions'. So, if you don't use an
 	  'MMC' device, you don't need this support.
 
+config MCI_MMC_GPP_PARTITIONS
+	bool "support MMC general purpose partitions (GPP)"
+	help
+	  Provide access to the 'general purpose partitions' of devices of type
+	  'MMC'. These so called 'hardware partitions' act like an independent
+	  memory device and thus, need special handling.
+
+	  Note: only 'MMC' devices have 'general purpose partitions'. So, if
+	  you don't use an 'MMC' device, you don't need this support.
+
+	  Note: by default, 'MMC' devices have no 'general purpose partitions',
+	  it requires a special one-time configuration step to enable them.
+
 comment "--- MCI host drivers ---"
 
 config MCI_DW
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index d93be6d33f..7d0fe487d8 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -33,6 +33,7 @@
 #include <disks.h>
 #include <of.h>
 #include <linux/err.h>
+#include <linux/sizes.h>
 
 #define MAX_BUFFER_NUMBER 0xffffffff
 
@@ -444,6 +445,69 @@ static void mci_part_add(struct mci *mci, uint64_t size,
 	mci->nr_parts++;
 }
 
+/**
+ * Read a value spread to three consecutive bytes in the ECSD information
+ * @param[in] ecsd_info Information from the eMMC
+ * @param[in] idx The index where to start to read
+ * @return The GPP size in units of 'write protect group' size
+ *
+ * The value in the ECSD information block is meant in little endian
+ */
+static __maybe_unused unsigned mmc_extract_gpp_units(const char *ecsd_info, unsigned idx)
+{
+	unsigned val;
+
+	val = ecsd_info[idx];
+	val |= ecsd_info[idx + 1] << 8;
+	val |= ecsd_info[idx + 2] << 16;
+
+	return val;
+}
+
+/**
+ * Create and enable access to 'general purpose hardware partitions' on demand
+ * @param mci[in,out] MCI instance
+ *
+ * General Purpose hardware Partitions (aka GPPs) aren't enabled by default. Its
+ * up to the application to (one-time) setup the eMMC to provide GPPs. Since
+ * they aren't wildly used, enable access to them on demand only.
+ */
+static __maybe_unused void mmc_extract_gpp_partitions(struct mci *mci)
+{
+	uint64_t wpgs, part_size;
+	size_t idx;
+	char *name, *partname;
+	static const unsigned gpp_offsets[MMC_NUM_GP_PARTITION] = {
+		EXT_CSD_GP_SIZE_MULT0, EXT_CSD_GP_SIZE_MULT1,
+		EXT_CSD_GP_SIZE_MULT2, EXT_CSD_GP_SIZE_MULT3, };
+
+	if (!(mci->ext_csd[EXT_CSD_PARTITIONING_SUPPORT] & 0x01))
+		return; /* no partitioning support */
+	/*
+	 * The size of GPPs is defined in units of 'write protect group' size.
+	 * The 'write protect group' size is defined to:
+	 *  CSD_HC_ERASE_GRP_SIZE * CSD_HC_WP_GRP_SIZE * 512 kiB
+	 */
+	wpgs = mci->ext_csd[EXT_CSD_HC_ERASE_GRP_SIZE];
+	wpgs *= mci->ext_csd[EXT_CSD_HC_WP_GRP_SIZE];
+	wpgs *= SZ_512K;
+
+	/* up to four GPPs can be enabled. */
+	for (idx = 0; idx < ARRAY_SIZE(gpp_offsets); idx++) {
+		part_size = mmc_extract_gpp_units(mci->ext_csd, gpp_offsets[idx]);
+		if (part_size == 0)
+			continue;
+		/* Convert to bytes */
+		part_size *= wpgs;
+
+		partname = basprintf("gpp%d", idx);
+		name = basprintf("%s.%s", mci->cdevname, partname);
+		/* TODO read-only flag */
+		mci_part_add(mci, part_size, EXT_CSD_PART_CONFIG_ACC_GPP0 + idx,
+			     name, partname, idx, false, MMC_BLK_DATA_AREA_GP);
+	}
+}
+
 /**
  * Change transfer frequency for an MMC card
  * @param mci MCI instance
@@ -519,6 +583,9 @@ static int mmc_change_freq(struct mci *mci)
 		mci->bootpart = (mci->ext_csd_part_config >> 3) & 0x7;
 	}
 
+	if (IS_ENABLED(CONFIG_MCI_MMC_GPP_PARTITIONS))
+		mmc_extract_gpp_partitions(mci);
+
 	return 0;
 }
 
@@ -1243,13 +1310,16 @@ static int sd_send_if_cond(struct mci *mci)
 	return 0;
 }
 
+/**
+ * Switch between hardware MMC partitions on demand
+ */
 static int mci_blk_part_switch(struct mci_part *part)
 {
 	struct mci *mci = part->mci;
 	int ret;
 
-	if (!IS_ENABLED(CONFIG_MCI_MMC_BOOT_PARTITIONS))
-		return 0;
+	if (!IS_ENABLED(CONFIG_MCI_MMC_BOOT_PARTITIONS) && !IS_ENABLED(CONFIG_MCI_MMC_GPP_PARTITIONS))
+		return 0; /* no need */
 
 	if (mci->part_curr == part)
 		return 0;
@@ -1641,6 +1711,8 @@ static int mci_register_partition(struct mci_part *part)
 		break;
 	case MMC_BLK_DATA_AREA_MAIN:
 		break;
+	case MMC_BLK_DATA_AREA_GP:
+		break;
 	default:
 		return 0;
 	}
diff --git a/include/mci.h b/include/mci.h
index 96547fb396..b63435872b 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -277,6 +277,7 @@
  */
 #define EXT_CSD_PART_CONFIG_ACC_MASK	(0x7)
 #define EXT_CSD_PART_CONFIG_ACC_BOOT0	(0x1)
+#define EXT_CSD_PART_CONFIG_ACC_GPP0	(0x4)
 
 #define EXT_CSD_CMD_SET_NORMAL		(1<<0)
 #define EXT_CSD_CMD_SET_SECURE		(1<<1)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
