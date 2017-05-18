Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dBK7e-0007JG-Ft
 for barebox@lists.infradead.org; Thu, 18 May 2017 12:01:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 May 2017 14:01:15 +0200
Message-Id: <20170518120115.8040-4-s.hauer@pengutronix.de>
In-Reply-To: <20170518120115.8040-1-s.hauer@pengutronix.de>
References: <20170518120115.8040-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] mmc_extcsd command: rework
To: Barebox List <barebox@lists.infradead.org>

This patch is a rework of the mmc_extcsd command:

- Always print registers. Previously we never printed registers that
  were already present in an older version of the spec
- Put register names, access type and width into an array indexed by the
  register number
- Print multibyte registers only once with the resulting value, and not
  bytewise.

There's still more to cleanup, like for example we want to write
multibyte registers once with the complete value, not bytewise. Anyway,
this is a start.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mmc_extcsd.c | 2803 ++++++++++++++++++++++++++++---------------------
 include/mci.h         |    7 +-
 2 files changed, 1613 insertions(+), 1197 deletions(-)

diff --git a/commands/mmc_extcsd.c b/commands/mmc_extcsd.c
index 4c8537fe86..7a6d39075d 100644
--- a/commands/mmc_extcsd.c
+++ b/commands/mmc_extcsd.c
@@ -26,39 +26,39 @@
 #define EXT_CSD_BLOCKSIZE	512
 
 /* Access types */
-#define R		"R"
-#define RW		"R/W"
-#define RWaR		"R/W & R"
-#define RWaRWE		"R/W & R/W/E"
-#define RWaRWC_P	"R/W & R/W/C_P"
-#define RWaRWC_PaRWE_P	"R/W, R/W/C_P & R/W/E_P"
-#define WE		"W/E"
-#define RWE		"R/W/E"
-#define RWEaR		"R/W/E & R"
-#define RWEaRWE_P	"R/W/E & R/W/E_P"
-#define RWC_P		"R/W/C_P"
-#define RWE_P		"R/W/E_P"
-#define WE_P		"W/E_P"
-
-#define print_field_caption(reg_name, access_mode)			       \
-	do {								       \
-		printf(#reg_name"[%u]:\n", EXT_CSD_##reg_name);		       \
-		printf("\tValue: %#02x\n", reg[index]);			       \
-		printf("\tAccess: "access_mode"\n");			       \
-	} while (false);
-
-#define print_field_caption_with_offset(reg_name, offset, access_mode)	       \
-	do {								       \
-		printf(#reg_name"[%u]:\n", EXT_CSD_##reg_name + offset);       \
-		printf("\tValue: %#02x\n", reg[index]);			       \
-		printf("\tAccess: "access_mode"\n");			       \
-	} while (false);
 
-#define get_field_val(reg_name, offset, mask)				       \
-	((reg[EXT_CSD_##reg_name] >> offset) & mask)
+#define ACC_R			0
+#define ACC_RW			1
+#define ACC_RWaR		2
+#define ACC_RWaRWE		3
+#define ACC_RWaRWC_P		4
+#define ACC_RWaRWC_PaRWE_P	5
+#define ACC_WE			6
+#define ACC_RWE			7
+#define ACC_RWEaR		8
+#define ACC_RWEaRWE_P		9
+#define ACC_RWC_P		10
+#define ACC_RWE_P		11
+#define ACC_WE_P		12
+
+static char *access_types[] = {
+	[ACC_R] =		"R",
+	[ACC_RW] =		"R/W",
+	[ACC_RWaR] =		"R/W & R",
+	[ACC_RWaRWE] =		"R/W & R/W/E",
+	[ACC_RWaRWC_P] =	"R/W & R/W/C_P",
+	[ACC_RWaRWC_PaRWE_P] =	"R/W, R/W/C_P & R/W/E_P",
+	[ACC_WE] =		"W/E",
+	[ACC_RWE] =		"R/W/E",
+	[ACC_RWEaR] =		"R/W/E & R",
+	[ACC_RWEaRWE_P] =	"R/W/E & R/W/E_P",
+	[ACC_RWC_P] =		"R/W/C_P",
+	[ACC_RWE_P] =		"R/W/E_P",
+	[ACC_WE_P] =		"W/E_P",
+};
 
-#define get_field_val_with_index(index, offset, mask)			       \
-	((reg[index] >> offset) & mask)
+#define get_field_val(reg_name, offset, mask)				       \
+	((reg[reg_name] >> offset) & mask)
 
 static void print_access_type_key(void)
 {
@@ -69,714 +69,1261 @@ static void print_access_type_key(void)
 		"E_P:\tValue cleared by power failure and CMD0\n");
 }
 
-static int print_field_ge_v7(u8 *reg, int index)
+struct extcsd_reg {
+	const char *name;
+	unsigned char access;
+	unsigned char width;
+};
+
+static struct extcsd_reg extcsd[] = {
+        [EXT_CSD_CMDQ_MODE_EN] = {
+                .name = "EXT_CSD_CMDQ_MODE_EN",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_SECURE_REMOVAL_TYPE] = {
+                .name = "EXT_CSD_SECURE_REMOVAL_TYPE",
+                .access = ACC_RWaR,
+                .width = 1,
+        },
+        [EXT_CSD_PRODUCT_ST8_AWARENSS_ENABLEMENT] = {
+                .name = "EXT_CSD_PRODUCT_ST8_AWARENSS_ENABLEMENT",
+                .access = ACC_RWEaR,
+                .width = 1,
+        },
+        [EXT_CSD_MAX_PRE_LOADING_DATA_SIZE] = {
+                .name = "EXT_CSD_MAX_PRE_LOADING_DATA_SIZE",
+                .access = ACC_R,
+                .width = 4,
+        },
+        [EXT_CSD_PRE_LOADING_DATA_SIZE] = {
+                .name = "EXT_CSD_PRE_LOADING_DATA_SIZE",
+                .access = ACC_RWE_P,
+                .width = 4,
+        },
+        [EXT_CSD_FFU_STATUS] = {
+                .name = "EXT_CSD_FFU_STATUS",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_MODE_CONFIG] = {
+                .name = "EXT_CSD_MODE_CONFIG",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_BARRIER_CTRL] = {
+                .name = "EXT_CSD_BARRIER_CTRL",
+                .access = ACC_RW,
+                .width = 1,
+        },
+        [EXT_CSD_CACHE_CTRL] = {
+                .name = "EXT_CSD_CACHE_CTRL",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_POWER_OFF_NOTIFICATION] = {
+                .name = "EXT_CSD_POWER_OFF_NOTIFICATION",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_PACKED_FAILURE_INDEX] = {
+                .name = "EXT_CSD_PACKED_FAILURE_INDEX",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_PACKED_COMMAND_STATUS] = {
+                .name = "EXT_CSD_PACKED_COMMAND_STATUS",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_CONTEXT_CONF(1)] = {
+                .name = "EXT_CSD_CONTEXT_CONF1",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_CONTEXT_CONF(2)] = {
+                .name = "EXT_CSD_CONTEXT_CONF2",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_CONTEXT_CONF(3)] = {
+                .name = "EXT_CSD_CONTEXT_CONF3",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_CONTEXT_CONF(4)] = {
+                .name = "EXT_CSD_CONTEXT_CONF4",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_CONTEXT_CONF(5)] = {
+                .name = "EXT_CSD_CONTEXT_CONF5",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_CONTEXT_CONF(6)] = {
+                .name = "EXT_CSD_CONTEXT_CONF6",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_CONTEXT_CONF(7)] = {
+                .name = "EXT_CSD_CONTEXT_CONF7",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_CONTEXT_CONF(8)] = {
+                .name = "EXT_CSD_CONTEXT_CONF8",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_CONTEXT_CONF(9)] = {
+                .name = "EXT_CSD_CONTEXT_CONF9",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_CONTEXT_CONF(10)] = {
+                .name = "EXT_CSD_CONTEXT_CONF10",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_CONTEXT_CONF(11)] = {
+                .name = "EXT_CSD_CONTEXT_CONF11",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_CONTEXT_CONF(12)] = {
+                .name = "EXT_CSD_CONTEXT_CONF12",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_CONTEXT_CONF(13)] = {
+                .name = "EXT_CSD_CONTEXT_CONF13",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_CONTEXT_CONF(14)] = {
+                .name = "EXT_CSD_CONTEXT_CONF14",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_CONTEXT_CONF(15)] = {
+                .name = "EXT_CSD_CONTEXT_CONF15",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_EXT_PARTITIONS_ATTRIBUTE] = {
+                .name = "EXT_CSD_EXT_PARTITIONS_ATTRIBUTE",
+                .access = ACC_RW,
+                .width = 2,
+        },
+        [EXT_CSD_EXCEPTION_EVENTS_STATUS] = {
+                .name = "EXT_CSD_EXCEPTION_EVENTS_STATUS",
+                .access = ACC_R,
+                .width = 2,
+        },
+        [EXT_CSD_EXCEPTION_EVENTS_STATUS] = {
+                .name = "EXT_CSD_EXCEPTION_EVENTS_STATUS",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_EXCEPTION_EVENTS_CTRL] = {
+                .name = "EXT_CSD_EXCEPTION_EVENTS_CTRL",
+                .access = ACC_RWE_P,
+                .width = 2,
+        },
+        [EXT_CSD_CLASS_6_CTRL] = {
+                .name = "EXT_CSD_CLASS_6_CTRL",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_INI_TIMEOUT_EMU] = {
+                .name = "EXT_CSD_INI_TIMEOUT_EMU",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_DATA_SECTOR_SIZE] = {
+                .name = "EXT_CSD_DATA_SECTOR_SIZE",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_USE_NATIVE_SECTOR] = {
+                .name = "EXT_CSD_USE_NATIVE_SECTOR",
+                .access = ACC_RW,
+                .width = 1,
+        },
+        [EXT_CSD_NATIVE_SECTOR_SIZE] = {
+                .name = "EXT_CSD_NATIVE_SECTOR_SIZE",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_PROGRAM_CID_CSD_DDR_SUPPORT] = {
+                .name = "EXT_CSD_PROGRAM_CID_CSD_DDR_SUPPORT",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_PERIODIC_WAKEUP] = {
+                .name = "EXT_CSD_PERIODIC_WAKEUP",
+                .access = ACC_RWE,
+                .width = 1,
+        },
+        [EXT_CSD_TCASE_SUPPORT] = {
+                .name = "EXT_CSD_TCASE_SUPPORT",
+                .access = ACC_WE_P,
+                .width = 1,
+        },
+        [EXT_CSD_PRODUCTION_STATE_AWARENESS] = {
+                .name = "EXT_CSD_PRODUCTION_STATE_AWARENESS",
+                .access = ACC_RWE,
+                .width = 1,
+        },
+        [EXT_CSD_SEC_BAD_BLK_MGMNT] = {
+                .name = "EXT_CSD_SEC_BAD_BLK_MGMNT",
+                .access = ACC_RW,
+                .width = 1,
+        },
+        [EXT_CSD_ENH_START_ADDR] = {
+                .name = "EXT_CSD_ENH_START_ADDR",
+                .access = ACC_RW,
+                .width = 4,
+        },
+        [EXT_CSD_ENH_SIZE_MULT] = {
+                .name = "EXT_CSD_ENH_SIZE_MULT",
+                .access = ACC_RW,
+                .width = 3,
+        },
+        [EXT_CSD_GP_SIZE_MULT0] = {
+                .name = "EXT_CSD_GP_SIZE_MULT0",
+                .access = ACC_RW,
+                .width = 3,
+        },
+        [EXT_CSD_GP_SIZE_MULT1] = {
+                .name = "EXT_CSD_GP_SIZE_MULT1",
+                .access = ACC_RW,
+                .width = 3,
+        },
+        [EXT_CSD_GP_SIZE_MULT2] = {
+                .name = "EXT_CSD_GP_SIZE_MULT2",
+                .access = ACC_RW,
+                .width = 3,
+        },
+        [EXT_CSD_GP_SIZE_MULT3] = {
+                .name = "EXT_CSD_GP_SIZE_MULT3",
+                .access = ACC_RW,
+                .width = 3,
+        },
+        [EXT_CSD_PARTITION_SETTING_COMPLETED] = {
+                .name = "EXT_CSD_PARTITION_SETTING_COMPLETED",
+                .access = ACC_RW,
+                .width = 1,
+        },
+        [EXT_CSD_PARTITIONS_ATTRIBUTE] = {
+                .name = "EXT_CSD_PARTITIONS_ATTRIBUTE",
+                .access = ACC_RW,
+                .width = 1,
+        },
+        [EXT_CSD_MAX_ENH_SIZE_MULT] = {
+                .name = "EXT_CSD_MAX_ENH_SIZE_MULT",
+                .access = ACC_R,
+                .width = 3,
+        },
+        [EXT_CSD_PARTITIONING_SUPPORT] = {
+                .name = "EXT_CSD_PARTITIONING_SUPPORT",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_HPI_MGMT] = {
+                .name = "EXT_CSD_HPI_MGMT",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_RST_N_FUNCTION] = {
+                .name = "EXT_CSD_RST_N_FUNCTION",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_BKOPS_EN] = {
+                .name = "EXT_CSD_BKOPS_EN",
+                .access = ACC_RWaRWE,
+                .width = 1,
+        },
+        [EXT_CSD_BKOPS_START] = {
+                .name = "EXT_CSD_BKOPS_START",
+                .access = ACC_WE_P,
+                .width = 1,
+        },
+        [EXT_CSD_SANITIZE_START] = {
+                .name = "EXT_CSD_SANITIZE_START",
+                .access = ACC_WE_P,
+                .width = 1,
+        },
+        [EXT_CSD_WR_REL_PARAM] = {
+                .name = "EXT_CSD_WR_REL_PARAM",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_WR_REL_SET] = {
+                .name = "EXT_CSD_WR_REL_SET",
+                .access = ACC_RW,
+                .width = 1,
+        },
+        [EXT_CSD_RPMB_SIZE_MULT] = {
+                .name = "EXT_CSD_RPMB_SIZE_MULT",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_FW_CONFIG] = {
+                .name = "EXT_CSD_FW_CONFIG",
+                .access = ACC_RW,
+                .width = 1,
+        },
+        [EXT_CSD_USER_WP] = {
+                .name = "EXT_CSD_USER_WP",
+                .access = ACC_RWaRWC_PaRWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_BOOT_WP] = {
+                .name = "EXT_CSD_BOOT_WP",
+                .access = ACC_RWaRWC_P,
+                .width = 1,
+        },
+        [EXT_CSD_BOOT_WP_STATUS] = {
+                .name = "EXT_CSD_BOOT_WP_STATUS",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_ERASE_GROUP_DEF] = {
+                .name = "EXT_CSD_ERASE_GROUP_DEF",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_BOOT_BUS_CONDITIONS] = {
+                .name = "EXT_CSD_BOOT_BUS_CONDITIONS",
+                .access = ACC_RWE,
+                .width = 1,
+        },
+        [EXT_CSD_BOOT_CONFIG_PROT] = {
+                .name = "EXT_CSD_BOOT_CONFIG_PROT",
+                .access = ACC_RWaRWC_P,
+                .width = 1,
+        },
+        [EXT_CSD_PARTITION_CONFIG] = {
+                .name = "EXT_CSD_PARTITION_CONFIG",
+                .access = ACC_RWEaRWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_ERASED_MEM_CONT] = {
+                .name = "EXT_CSD_ERASED_MEM_CONT",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_BUS_WIDTH] = {
+                .name = "EXT_CSD_BUS_WIDTH",
+                .access = ACC_WE_P,
+                .width = 1,
+        },
+        [EXT_CSD_STROBE_SUPPORT] = {
+                .name = "EXT_CSD_STROBE_SUPPORT",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_HS_TIMING] = {
+                .name = "EXT_CSD_HS_TIMING",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_POWER_CLASS] = {
+                .name = "EXT_CSD_POWER_CLASS",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_CMD_SET_REV] = {
+                .name = "EXT_CSD_CMD_SET_REV",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_CMD_SET] = {
+                .name = "EXT_CSD_CMD_SET",
+                .access = ACC_RWE_P,
+                .width = 1,
+        },
+        [EXT_CSD_REV] = {
+                .name = "EXT_CSD_REV",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_CSD_STRUCTURE] = {
+                .name = "EXT_CSD_CSD_STRUCTURE",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_DEVICE_TYPE] = {
+                .name = "EXT_CSD_DEVICE_TYPE",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_DRIVER_STRENGTH] = {
+                .name = "EXT_CSD_DRIVER_STRENGTH",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_OUT_OF_INTERRUPT_TIME] = {
+                .name = "EXT_CSD_OUT_OF_INTERRUPT_TIME",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_PARTITION_SWITCH_TIME] = {
+                .name = "EXT_CSD_PARTITION_SWITCH_TIME",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_PWR_CL_52_195] = {
+                .name = "EXT_CSD_PWR_CL_52_195",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_PWR_CL_26_195] = {
+                .name = "EXT_CSD_PWR_CL_26_195",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_PWR_CL_52_360] = {
+                .name = "EXT_CSD_PWR_CL_52_360",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_PWR_CL_26_360] = {
+                .name = "EXT_CSD_PWR_CL_26_360",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_MIN_PERF_R_4_26] = {
+                .name = "EXT_CSD_MIN_PERF_R_4_26",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_MIN_PERF_W_4_26] = {
+                .name = "EXT_CSD_MIN_PERF_W_4_26",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_MIN_PERF_R_8_26_4_52] = {
+                .name = "EXT_CSD_MIN_PERF_R_8_26_4_52",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_MIN_PERF_W_8_26_4_52] = {
+                .name = "EXT_CSD_MIN_PERF_W_8_26_4_52",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_MIN_PERF_R_8_52] = {
+                .name = "EXT_CSD_MIN_PERF_R_8_52",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_MIN_PERF_W_8_52] = {
+                .name = "EXT_CSD_MIN_PERF_W_8_52",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_SECURE_WP_INFO] = {
+                .name = "EXT_CSD_SECURE_WP_INFO",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_SEC_COUNT] = {
+                .name = "EXT_CSD_SEC_COUNT",
+                .access = ACC_R,
+                .width = 4,
+        },
+        [EXT_CSD_SLEEP_NOTIFICATION_TIME] = {
+                .name = "EXT_CSD_SLEEP_NOTIFICATION_TIME",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_S_A_TIMEOUT] = {
+                .name = "EXT_CSD_S_A_TIMEOUT",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_PRODUCTION_ST8_AWARENSS_TIMEOUT] = {
+                .name = "EXT_CSD_PRODUCTION_ST8_AWARENSS_TIMEOUT",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_S_C_VCCQ] = {
+                .name = "EXT_CSD_S_C_VCCQ",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_S_C_VCC] = {
+                .name = "EXT_CSD_S_C_VCC",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_HC_WP_GRP_SIZE] = {
+                .name = "EXT_CSD_HC_WP_GRP_SIZE",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_REL_WR_SEC_C] = {
+                .name = "EXT_CSD_REL_WR_SEC_C",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_ERASE_TIMEOUT_MULT] = {
+                .name = "EXT_CSD_ERASE_TIMEOUT_MULT",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_HC_ERASE_GRP_SIZE] = {
+                .name = "EXT_CSD_HC_ERASE_GRP_SIZE",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_ACC_SIZE] = {
+                .name = "EXT_CSD_ACC_SIZE",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_BOOT_SIZE_MULT] = {
+                .name = "EXT_CSD_BOOT_SIZE_MULT",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_BOOT_INFO] = {
+                .name = "EXT_CSD_BOOT_INFO",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_SEC_TRIM_MULT] = {
+                .name = "EXT_CSD_SEC_TRIM_MULT",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_SEC_ERASE_MULT] = {
+                .name = "EXT_CSD_SEC_ERASE_MULT",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_SEC_FEATURE_SUPPORT] = {
+                .name = "EXT_CSD_SEC_FEATURE_SUPPORT",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_TRIM_MULT] = {
+                .name = "EXT_CSD_TRIM_MULT",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_MIN_PERF_DDR_R_8_52] = {
+                .name = "EXT_CSD_MIN_PERF_DDR_R_8_52",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_MIN_PERF_DDR_W_8_52] = {
+                .name = "EXT_CSD_MIN_PERF_DDR_W_8_52",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_PWR_CL_200_195] = {
+                .name = "EXT_CSD_PWR_CL_200_195",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_PWR_CL_200_360] = {
+                .name = "EXT_CSD_PWR_CL_200_360",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_PWR_CL_DDR_52_195] = {
+                .name = "EXT_CSD_PWR_CL_DDR_52_195",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_PWR_CL_DDR_52_360] = {
+                .name = "EXT_CSD_PWR_CL_DDR_52_360",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_CACHE_FLUSH_POLICY] = {
+                .name = "EXT_CSD_CACHE_FLUSH_POLICY",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_INI_TIMEOUT_AP] = {
+                .name = "EXT_CSD_INI_TIMEOUT_AP",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_CORRECTLY_PRG_SECTORS_NUM] = {
+                .name = "EXT_CSD_CORRECTLY_PRG_SECTORS_NUM",
+                .access = ACC_R,
+                .width = 4,
+        },
+        [EXT_CSD_BKOPS_STATUS] = {
+                .name = "EXT_CSD_BKOPS_STATUS",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_POWER_OFF_LONG_TIME] = {
+                .name = "EXT_CSD_POWER_OFF_LONG_TIME",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_GENERIC_CMD6_TIME] = {
+                .name = "EXT_CSD_GENERIC_CMD6_TIME",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_CACHE_SIZE] = {
+                .name = "EXT_CSD_CACHE_SIZE",
+                .access = ACC_R,
+                .width = 4,
+        },
+        [EXT_CSD_OPTIMAL_WRITE_SIZE] = {
+                .name = "EXT_CSD_OPTIMAL_WRITE_SIZE",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_OPTIMAL_READ_SIZE] = {
+                .name = "EXT_CSD_OPTIMAL_READ_SIZE",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_PRE_EOL_INFO] = {
+                .name = "EXT_CSD_PRE_EOL_INFO",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_DEVICE_LIFE_TIME_EST_TYP_A] = {
+                .name = "EXT_CSD_DEVICE_LIFE_TIME_EST_TYP_A",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_DEVICE_LIFE_TIME_EST_TYP_B] = {
+                .name = "EXT_CSD_DEVICE_LIFE_TIME_EST_TYP_B",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_NMBR_OF_FW_SCTRS_CRRCTLY_PRGRMD] = {
+                .name = "EXT_CSD_NMBR_OF_FW_SCTRS_CRRCTLY_PRGRMD",
+                .access = ACC_R,
+                .width = 4,
+        },
+        [EXT_CSD_CMDQ_DEPTH] = {
+                .name = "EXT_CSD_CMDQ_DEPTH",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_CMDQ_SUPPORT] = {
+                .name = "EXT_CSD_CMDQ_SUPPORT",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_BARRIER_SUPPORT] = {
+                .name = "EXT_CSD_BARRIER_SUPPORT",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_FFU_ARG] = {
+                .name = "EXT_CSD_FFU_ARG",
+                .access = ACC_R,
+                .width = 4,
+        },
+        [EXT_CSD_OPERATION_CODES_TIMEOUT] = {
+                .name = "EXT_CSD_OPERATION_CODES_TIMEOUT",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_FFU_FEATURES] = {
+                .name = "EXT_CSD_FFU_FEATURES",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_SUPPORTED_MODES] = {
+                .name = "EXT_CSD_SUPPORTED_MODES",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_EXT_SUPPORT] = {
+                .name = "EXT_CSD_EXT_SUPPORT",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_LARGE_UNIT_SIZE_M1] = {
+                .name = "EXT_CSD_LARGE_UNIT_SIZE_M1",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_CONTEXT_CAPABILITIES] = {
+                .name = "EXT_CSD_CONTEXT_CAPABILITIES",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_TAG_RES_SIZE] = {
+                .name = "EXT_CSD_TAG_RES_SIZE",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_TAG_UNIT_SIZE] = {
+                .name = "EXT_CSD_TAG_UNIT_SIZE",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_DATA_TAG_SUPPORT] = {
+                .name = "EXT_CSD_DATA_TAG_SUPPORT",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_MAX_PACKED_WRITES] = {
+                .name = "EXT_CSD_MAX_PACKED_WRITES",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_MAX_PACKED_READS] = {
+                .name = "EXT_CSD_MAX_PACKED_READS",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_BKOPS_SUPPORT] = {
+                .name = "EXT_CSD_BKOPS_SUPPORT",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_HPI_FEATURES] = {
+                .name = "EXT_CSD_HPI_FEATURES",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_S_CMD_SET] = {
+                .name = "EXT_CSD_S_CMD_SET",
+                .access = ACC_R,
+                .width = 1,
+        },
+        [EXT_CSD_EXT_SECURITY_ERR] = {
+                .name = "EXT_CSD_EXT_SECURITY_ERR",
+                .access = ACC_R,
+                .width = 1,
+        },
+};
+
+static int print_field(u8 *reg, int index)
 {
-	int rev;
-	u32 val;
-	u32 tmp;
-	u64 tmp64;
+	u32 val, tmp;
+	u64 tmp64 = 0;
 	char *str = NULL;
+	struct extcsd_reg *ext;
+	int i;
+
+	if (index >= ARRAY_SIZE(extcsd))
+		return 0;
+
+	ext = &extcsd[index];
 
-	rev = reg[EXT_CSD_REV];
+	if (!ext->name)
+		return 0;
+
+	for (i = 0; i < ext->width; i++)
+		tmp64 |= (u64)reg[index + i] << (i * 8);
+
+	if (ext->width > 1)
+		printf("%s[%u-%u]:\n", ext->name, index, index + ext->width - 1);
+	else
+		printf("%s[%u]:\n", ext->name, index);
+	printf("\tValue: 0x%02llx\n", tmp64);
+	printf("\tAccess: %s\n", access_types[ext->access]);
+
+	val = tmp64;
 
 	switch (index) {
-	case EXT_CSD_CMDQ_MODE_EN:
-		print_field_caption(CMDQ_MODE_EN, RWE_P);
-		val = get_field_val(CMDQ_MODE_EN, 0, 0x1);
-		printf("\tCommand queuing is %sabled\n", val ? "en" : "dis");
+	case EXT_CSD_ERASE_GROUP_DEF:
+		val = get_field_val(EXT_CSD_ERASE_GROUP_DEF, 0, 0x1);
+		printf("\t[0] ENABLE: Use %s size definition\n",
+			val ? "high-capacity" : "old");
 		return 1;
 
-	case EXT_CSD_SECURE_REMOVAL_TYPE:
-		print_field_caption(SECURE_REMOVAL_TYPE, RWaR);
-		val = get_field_val(SECURE_REMOVAL_TYPE, 0, 0xF);
+	case EXT_CSD_BOOT_BUS_CONDITIONS:
+		val = get_field_val(EXT_CSD_BOOT_BUS_CONDITIONS, 0, 0x3);
 		switch (val) {
 		case 0x0:
-			str = "erase";
+			str = "x1 (sdr) or x4 (ddr)";
 			break;
 		case 0x1:
-			str = "overwrite, then erase";
+			str = "x4 (sdr/ddr)";
 			break;
 		case 0x2:
-			str = "overwrite, complement, then random";
-			break;
-		case 0x3:
-			str = "vendor defined";
+			str = "x8 (sdr/ddr)";
 			break;
 		}
-		printf("\t[3-0] Supported Secure Removal Type: %s\n", str);
-		val = get_field_val(SECURE_REMOVAL_TYPE, 4, 0xF);
+		printf("\t[1-0] BOOT_BUS_WIDTH: %s bus width in boot operation mode\n",
+			str);
+		val = get_field_val(EXT_CSD_BOOT_BUS_CONDITIONS, 2, 0x1);
+		if (val)
+			str = "Reset bus width to x1, SDR and backward compatible timings after boot operation";
+		else
+			str = "Retain BOOT_BUS_WIDTH and BOOT_MODE values after boot operation";
+		printf("\t[2] RESET_BOOT_BUS_CONDITIONS: %s", str);
+		val = get_field_val(EXT_CSD_BOOT_BUS_CONDITIONS, 3, 0x3);
 		switch (val) {
 		case 0x0:
-			str = "erase";
+			str = "Use SDR + backward compatible timings in boot operation";
 			break;
 		case 0x1:
-			str = "overwrite, then erase";
+			str = "Use SDR + HS timings in boot operation mode";
 			break;
 		case 0x2:
-			str = "overwrite, complement, then random";
-			break;
-		case 0x3:
-			str = "vendor defined";
+			str = "Use DDR in boot operation";
 			break;
 		}
-		printf("\t[7-4] Configure Secure Removal Type: %s\n", str);
-		return 1;
-
-	case EXT_CSD_PRODUCT_ST8_AWARENSS_ENABLEMENT:
-		print_field_caption(PRODUCT_ST8_AWARENSS_ENABLEMENT, RWEaR);
-		val = get_field_val(PRODUCT_ST8_AWARENSS_ENABLEMENT, 0, 0x1);
-		printf("\t[0] Manual mode is %ssupported\n",
-			val ? "" : "not ");
-		val = get_field_val(PRODUCT_ST8_AWARENSS_ENABLEMENT, 1, 0x1);
-		printf("\t[1] Auto mode is %ssupported\n", (val ? "" : "not "));
-		val = get_field_val(PRODUCT_ST8_AWARENSS_ENABLEMENT, 4, 0x1);
-		printf("\t[4] Production State Awareness is %sabled\n",
-			val ? "en" : "dis");
-		val = get_field_val(PRODUCT_ST8_AWARENSS_ENABLEMENT, 5, 0x1);
-		printf("\t[5] Auto mode is %sabled\n", (val ? "en" : "dis"));
-		return 1;
-
-	/*   EXT_CSD_MAX_PRE_LOADING_DATA_SIZE */
-	case 25:
-	case 24:
-	case 23:
-	case 22:
-		print_field_caption_with_offset(MAX_PRE_LOADING_DATA_SIZE,
-			index - EXT_CSD_MAX_PRE_LOADING_DATA_SIZE, R);
-		tmp64 = get_field_val(MAX_PRE_LOADING_DATA_SIZE, 0, 0xFF);
-		tmp64 = tmp64 | get_field_val(
-			MAX_PRE_LOADING_DATA_SIZE + 1, 0, 0xFF) << 8;
-		tmp64 = tmp64 | get_field_val(
-				MAX_PRE_LOADING_DATA_SIZE + 2, 0, 0xFF) << 16;
-		tmp64 = tmp64 | get_field_val(
-				MAX_PRE_LOADING_DATA_SIZE + 3, 0, 0xFF) << 24;
-		tmp = get_field_val(DATA_SECTOR_SIZE, 0, 0x1);
-		if (tmp64 == 0xFFFFFFFF)
-			if (tmp)
-				str = strdup("16 TB");
-			else
-				str = strdup("2 TB");
-		else
-			if (tmp)
-				str = basprintf("%llu B", tmp64 * 4096);
-			else
-				str = basprintf("%llu B", tmp64 * 512);
-		printf("\tMax_Pre_Loading_Data_Size: %s\n", str);
-		free(str);
+		printf("\t[3] BOOT_MODE: %s\n", str);
 		return 1;
 
-	/*   EXT_CSD_PRE_LOADING_DATA_SIZE */
-	case 21:
-	case 20:
-	case 19:
-	case 18:
-		print_field_caption_with_offset(PRE_LOADING_DATA_SIZE,
-			index - EXT_CSD_PRE_LOADING_DATA_SIZE, RWE_P);
-		tmp64 = get_field_val(PRE_LOADING_DATA_SIZE, 0, 0xFF);
-		tmp64 = tmp64 | get_field_val(
-			PRE_LOADING_DATA_SIZE + 1, 0, 0xFF) << 8;
-		tmp64 = tmp64 | get_field_val(
-			PRE_LOADING_DATA_SIZE + 2, 0, 0xFF) << 16;
-		tmp64 = tmp64 | get_field_val(
-			PRE_LOADING_DATA_SIZE + 3, 0, 0xFF) << 24;
-		tmp = get_field_val(DATA_SECTOR_SIZE, 0, 0x1);
-		if (tmp64 == 0xFFFFFFFF)
-			if (tmp)
-				str = strdup("16 TB");
-			else
-				str = strdup("2 TB");
-		else
-			if (tmp)
-				str = basprintf("%llu B", tmp64 * 4096);
-			else
-				str = basprintf("%llu B", tmp64 * 512);
-		printf("\tPre_Loading_Data_Size: %s\n", str);
-		free(str);
+	case EXT_CSD_BOOT_CONFIG_PROT:
+		val = get_field_val(EXT_CSD_BOOT_CONFIG_PROT, 0, 0x1);
+		printf("\t[0] PWR_BOOT_CONFIG_PROT: %u\n", val);
+		val = get_field_val(EXT_CSD_BOOT_CONFIG_PROT, 4, 0x1);
+		printf("\t[4] PERM_BOOT_CONFIG_PROT: %u\n", val);
 		return 1;
 
-	case EXT_CSD_FFU_STATUS:
-		print_field_caption(FFU_STATUS, R);
-		val = get_field_val(FFU_STATUS, 0, 0x13);
+	case EXT_CSD_PARTITION_CONFIG:
+		val = get_field_val(EXT_CSD_PARTITION_CONFIG, 0, 0x7);
 		switch (val) {
 		case 0x0:
-			str = "success";
+			str = "No access to boot partition";
 			break;
-		case 0x10:
-			str = "general error";
+		case 0x1:
+			str = "R/W boot partition 1";
 			break;
-		case 0x11:
-			str = "firmware install error";
+		case 0x2:
+			str = "R/W boot partition 2";
 			break;
-		case 0x12:
-			str = "firmware download error";
+		case 0x3:
+			str = "R/W Replay Protected Memory Block (RPMB)";
+			break;
+		case 0x4:
+			str = "Access to General Purpose partition 1";
+			break;
+		case 0x5:
+			str = "Access to General Purpose partition 2";
+			break;
+		case 0x6:
+			str = "Access to General Purpose partition 3";
+			break;
+		case 0x7:
+			str = "Access to General Purpose partition 4";
 			break;
 		}
-		printf("\t[5-0] Code: %s\n", str);
-		return 1;
-
-	case EXT_CSD_MODE_CONFIG:
-		print_field_caption(MODE_CONFIG, RWE_P);
-		val = get_field_val(MODE_CONFIG, 0, 0xFF);
+		printf("\t[2-0] PARTITION_ACCESS: %s\n", str);
+		val = get_field_val(EXT_CSD_PARTITION_CONFIG, 3, 0x7);
 		switch (val) {
 		case 0x0:
-			str = "normal";
+			str = "Device not boot enabled";
 			break;
 		case 0x1:
-			str = "FFU";
+			str = "Boot partition 1 enabled for boot";
 			break;
-		case 0x10:
-			str = "vendor";
+		case 0x2:
+			str = "Boot partition 2 enabled for boot";
+			break;
+		case 0x7:
+			str = "User area enabled for boot";
 			break;
 		}
-		printf("\t[7-0] Value: %s\n", str);
+		printf("\t[5-3] BOOT_PARTITION_ENABLE: %s\n", str);
+		val = get_field_val(EXT_CSD_PARTITION_CONFIG, 6, 0x1);
+		if (val)
+			str = "Boot acknowledge sent during boot operation Bit";
+		else
+			str = "No boot acknowledge sent";
+		printf("\t[6] BOOT_ACK: %s\n", str);
 		return 1;
 
-	case EXT_CSD_BARRIER_CTRL:
-		print_field_caption(BARRIER_CTRL, RW);
-		val = get_field_val(BARRIER_CTRL, 0, 0x1);
-		printf("\t[0] BARRIER_EN: %s\n", val ? "ON" : "OFF");
+	case EXT_CSD_ERASED_MEM_CONT:
+		val = get_field_val(EXT_CSD_ERASED_MEM_CONT, 0, 0x1);
+		printf("\t[0] Erased Memory Content: %u\n", val);
 		return 1;
 
-	case EXT_CSD_OUT_OF_INTERRUPT_TIME:
-		print_field_caption(OUT_OF_INTERRUPT_TIME, R);
-		val = get_field_val(OUT_OF_INTERRUPT_TIME, 0, 0xFF);
-		val = val * 10;
-		if (val)
-			printf("\tOut-of-interrupt timeout definition: %u ms\n",
-				val);
-		else
-			printf("\tNot Defined\n");
+	case EXT_CSD_BUS_WIDTH:
+		val = get_field_val(EXT_CSD_BUS_WIDTH, 0, 0xF);
+		switch (val) {
+		case 0:
+			str = "1 bit data bus";
+			break;
+		case 1:
+			str = "4 bit data bus";
+			break;
+		case 2:
+			str = "8 bit data bus";
+			break;
+		case 5:
+			str = "4 bit data bus (dual data rate)";
+			break;
+		case 6:
+			str = "8 bit data bus (DDR)";
+			break;
+		}
+		printf("\t[3-0] Bus Mode: %s\n", str);
+		val = get_field_val(EXT_CSD_BUS_WIDTH, 7, 0x1);
+		printf("\t[7] Strobe is provided during Data Out, CRC response%s\n",
+			val ? ", CMD Response" : "");
 		return 1;
 
-	case EXT_CSD_PARTITION_SWITCH_TIME:
-		print_field_caption(PARTITION_SWITCH_TIME, R);
-		val = get_field_val(PARTITION_SWITCH_TIME, 0, 0xFF);
-		val = val * 10;
-		if (val)
-			printf("\tPartition switch timeout definition: %u ms\n",
-				val);
-		else
-			printf("\tNot Defined\n");
+	case EXT_CSD_STROBE_SUPPORT:
+		val = get_field_val(EXT_CSD_STROBE_SUPPORT, 0, 0x1);
+		printf("\t[0] Enhanced Strobe mode: %ssupported\n",
+			val ? "" : "not ");
 		return 1;
 
-	case EXT_CSD_DRIVER_STRENGTH:
-		print_field_caption(DRIVER_STRENGTH, R);
-		val = get_field_val(DRIVER_STRENGTH, 0, 0x1);
-		printf("\t[0] Type 0: %ssupported\n", val ? "" : "not ");
-		val = get_field_val(DRIVER_STRENGTH, 1, 0x1);
-		printf("\t[1] Type 1: %ssupported\n", val ? "" : "not ");
-		val = get_field_val(DRIVER_STRENGTH, 2, 0x1);
-		printf("\t[2] Type 2: %ssupported\n", val ? "" : "not ");
-		val = get_field_val(DRIVER_STRENGTH, 3, 0x1);
-		printf("\t[3] Type 3: %ssupported\n", val ? "" : "not ");
-		val = get_field_val(DRIVER_STRENGTH, 4, 0x1);
-		printf("\t[4] Type 4: %ssupported\n", val ? "" : "not ");
+	case EXT_CSD_HS_TIMING:
+		val = get_field_val(EXT_CSD_HS_TIMING, 0, 0xF);
+		switch (val) {
+		case 0x0:
+			str = "Selecting backwards compatibility interface timing";
+			break;
+		case 0x1:
+			str = "High Speed";
+			break;
+		case 0x2:
+			str = "HS200";
+			break;
+		case 0x3:
+			str = "HS400";
+			break;
+		}
+		printf("\t[3-0] Timing Interface: %s\n", str);
 		return 1;
 
-	case EXT_CSD_CACHE_FLUSH_POLICY:
-		print_field_caption(CACHE_FLUSH_POLICY, R);
-		val = get_field_val(CACHE_FLUSH_POLICY, 0, 0x1);
-		if (val)
-			str = "FIFO policy for cache";
-		else
-			str = "not provided";
-		printf("\t[0] Device flushing: %s", str);
+	case EXT_CSD_POWER_CLASS:
+		val = get_field_val(EXT_CSD_POWER_CLASS, 0, 0xFF);
+		printf("\t[7-0] Device power class code: %#02x\n", val);
 		return 1;
 
-	case EXT_CSD_OPTIMAL_READ_SIZE:
-		print_field_caption(OPTIMAL_READ_SIZE, R);
-		val = get_field_val(OPTIMAL_READ_SIZE, 0, 0xFF);
-		val = val * 4048;
-		printf("\t[7-0] Minimum optimal read unit size: %u\n", val);
+	case EXT_CSD_CMD_SET_REV:
+		val = get_field_val(EXT_CSD_CMD_SET_REV, 0, 0xFF);
+		printf("\t[7-0] Command set revisions: %#02x\n", val);
 		return 1;
 
-	case EXT_CSD_OPTIMAL_WRITE_SIZE:
-		print_field_caption(OPTIMAL_WRITE_SIZE, R);
-		val = get_field_val(OPTIMAL_WRITE_SIZE, 0, 0xFF);
-		val = val * 4048;
-		printf("\t[7-0] Minimum optimal write unit size: %u\n", val);
+	case EXT_CSD_CMD_SET:
+		val = get_field_val(EXT_CSD_CMD_SET, 0, 0xFF);
+		printf("\t[7-0] Command set that is currently active in the Device: %#02x\n",
+			val);
 		return 1;
 
-	case EXT_CSD_PRE_EOL_INFO:
-		print_field_caption(PRE_EOL_INFO, R);
-		val = get_field_val(PRE_EOL_INFO, 0, 0x3);
+	case EXT_CSD_REV:
+		val = get_field_val(EXT_CSD_REV, 0, 0x1F);
 		switch (val) {
+		case 0:
+			str = "1.0 (for MMC v4.0)";
+			break;
 		case 1:
-			str = "normal";
+			str = "1.1 (for MMC v4.1)";
 			break;
 		case 2:
-			str = "warning";
+			str = "1.2 (for MMC v4.2)";
 			break;
 		case 3:
-			str = "urgent";
+			str = "1.3 (for MMC v4.3)";
+			break;
+		case 4:
+			str = "1.4 (Obsolete)";
+			break;
+		case 5:
+			str = "1.5 (for MMC v4.41)";
+			break;
+		case 6:
+			str = "1.6 (for MMC v4.5, v4.51)";
+			break;
+		case 7:
+			str = "1.7 (for MMC v5.0, v5.01)";
+			break;
+		case 8:
+			str = "1.8 (for MMC v5.1)";
 			break;
-		default:
-			str = "Not defined";
 		}
-		printf("\t[1-0] Device life time: %s\n", str);
+		printf("\t[4-0] Extended CSD Revision: Revision %s\n", str);
 		return 1;
 
-	case EXT_CSD_DEVICE_LIFE_TIME_EST_TYP_A:
-		print_field_caption(DEVICE_LIFE_TIME_EST_TYP_A, R);
-		val = get_field_val(DEVICE_LIFE_TIME_EST_TYP_A, 0, 0xFF);
-		val = val * 10;
-		if (val == 0)
-			str = strdup("not defined");
-		else if (val == 0xB)
-			str = strdup("maximum");
-		else
-			str = basprintf("%u%% - %u%%", (val - 10), val);
-		printf("\tDevice life time, type A (estimation): %s\n", str);
-		free(str);
-		return 1;
-
-	case EXT_CSD_DEVICE_LIFE_TIME_EST_TYP_B:
-		print_field_caption(DEVICE_LIFE_TIME_EST_TYP_B, R);
-		val = get_field_val(DEVICE_LIFE_TIME_EST_TYP_B, 0, 0xFF);
-		val = val * 10;
-		if (val == 0)
-			str = strdup("not defined");
-		else if (val == 0xB)
-			str = strdup("maximum");
-		else
-			str = basprintf("%u%% - %u%%", (val - 10), val);
-		printf("\tDevice life time, type B (estimation): %s\n", str);
-		free(str);
-		return 1;
-
-	/*   EXT_CSD_NMBR_OF_FW_SCTRS_CRRCTLY_PRGRMD */
-	case 305:
-	case 304:
-	case 303:
-	case 302:
-		print_field_caption_with_offset(NMBR_OF_FW_SCTRS_CRRCTLY_PRGRMD,
-			index - EXT_CSD_NMBR_OF_FW_SCTRS_CRRCTLY_PRGRMD, R);
-		return 1;
-
-	case EXT_CSD_CMDQ_DEPTH:
-		print_field_caption(CMDQ_DEPTH, R);
-		val = get_field_val(CMDQ_DEPTH, 0, 0xF);
-		++val;
-		printf("\t[3-0] Queue Depth: %u", val);
-		return 1;
-
-	case EXT_CSD_CMDQ_SUPPORT:
-		print_field_caption(CMDQ_SUPPORT, R);
-		val = get_field_val(CMDQ_SUPPORT, 0, 0x1);
-		printf("\t[0] Command queuing: %ssupported\n",
-			val ? "" : "not ");
-		return 1;
-
-	case EXT_CSD_BARRIER_SUPPORT:
-		print_field_caption(BARRIER_SUPPORT, R);
-		val = get_field_val(BARRIER_SUPPORT, 0, 0x1);
-		printf("\t[0] Barrier command: %ssupported\n",
-			val ? "" : "not ");
-		return 1;
-
-	/*   EXT_CSD_FFU_ARG */
-	case 490:
-	case 489:
-	case 488:
-	case 487:
-		print_field_caption_with_offset(FFU_ARG,
-			index - EXT_CSD_FFU_ARG, R);
-		return 1;
-
-	case EXT_CSD_OPERATION_CODES_TIMEOUT:
-		print_field_caption(OPERATION_CODES_TIMEOUT, R);
-		val = get_field_val(OPERATION_CODES_TIMEOUT, 0, 0xFF);
-		printf("\t[7-0] Timeout Values: %#02x\n", val);
-		return 1;
-
-	case EXT_CSD_FFU_FEATURES:
-		print_field_caption(FFU_FEATURES, R);
-		val = get_field_val(FFU_FEATURES, 0, 0x1);
-		printf("\t[0] NUMBER_OF_FW_SECTORS_CORRECTLY_PROGRAMMED: "
-			"%ssupported\n", val ? "" : " not");
-		return 1;
-
-	case EXT_CSD_SUPPORTED_MODES:
-		print_field_caption(SUPPORTED_MODES, R);
-		val = get_field_val(SUPPORTED_MODES, 0, 0x1);
-		printf("\t[0] FFU: %ssupported\n", val ? "" : "not ");
-		val = get_field_val(SUPPORTED_MODES, 1, 0x1);
-		printf("\t[1] VSM: %ssupported\n", val ? "" : "not ");
-		return 1;
-	}
-	return 0;
-}
-static int print_field_ge_v6(u8 *reg, int index)
-{
-	int rev;
-	u32 val;
-	u32 tmp;
-	char *str = NULL;
-
-	rev = reg[EXT_CSD_REV];
-
-	switch (index) {
-	case EXT_CSD_CACHE_CTRL:
-		print_field_caption(CACHE_CTRL, RWE_P);
-		val = get_field_val(CACHE_CTRL, 0, 0x1);
-		printf("\t[0] CACHE_EN: %s\n", val ? "ON" : "OFF");
-		return 1;
-
-	case EXT_CSD_POWER_OFF_NOTIFICATION:
-		print_field_caption(POWER_OFF_NOTIFICATION, RWE_P);
-		val = get_field_val(POWER_OFF_NOTIFICATION, 0, 0x7);
+	case EXT_CSD_CSD_STRUCTURE:
+		val = get_field_val(EXT_CSD_CSD_STRUCTURE, 0, 0x3);
 		switch (val) {
 		case 0x0:
-			printf("\t[2-0] NO_POWER_NOTIFICATION\n");
+			str = "0";
 			break;
 		case 0x1:
-			printf("\t[2-0] POWERED_ON\n");
+			str = "1";
 			break;
 		case 0x2:
-			printf("\t[2-0] POWER_OFF_SHORT\n");
-			break;
-		case 0x3:
-			printf("\t[2-0] POWER_OFF_LONG\n");
-			break;
-		case 0x4:
-			printf("\t[2-0] SLEEP_NOTIFICATION\n");
+			str = "2";
 			break;
 		}
+		printf("\t[1-0] CSD structure version: CSD version No. 1.%s\n",
+			str);
 		return 1;
 
-	case EXT_CSD_PACKED_FAILURE_INDEX:
-		print_field_caption(PACKED_FAILURE_INDEX, R);
-		val = get_field_val(PACKED_FAILURE_INDEX, 0, 0xFF);
-		printf("\t[7-0] PACKED_FAILURE_INDEX: %u\n", val);
-		return 1;
-
-	case EXT_CSD_PACKED_COMMAND_STATUS:
-		print_field_caption(PACKED_COMMAND_STATUS, R);
-		val = get_field_val(PACKED_COMMAND_STATUS, 0, 0x1);
-		printf("\t[0] Error: %u\n", val);
-		val = get_field_val(PACKED_COMMAND_STATUS, 1, 0x1);
-		printf("\t[1] Indexed Error: %u\n", val);
-		return 1;
-
-	/* EXT_CSD_CONTEXT_CONF */
-	case 51:
-	case 50:
-	case 49:
-	case 48:
-	case 47:
-	case 46:
-	case 45:
-	case 44:
-	case 43:
-	case 42:
-	case 41:
-	case 40:
-	case 39:
-	case 38:
-	case 37:
-		print_field_caption_with_offset(CONTEXT_CONF,
-			index - EXT_CSD_CONTEXT_CONF, RWE_P);
-		val = get_field_val_with_index(index, 0, 0x3);
+	case EXT_CSD_DEVICE_TYPE:
+		val = get_field_val(EXT_CSD_DEVICE_TYPE, 0, 0xFF);
 		switch (val) {
-		case 0x0:
-			str = "closed, not active";
-			break;
 		case 0x1:
-			str = "configured and activated as write-only";
+			str = "HS eMMC @26MHz - at rated device voltage(s)";
 			break;
 		case 0x2:
-			str = "configured and activated as read-only";
+			str = "HS eMMC @52MHz - at rated device voltage(s)";
 			break;
-		case 0x3:
-			str = "configured and activated as read/write";
+		case 0x4:
+			str = "HS Dual Data Rate eMMC @52MHz 1.8V or 3VI/O";
 			break;
-		}
-		printf("\t[1-0] Activation and direction: context is %s\n",
-			str);
-		val = get_field_val_with_index(index, 2, 0x1);
-		if (val)
-			str = "follows rules";
-		else
-			str = "doesn't follow rules";
-		printf("\t[2]   Large Unit context: %s\n", str);
-		val = get_field_val_with_index(index, 3, 0x3);
-		printf("\t[5-3] Large Unit multiplier: %u\n", val);
-		val = get_field_val_with_index(index, 0, 0x3);
-		switch (val) {
-		case 0x0:
-			str = "MODE0";
+		case 0x8:
+			str = "HS Dual Data Rate eMMC @52MHz 1.2VI/O";
 			break;
-		case 0x1:
-			str = "MODE1";
+		case 0x10:
+			str = "HS200 Single Data Rate eMMC @200MHz 1.8VI/O";
 			break;
-		case 0x2:
-			str = "MODE2";
+		case 0x20:
+			str = "HS200 Single Data Rate eMMC @200MHz 1.2VI/O";
 			break;
 		}
-		printf("\t[7-6] Reliability mode: %s\n", str);
+		printf("\t%s\n", str);
 		return 1;
 
-	/*   EXT_CSD_EXT_PARTITIONS_ATTRIBUTE */
-	case 52:
-		print_field_caption_with_offset(
-			EXT_PARTITIONS_ATTRIBUTE,
-			index - EXT_CSD_EXT_PARTITIONS_ATTRIBUTE, RW);
-		printf("\t[3-0] EXT_1\n");
-		printf("\t[7-4] EXT_2\n");
+	/* TODO: missing JEDEC documention */
+	case EXT_CSD_PWR_CL_52_195:
+		val = get_field_val(EXT_CSD_PWR_CL_52_195, 0, 0xFF);
+		printf("\tPower class for 52 MHz at 1.95 V 1 R: %#02x\n", val);
 		return 1;
-	case 53:
-		print_field_caption_with_offset(
-			EXT_PARTITIONS_ATTRIBUTE,
-			index - EXT_CSD_EXT_PARTITIONS_ATTRIBUTE, RW);
-		printf("\t[11-8]  EXT_3\n");
-		printf("\t[15-12] EXT_4\n");
+
+	case EXT_CSD_PWR_CL_26_195:
+		val = get_field_val(EXT_CSD_PWR_CL_26_195, 0, 0xFF);
+		printf("\tPower class for 26 MHz at 1.95 V 1 R: %#02x\n", val);
 		return 1;
 
-	/*   EXT_CSD_EXCEPTION_EVENTS_STATUS */
-	case 54:
-		print_field_caption_with_offset(
-			EXCEPTION_EVENTS_STATUS,
-			index - EXT_CSD_EXCEPTION_EVENTS_STATUS, R);
-		val = get_field_val(EXCEPTION_EVENTS_STATUS, 0, 0x1);
-		printf("\t[0] URGENT_BKOPS: %i\n", val);
-		val = get_field_val(EXCEPTION_EVENTS_STATUS, 1, 0x1);
-		printf("\t[1] DYNCAP_NEEDED: %i\n", val);
-		val = get_field_val(EXCEPTION_EVENTS_STATUS, 2, 0x1);
-		printf("\t[2] SYSPOOL_EXHAUSTED: %i\n", val);
-		val = get_field_val(EXCEPTION_EVENTS_STATUS, 3, 0x1);
-		printf("\t[3] PACKED_FAILURE: %i\n", val);
-		val = get_field_val(EXCEPTION_EVENTS_STATUS, 4, 0x1);
-		printf("\t[4] EXTENDED_SECURITY_FAILURE: %i\n", val);
+	case EXT_CSD_PWR_CL_52_360:
+		val = get_field_val(EXT_CSD_PWR_CL_52_360, 0, 0xFF);
+		printf("\tPower class for 52 MHz at 3.6 V 1 R: %#02x\n", val);
 		return 1;
-	case 55:
-		print_field_caption_with_offset(
-			EXCEPTION_EVENTS_STATUS,
-			index - EXT_CSD_EXCEPTION_EVENTS_STATUS, R);
+
+	case EXT_CSD_PWR_CL_26_360:
+		val = get_field_val(EXT_CSD_PWR_CL_26_360, 0, 0xFF);
+		printf("\tPower class for 26 MHz at 3.6 V 1 R: %#02x\n", val);
 		return 1;
 
-	/*   EXT_CSD_EXCEPTION_EVENTS_CTRL */
-	case 56:
-		print_field_caption_with_offset(EXCEPTION_EVENTS_CTRL,
-			index - EXT_CSD_EXCEPTION_EVENTS_CTRL, RWE_P);
-		val = get_field_val(EXCEPTION_EVENTS_CTRL, 1, 0x1);
-		printf("\t[1] DYNCAP_EVENT_EN: %i\n", val);
-		val = get_field_val(EXCEPTION_EVENTS_CTRL, 2, 0x1);
-		printf("\t[2] SYSPOOL_EVENT_EN: %i\n", val);
-		val = get_field_val(EXCEPTION_EVENTS_CTRL, 3, 0x1);
-		printf("\t[3] PACKED_EVENT_EN: %i\n", val);
-		val = get_field_val(EXCEPTION_EVENTS_CTRL, 4, 0x1);
-		printf("\t[4] EXTENDED_SECURITY_EN: %i\n", val);
+	case EXT_CSD_MIN_PERF_R_4_26:
+		val = get_field_val(EXT_CSD_MIN_PERF_R_4_26, 0, 0xFF);
+		printf("\tMinimum Read Performance for 4bit at 26 MHz: %#02x\n",
+			val);
 		return 1;
-	case 57:
-		print_field_caption(EXCEPTION_EVENTS_CTRL, RWE_P);
-		printf("\tR/W/E_P\n");
-		printf("\tValue: %#02x\n", reg[index]);
+
+	case EXT_CSD_MIN_PERF_W_4_26:
+		val = get_field_val(EXT_CSD_MIN_PERF_W_4_26, 0, 0xFF);
+		printf("\tMinimum Write Performance for 4bit at 26 MHz: %#02x\n",
+			val);
 		return 1;
 
-	case EXT_CSD_CLASS_6_CTRL:
-		print_field_caption(CLASS_6_CTRL, RWE_P);
-		val = get_field_val(CLASS_6_CTRL, 0, 0x1);
+	case EXT_CSD_MIN_PERF_R_8_26_4_52:
+		val = get_field_val(EXT_CSD_MIN_PERF_R_8_26_4_52, 0, 0xFF);
+		printf("\tMinimum Read Performance for 8bit at 26 MHz, for 4bit at 52MHz: %#02x\n",
+			val);
+		return 1;
+
+	case EXT_CSD_MIN_PERF_W_8_26_4_52:
+		val = get_field_val(EXT_CSD_MIN_PERF_W_8_26_4_52, 0, 0xFF);
+		printf("\tMinimum Write Performance for 8bit at 26 MHz, for 4bit at 52MHz: %#02x\n",
+			val);
+		return 1;
+
+	case EXT_CSD_MIN_PERF_R_8_52:
+		val = get_field_val(EXT_CSD_MIN_PERF_R_8_52, 0, 0xFF);
+		printf("\tMinimum Read Performance for 8bit at 52 MHz: %#02x\n",
+			val);
+		return 1;
+
+	case EXT_CSD_MIN_PERF_W_8_52:
+		val = get_field_val(EXT_CSD_MIN_PERF_W_8_52, 0, 0xFF);
+		printf("\tMinimum Write Performance for 8bit at52 MHz: %#02x\n",
+			val);
+		return 1;
+
+	case EXT_CSD_SECURE_WP_INFO:
+		val = get_field_val(EXT_CSD_SECURE_WP_INFO, 0, 0x1);
+		printf("\t[0] SECURE_WP_SUPPORT: %ssupported\n",
+			val ? "" : " not");
+		val = get_field_val(EXT_CSD_SECURE_WP_INFO, 1, 0x1);
+		printf("\t[1] SECURE_WP_EN_STATUS: %s Write Protection mode\n",
+			val ? "Secure" : "Legacy");
+		return 1;
+
+	case EXT_CSD_SEC_COUNT:
+		tmp64 = val * 512;
+		printf("\tDevice density: %llu B\n", tmp64);
+		return 1;
+
+	case EXT_CSD_SLEEP_NOTIFICATION_TIME:
+		val = get_field_val(EXT_CSD_SLEEP_NOTIFICATION_TIME, 0, 0xFF);
+		val = 100 << val;
 		if (val)
-			printf("\t[0] Dynamic Capacity\n");
+			str = basprintf("Sleep Notification timeout values: %u us",
+				       val);
 		else
-			printf("\t[0] Write Protect\n");
+			str = strdup("Not defined");
+		printf("\t[7-0] %s\n", str);
+		free(str);
 		return 1;
 
-	case EXT_CSD_INI_TIMEOUT_EMU:
-		print_field_caption(INI_TIMEOUT_EMU, R);
-		val = get_field_val(INI_TIMEOUT_EMU, 0, 0xFF);
-		val = val * 100;
-		printf("\tInitialization Time out value: %u ms\n", val);
+	case EXT_CSD_S_A_TIMEOUT:
+		val = get_field_val(EXT_CSD_S_A_TIMEOUT, 0, 0xFF);
+		val = 100 << val;
+		if (val)
+			str = basprintf("Sleep/awake timeout values: %u ns", val);
+		else
+			str = strdup("Not defined");
+		printf("\t[7-0] %s\n", str);
+		free(str);
 		return 1;
 
-	case EXT_CSD_DATA_SECTOR_SIZE:
-		print_field_caption(DATA_SECTOR_SIZE, R);
-		val = get_field_val(DATA_SECTOR_SIZE, 0, 0x1);
+	case EXT_CSD_PRODUCTION_ST8_AWARENSS_TIMEOUT:
+		val = get_field_val(EXT_CSD_PRODUCTION_ST8_AWARENSS_TIMEOUT, 0, 0xFF);
+		val = 100 << val;
 		if (val)
-			str = "4 KB";
+			str = basprintf(
+			"Production State Awareness timeout definition: %u us",
+				val);
 		else
-			str = "512 B";
-		printf("\t[0] Data sector size is %s\n", str);
+			str = strdup("Not defined");
+		printf("\t[7-0] %s\n", str);
+		free(str);
 		return 1;
 
-	case EXT_CSD_USE_NATIVE_SECTOR:
-		print_field_caption(USE_NATIVE_SECTOR, RW);
-		val = get_field_val(USE_NATIVE_SECTOR, 0, 0x1);
+	case EXT_CSD_S_C_VCCQ:
+		val = get_field_val(EXT_CSD_S_C_VCCQ, 0, 0xF);
+		val = 1 << val;
 		if (val)
-			printf("\t[0] Device sector size is larger than 512 B\n");
+			str = basprintf("S_C_VCCQ Sleep Current: %u uA", val);
 		else
-			printf("\t[0] Device sector size is 512 B (emulated or native)\n");
+			str = strdup("Not defined");
+		printf("\t[3-0] %s\n", str);
+		free(str);
 		return 1;
 
-	case EXT_CSD_NATIVE_SECTOR_SIZE:
-		print_field_caption(NATIVE_SECTOR_SIZE, R);
-		val = get_field_val(NATIVE_SECTOR_SIZE, 0, 0x1);
+	case EXT_CSD_S_C_VCC:
+		val = get_field_val(EXT_CSD_S_C_VCC, 0, 0xFF);
+		val = 1 << val;
 		if (val)
-			str = "4 KB";
+			str = basprintf("S_C_VCC Sleep Current: %u uA", val);
 		else
-			str = "512 B";
-		printf("\t[0] Native sector size is %s\n", str);
+			str = strdup("Not defined");
+		printf("\t[3-0] %s\n", str);
+		free(str);
 		return 1;
 
-	case EXT_CSD_PROGRAM_CID_CSD_DDR_SUPPORT:
-		print_field_caption(PROGRAM_CID_CSD_DDR_SUPPORT, R);
-		val = get_field_val(PROGRAM_CID_CSD_DDR_SUPPORT, 0, 0x1);
+	case EXT_CSD_HC_WP_GRP_SIZE:
+		val = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
 		if (val)
-			str = "single data rate and dual data rate";
+			str = basprintf("Write protect group size: %u", val);
 		else
-			str = "single data rate";
-		printf("\t[0] PROGRAM_CID_CSD_DDR_SUPPORT: CMD26 and CMD27 %s mode\n",
-		       str);
+			str = strdup("No support");
+		printf("\t[7-0] %s\n", str);
+		free(str);
 		return 1;
 
-	case EXT_CSD_PERIODIC_WAKEUP:
-		print_field_caption(PERIODIC_WAKEUP, RWE);
-		val = get_field_val(PERIODIC_WAKEUP, 0, 0x1F);
-		printf("\t[5-0] WAKEUP_PERIOD: %u\n", val);
-		val = get_field_val(PERIODIC_WAKEUP, 5, 0x7);
-		switch (val) {
-		case 0x0:
-			str = "infinity";
-			break;
-		case 0x1:
-			str = "months";
-			break;
-		case 0x2:
-			str = "weeks";
-			break;
-		case 0x3:
-			str = "days";
-			break;
-		case 0x4:
-			str = "hours";
-			break;
-		case 0x5:
-			str = "minutes";
-			break;
-		}
-		printf("\t[7-5] WAKEUP_UNIT: %s\n", str);
-		return 1;
-
-	case EXT_CSD_PWR_CL_200_195:
-		print_field_caption(PWR_CL_200_195, R);
-		val = get_field_val(PWR_CL_200_195, 0, 0xFF);
-		printf("\tPower class for 200MHz, at 1.95V %#02x\n", val);
-		return 1;
-
-	case EXT_CSD_PWR_CL_200_360:
-		print_field_caption(PWR_CL_200_360, R);
-		val = get_field_val(PWR_CL_200_360, 0, 0xFF);
-		printf("\tPower class for 200MHz, at 3.6V %#02x\n", val);
+	case EXT_CSD_REL_WR_SEC_C:
+		val = get_field_val(EXT_CSD_REL_WR_SEC_C, 0, 0xFF);
+		printf("\t[7-0] Reliable Write Sector Count: %u\n", val);
 		return 1;
 
-	case EXT_CSD_POWER_OFF_LONG_TIME:
-		print_field_caption(POWER_OFF_LONG_TIME, R);
-		val = get_field_val(POWER_OFF_LONG_TIME, 0, 0xFF);
-		val = val * 10;
-		printf("\tGeneric Switch Timeout Definition: %u ms\n", val);
+	case EXT_CSD_ERASE_TIMEOUT_MULT:
+		val = get_field_val(EXT_CSD_ERASE_TIMEOUT_MULT, 0, 0xFF);
+		val = val * 300;
+		if (val)
+			str = basprintf("Erase timeout values: %u", val);
+		else
+			str = strdup("No support");
+		printf("\t[7-0] %s\n", str);
+		free(str);
 		return 1;
 
-	case EXT_CSD_GENERIC_CMD6_TIME:
-		print_field_caption(GENERIC_CMD6_TIME, R);
-		val = get_field_val(GENERIC_CMD6_TIME, 0, 0xFF);
-		val = val * 10;
-		printf("\tGeneric Switch Timeout Definition: %u ms\n", val);
+	case EXT_CSD_HC_ERASE_GRP_SIZE:
+		val = get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
+		val = val * 524288;
+		if (val)
+			str = basprintf("Erase-unit size: %u", val);
+		else
+			str = strdup("No support");
+		printf("\t[7-0] %s\n", str);
+		free(str);
 		return 1;
 
-	/*   EXT_CSD_CACHE_SIZE */
-	case 252:
-	case 251:
-	case 250:
-	case 249:
-		print_field_caption_with_offset(CACHE_SIZE,
-			index - EXT_CSD_CACHE_SIZE, R);
-		val = get_field_val(CACHE_SIZE, 0, 0xFF);
-		val = val | get_field_val(CACHE_SIZE + 1, 0, 0xFF) << 8;
-		val = val | get_field_val(CACHE_SIZE + 2, 0, 0xFF) << 16;
-		val = val | get_field_val(CACHE_SIZE + 3, 0, 0xFF) << 24;
-		printf("\tCache Size: %u KiB\n", val);
+	case EXT_CSD_ACC_SIZE:
+		val = get_field_val(EXT_CSD_ACC_SIZE, 0, 0xF);
+		val = val * 512;
+		if (val)
+			str = basprintf("Superpage size: %u", val);
+		else
+			str = strdup("Not defined");
+		printf("\t[3-0] %s\n", str);
+		free(str);
 		return 1;
 
-	case EXT_CSD_EXT_SUPPORT:
-		print_field_caption(EXT_SUPPORT, R);
-		val = get_field_val(EXT_SUPPORT, 0, 0x1);
-		printf("\t[0] System code: %ssupported\n", val ? "" : "not ");
-		val = get_field_val(EXT_SUPPORT, 1, 0x1);
-		printf("\t[1] Non-persistent: %ssupported\n",
-			val ? "" : "not ");
+	case EXT_CSD_BOOT_SIZE_MULT:
+		val = get_field_val(EXT_CSD_BOOT_SIZE_MULT, 0, 0xFF);
+		val = val * 131072;
+		printf("\tBoot partition size: %u\n", val);
 		return 1;
 
-	case EXT_CSD_LARGE_UNIT_SIZE_M1:
-		print_field_caption(LARGE_UNIT_SIZE_M1, R);
-		val = get_field_val(LARGE_UNIT_SIZE_M1, 0, 0xFF);
-		printf("\tLarge Unit size: %#02x\n", val);
+	case EXT_CSD_BOOT_INFO:
+		val = get_field_val(EXT_CSD_BOOT_INFO, 0, 0x1);
+		printf("\t[0] ALT_BOOT_MODE: %ssupported\n", val ? "" : "not ");
+		val = get_field_val(EXT_CSD_BOOT_INFO, 1, 0x1);
+		printf("\t[1] DDR_BOOT_MODE: %ssupported\n", val ? "" : "not ");
+		val = get_field_val(EXT_CSD_BOOT_INFO, 2, 0x1);
+		printf("\t[2] HS_BOOT_MODE: %ssupported\n", val ? "" : "not ");
 		return 1;
 
-	case EXT_CSD_CONTEXT_CAPABILITIES:
-		print_field_caption(CONTEXT_CAPABILITIES, R);
-		val = get_field_val(CONTEXT_CAPABILITIES, 0, 0xF);
-		printf("\t[3-0] MAX_CONTEXT_ID: %#02x\n", val);
-		val = get_field_val(CONTEXT_CAPABILITIES, 4, 0x7);
-		printf("\t[6-4] LARGE_UNIT_MAX_MULTIPLIER_M1: %#02x\n", val);
+	case EXT_CSD_BKOPS_SUPPORT:
+		val = get_field_val(EXT_CSD_BKOPS_SUPPORT, 0, 0x1);
+		printf("\t[0] SUPPORTED: %u\n", val);
 		return 1;
 
-	case EXT_CSD_TAG_RES_SIZE:
-		print_field_caption(TAG_RES_SIZE, R);
-		val = get_field_val(TAG_RES_SIZE, 0, 0xFF);
-		printf("\tSystem Data Tag Resources Size: %#02x\n", val);
+	case EXT_CSD_HPI_FEATURES:
+		val = get_field_val(EXT_CSD_HPI_FEATURES, 0, 0x1);
+		printf("\t[0] HPI_SUPPORTED: %u\n", val);
+		val = get_field_val(EXT_CSD_HPI_FEATURES, 1, 0x1);
+		printf("\t[1] HPI_FEATURES: implementation based on CMD1%s\n",
+			val ? "2" : "3");
 		return 1;
 
-	case EXT_CSD_TAG_UNIT_SIZE:
-		print_field_caption(TAG_UNIT_SIZE, R);
-		tmp = get_field_val(NATIVE_SECTOR_SIZE, 0, 0x1);
-		tmp = (tmp == 0) ? 512 : 4048;
-		val = 2 << (1 - get_field_val(TAG_UNIT_SIZE, 0, 0xFF));
-		val = val * tmp;
-		printf("\tTag Unit Size: %u\n", val);
+	case EXT_CSD_S_CMD_SET:
+		val = get_field_val(EXT_CSD_S_CMD_SET, 0, 0xFF);
+		printf("\t[7-0] Command Set: %#02x\n", val);
 		return 1;
 
-	case EXT_CSD_DATA_TAG_SUPPORT:
-		print_field_caption(DATA_TAG_SUPPORT, R);
-		val = get_field_val(DATA_TAG_SUPPORT, 0, 0x1);
-		printf("\t[0] SYSTEM_DATA_TAG_SUPPORT: %u\n", val);
+	case EXT_CSD_EXT_SECURITY_ERR:
+		val = get_field_val(EXT_CSD_EXT_SECURITY_ERR, 0, 0x1);
+		printf("\t[0] SEC_INVALID_COMMAND_PARAMETERS: %u\n", val);
+		val = get_field_val(EXT_CSD_EXT_SECURITY_ERR, 1, 0x1);
+		printf("\t[1] ACCESS_DENIED: %u\n", val);
 		return 1;
 
-	case EXT_CSD_MAX_PACKED_WRITES:
-		print_field_caption(MAX_PACKED_WRITES, R);
-		val = get_field_val(MAX_PACKED_WRITES, 0, 0xFF);
-		printf("\tmaximum number of commands in write command: %u\n",
-			val);
+	case EXT_CSD_SEC_TRIM_MULT:
+		val = get_field_val(EXT_CSD_SEC_TRIM_MULT, 0, 0xFF);
+		val = val * 300 * get_field_val(EXT_CSD_ERASE_TIMEOUT_MULT, 0,
+			0xFF);
+		printf("\tSecure Trim time-out value: %u\n", val);
 		return 1;
 
-	case EXT_CSD_MAX_PACKED_READS:
-		print_field_caption(MAX_PACKED_READS, R);
-		val = get_field_val(MAX_PACKED_READS, 0, 0xFF);
-		printf("\tmaximum number of commands in read command: %u\n",
-			val);
+	case EXT_CSD_SEC_ERASE_MULT:
+		val = get_field_val(EXT_CSD_SEC_ERASE_MULT, 0, 0xFF);
+		val = val * 300 * get_field_val(EXT_CSD_ERASE_TIMEOUT_MULT, 0,
+			0xFF);
+		printf("\tSecure Erase time-out value: %u\n", val);
 		return 1;
-	}
-	return 0;
-}
-static int print_field_ge_v5(u8 *reg, int index)
-{
-	int rev;
-	u32 val;
-	u32 tmp;
-	u64 tmp64;
-	char *str = NULL;
 
-	rev = reg[EXT_CSD_REV];
-
-	switch (index) {
 	case EXT_CSD_TCASE_SUPPORT:
-		print_field_caption(TCASE_SUPPORT, WE_P);
-		val = get_field_val(TCASE_SUPPORT, 0, 0xFF);
+		val = get_field_val(EXT_CSD_TCASE_SUPPORT, 0, 0xFF);
 		printf("\t[7-0] TCASE_SUPPORT: %#02x\n", val);
 		return 1;
 
 	case EXT_CSD_PRODUCTION_STATE_AWARENESS:
-		print_field_caption(PRODUCTION_STATE_AWARENESS, RWE);
-		val = get_field_val(PRODUCTION_STATE_AWARENESS, 0, 0xFF);
+		val = get_field_val(EXT_CSD_PRODUCTION_STATE_AWARENESS, 0, 0xFF);
 		switch (val) {
 		case 0x0:
 			str = "NORMAL";
@@ -795,138 +1342,87 @@ static int print_field_ge_v5(u8 *reg, int index)
 		return 1;
 
 	case EXT_CSD_SEC_BAD_BLK_MGMNT:
-		print_field_caption(SEC_BAD_BLK_MGMNT, RW);
-		val = get_field_val(SEC_BAD_BLK_MGMNT, 0, 0x1);
+		val = get_field_val(EXT_CSD_SEC_BAD_BLK_MGMNT, 0, 0x1);
 		printf("\t[0] SEC_BAD_BLK: %sabled\n", val ? "en" : "dis");
 		return 1;
 
-	/*   EXT_CSD_ENH_START_ADDR */
-	case 139:
-	case 138:
-	case 137:
-	case 136:
-		print_field_caption_with_offset(ENH_START_ADDR,
-			index - EXT_CSD_ENH_START_ADDR, RW);
-		val = get_field_val(ENH_START_ADDR, 0, 0xFF);
-		val = val | get_field_val(ENH_START_ADDR + 1, 0, 0xFF) << 8;
-		val = val | get_field_val(ENH_START_ADDR + 2, 0, 0xFF) << 16;
-		val = val | get_field_val(ENH_START_ADDR + 3, 0, 0xFF) << 24;
+	case EXT_CSD_ENH_START_ADDR:
 		printf("\tEnhanced User Data Start Address: 0x%x\n", val);
 		return 1;
 
-	/*   EXT_CSD_ENH_SIZE_MULT */
-	case 142:
-	case 141:
-	case 140:
-		print_field_caption_with_offset(ENH_SIZE_MULT,
-			index - EXT_CSD_ENH_SIZE_MULT, RW);
-		val = get_field_val(ENH_SIZE_MULT, 0, 0xFF);
-		val = val | get_field_val(ENH_SIZE_MULT + 1, 0, 0xFF) << 8;
-		val = val | get_field_val(ENH_SIZE_MULT + 2, 0, 0xFF) << 16;
-		tmp = get_field_val(HC_WP_GRP_SIZE, 0, 0xFF);
-		tmp = tmp + get_field_val(HC_ERASE_GRP_SIZE, 0, 0xFF);
+	case EXT_CSD_ENH_SIZE_MULT:
+		tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
+		tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
 		tmp64 = val * tmp * 524288;
 		printf("\tEnhanced User Data Area %i Size: %llu B\n",
 				index - EXT_CSD_ENH_SIZE_MULT, tmp64);
 		return 1;
 
-	/*   EXT_CSD_GP_SIZE_MULT_GPX */
-	case 154:
-	case 153:
-	case 152:
-		tmp = index - EXT_CSD_GP_SIZE_MULT;
-		print_field_caption_with_offset(GP_SIZE_MULT, tmp, RW);
-		val = get_field_val_with_index(tmp, 0, 0xFF);
-		val = val | get_field_val_with_index(tmp + 1, 0, 0xFF) << 8;
-		val = val | get_field_val_with_index(tmp + 2, 0, 0xFF) << 16;
-		tmp = get_field_val(HC_WP_GRP_SIZE, 0, 0xFF);
-		tmp = tmp + get_field_val(HC_ERASE_GRP_SIZE, 0, 0xFF);
+	case EXT_CSD_GP_SIZE_MULT3:
+		tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
+		tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
 		tmp64 = val * tmp * 524288;
-		printf("\tGeneral_Purpose_Partition_%i Size: %llu B\n",
-				index - EXT_CSD_GP_SIZE_MULT, tmp64);
+		printf("\tGeneral_Purpose_Partition_3 Size: %llu B\n", tmp64);
 		return 1;
-	case 151:
-	case 150:
-	case 149:
-		tmp = index - EXT_CSD_GP_SIZE_MULT;
-		print_field_caption_with_offset(GP_SIZE_MULT, tmp, RW);
-		val = get_field_val_with_index(tmp, 0, 0xFF);
-		val = val | get_field_val_with_index(tmp + 1, 0, 0xFF) << 8;
-		val = val | get_field_val_with_index(tmp + 2, 0, 0xFF) << 16;
-		tmp = get_field_val(HC_WP_GRP_SIZE, 0, 0xFF);
-		tmp = tmp + get_field_val(HC_ERASE_GRP_SIZE, 0, 0xFF);
+
+	case EXT_CSD_GP_SIZE_MULT2:
+		tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
+		tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
 		tmp64 = val * tmp * 524288;
-		printf("\tGeneral_Purpose_Partition_%i Size: %llu B\n",
-				index - EXT_CSD_GP_SIZE_MULT, tmp64);
+		printf("\tGeneral_Purpose_Partition_2 Size: %llu B\n", tmp64);
 		return 1;
-	case 148:
-	case 147:
-	case 146:
-		tmp = index - EXT_CSD_GP_SIZE_MULT;
-		print_field_caption_with_offset(GP_SIZE_MULT, tmp, RW);
-		val = get_field_val_with_index(tmp, 0, 0xFF);
-		val = val | get_field_val_with_index(tmp + 1, 0, 0xFF) << 8;
-		val = val | get_field_val_with_index(tmp + 2, 0, 0xFF) << 16;
-		tmp = get_field_val(HC_WP_GRP_SIZE, 0, 0xFF);
-		tmp = tmp + get_field_val(HC_ERASE_GRP_SIZE, 0, 0xFF);
+
+	case EXT_CSD_GP_SIZE_MULT1:
+		tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
+		tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
 		tmp64 = val * tmp * 524288;
-		printf("\tGeneral_Purpose_Partition_%i Size: %llu B\n",
-				index - EXT_CSD_GP_SIZE_MULT, tmp64);
+		printf("\tGeneral_Purpose_Partition_1 Size: %llu B\n", tmp64);
 		return 1;
-	case 145:
-	case 144:
-	case 143:
-		tmp = index - EXT_CSD_GP_SIZE_MULT;
-		print_field_caption_with_offset(GP_SIZE_MULT, tmp, RW);
-		val = get_field_val_with_index(tmp, 0, 0xFF);
-		val = val | get_field_val_with_index(tmp + 1, 0, 0xFF) << 8;
-		val = val | get_field_val_with_index(tmp + 2, 0, 0xFF) << 16;
-		tmp = get_field_val(HC_WP_GRP_SIZE, 0, 0xFF);
-		tmp = tmp + get_field_val(HC_ERASE_GRP_SIZE, 0, 0xFF);
+
+	case EXT_CSD_GP_SIZE_MULT0:
+		tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
+		tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
 		tmp64 = val * tmp * 524288;
-		printf("\tGeneral_Purpose_Partition_%i Size: %llu B\n",
-				index - EXT_CSD_GP_SIZE_MULT, tmp64);
+		printf("\tGeneral_Purpose_Partition_0 Size: %llu B\n", tmp64);
 		return 1;
 
 	case EXT_CSD_PARTITION_SETTING_COMPLETED:
-		print_field_caption(PARTITION_SETTING_COMPLETED, RW);
-		val = get_field_val(PARTITION_SETTING_COMPLETED, 0, 0x1);
+		val = get_field_val(EXT_CSD_PARTITION_SETTING_COMPLETED, 0, 0x1);
 		printf("\t[0] PARTITION_SETTING_COMPLETED: %u\n", val);
 		return 1;
 
 	case EXT_CSD_PARTITIONS_ATTRIBUTE:
-		print_field_caption(PARTITIONS_ATTRIBUTE, RW);
-		val = get_field_val(PARTITIONS_ATTRIBUTE, 0, 0x1);
+		val = get_field_val(EXT_CSD_PARTITIONS_ATTRIBUTE, 0, 0x1);
 		if (val)
 			str = "enhanced attribute in user data area";
 		else
 			str = "default";
 		printf("\t[0] ENH_USR: %s\n", str);
-		val = get_field_val(PARTITIONS_ATTRIBUTE, 1, 0x1);
+		val = get_field_val(EXT_CSD_PARTITIONS_ATTRIBUTE, 1, 0x1);
 		if (val)
 			str = "enhanced attribute in general purpose part 1";
 		else
 			str = "default";
 		printf("\t[1] ENH_1: %s\n", str);
-		val = get_field_val(PARTITIONS_ATTRIBUTE, 2, 0x1);
+		val = get_field_val(EXT_CSD_PARTITIONS_ATTRIBUTE, 2, 0x1);
 		if (val)
 			str = "enhanced attribute in general purpose part 2";
 		else
 			str = "default";
 		printf("\t[2] ENH_2: %s\n", str);
-		val = get_field_val(PARTITIONS_ATTRIBUTE, 3, 0x1);
+		val = get_field_val(EXT_CSD_PARTITIONS_ATTRIBUTE, 3, 0x1);
 		if (val)
 			str = "enhanced attribute in general purpose part 3";
 		else
 			str = "default";
 		printf("\t[3] ENH_3: %s\n", str);
-		val = get_field_val(PARTITIONS_ATTRIBUTE, 4, 0x1);
+		val = get_field_val(EXT_CSD_PARTITIONS_ATTRIBUTE, 4, 0x1);
 		if (val)
 			str = "enhanced attribute in general purpose part 4";
 		else
 			str = "default";
 		printf("\t[4] ENH_4: %s\n", str);
-		val = get_field_val(PARTITIONS_ATTRIBUTE, 5, 0x1);
+		val = get_field_val(EXT_CSD_PARTITIONS_ATTRIBUTE, 5, 0x1);
 		if (val)
 			str = "enhanced attribute in general purpose part 5";
 		else
@@ -934,43 +1430,32 @@ static int print_field_ge_v5(u8 *reg, int index)
 		printf("\t[5] ENH_5: %s\n", str);
 		return 1;
 
-	/*   EXT_CSD_MAX_ENH_SIZE_MULT */
-	case 159:
-	case 158:
-	case 157:
-		print_field_caption_with_offset(MAX_ENH_SIZE_MULT,
-			index - EXT_CSD_MAX_ENH_SIZE_MULT, R);
-		val = get_field_val(MAX_ENH_SIZE_MULT, 0, 0xFF);
-		val = val | get_field_val(MAX_ENH_SIZE_MULT + 1, 0, 0xFF) << 8;
-		val = val | get_field_val(MAX_ENH_SIZE_MULT + 2, 0, 0xFF) << 16;
-		tmp = get_field_val(HC_WP_GRP_SIZE, 0, 0xFF);
-		tmp = tmp + get_field_val(HC_ERASE_GRP_SIZE, 0, 0xFF);
+	case EXT_CSD_MAX_ENH_SIZE_MULT:
+		tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
+		tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
 		tmp64 = val * tmp * 524288;
 		printf("\tMax Enhanced Area: %llu B\n", tmp64);
 		return 1;
 
 	case EXT_CSD_PARTITIONING_SUPPORT:
-		print_field_caption(PARTITIONING_SUPPORT, R);
-		val = get_field_val(PARTITIONING_SUPPORT, 0, 0x1);
+		val = get_field_val(EXT_CSD_PARTITIONING_SUPPORT, 0, 0x1);
 		printf("\t[0] PARTITIONING_EN: %ssupported\n",
 			val ? "" : "not ");
-		val = get_field_val(PARTITIONING_SUPPORT, 1, 0x1);
+		val = get_field_val(EXT_CSD_PARTITIONING_SUPPORT, 1, 0x1);
 		printf("\t[1] ENH_ATTRIBUTE_EN: %ssupported\n",
 			val ? "" : "not ");
-		val = get_field_val(PARTITIONING_SUPPORT, 2, 0x1);
+		val = get_field_val(EXT_CSD_PARTITIONING_SUPPORT, 2, 0x1);
 		printf("\t[2] EXT_ATTRIBUTE_EN: %ssupported\n",
 			val ? "" : "not ");
 		return 1;
 
 	case EXT_CSD_HPI_MGMT:
-		print_field_caption(HPI_MGMT, R);
-		val = get_field_val(HPI_MGMT, 0, 0xFF);
+		val = get_field_val(EXT_CSD_HPI_MGMT, 0, 0xFF);
 		printf("\t[7-0] HPI_EN: %sactivated\n", val ? "" : "not ");
 		return 1;
 
 	case EXT_CSD_RST_N_FUNCTION:
-		print_field_caption(RST_N_FUNCTION, R);
-		val = get_field_val(RST_N_FUNCTION, 0, 0x3);
+		val = get_field_val(EXT_CSD_RST_N_FUNCTION, 0, 0x3);
 		switch (val) {
 		case 0x0:
 			str = "temporarily disabled";
@@ -986,14 +1471,13 @@ static int print_field_ge_v5(u8 *reg, int index)
 		return 1;
 
 	case EXT_CSD_BKOPS_EN:
-		print_field_caption(BKOPS_EN, RWaRWE);
-		val = get_field_val(BKOPS_EN, 0, 0x1);
+		val = get_field_val(EXT_CSD_BKOPS_EN, 0, 0x1);
 		if (val)
 			str = "Host is indicated";
 		else
 			str = "not supported by Host";
 		printf("\t[0] MANUAL_EN: %s\n", str);
-		val = get_field_val(BKOPS_EN, 1, 0x1);
+		val = get_field_val(EXT_CSD_BKOPS_EN, 1, 0x1);
 		if (val)
 			str = "may";
 		else
@@ -1003,62 +1487,58 @@ static int print_field_ge_v5(u8 *reg, int index)
 		return 1;
 
 	case EXT_CSD_BKOPS_START:
-		print_field_caption(BKOPS_START, WE_P);
 		printf("\t[7-0] Writing shall start a background operations.\n");
 		return 1;
 
 	case EXT_CSD_SANITIZE_START:
-		print_field_caption(SANITIZE_START, WE_P);
 		printf("\t[7-0] Writing shall start a sanitize operation.\n");
 		return 1;
 
 	case EXT_CSD_WR_REL_PARAM:
-		print_field_caption(WR_REL_PARAM, R);
-		val = get_field_val(WR_REL_PARAM, 0, 0x1);
+		val = get_field_val(EXT_CSD_WR_REL_PARAM, 0, 0x1);
 		if (val)
 			str = "all the WR_DATA_REL parameters in the WR_REL_SET registers are R/W";
 		else
 			str = "obsolete";
 		printf("\t[0] HS_CTRL_REL: %s\n", str);
-		val = get_field_val(WR_REL_PARAM, 2, 0x1);
+		val = get_field_val(EXT_CSD_WR_REL_PARAM, 2, 0x1);
 		if (val)
 			str = "the device supports the enhanced definition of reliable write";
 		else
 			str = "obsolete";
 		printf("\t[2] EN_REL_WR: %s\n", str);
-		val = get_field_val(WR_REL_PARAM, 4, 0x1);
+		val = get_field_val(EXT_CSD_WR_REL_PARAM, 4, 0x1);
 		printf("\t[4] EN_RPMB_REL_WR: RPMB transfer size is either\n"
 		       "\t    256B (1 512B frame), 512B (2 512B frame)%s\n",
 			val ? ", 8KB (32 512B frames)" : "");
 		return 1;
 
 	case EXT_CSD_WR_REL_SET:
-		print_field_caption(WR_REL_SET, RW);
-		val = get_field_val(WR_REL_SET, 0, 0x1);
+		val = get_field_val(EXT_CSD_WR_REL_SET, 0, 0x1);
 		if (val)
 			str = "the device protects previously written data if power failure occurs";
 		else
 			str = "optimized for performance,data could be at risk if on power failure";
 		printf("\t[0] WR_DATA_REL_USR: %s\n", str);
-		val = get_field_val(WR_REL_SET, 1, 0x1);
+		val = get_field_val(EXT_CSD_WR_REL_SET, 1, 0x1);
 		if (val)
 			str = "the device protects previously written data if power failure occurs";
 		else
 			str = "optimized for performance,data could be at risk if on power failure";
 		printf("\t[1] WR_DATA_REL_1: %s\n", str);
-		val = get_field_val(WR_REL_SET, 2, 0x1);
+		val = get_field_val(EXT_CSD_WR_REL_SET, 2, 0x1);
 		if (val)
 			str = "the device protects previously written data if power failure occurs";
 		else
 			str = "optimized for performance,data could be at risk if on power failure";
 		printf("\t[2] WR_DATA_REL_2: %s\n", str);
-		val = get_field_val(WR_REL_SET, 3, 0x1);
+		val = get_field_val(EXT_CSD_WR_REL_SET, 3, 0x1);
 		if (val)
 			str = "the device protects previously written data if power failure occurs";
 		else
 			str = "optimized for performance,data could be at risk if on power failure";
 		printf("\t[3] WR_DATA_REL_3: %s\n", str);
-		val = get_field_val(WR_REL_SET, 4, 0x1);
+		val = get_field_val(EXT_CSD_WR_REL_SET, 4, 0x1);
 		if (val)
 			str = "the device protects previously written data if power failure occurs";
 		else
@@ -1067,89 +1547,85 @@ static int print_field_ge_v5(u8 *reg, int index)
 		return 1;
 
 	case EXT_CSD_RPMB_SIZE_MULT:
-		print_field_caption(RPMB_SIZE_MULT, R);
-		val = get_field_val(RPMB_SIZE_MULT, 0, 0xFF);
+		val = get_field_val(EXT_CSD_RPMB_SIZE_MULT, 0, 0xFF);
 		val = val * 131072;
 		printf("\t[7-0] RPMB Partition Size: %u KB\n", val);
 		return 1;
 
 	case EXT_CSD_FW_CONFIG:
-		print_field_caption(FW_CONFIG, RW);
-		val = get_field_val(FW_CONFIG, 0, 0x1);
+		val = get_field_val(EXT_CSD_FW_CONFIG, 0, 0x1);
 		printf("\t[0] Update_Disable: FW update %sabled\n",
 			val ? "dis" : "en");
 		return 1;
 
 	case EXT_CSD_USER_WP:
-		print_field_caption(USER_WP, RWaRWC_PaRWE_P);
-		val = get_field_val(USER_WP, 0, 0x1);
+		val = get_field_val(EXT_CSD_USER_WP, 0, 0x1);
 		if (val)
 			str = "apply Power-On Period protection to the protection group indicated by CMD28";
 		else
 			str = "power-on write protection is not applied when CMD28 is issued";
 		printf("\t[0] US_PWR_WP_EN: %s\n", str);
-		val = get_field_val(USER_WP, 2, 0x1);
+		val = get_field_val(EXT_CSD_USER_WP, 2, 0x1);
 		if (val)
 			str = "apply permanent write protection to the protection group indicated by CMD28";
 		else
 			str = "permanent write protection is not applied when CMD28 is issued";
 		printf("\t[2] US_PERM_WP_EN: %s\n", str);
-		val = get_field_val(USER_WP, 3, 0x1);
+		val = get_field_val(EXT_CSD_USER_WP, 3, 0x1);
 		if (val)
 			str = "disable the use of power-on period write protection";
 		else
 			str = "power-on write protection can be applied to write protection groups";
 		printf("\t[3] US_PWR_WP_DIS: %s\n", str);
-		val = get_field_val(USER_WP, 4, 0x1);
+		val = get_field_val(EXT_CSD_USER_WP, 4, 0x1);
 		if (val)
 			str = "permanently disable the use of permanent write protection";
 		else
 			str = "permanent write protection can be applied to write protection groups";
 		printf("\t[4] US_PERM_WP_DIS: %s\n", str);
-		val = get_field_val(USER_WP, 6, 0x1);
+		val = get_field_val(EXT_CSD_USER_WP, 6, 0x1);
 		if (val)
 			str = "disable the use of PERM_WRITE_PROTECT (CSD[13])";
 		else
 			str = "host is permitted to set PERM_WRITE_PROTECT (CSD[13])";
 		printf("\t[6] CD_PERM_WP_DIS: %s\n", str);
 
-		val = get_field_val(USER_WP, 7, 0x1);
+		val = get_field_val(EXT_CSD_USER_WP, 7, 0x1);
 		printf("\t[7] PERM_PSWD_DS: Password protection features "
 			"are %sabled\n", val ? "dis" : "en");
 		return 1;
 
 	case EXT_CSD_BOOT_WP:
-		print_field_caption(BOOT_WP, RWaRWC_P);
-		val = get_field_val(BOOT_WP, 0, 0x1);
+		val = get_field_val(EXT_CSD_BOOT_WP, 0, 0x1);
 		if (val)
 			str = "enable Power-On Period write protection to the boot area";
 		else
 			str = "boot region is not power-on write protected";
 		printf("\t[0] B_PWR_WP_EN: %s\n", str);
-		val = get_field_val(BOOT_WP, 1, 0x1);
+		val = get_field_val(EXT_CSD_BOOT_WP, 1, 0x1);
 		printf("\t[1] B_PWR_WP_SEC_SEL: B_PWR_WP_EN(Bit 0) applies\n"
 		       "\t    to boot Area%s only, if B_SEC_WP_SEL (bit 7 is set)\n",
 			val ? "2" : "1");
-		val = get_field_val(BOOT_WP, 2, 0x1);
+		val = get_field_val(EXT_CSD_BOOT_WP, 2, 0x1);
 		printf("\t[2] B_PERM_WP_EN: Boot region is %spermanently\n"
 		       "\t    write protected\n", val ? "" : "not ");
-		val = get_field_val(BOOT_WP, 3, 0x1);
+		val = get_field_val(EXT_CSD_BOOT_WP, 3, 0x1);
 		printf("\t[3] B_PERM_WP_SEC_SEL: B_PERM_WP_EN(Bit 2) applies\n"
 		       "\t    to boot Area%s only, if B_SEC_WP_SEL (bit 7 is set)\n",
 			val ? "2" : "1");
-		val = get_field_val(BOOT_WP, 4, 0x1);
+		val = get_field_val(EXT_CSD_BOOT_WP, 4, 0x1);
 		if (val)
 			str = "permanently disable the use of";
 		else
 			str = "master is permitted to use";
 		printf("\t[4] B_PERM_WP_DIS: %s B_PERM_WP_EN(bit 2)\n", str);
-		val = get_field_val(BOOT_WP, 6, 0x1);
+		val = get_field_val(EXT_CSD_BOOT_WP, 6, 0x1);
 		if (val)
 			str = "disable the use of";
 		else
 			str = "master is permitted to set";
 		printf("\t[5] B_PWR_WP_DIS: %s B_PWR_WP_EN(bit 0)\n", str);
-		val = get_field_val(BOOT_WP, 7, 0x1);
+		val = get_field_val(EXT_CSD_BOOT_WP, 7, 0x1);
 		if (val)
 			str = "boot partition selected by B_PERM_WP_SEC_SEL (bit 3) and B_PWR_WP_SEC_SEL (bit 1)";
 		else
@@ -1159,8 +1635,7 @@ static int print_field_ge_v5(u8 *reg, int index)
 		return 1;
 
 	case EXT_CSD_BOOT_WP_STATUS:
-		print_field_caption(BOOT_WP_STATUS, R);
-		val = get_field_val(BOOT_WP_STATUS, 0, 0x3);
+		val = get_field_val(EXT_CSD_BOOT_WP_STATUS, 0, 0x3);
 		switch (val) {
 		case 0x0:
 			str = "not protected";
@@ -1173,7 +1648,7 @@ static int print_field_ge_v5(u8 *reg, int index)
 			break;
 		}
 		printf("\t[1-0] B_AREA_1_WP: Boot Area 1 is %s\n", str);
-		val = get_field_val(BOOT_WP_STATUS, 2, 0x3);
+		val = get_field_val(EXT_CSD_BOOT_WP_STATUS, 2, 0x3);
 		switch (val) {
 		case 0x0:
 			str = "not protected";
@@ -1189,78 +1664,57 @@ static int print_field_ge_v5(u8 *reg, int index)
 		return 1;
 
 	case EXT_CSD_SEC_FEATURE_SUPPORT:
-		print_field_caption(SEC_FEATURE_SUPPORT, R);
-		val = get_field_val(SEC_FEATURE_SUPPORT, 0, 0x1);
+		val = get_field_val(EXT_CSD_SEC_FEATURE_SUPPORT, 0, 0x1);
 		printf("\t[0] SECURE_ER_EN: %ssupported\n", val ? "" : "not ");
-		val = get_field_val(SEC_FEATURE_SUPPORT, 2, 0x1);
+		val = get_field_val(EXT_CSD_SEC_FEATURE_SUPPORT, 2, 0x1);
 		printf("\t[1] SEC_BD_BLK_EN: %ssupported\n", val ? "" : "not ");
-		val = get_field_val(SEC_FEATURE_SUPPORT, 4, 0x1);
+		val = get_field_val(EXT_CSD_SEC_FEATURE_SUPPORT, 4, 0x1);
 		printf("\t[4] SEC_GB_CL_EN: %ssupported\n", val ? "" : "not ");
-		val = get_field_val(SEC_FEATURE_SUPPORT, 6, 0x1);
+		val = get_field_val(EXT_CSD_SEC_FEATURE_SUPPORT, 6, 0x1);
 		printf("\t[6] SEC_SANITIZE: %ssupported\n", val ? "" : "not ");
 		return 1;
 
 	case EXT_CSD_TRIM_MULT:
-		print_field_caption(TRIM_MULT, R);
-		val = get_field_val(TRIM_MULT, 0, 0xFF);
+		val = get_field_val(EXT_CSD_TRIM_MULT, 0, 0xFF);
 		val = val * 300;
 		printf("\t[7-0] TRIM/DISCARD Time out value: %u\n", val);
 		return 1;
 
 	case EXT_CSD_MIN_PERF_DDR_R_8_52:
-		print_field_caption(MIN_PERF_DDR_R_8_52, R);
-		val = get_field_val(MIN_PERF_DDR_R_8_52, 0, 0xFF);
+		val = get_field_val(EXT_CSD_MIN_PERF_DDR_R_8_52, 0, 0xFF);
 		printf("\t[7-0] Minimum Read Performance for 8bit at 52MHz in "
 			"DDR mode %#02x\n", val);
 		return 1;
 
 	case EXT_CSD_MIN_PERF_DDR_W_8_52:
-		print_field_caption(MIN_PERF_DDR_W_8_52, R);
-		val = get_field_val(MIN_PERF_DDR_W_8_52, 0, 0xFF);
+		val = get_field_val(EXT_CSD_MIN_PERF_DDR_W_8_52, 0, 0xFF);
 		printf("\tMinimum Write Performance for 8bit at 52MHz in DDR "
 			"mode %#02x\n", val);
 		return 1;
 
 	case EXT_CSD_PWR_CL_DDR_52_195:
-		print_field_caption(PWR_CL_DDR_52_195, R);
-		val = get_field_val(PWR_CL_DDR_52_195, 0, 0xFF);
+		val = get_field_val(EXT_CSD_PWR_CL_DDR_52_195, 0, 0xFF);
 		printf("\tPower class for 52MHz, DDR at 1.95V %#02x\n", val);
 		return 1;
 
 	case EXT_CSD_PWR_CL_DDR_52_360:
-		print_field_caption(PWR_CL_DDR_52_360, R);
-		val = get_field_val(PWR_CL_DDR_52_360, 0, 0xFF);
+		val = get_field_val(EXT_CSD_PWR_CL_DDR_52_360, 0, 0xFF);
 		printf("\tPower class for 52MHz, DDR at 3.6V %#02x\n", val);
 		return 1;
 
 	case EXT_CSD_INI_TIMEOUT_AP:
-		print_field_caption(INI_TIMEOUT_AP, R);
-		val = get_field_val(INI_TIMEOUT_AP, 0, 0xFF);
+		val = get_field_val(EXT_CSD_INI_TIMEOUT_AP, 0, 0xFF);
 		val = val * 100;
 		printf("\tInitialization Time out value: %u ms\n", val);
 		return 1;
 
-	/*   EXT_CSD_CORRECTLY_PRG_SECTORS_NUM */
-	case 245:
-	case 244:
-	case 243:
-	case 242:
-		print_field_caption_with_offset(CORRECTLY_PRG_SECTORS_NUM,
-			index - EXT_CSD_CORRECTLY_PRG_SECTORS_NUM, R);
-		val = get_field_val(CORRECTLY_PRG_SECTORS_NUM, 0, 0xFF);
-		val = val | get_field_val(CORRECTLY_PRG_SECTORS_NUM + 1, 0,
-			0xFF) << 8;
-		val = val | get_field_val(CORRECTLY_PRG_SECTORS_NUM + 2, 0,
-			0xFF) << 16;
-		val = val | get_field_val(CORRECTLY_PRG_SECTORS_NUM + 3, 0,
-			0xFF) << 24;
+	case EXT_CSD_CORRECTLY_PRG_SECTORS_NUM:
 		printf("\tNumber of correctly programmed sectors: %u\n",
 			val);
 		return 1;
 
 	case EXT_CSD_BKOPS_STATUS:
-		print_field_caption(BKOPS_STATUS, R);
-		val = get_field_val(BKOPS_STATUS, 0, 0x3);
+		val = get_field_val(EXT_CSD_BKOPS_STATUS, 0, 0x3);
 		switch (val) {
 		case 0:
 			str = "not required";
@@ -1278,575 +1732,534 @@ static int print_field_ge_v5(u8 *reg, int index)
 		printf("\t[1-0] Operations %s\n", str);
 		return 1;
 
-	}
-
-	return 0;
-}
-static int print_field_eq_v5(u8 *reg, int index)
-{
-	int rev;
-	u32 val;
-
-	rev = reg[EXT_CSD_REV];
-
-	switch (index) {
-	case EXT_CSD_SEC_TRIM_MULT:
-		print_field_caption(SEC_TRIM_MULT, R);
-		val = get_field_val(SEC_TRIM_MULT, 0, 0xFF);
-		val = val * 300 * get_field_val(ERASE_TIMEOUT_MULT, 0,
-			0xFF);
-		printf("\tSecure Trim time-out value: %u\n", val);
-		return 1;
-
-	case EXT_CSD_SEC_ERASE_MULT:
-		print_field_caption(SEC_ERASE_MULT, R);
-		val = get_field_val(SEC_ERASE_MULT, 0, 0xFF);
-		val = val * 300 * get_field_val(ERASE_TIMEOUT_MULT, 0,
-			0xFF);
-		printf("\tSecure Erase time-out value: %u\n", val);
-		return 1;
-
-	}
-
-	return 0;
-}
-
-static int print_field(u8 *reg, int index)
-{
-	int rev;
-	u32 val;
-	u64 tmp64;
-	char *str = NULL;
-
-	rev = reg[EXT_CSD_REV];
-
-	if (rev >= 7)
-		return print_field_ge_v7(reg, index);
-	if (rev >= 6)
-		return print_field_ge_v6(reg, index);
-	if (rev >= 5)
-		return print_field_ge_v5(reg, index);
-	if (rev == 5)
-		return print_field_eq_v5(reg, index);
-
-	switch (index) {
-	case EXT_CSD_ERASE_GROUP_DEF:
-		print_field_caption(ERASE_GROUP_DEF, RWE_P);
-		val = get_field_val(ERASE_GROUP_DEF, 0, 0x1);
-		printf("\t[0] ENABLE: Use %s size definition\n",
-			val ? "high-capacity" : "old");
+	case EXT_CSD_CACHE_CTRL:
+		val = get_field_val(EXT_CSD_CACHE_CTRL, 0, 0x1);
+		printf("\t[0] CACHE_EN: %s\n", val ? "ON" : "OFF");
 		return 1;
 
-	case EXT_CSD_BOOT_BUS_CONDITIONS:
-		print_field_caption(BOOT_BUS_CONDITIONS, RWE);
-		val = get_field_val(BOOT_BUS_CONDITIONS, 0, 0x3);
+	case EXT_CSD_POWER_OFF_NOTIFICATION:
+		val = get_field_val(EXT_CSD_POWER_OFF_NOTIFICATION, 0, 0x7);
 		switch (val) {
 		case 0x0:
-			str = "x1 (sdr) or x4 (ddr)";
+			printf("\t[2-0] NO_POWER_NOTIFICATION\n");
 			break;
 		case 0x1:
-			str = "x4 (sdr/ddr)";
+			printf("\t[2-0] POWERED_ON\n");
 			break;
 		case 0x2:
-			str = "x8 (sdr/ddr)";
-			break;
-		}
-		printf("\t[1-0] BOOT_BUS_WIDTH: %s bus width in boot operation mode\n",
-			str);
-		val = get_field_val(BOOT_BUS_CONDITIONS, 2, 0x1);
-		if (val)
-			str = "Reset bus width to x1, SDR and backward compatible timings after boot operation";
-		else
-			str = "Retain BOOT_BUS_WIDTH and BOOT_MODE values after boot operation";
-		printf("\t[2] RESET_BOOT_BUS_CONDITIONS: %s", str);
-		val = get_field_val(BOOT_BUS_CONDITIONS, 3, 0x3);
-		switch (val) {
-		case 0x0:
-			str = "Use SDR + backward compatible timings in boot operation";
+			printf("\t[2-0] POWER_OFF_SHORT\n");
 			break;
-		case 0x1:
-			str = "Use SDR + HS timings in boot operation mode";
+		case 0x3:
+			printf("\t[2-0] POWER_OFF_LONG\n");
 			break;
-		case 0x2:
-			str = "Use DDR in boot operation";
+		case 0x4:
+			printf("\t[2-0] SLEEP_NOTIFICATION\n");
 			break;
 		}
-		printf("\t[3] BOOT_MODE: %s\n", str);
 		return 1;
 
-	case EXT_CSD_BOOT_CONFIG_PROT:
-		print_field_caption(BOOT_CONFIG_PROT, RWaRWC_P);
-		val = get_field_val(BOOT_CONFIG_PROT, 0, 0x1);
-		printf("\t[0] PWR_BOOT_CONFIG_PROT: %u\n", val);
-		val = get_field_val(BOOT_CONFIG_PROT, 4, 0x1);
-		printf("\t[4] PERM_BOOT_CONFIG_PROT: %u\n", val);
+	case EXT_CSD_PACKED_FAILURE_INDEX:
+		val = get_field_val(EXT_CSD_PACKED_FAILURE_INDEX, 0, 0xFF);
+		printf("\t[7-0] PACKED_FAILURE_INDEX: %u\n", val);
 		return 1;
 
-	case EXT_CSD_PARTITION_CONFIG:
-		print_field_caption(PARTITION_CONFIG, RWEaRWE_P);
-		val = get_field_val(PARTITION_CONFIG, 0, 0x7);
+	case EXT_CSD_PACKED_COMMAND_STATUS:
+		val = get_field_val(EXT_CSD_PACKED_COMMAND_STATUS, 0, 0x1);
+		printf("\t[0] Error: %u\n", val);
+		val = get_field_val(EXT_CSD_PACKED_COMMAND_STATUS, 1, 0x1);
+		printf("\t[1] Indexed Error: %u\n", val);
+		return 1;
+
+	/* EXT_CSD_CONTEXT_CONF */
+	case EXT_CSD_CONTEXT_CONF(1) ... EXT_CSD_CONTEXT_CONF(15):
+		val = get_field_val(index, 0, 0x3);
 		switch (val) {
 		case 0x0:
-			str = "No access to boot partition";
+			str = "closed, not active";
 			break;
 		case 0x1:
-			str = "R/W boot partition 1";
+			str = "configured and activated as write-only";
 			break;
 		case 0x2:
-			str = "R/W boot partition 2";
+			str = "configured and activated as read-only";
 			break;
 		case 0x3:
-			str = "R/W Replay Protected Memory Block (RPMB)";
-			break;
-		case 0x4:
-			str = "Access to General Purpose partition 1";
-			break;
-		case 0x5:
-			str = "Access to General Purpose partition 2";
-			break;
-		case 0x6:
-			str = "Access to General Purpose partition 3";
-			break;
-		case 0x7:
-			str = "Access to General Purpose partition 4";
+			str = "configured and activated as read/write";
 			break;
 		}
-		printf("\t[2-0] PARTITION_ACCESS: %s\n", str);
-		val = get_field_val(PARTITION_CONFIG, 3, 0x7);
+		printf("\t[1-0] Activation and direction: context is %s\n",
+			str);
+		val = get_field_val(index, 2, 0x1);
+		if (val)
+			str = "follows rules";
+		else
+			str = "doesn't follow rules";
+		printf("\t[2]   Large Unit context: %s\n", str);
+		val = get_field_val(index, 3, 0x3);
+		printf("\t[5-3] Large Unit multiplier: %u\n", val);
+		val = get_field_val(index, 0, 0x3);
 		switch (val) {
 		case 0x0:
-			str = "Device not boot enabled";
+			str = "MODE0";
 			break;
 		case 0x1:
-			str = "Boot partition 1 enabled for boot";
+			str = "MODE1";
 			break;
 		case 0x2:
-			str = "Boot partition 2 enabled for boot";
-			break;
-		case 0x7:
-			str = "User area enabled for boot";
+			str = "MODE2";
 			break;
 		}
-		printf("\t[5-3] BOOT_PARTITION_ENABLE: %s\n", str);
-		val = get_field_val(PARTITION_CONFIG, 6, 0x1);
+		printf("\t[7-6] Reliability mode: %s\n", str);
+		return 1;
+
+	case EXT_CSD_EXT_PARTITIONS_ATTRIBUTE:
+		printf("\t[3-0] EXT_1\n");
+		printf("\t[7-4] EXT_2\n");
+		printf("\t[11-8]  EXT_3\n");
+		printf("\t[15-12] EXT_4\n");
+		return 1;
+
+	case EXT_CSD_EXCEPTION_EVENTS_STATUS:
+		val = get_field_val(EXT_CSD_EXCEPTION_EVENTS_STATUS, 0, 0x1);
+		printf("\t[0] URGENT_BKOPS: %i\n", val);
+		val = get_field_val(EXT_CSD_EXCEPTION_EVENTS_STATUS, 1, 0x1);
+		printf("\t[1] DYNCAP_NEEDED: %i\n", val);
+		val = get_field_val(EXT_CSD_EXCEPTION_EVENTS_STATUS, 2, 0x1);
+		printf("\t[2] SYSPOOL_EXHAUSTED: %i\n", val);
+		val = get_field_val(EXT_CSD_EXCEPTION_EVENTS_STATUS, 3, 0x1);
+		printf("\t[3] PACKED_FAILURE: %i\n", val);
+		val = get_field_val(EXT_CSD_EXCEPTION_EVENTS_STATUS, 4, 0x1);
+		printf("\t[4] EXTENDED_SECURITY_FAILURE: %i\n", val);
+		return 1;
+
+	case EXT_CSD_EXCEPTION_EVENTS_CTRL:
+		val = get_field_val(EXT_CSD_EXCEPTION_EVENTS_CTRL, 1, 0x1);
+		printf("\t[1] DYNCAP_EVENT_EN: %i\n", val);
+		val = get_field_val(EXT_CSD_EXCEPTION_EVENTS_CTRL, 2, 0x1);
+		printf("\t[2] SYSPOOL_EVENT_EN: %i\n", val);
+		val = get_field_val(EXT_CSD_EXCEPTION_EVENTS_CTRL, 3, 0x1);
+		printf("\t[3] PACKED_EVENT_EN: %i\n", val);
+		val = get_field_val(EXT_CSD_EXCEPTION_EVENTS_CTRL, 4, 0x1);
+		printf("\t[4] EXTENDED_SECURITY_EN: %i\n", val);
+		return 1;
+
+	case EXT_CSD_CLASS_6_CTRL:
+		val = get_field_val(EXT_CSD_CLASS_6_CTRL, 0, 0x1);
 		if (val)
-			str = "Boot acknowledge sent during boot operation Bit";
+			printf("\t[0] Dynamic Capacity\n");
 		else
-			str = "No boot acknowledge sent";
-		printf("\t[6] BOOT_ACK: %s\n", str);
+			printf("\t[0] Write Protect\n");
 		return 1;
 
-	case EXT_CSD_ERASED_MEM_CONT:
-		print_field_caption(ERASED_MEM_CONT, R);
-		val = get_field_val(ERASED_MEM_CONT, 0, 0x1);
-		printf("\t[0] Erased Memory Content: %u\n", val);
+	case EXT_CSD_INI_TIMEOUT_EMU:
+		val = get_field_val(EXT_CSD_INI_TIMEOUT_EMU, 0, 0xFF);
+		val = val * 100;
+		printf("\tInitialization Time out value: %u ms\n", val);
 		return 1;
 
-	case EXT_CSD_BUS_WIDTH:
-		print_field_caption(BUS_WIDTH, WE_P);
-		val = get_field_val(BUS_WIDTH, 0, 0xF);
-		switch (val) {
-		case 0:
-			str = "1 bit data bus";
-			break;
-		case 1:
-			str = "4 bit data bus";
-			break;
-		case 2:
-			str = "8 bit data bus";
-			break;
-		case 5:
-			str = "4 bit data bus (dual data rate)";
-			break;
-		case 6:
-			str = "8 bit data bus (DDR)";
-			break;
-		}
-		printf("\t[3-0] Bus Mode: %s\n", str);
-		val = get_field_val(BUS_WIDTH, 7, 0x1);
-		printf("\t[7] Strobe is provided during Data Out, CRC response%s\n",
-			val ? ", CMD Response" : "");
+	case EXT_CSD_DATA_SECTOR_SIZE:
+		val = get_field_val(EXT_CSD_DATA_SECTOR_SIZE, 0, 0x1);
+		if (val)
+			str = "4 KB";
+		else
+			str = "512 B";
+		printf("\t[0] Data sector size is %s\n", str);
 		return 1;
 
-	case EXT_CSD_STROBE_SUPPORT:
-		print_field_caption(STROBE_SUPPORT, R);
-		val = get_field_val(STROBE_SUPPORT, 0, 0x1);
-		printf("\t[0] Enhanced Strobe mode: %ssupported\n",
-			val ? "" : "not ");
+	case EXT_CSD_USE_NATIVE_SECTOR:
+		val = get_field_val(EXT_CSD_USE_NATIVE_SECTOR, 0, 0x1);
+		if (val)
+			printf("\t[0] Device sector size is larger than 512 B\n");
+		else
+			printf("\t[0] Device sector size is 512 B (emulated or native)\n");
 		return 1;
 
-	case EXT_CSD_HS_TIMING:
-		print_field_caption(HS_TIMING, RWE_P);
-		val = get_field_val(HS_TIMING, 0, 0xF);
+	case EXT_CSD_NATIVE_SECTOR_SIZE:
+		val = get_field_val(EXT_CSD_NATIVE_SECTOR_SIZE, 0, 0x1);
+		if (val)
+			str = "4 KB";
+		else
+			str = "512 B";
+		printf("\t[0] Native sector size is %s\n", str);
+		return 1;
+
+	case EXT_CSD_PROGRAM_CID_CSD_DDR_SUPPORT:
+		val = get_field_val(EXT_CSD_PROGRAM_CID_CSD_DDR_SUPPORT, 0, 0x1);
+		if (val)
+			str = "single data rate and dual data rate";
+		else
+			str = "single data rate";
+		printf("\t[0] PROGRAM_CID_CSD_DDR_SUPPORT: CMD26 and CMD27 %s mode\n",
+		       str);
+		return 1;
+
+	case EXT_CSD_PERIODIC_WAKEUP:
+		val = get_field_val(EXT_CSD_PERIODIC_WAKEUP, 0, 0x1F);
+		printf("\t[5-0] WAKEUP_PERIOD: %u\n", val);
+		val = get_field_val(EXT_CSD_PERIODIC_WAKEUP, 5, 0x7);
 		switch (val) {
 		case 0x0:
-			str = "Selecting backwards compatibility interface timing";
+			str = "infinity";
 			break;
 		case 0x1:
-			str = "High Speed";
+			str = "months";
 			break;
 		case 0x2:
-			str = "HS200";
+			str = "weeks";
 			break;
 		case 0x3:
-			str = "HS400";
+			str = "days";
+			break;
+		case 0x4:
+			str = "hours";
+			break;
+		case 0x5:
+			str = "minutes";
 			break;
 		}
-		printf("\t[3-0] Timing Interface: %s\n", str);
+		printf("\t[7-5] WAKEUP_UNIT: %s\n", str);
 		return 1;
 
-	case EXT_CSD_POWER_CLASS:
-		print_field_caption(POWER_CLASS, RWE_P);
-		val = get_field_val(POWER_CLASS, 0, 0xFF);
-		printf("\t[7-0] Device power class code: %#02x\n", val);
+	case EXT_CSD_PWR_CL_200_195:
+		val = get_field_val(EXT_CSD_PWR_CL_200_195, 0, 0xFF);
+		printf("\tPower class for 200MHz, at 1.95V %#02x\n", val);
 		return 1;
 
-	case EXT_CSD_CMD_SET_REV:
-		print_field_caption(CMD_SET_REV, R);
-		val = get_field_val(CMD_SET_REV, 0, 0xFF);
-		printf("\t[7-0] Command set revisions: %#02x\n", val);
+	case EXT_CSD_PWR_CL_200_360:
+		val = get_field_val(EXT_CSD_PWR_CL_200_360, 0, 0xFF);
+		printf("\tPower class for 200MHz, at 3.6V %#02x\n", val);
 		return 1;
 
-	case EXT_CSD_CMD_SET:
-		print_field_caption(CMD_SET, RWE_P);
-		val = get_field_val(CMD_SET, 0, 0xFF);
-		printf("\t[7-0] Command set that is currently active in the Device: %#02x\n",
+	case EXT_CSD_POWER_OFF_LONG_TIME:
+		val = get_field_val(EXT_CSD_POWER_OFF_LONG_TIME, 0, 0xFF);
+		val = val * 10;
+		printf("\tGeneric Switch Timeout Definition: %u ms\n", val);
+		return 1;
+
+	case EXT_CSD_GENERIC_CMD6_TIME:
+		val = get_field_val(EXT_CSD_GENERIC_CMD6_TIME, 0, 0xFF);
+		val = val * 10;
+		printf("\tGeneric Switch Timeout Definition: %u ms\n", val);
+		return 1;
+
+	case EXT_CSD_CACHE_SIZE:
+		printf("\tCache Size: %u KiB\n", val);
+		return 1;
+
+	case EXT_CSD_EXT_SUPPORT:
+		val = get_field_val(EXT_CSD_EXT_SUPPORT, 0, 0x1);
+		printf("\t[0] System code: %ssupported\n", val ? "" : "not ");
+		val = get_field_val(EXT_CSD_EXT_SUPPORT, 1, 0x1);
+		printf("\t[1] Non-persistent: %ssupported\n",
+			val ? "" : "not ");
+		return 1;
+
+	case EXT_CSD_LARGE_UNIT_SIZE_M1:
+		val = get_field_val(EXT_CSD_LARGE_UNIT_SIZE_M1, 0, 0xFF);
+		printf("\tLarge Unit size: %#02x\n", val);
+		return 1;
+
+	case EXT_CSD_CONTEXT_CAPABILITIES:
+		val = get_field_val(EXT_CSD_CONTEXT_CAPABILITIES, 0, 0xF);
+		printf("\t[3-0] MAX_CONTEXT_ID: %#02x\n", val);
+		val = get_field_val(EXT_CSD_CONTEXT_CAPABILITIES, 4, 0x7);
+		printf("\t[6-4] LARGE_UNIT_MAX_MULTIPLIER_M1: %#02x\n", val);
+		return 1;
+
+	case EXT_CSD_TAG_RES_SIZE:
+		val = get_field_val(EXT_CSD_TAG_RES_SIZE, 0, 0xFF);
+		printf("\tSystem Data Tag Resources Size: %#02x\n", val);
+		return 1;
+
+	case EXT_CSD_TAG_UNIT_SIZE:
+		tmp = get_field_val(EXT_CSD_NATIVE_SECTOR_SIZE, 0, 0x1);
+		tmp = (tmp == 0) ? 512 : 4048;
+		val = 2 << (1 - get_field_val(EXT_CSD_TAG_UNIT_SIZE, 0, 0xFF));
+		val = val * tmp;
+		printf("\tTag Unit Size: %u\n", val);
+		return 1;
+
+	case EXT_CSD_DATA_TAG_SUPPORT:
+		val = get_field_val(EXT_CSD_DATA_TAG_SUPPORT, 0, 0x1);
+		printf("\t[0] SYSTEM_DATA_TAG_SUPPORT: %u\n", val);
+		return 1;
+
+	case EXT_CSD_MAX_PACKED_WRITES:
+		val = get_field_val(EXT_CSD_MAX_PACKED_WRITES, 0, 0xFF);
+		printf("\tmaximum number of commands in write command: %u\n",
 			val);
 		return 1;
 
-	case EXT_CSD_REV:
-		print_field_caption(REV, R);
-		val = get_field_val(REV, 0, 0x1F);
+	case EXT_CSD_MAX_PACKED_READS:
+		val = get_field_val(EXT_CSD_MAX_PACKED_READS, 0, 0xFF);
+		printf("\tmaximum number of commands in read command: %u\n",
+			val);
+		return 1;
+
+	case EXT_CSD_CMDQ_MODE_EN:
+		val = get_field_val(EXT_CSD_CMDQ_MODE_EN, 0, 0x1);
+		printf("\tCommand queuing is %sabled\n", val ? "en" : "dis");
+		return 1;
+
+	case EXT_CSD_SECURE_REMOVAL_TYPE:
+		val = get_field_val(EXT_CSD_SECURE_REMOVAL_TYPE, 0, 0xF);
 		switch (val) {
-		case 0:
-			str = "1.0 (for MMC v4.0)";
-			break;
-		case 1:
-			str = "1.1 (for MMC v4.1)";
+		case 0x0:
+			str = "erase";
 			break;
-		case 2:
-			str = "1.2 (for MMC v4.2)";
+		case 0x1:
+			str = "overwrite, then erase";
 			break;
-		case 3:
-			str = "1.3 (for MMC v4.3)";
+		case 0x2:
+			str = "overwrite, complement, then random";
 			break;
-		case 4:
-			str = "1.4 (Obsolete)";
+		case 0x3:
+			str = "vendor defined";
 			break;
-		case 5:
-			str = "1.5 (for MMC v4.41)";
+		}
+		printf("\t[3-0] Supported Secure Removal Type: %s\n", str);
+		val = get_field_val(EXT_CSD_SECURE_REMOVAL_TYPE, 4, 0xF);
+		switch (val) {
+		case 0x0:
+			str = "erase";
 			break;
-		case 6:
-			str = "1.6 (for MMC v4.5, v4.51)";
+		case 0x1:
+			str = "overwrite, then erase";
 			break;
-		case 7:
-			str = "1.7 (for MMC v5.0, v5.01)";
+		case 0x2:
+			str = "overwrite, complement, then random";
 			break;
-		case 8:
-			str = "1.8 (for MMC v5.1)";
+		case 0x3:
+			str = "vendor defined";
 			break;
 		}
-		printf("\t[4-0] Extended CSD Revision: Revision %s\n", str);
+		printf("\t[7-4] Configure Secure Removal Type: %s\n", str);
 		return 1;
 
-	case EXT_CSD_CSD_STRUCTURE:
-		print_field_caption(CSD_STRUCTURE, R);
-		val = get_field_val(CSD_STRUCTURE, 0, 0x3);
+	case EXT_CSD_PRODUCT_ST8_AWARENSS_ENABLEMENT:
+		val = get_field_val(EXT_CSD_PRODUCT_ST8_AWARENSS_ENABLEMENT, 0, 0x1);
+		printf("\t[0] Manual mode is %ssupported\n",
+			val ? "" : "not ");
+		val = get_field_val(EXT_CSD_PRODUCT_ST8_AWARENSS_ENABLEMENT, 1, 0x1);
+		printf("\t[1] Auto mode is %ssupported\n", (val ? "" : "not "));
+		val = get_field_val(EXT_CSD_PRODUCT_ST8_AWARENSS_ENABLEMENT, 4, 0x1);
+		printf("\t[4] Production State Awareness is %sabled\n",
+			val ? "en" : "dis");
+		val = get_field_val(EXT_CSD_PRODUCT_ST8_AWARENSS_ENABLEMENT, 5, 0x1);
+		printf("\t[5] Auto mode is %sabled\n", (val ? "en" : "dis"));
+		return 1;
+
+	case EXT_CSD_MAX_PRE_LOADING_DATA_SIZE:
+		tmp = get_field_val(EXT_CSD_DATA_SECTOR_SIZE, 0, 0x1);
+		if (tmp64 == 0xFFFFFFFF)
+			if (tmp)
+				str = strdup("16 TB");
+			else
+				str = strdup("2 TB");
+		else
+			if (tmp)
+				str = basprintf("%llu B", tmp64 * 4096);
+			else
+				str = basprintf("%llu B", tmp64 * 512);
+		printf("\tMax_Pre_Loading_Data_Size: %s\n", str);
+		free(str);
+		return 1;
+
+	case EXT_CSD_PRE_LOADING_DATA_SIZE:
+		tmp = get_field_val(EXT_CSD_DATA_SECTOR_SIZE, 0, 0x1);
+		if (tmp64 == 0xFFFFFFFF)
+			if (tmp)
+				str = strdup("16 TB");
+			else
+				str = strdup("2 TB");
+		else
+			if (tmp)
+				str = basprintf("%llu B", tmp64 * 4096);
+			else
+				str = basprintf("%llu B", tmp64 * 512);
+		printf("\tPre_Loading_Data_Size: %s\n", str);
+		free(str);
+		return 1;
+
+	case EXT_CSD_FFU_STATUS:
+		val = get_field_val(EXT_CSD_FFU_STATUS, 0, 0x13);
 		switch (val) {
 		case 0x0:
-			str = "0";
+			str = "success";
 			break;
-		case 0x1:
-			str = "1";
+		case 0x10:
+			str = "general error";
 			break;
-		case 0x2:
-			str = "2";
+		case 0x11:
+			str = "firmware install error";
+			break;
+		case 0x12:
+			str = "firmware download error";
 			break;
 		}
-		printf("\t[1-0] CSD structure version: CSD version No. 1.%s\n",
-			str);
+		printf("\t[5-0] Code: %s\n", str);
 		return 1;
 
-	case EXT_CSD_DEVICE_TYPE:
-		print_field_caption(DEVICE_TYPE, R);
-		val = get_field_val(DEVICE_TYPE, 0, 0xFF);
+	case EXT_CSD_MODE_CONFIG:
+		val = get_field_val(EXT_CSD_MODE_CONFIG, 0, 0xFF);
 		switch (val) {
-		case 0x1:
-			str = "HS eMMC @26MHz - at rated device voltage(s)";
-			break;
-		case 0x2:
-			str = "HS eMMC @52MHz - at rated device voltage(s)";
-			break;
-		case 0x4:
-			str = "HS Dual Data Rate eMMC @52MHz 1.8V or 3VI/O";
+		case 0x0:
+			str = "normal";
 			break;
-		case 0x8:
-			str = "HS Dual Data Rate eMMC @52MHz 1.2VI/O";
+		case 0x1:
+			str = "FFU";
 			break;
 		case 0x10:
-			str = "HS200 Single Data Rate eMMC @200MHz 1.8VI/O";
-			break;
-		case 0x20:
-			str = "HS200 Single Data Rate eMMC @200MHz 1.2VI/O";
+			str = "vendor";
 			break;
 		}
-		printf("\t%s\n", str);
-		return 1;
-
-	/* TODO: missing JEDEC documention */
-	case EXT_CSD_PWR_CL_52_195:
-		print_field_caption(PWR_CL_52_195, R)
-		val = get_field_val(PWR_CL_52_195, 0, 0xFF);
-		printf("\tPower class for 52 MHz at 1.95 V 1 R: %#02x\n", val);
-		return 1;
-
-	case EXT_CSD_PWR_CL_26_195:
-		print_field_caption(PWR_CL_26_195, R)
-		val = get_field_val(PWR_CL_26_195, 0, 0xFF);
-		printf("\tPower class for 26 MHz at 1.95 V 1 R: %#02x\n", val);
-		return 1;
-
-	case EXT_CSD_PWR_CL_52_360:
-		print_field_caption(PWR_CL_52_360, R)
-		val = get_field_val(PWR_CL_52_360, 0, 0xFF);
-		printf("\tPower class for 52 MHz at 3.6 V 1 R: %#02x\n", val);
-		return 1;
-
-	case EXT_CSD_PWR_CL_26_360:
-		print_field_caption(PWR_CL_26_360, R)
-		val = get_field_val(PWR_CL_26_360, 0, 0xFF);
-		printf("\tPower class for 26 MHz at 3.6 V 1 R: %#02x\n", val);
-		return 1;
-
-	case EXT_CSD_MIN_PERF_R_4_26:
-		print_field_caption(MIN_PERF_R_4_26, R)
-		val = get_field_val(MIN_PERF_R_4_26, 0, 0xFF);
-		printf("\tMinimum Read Performance for 4bit at 26 MHz: %#02x\n",
-			val);
-		return 1;
-
-	case EXT_CSD_MIN_PERF_W_4_26:
-		print_field_caption(MIN_PERF_W_4_26, R)
-		val = get_field_val(MIN_PERF_W_4_26, 0, 0xFF);
-		printf("\tMinimum Write Performance for 4bit at 26 MHz: %#02x\n",
-			val);
-		return 1;
-
-	case EXT_CSD_MIN_PERF_R_8_26_4_52:
-		print_field_caption(MIN_PERF_R_8_26_4_52, R)
-		val = get_field_val(MIN_PERF_R_8_26_4_52, 0, 0xFF);
-		printf("\tMinimum Read Performance for 8bit at 26 MHz, for 4bit at 52MHz: %#02x\n",
-			val);
-		return 1;
-
-	case EXT_CSD_MIN_PERF_W_8_26_4_52:
-		print_field_caption(MIN_PERF_W_8_26_4_52, R)
-		val = get_field_val(MIN_PERF_W_8_26_4_52, 0, 0xFF);
-		printf("\tMinimum Write Performance for 8bit at 26 MHz, for 4bit at 52MHz: %#02x\n",
-			val);
-		return 1;
-
-	case EXT_CSD_MIN_PERF_R_8_52:
-		print_field_caption(MIN_PERF_R_8_52, R)
-		val = get_field_val(MIN_PERF_R_8_52, 0, 0xFF);
-		printf("\tMinimum Read Performance for 8bit at 52 MHz: %#02x\n",
-			val);
-		return 1;
-
-	case EXT_CSD_MIN_PERF_W_8_52:
-		print_field_caption(MIN_PERF_W_8_52, R)
-		val = get_field_val(MIN_PERF_W_8_52, 0, 0xFF);
-		printf("\tMinimum Write Performance for 8bit at52 MHz: %#02x\n",
-			val);
-		return 1;
-
-	case EXT_CSD_SECURE_WP_INFO:
-		print_field_caption(SECURE_WP_INFO, R);
-		val = get_field_val(SECURE_WP_INFO, 0, 0x1);
-		printf("\t[0] SECURE_WP_SUPPORT: %ssupported\n",
-			val ? "" : "not ");
-		val = get_field_val(SECURE_WP_INFO, 1, 0x1);
-		printf("\t[1] SECURE_WP_EN_STATUS: %s Write Protection mode\n",
-			val ? "Secure" : "Legacy");
+		printf("\t[7-0] Value: %s\n", str);
 		return 1;
 
-	/*   EXT_CSD_SEC_COUNT */
-	case 215:
-	case 214:
-	case 213:
-	case 212:
-		print_field_caption_with_offset(SEC_COUNT,
-			index - EXT_CSD_SEC_COUNT, R);
-		val = get_field_val(SEC_COUNT, 0, 0xFF);
-		val = val | get_field_val(SEC_COUNT + 1, 0, 0xFF) << 8;
-		val = val | get_field_val(SEC_COUNT + 2, 0, 0xFF) << 16;
-		val = val | get_field_val(SEC_COUNT + 3, 0, 0xFF) << 24;
-		tmp64 = val * 512;
-		printf("\tDevice density: %llu B\n", tmp64);
+	case EXT_CSD_BARRIER_CTRL:
+		val = get_field_val(EXT_CSD_BARRIER_CTRL, 0, 0x1);
+		printf("\t[0] BARRIER_EN: %s\n", val ? "ON" : "OFF");
 		return 1;
 
-	case EXT_CSD_SLEEP_NOTIFICATION_TIME:
-		print_field_caption(SLEEP_NOTIFICATION_TIME, R);
-		val = get_field_val(SLEEP_NOTIFICATION_TIME, 0, 0xFF);
-		val = 100 << val;
+	case EXT_CSD_OUT_OF_INTERRUPT_TIME:
+		val = get_field_val(EXT_CSD_OUT_OF_INTERRUPT_TIME, 0, 0xFF);
+		val = val * 10;
 		if (val)
-			str = basprintf("Sleep Notification timeout values: %u us",
-				       val);
+			printf("\tOut-of-interrupt timeout definition: %u ms\n",
+				val);
 		else
-			str = strdup("Not defined");
-		printf("\t[7-0] %s\n", str);
-		free(str);
+			printf("\tNot Defined\n");
 		return 1;
 
-	case EXT_CSD_S_A_TIMEOUT:
-		print_field_caption(S_A_TIMEOUT, R);
-		val = get_field_val(S_A_TIMEOUT, 0, 0xFF);
-		val = 100 << val;
+	case EXT_CSD_PARTITION_SWITCH_TIME:
+		val = get_field_val(EXT_CSD_PARTITION_SWITCH_TIME, 0, 0xFF);
+		val = val * 10;
 		if (val)
-			str = basprintf("Sleep/awake timeout values: %u ns", val);
+			printf("\tPartition switch timeout definition: %u ms\n",
+				val);
 		else
-			str = strdup("Not defined");
-		printf("\t[7-0] %s\n", str);
-		free(str);
+			printf("\tNot Defined\n");
 		return 1;
 
-	case EXT_CSD_PRODUCTION_ST8_AWARENSS_TIMEOUT:
-		print_field_caption(PRODUCTION_ST8_AWARENSS_TIMEOUT, R);
-		val = get_field_val(PRODUCTION_ST8_AWARENSS_TIMEOUT, 0, 0xFF);
-		val = 100 << val;
-		if (val)
-			str = basprintf(
-			"Production State Awareness timeout definition: %u us",
-				val);
-		else
-			str = strdup("Not defined");
-		printf("\t[7-0] %s\n", str);
-		free(str);
+	case EXT_CSD_DRIVER_STRENGTH:
+		val = get_field_val(EXT_CSD_DRIVER_STRENGTH, 0, 0x1);
+		printf("\t[0] Type 0: %ssupported\n", val ? "" : "not ");
+		val = get_field_val(EXT_CSD_DRIVER_STRENGTH, 1, 0x1);
+		printf("\t[1] Type 1: %ssupported\n", val ? "" : "not ");
+		val = get_field_val(EXT_CSD_DRIVER_STRENGTH, 2, 0x1);
+		printf("\t[2] Type 2: %ssupported\n", val ? "" : "not ");
+		val = get_field_val(EXT_CSD_DRIVER_STRENGTH, 3, 0x1);
+		printf("\t[3] Type 3: %ssupported\n", val ? "" : "not ");
+		val = get_field_val(EXT_CSD_DRIVER_STRENGTH, 4, 0x1);
+		printf("\t[4] Type 4: %ssupported\n", val ? "" : "not ");
 		return 1;
 
-	case EXT_CSD_S_C_VCCQ:
-		print_field_caption(S_C_VCCQ, R);
-		val = get_field_val(S_C_VCCQ, 0, 0xF);
-		val = 1 << val;
+	case EXT_CSD_CACHE_FLUSH_POLICY:
+		val = get_field_val(EXT_CSD_CACHE_FLUSH_POLICY, 0, 0x1);
 		if (val)
-			str = basprintf("S_C_VCCQ Sleep Current: %u uA", val);
+			str = "FIFO policy for cache";
 		else
-			str = strdup("Not defined");
-		printf("\t[3-0] %s\n", str);
-		free(str);
+			str = "not provided";
+		printf("\t[0] Device flushing: %s", str);
 		return 1;
 
-	case EXT_CSD_S_C_VCC:
-		print_field_caption(S_C_VCC, R);
-		val = get_field_val(S_C_VCC, 0, 0xFF);
-		val = 1 << val;
-		if (val)
-			str = basprintf("S_C_VCC Sleep Current: %u uA", val);
-		else
-			str = strdup("Not defined");
-		printf("\t[3-0] %s\n", str);
-		free(str);
+	case EXT_CSD_OPTIMAL_READ_SIZE:
+		val = get_field_val(EXT_CSD_OPTIMAL_READ_SIZE, 0, 0xFF);
+		val = val * 4048;
+		printf("\t[7-0] Minimum optimal read unit size: %u\n", val);
 		return 1;
 
-	case EXT_CSD_HC_WP_GRP_SIZE:
-		print_field_caption(HC_WP_GRP_SIZE, R);
-		val = get_field_val(HC_WP_GRP_SIZE, 0, 0xFF);
-		if (val)
-			str = basprintf("Write protect group size: %u", val);
-		else
-			str = strdup("No support");
-		printf("\t[7-0] %s\n", str);
-		free(str);
+	case EXT_CSD_OPTIMAL_WRITE_SIZE:
+		val = get_field_val(EXT_CSD_OPTIMAL_WRITE_SIZE, 0, 0xFF);
+		val = val * 4048;
+		printf("\t[7-0] Minimum optimal write unit size: %u\n", val);
 		return 1;
 
-	case EXT_CSD_REL_WR_SEC_C:
-		print_field_caption(REL_WR_SEC_C, R);
-		val = get_field_val(REL_WR_SEC_C, 0, 0xFF);
-		printf("\t[7-0] Reliable Write Sector Count: %u\n", val);
+	case EXT_CSD_PRE_EOL_INFO:
+		val = get_field_val(EXT_CSD_PRE_EOL_INFO, 0, 0x3);
+		switch (val) {
+		case 1:
+			str = "normal";
+			break;
+		case 2:
+			str = "warning";
+			break;
+		case 3:
+			str = "urgent";
+			break;
+		default:
+			str = "Not defined";
+		}
+		printf("\t[1-0] Device life time: %s\n", str);
 		return 1;
 
-	case EXT_CSD_ERASE_TIMEOUT_MULT:
-		print_field_caption(ERASE_TIMEOUT_MULT, R);
-		val = get_field_val(ERASE_TIMEOUT_MULT, 0, 0xFF);
-		val = val * 300;
-		if (val)
-			str = basprintf("Erase timeout values: %u", val);
+	case EXT_CSD_DEVICE_LIFE_TIME_EST_TYP_A:
+		val = get_field_val(EXT_CSD_DEVICE_LIFE_TIME_EST_TYP_A, 0, 0xFF);
+		val = val * 10;
+		if (val == 0)
+			str = strdup("not defined");
+		else if (val == 0xB)
+			str = strdup("maximum");
 		else
-			str = strdup("No support");
-		printf("\t[7-0] %s\n", str);
+			str = basprintf("%u%% - %u%%", (val - 10), val);
+		printf("\tDevice life time, type A (estimation): %s\n", str);
 		free(str);
 		return 1;
 
-	case EXT_CSD_HC_ERASE_GRP_SIZE:
-		print_field_caption(HC_ERASE_GRP_SIZE, R);
-		val = get_field_val(HC_ERASE_GRP_SIZE, 0, 0xFF);
-		val = val * 524288;
-		if (val)
-			str = basprintf("Erase-unit size: %u", val);
+	case EXT_CSD_DEVICE_LIFE_TIME_EST_TYP_B:
+		val = get_field_val(EXT_CSD_DEVICE_LIFE_TIME_EST_TYP_B, 0, 0xFF);
+		val = val * 10;
+		if (val == 0)
+			str = strdup("not defined");
+		else if (val == 0xB)
+			str = strdup("maximum");
 		else
-			str = strdup("No support");
-		printf("\t[7-0] %s\n", str);
+			str = basprintf("%u%% - %u%%", (val - 10), val);
+		printf("\tDevice life time, type B (estimation): %s\n", str);
 		free(str);
 		return 1;
 
-	case EXT_CSD_ACC_SIZE:
-		print_field_caption(ACC_SIZE, R);
-		val = get_field_val(ACC_SIZE, 0, 0xF);
-		val = val * 512;
-		if (val)
-			str = basprintf("Superpage size: %u", val);
-		else
-			str = strdup("Not defined");
-		printf("\t[3-0] %s\n", str);
-		free(str);
+	case EXT_CSD_NMBR_OF_FW_SCTRS_CRRCTLY_PRGRMD:
 		return 1;
 
-	case EXT_CSD_BOOT_SIZE_MULT:
-		print_field_caption(BOOT_SIZE_MULT, R);
-		val = get_field_val(BOOT_SIZE_MULT, 0, 0xFF);
-		val = val * 131072;
-		printf("\tBoot partition size: %u\n", val);
+	case EXT_CSD_CMDQ_DEPTH:
+		val = get_field_val(EXT_CSD_CMDQ_DEPTH, 0, 0xF);
+		++val;
+		printf("\t[3-0] Queue Depth: %u", val);
 		return 1;
 
-	case EXT_CSD_BOOT_INFO:
-		print_field_caption(BOOT_INFO, R);
-		val = get_field_val(BOOT_INFO, 0, 0x1);
-		printf("\t[0] ALT_BOOT_MODE: %ssupported\n", val ? "" : "not ");
-		val = get_field_val(BOOT_INFO, 1, 0x1);
-		printf("\t[1] DDR_BOOT_MODE: %ssupported\n", val ? "" : "not ");
-		val = get_field_val(BOOT_INFO, 2, 0x1);
-		printf("\t[2] HS_BOOT_MODE: %ssupported\n", val ? "" : "not ");
+	case EXT_CSD_CMDQ_SUPPORT:
+		val = get_field_val(EXT_CSD_CMDQ_SUPPORT, 0, 0x1);
+		printf("\t[0] Command queuing: %ssupported\n",
+			val ? "" : "not ");
 		return 1;
 
-	case EXT_CSD_BKOPS_SUPPORT:
-		print_field_caption(BKOPS_SUPPORT, R);
-		val = get_field_val(BKOPS_SUPPORT, 0, 0x1);
-		printf("\t[0] SUPPORTED: %u\n", val);
+	case EXT_CSD_BARRIER_SUPPORT:
+		val = get_field_val(EXT_CSD_BARRIER_SUPPORT, 0, 0x1);
+		printf("\t[0] Barrier command: %ssupported\n",
+			val ? "" : "not ");
 		return 1;
 
-	case EXT_CSD_HPI_FEATURES:
-		print_field_caption(HPI_FEATURES, R);
-		val = get_field_val(HPI_FEATURES, 0, 0x1);
-		printf("\t[0] HPI_SUPPORTED: %u\n", val);
-		val = get_field_val(HPI_FEATURES, 1, 0x1);
-		printf("\t[1] HPI_FEATURES: implementation based on CMD1%s\n",
-			val ? "2" : "3");
+	case EXT_CSD_FFU_ARG:
 		return 1;
 
-	case EXT_CSD_S_CMD_SET:
-		print_field_caption(S_CMD_SET, R);
-		val = get_field_val(S_CMD_SET, 0, 0xFF);
-		printf("\t[7-0] Command Set: %#02x\n", val);
+	case EXT_CSD_OPERATION_CODES_TIMEOUT:
+		val = get_field_val(EXT_CSD_OPERATION_CODES_TIMEOUT, 0, 0xFF);
+		printf("\t[7-0] Timeout Values: %#02x\n", val);
 		return 1;
 
-	case EXT_CSD_EXT_SECURITY_ERR:
-		print_field_caption(EXT_SECURITY_ERR, R);
-		val = get_field_val(EXT_SECURITY_ERR, 0, 0x1);
-		printf("\t[0] SEC_INVALID_COMMAND_PARAMETERS: %u\n", val);
-		val = get_field_val(EXT_SECURITY_ERR, 1, 0x1);
-		printf("\t[1] ACCESS_DENIED: %u\n", val);
+	case EXT_CSD_FFU_FEATURES:
+		val = get_field_val(EXT_CSD_FFU_FEATURES, 0, 0x1);
+		printf("\t[0] NUMBER_OF_FW_SECTORS_CORRECTLY_PROGRAMMED: "
+			"%ssupported\n", val ? "" : " not");
 		return 1;
 
+	case EXT_CSD_SUPPORTED_MODES:
+		val = get_field_val(EXT_CSD_SUPPORTED_MODES, 0, 0x1);
+		printf("\t[0] FFU: %ssupported\n", val ? "" : "not ");
+		val = get_field_val(EXT_CSD_SUPPORTED_MODES, 1, 0x1);
+		printf("\t[1] VSM: %ssupported\n", val ? "" : "not ");
+		return 1;
 	}
 
 	return 0;
diff --git a/include/mci.h b/include/mci.h
index bc7d9c95b2..d3115e8cc6 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -160,7 +160,7 @@
 #define EXT_CSD_POWER_OFF_NOTIFICATION		34	/* R/W */
 #define EXT_CSD_PACKED_FAILURE_INDEX		35	/* RO */
 #define EXT_CSD_PACKED_COMMAND_STATUS		36	/* RO */
-#define EXT_CSD_CONTEXT_CONF			37	/* R/W, 15 bytes */
+#define EXT_CSD_CONTEXT_CONF(index)		(37 + (index) - 1) /* R/W, 15 bytes */
 #define EXT_CSD_EXT_PARTITIONS_ATTRIBUTE	52	/* R/W, 2 bytes */
 #define EXT_CSD_EXCEPTION_EVENTS_STATUS		54	/* RO, 2 bytes */
 #define EXT_CSD_EXCEPTION_EVENTS_CTRL		56	/* R/W, 2 bytes */
@@ -176,7 +176,10 @@
 #define EXT_CSD_SEC_BAD_BLK_MGMNT		134	/* R/W */
 #define EXT_CSD_ENH_START_ADDR			136	/* R/W, 4 bytes */
 #define EXT_CSD_ENH_SIZE_MULT			140	/* R/W, 3 bytes */
-#define EXT_CSD_GP_SIZE_MULT			143	/* R/W */
+#define EXT_CSD_GP_SIZE_MULT0			143	/* R/W */
+#define EXT_CSD_GP_SIZE_MULT1			146	/* R/W */
+#define EXT_CSD_GP_SIZE_MULT2			149	/* R/W */
+#define EXT_CSD_GP_SIZE_MULT3			152	/* R/W */
 #define EXT_CSD_PARTITION_SETTING_COMPLETED	155	/* R/W */
 #define EXT_CSD_PARTITIONS_ATTRIBUTE		156	/* R/W */
 #define EXT_CSD_MAX_ENH_SIZE_MULT		157	/* RO, 3 bytes */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
