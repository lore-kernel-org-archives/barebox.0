Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22b.google.com ([2607:f8b0:400e:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avQcQ-0000cg-G2
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 14:39:11 +0000
Received: by mail-pf0-x22b.google.com with SMTP id n1so23347854pfn.2
 for <barebox@lists.infradead.org>; Wed, 27 Apr 2016 07:38:50 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 27 Apr 2016 07:38:41 -0700
Message-Id: <1461767921-13234-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH] commands: mmc_extcsd: Fix incorrect usage of sprintf
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

In a number of places print_field_ge_v7() and print_field() function
would call sprintf() without providing is with appropriate output
buffer (str is initialized to NULL). Replace the sprintf() with
basprintf() to fix that.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/mmc_extcsd.c | 79 ++++++++++++++++++++++++++++++---------------------
 1 file changed, 46 insertions(+), 33 deletions(-)

diff --git a/commands/mmc_extcsd.c b/commands/mmc_extcsd.c
index d05128c..a85086f 100644
--- a/commands/mmc_extcsd.c
+++ b/commands/mmc_extcsd.c
@@ -153,15 +153,16 @@ static int print_field_ge_v7(u8 *reg, int index)
 		tmp = get_field_val(DATA_SECTOR_SIZE, 0, 0x1);
 		if (tmp64 == 0xFFFFFFFF)
 			if (tmp)
-				str = "16 TB";
+				str = strdup("16 TB");
 			else
-				str = "2 TB";
+				str = strdup("2 TB");
 		else
 			if (tmp)
-				sprintf(str, "%llu B", tmp64 * 4096);
+				str = basprintf("%llu B", tmp64 * 4096);
 			else
-				sprintf(str, "%llu B", tmp64 * 512);
+				str = basprintf("%llu B", tmp64 * 512);
 		printf("\tMax_Pre_Loading_Data_Size: %s\n", str);
+		free(str);
 		return 1;
 
 	/*   EXT_CSD_PRE_LOADING_DATA_SIZE */
@@ -181,15 +182,16 @@ static int print_field_ge_v7(u8 *reg, int index)
 		tmp = get_field_val(DATA_SECTOR_SIZE, 0, 0x1);
 		if (tmp64 == 0xFFFFFFFF)
 			if (tmp)
-				str = "16 TB";
+				str = strdup("16 TB");
 			else
-				str = "2 TB";
+				str = strdup("2 TB");
 		else
 			if (tmp)
-				sprintf(str, "%llu B", tmp64 * 4096);
+				str = basprintf("%llu B", tmp64 * 4096);
 			else
-				sprintf(str, "%llu B", tmp64 * 512);
+				str = basprintf("%llu B", tmp64 * 512);
 		printf("\tPre_Loading_Data_Size: %s\n", str);
+		free(str);
 		return 1;
 
 	case EXT_CSD_FFU_STATUS:
@@ -319,12 +321,13 @@ static int print_field_ge_v7(u8 *reg, int index)
 		val = get_field_val(DEVICE_LIFE_TIME_EST_TYP_A, 0, 0xFF);
 		val = val * 10;
 		if (val == 0)
-			str = "not defined";
+			str = strdup("not defined");
 		else if (val == 0xB)
-			str = "maximum";
+			str = strdup("maximum");
 		else
-			sprintf(str, "%u%% - %u%%", (val - 10), val);
+			str = basprintf("%u%% - %u%%", (val - 10), val);
 		printf("\tDevice life time, type A (estimation): %s\n", str);
+		free(str);
 		return 1;
 
 	case EXT_CSD_DEVICE_LIFE_TIME_EST_TYP_B:
@@ -332,12 +335,13 @@ static int print_field_ge_v7(u8 *reg, int index)
 		val = get_field_val(DEVICE_LIFE_TIME_EST_TYP_B, 0, 0xFF);
 		val = val * 10;
 		if (val == 0)
-			str = "not defined";
+			str = strdup("not defined");
 		else if (val == 0xB)
-			str = "maximum";
+			str = strdup("maximum");
 		else
-			sprintf(str, "%u%% - %u%%", (val - 10), val);
+			str = basprintf("%u%% - %u%%", (val - 10), val);
 		printf("\tDevice life time, type B (estimation): %s\n", str);
+		free(str);
 		return 1;
 
 	/*   EXT_CSD_NMBR_OF_FW_SCTRS_CRRCTLY_PRGRMD */
@@ -1687,11 +1691,12 @@ static int print_field(u8 *reg, int index)
 		val = get_field_val(SLEEP_NOTIFICATION_TIME, 0, 0xFF);
 		val = 100 << val;
 		if (val)
-			sprintf(str, "Sleep Notification timeout values: %u us",
-				val);
+			str = basprintf("Sleep Notification timeout values: %u us",
+				       val);
 		else
-			str = "Not defined";
+			str = strdup("Not defined");
 		printf("\t[7-0] %s\n", str);
+		free(str);
 		return 1;
 
 	case EXT_CSD_S_A_TIMEOUT:
@@ -1699,10 +1704,11 @@ static int print_field(u8 *reg, int index)
 		val = get_field_val(S_A_TIMEOUT, 0, 0xFF);
 		val = 100 << val;
 		if (val)
-			sprintf(str, "Sleep/awake timeout values: %u ns", val);
+			str = basprintf("Sleep/awake timeout values: %u ns", val);
 		else
-			str = "Not defined";
+			str = strdup("Not defined");
 		printf("\t[7-0] %s\n", str);
+		free(str);
 		return 1;
 
 	case EXT_CSD_PRODUCTION_ST8_AWARENSS_TIMEOUT:
@@ -1710,12 +1716,13 @@ static int print_field(u8 *reg, int index)
 		val = get_field_val(PRODUCTION_ST8_AWARENSS_TIMEOUT, 0, 0xFF);
 		val = 100 << val;
 		if (val)
-			sprintf(str,
+			str = basprintf(
 			"Production State Awareness timeout definition: %u us",
 				val);
 		else
-			str = "Not defined";
+			str = strdup("Not defined");
 		printf("\t[7-0] %s\n", str);
+		free(str);
 		return 1;
 
 	case EXT_CSD_S_C_VCCQ:
@@ -1723,10 +1730,11 @@ static int print_field(u8 *reg, int index)
 		val = get_field_val(S_C_VCCQ, 0, 0xF);
 		val = 1 << val;
 		if (val)
-			sprintf(str, "S_C_VCCQ Sleep Current: %u uA", val);
+			str = basprintf("S_C_VCCQ Sleep Current: %u uA", val);
 		else
-			str = "Not defined";
+			str = strdup("Not defined");
 		printf("\t[3-0] %s\n", str);
+		free(str);
 		return 1;
 
 	case EXT_CSD_S_C_VCC:
@@ -1734,20 +1742,22 @@ static int print_field(u8 *reg, int index)
 		val = get_field_val(S_C_VCC, 0, 0xFF);
 		val = 1 << val;
 		if (val)
-			sprintf(str, "S_C_VCC Sleep Current: %u uA", val);
+			str = basprintf("S_C_VCC Sleep Current: %u uA", val);
 		else
-			str = "Not defined";
+			str = strdup("Not defined");
 		printf("\t[3-0] %s\n", str);
+		free(str);
 		return 1;
 
 	case EXT_CSD_HC_WP_GRP_SIZE:
 		print_field_caption(HC_WP_GRP_SIZE, R);
 		val = get_field_val(HC_WP_GRP_SIZE, 0, 0xFF);
 		if (val)
-			sprintf(str, "Write protect group size: %u", val);
+			str = basprintf("Write protect group size: %u", val);
 		else
-			str = "No support";
+			str = strdup("No support");
 		printf("\t[7-0] %s\n", str);
+		free(str);
 		return 1;
 
 	case EXT_CSD_REL_WR_SEC_C:
@@ -1761,10 +1771,11 @@ static int print_field(u8 *reg, int index)
 		val = get_field_val(ERASE_TIMEOUT_MULT, 0, 0xFF);
 		val = val * 300;
 		if (val)
-			sprintf(str, "Erase timeout values: %u", val);
+			str = basprintf("Erase timeout values: %u", val);
 		else
-			str = "No support";
+			str = strdup("No support");
 		printf("\t[7-0] %s\n", str);
+		free(str);
 		return 1;
 
 	case EXT_CSD_HC_ERASE_GRP_SIZE:
@@ -1772,10 +1783,11 @@ static int print_field(u8 *reg, int index)
 		val = get_field_val(HC_ERASE_GRP_SIZE, 0, 0xFF);
 		val = val * 524288;
 		if (val)
-			sprintf(str, "Erase-unit size: %u", val);
+			str = basprintf("Erase-unit size: %u", val);
 		else
-			str = "No support";
+			str = strdup("No support");
 		printf("\t[7-0] %s\n", str);
+		free(str);
 		return 1;
 
 	case EXT_CSD_ACC_SIZE:
@@ -1783,10 +1795,11 @@ static int print_field(u8 *reg, int index)
 		val = get_field_val(ACC_SIZE, 0, 0xF);
 		val = val * 512;
 		if (val)
-			sprintf(str, "Superpage size: %u", val);
+			str = basprintf("Superpage size: %u", val);
 		else
-			str = "Not defined";
+			str = strdup("Not defined");
 		printf("\t[3-0] %s\n", str);
+		free(str);
 		return 1;
 
 	case EXT_CSD_BOOT_SIZE_MULT:
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
