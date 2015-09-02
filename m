Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZX1aF-00054k-3D
 for barebox@lists.infradead.org; Wed, 02 Sep 2015 06:31:48 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 477FCA00259
 for <barebox@lists.infradead.org>; Wed,  2 Sep 2015 08:33:22 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Wed, 2 Sep 2015 08:28:51 +0200
Message-Id: <1441175333-26759-2-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1441175333-26759-1-git-send-email-d.schultz@phytec.de>
References: <1441175333-26759-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH v3 2/4] include: mci: Add new ext. CSD field defines
To: barebox@lists.infradead.org

Added missing defines for the extended CSD register until standard 5.1.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---

Changes:
	v2:
	Changed patch order
	Removed whitespaces from old defines

	v3:
	No changes

 include/mci.h | 99 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 99 insertions(+)

diff --git a/include/mci.h b/include/mci.h
index a7bf8cd..9e4d18b 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -183,6 +183,105 @@
 #define EXT_CSD_CACHE_SIZE		249	/* RO, 4 bytes */
 #define EXT_CSD_HPI_FEATURES		503	/* RO */
 
+/* Added with the 5.1 standard */
+#define EXT_CSD_CMDQ_MODE_EN			15	/* RO */
+#define EXT_CSD_SECURE_REMOVAL_TYPE		16	/* R/W */
+#define EXT_CSD_PRODUCT_ST8_AWARENSS_ENABLEMENT	17	/* R/W */
+#define EXT_CSD_MAX_PRE_LOADING_DATA_SIZE	18	/* RO, 4 bytes */
+#define EXT_CSD_PRE_LOADING_DATA_SIZE		22	/* R/W, 4 bytes */
+#define EXT_CSD_FFU_STATUS			26	/* RO */
+#define EXT_CSD_MODE_OPERATION_CODES		29	/* W */
+#define EXT_CSD_MODE_CONFIG			30	/* R/W */
+#define EXT_CSD_BARRIER_CTRL			31	/* R/W */
+#define EXT_CSD_PACKED_FAILURE_INDEX		35	/* RO */
+#define EXT_CSD_PACKED_COMMAND_STATUS		36	/* RO */
+#define EXT_CSD_CONTEXT_CONF			37	/* R/W, 15 bytes */
+#define EXT_CSD_EXT_PARTITIONS_ATTRIBUTE	52	/* R/W, 2 bytes */
+#define EXT_CSD_EXCEPTION_EVENTS_STATUS		54	/* RO, 2 bytes */
+#define EXT_CSD_EXCEPTION_EVENTS_CTRL		56	/* R/W, 2 bytes */
+#define EXT_CSD_CLASS_6_CTRL			59	/* R/W */
+#define EXT_CSD_INI_TIMEOUT_EMU			60	/* RO */
+#define EXT_CSD_DATA_SECTOR_SIZE		61	/* RO */
+#define EXT_CSD_USE_NATIVE_SECTOR		62	/* RO */
+#define EXT_CSD_NATIVE_SECTOR_SIZE		63	/* RO */
+#define EXT_CSD_PROGRAM_CID_CSD_DDR_SUPPORT	130	/* R/W */
+#define EXT_CSD_PERIODIC_WAKEUP			131	/* R/W/ */
+#define EXT_CSD_TCASE_SUPPORT			132	/* R/W */
+#define EXT_CSD_PRODUCTION_STATE_AWARENESS	133	/* R/W */
+#define EXT_CSD_SEC_BAD_BLK_MGMNT		134	/* R/W */
+#define EXT_CSD_ENH_START_ADDR			136	/* R/W, 4 bytes */
+#define EXT_CSD_ENH_SIZE_MULT			140	/* R/W, 3 bytes */
+#define EXT_CSD_PARTITION_SETTING_COMPLETED	155	/* R/W */
+#define EXT_CSD_PARTITIONS_ATTRIBUTE		156	/* R/W */
+#define EXT_CSD_MAX_ENH_SIZE_MULT		157	/* RO, 3 bytes */
+#define EXT_CSD_PARTITIONING_SUPPORT		160	/* RO */
+#define EXT_CSD_BKOPS_EN			163	/* R/W */
+#define EXT_CSD_BKOPS_START			164	/* WO */
+#define EXT_CSD_WR_REL_SET			167	/* R/W */
+#define EXT_CSD_RPMB_SIZE_MULT			168	/* RO */
+#define EXT_CSD_FW_CONFIG			169	/* R/W */
+#define EXT_CSD_USER_WP				171	/* R/W */
+#define EXT_CSD_BOOT_WP_STATUS			174	/* RO */
+#define EXT_CSD_BOOT_BUS_CONDITIONS		177	/* R/W */
+#define EXT_CSD_BOOT_CONFIG_PROT		178	/* R/W */
+#define EXT_CSD_PARTITION_CONFIG		179	/* R/W */
+#define EXT_CSD_STROBE_SUPPORT			184	/* RO */
+#define EXT_CSD_CMD_SET_REV			189	/* R/W */
+#define EXT_CSD_CMD_SET				191	/* R/W */
+#define EXT_CSD_CSD_STRUCTURE			194	/* RO */
+#define EXT_CSD_DEVICE_TYPE			196	/* RO */
+#define EXT_CSD_DRIVER_STRENGTH			197	/* RO */
+#define EXT_CSD_PART_SWITCH_TIME		199	/* RO */
+#define EXT_CSD_PARTITION_SWITCH_TIME		199	/* RO */
+#define EXT_CSD_MIN_PERF_R_4_26			205	/* RO */
+#define EXT_CSD_MIN_PERF_W_4_26			206	/* RO */
+#define EXT_CSD_MIN_PERF_R_8_26_4_52		207	/* RO */
+#define EXT_CSD_MIN_PERF_W_8_26_4_52		208	/* RO */
+#define EXT_CSD_MIN_PERF_R_8_52			209	/* RO */
+#define EXT_CSD_MIN_PERF_W_8_52			210	/* RO */
+#define EXT_CSD_SECURE_WP_INFO			211	/* RO */
+#define EXT_CSD_SEC_COUNT			212	/* RO, 4 bytes */
+#define EXT_CSD_SLEEP_NOTIFICATION_TIME		216	/* RO */
+#define EXT_CSD_PRODUCTION_ST8_AWARENSS_TIMEOUT	218	/* RO */
+#define EXT_CSD_S_C_VCCQ			219	/* RO */
+#define EXT_CSD_S_C_VCC				220	/* RO */
+#define EXT_CSD_ACC_SIZE			225	/* RO */
+#define EXT_CSD_BOOT_SIZE_MULT			226	/* RO */
+#define EXT_CSD_BOOT_INFO			228	/* RO */
+#define EXT_CSD_MIN_PERF_DDR_R_8_52		234	/* RO */
+#define EXT_CSD_MIN_PERF_DDR_W_8_52		235	/* RO */
+#define EXT_CSD_CACHE_FLUSH_POLICY		240	/* RO */
+#define EXT_CSD_INI_TIMEOUT_AP			241	/* RO */
+#define EXT_CSD_CORRECTLY_PRG_SECTORS_NUM	242	/* RO, 4 bytes */
+#define EXT_CSD_BKOPS_STATUS			246	/* RO */
+#define EXT_CSD_FIRMWARE_VERSION		254	/* RO, 8 bytes */
+#define EXT_CSD_DEVICE_VERSION			262	/* RO, 2 bytes */
+#define EXT_CSD_OPTIMAL_TRIM_UNIT_SIZE		264	/* RO */
+#define EXT_CSD_OPTIMAL_WRITE_SIZE		265	/* RO */
+#define EXT_CSD_OPTIMAL_READ_SIZE		266	/* RO */
+#define EXT_CSD_PRE_EOL_INFO			267	/* RO */
+#define EXT_CSD_DEVICE_LIFE_TIME_EST_TYP_A	268	/* RO */
+#define EXT_CSD_DEVICE_LIFE_TIME_EST_TYP_B	269	/* RO */
+#define EXT_CSD_NMBR_OF_FW_SCTRS_CRRCTLY_PRGRMD	302	/* RO, 4 bytes */
+#define EXT_CSD_CMDQ_DEPTH			307	/* RO */
+#define EXT_CSD_CMDQ_SUPPORT			308	/* RO */
+#define EXT_CSD_BARRIER_SUPPORT			486	/* RO */
+#define EXT_CSD_FFU_ARG				487	/* RO, 4 bytes */
+#define EXT_CSD_OPERATION_CODES_TIMEOUT		491	/* RO */
+#define EXT_CSD_FFU_FEATURES			492	/* RO */
+#define EXT_CSD_SUPPORTED_MODES			493	/* RO */
+#define EXT_CSD_EXT_SUPPORT			494	/* RO */
+#define EXT_CSD_LARGE_UNIT_SIZE_M1		495	/* RO */
+#define EXT_CSD_CONTEXT_CAPABILITIES		496	/* RO */
+#define EXT_CSD_TAG_RES_SIZE			497	/* RO */
+#define EXT_CSD_TAG_UNIT_SIZE			498	/* RO */
+#define EXT_CSD_DATA_TAG_SUPPORT		499	/* RO */
+#define EXT_CSD_MAX_PACKED_WRITES		500	/* RO */
+#define EXT_CSD_MAX_PACKED_READS		501	/* RO */
+#define EXT_CSD_BKOPS_SUPPORT			502	/* RO */
+#define EXT_CSD_S_CMD_SET			504	/* RO */
+#define EXT_CSD_EXT_SECURITY_ERR		505	/* RO */
+
 /*
  * EXT_CSD field definitions
  */
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
