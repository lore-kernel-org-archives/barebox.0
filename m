Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dBK7e-0007JD-Ft
 for barebox@lists.infradead.org; Thu, 18 May 2017 12:01:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 May 2017 14:01:14 +0200
Message-Id: <20170518120115.8040-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] mmc_extcsd command: Fix multiline prints
To: Barebox List <barebox@lists.infradead.org>

The multiline prints lack the indention at the beginning of the second
line. Add these.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mmc_extcsd.c | 29 ++++++++++++++---------------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/commands/mmc_extcsd.c b/commands/mmc_extcsd.c
index 42adfe0860..4c8537fe86 100644
--- a/commands/mmc_extcsd.c
+++ b/commands/mmc_extcsd.c
@@ -392,7 +392,7 @@ static int print_field_ge_v7(u8 *reg, int index)
 	case EXT_CSD_FFU_FEATURES:
 		print_field_caption(FFU_FEATURES, R);
 		val = get_field_val(FFU_FEATURES, 0, 0x1);
-		printf("\t[0] NUMBER_OF_FW_SECTORS_CORRECTLY_PROGRAMMED:\n"
+		printf("\t[0] NUMBER_OF_FW_SECTORS_CORRECTLY_PROGRAMMED: "
 			"%ssupported\n", val ? "" : " not");
 		return 1;
 
@@ -605,8 +605,7 @@ static int print_field_ge_v6(u8 *reg, int index)
 		if (val)
 			printf("\t[0] Device sector size is larger than 512 B\n");
 		else
-			printf("\t[0] Device sector size is 512 B\n"
-			"(emulated or native)\n");
+			printf("\t[0] Device sector size is 512 B (emulated or native)\n");
 		return 1;
 
 	case EXT_CSD_NATIVE_SECTOR_SIZE:
@@ -626,8 +625,8 @@ static int print_field_ge_v6(u8 *reg, int index)
 			str = "single data rate and dual data rate";
 		else
 			str = "single data rate";
-		printf("\t[0] PROGRAM_CID_CSD_DDR_SUPPORT: CMD26 and CMD27\n"
-			"%s mode\n", str);
+		printf("\t[0] PROGRAM_CID_CSD_DDR_SUPPORT: CMD26 and CMD27 %s mode\n",
+		       str);
 		return 1;
 
 	case EXT_CSD_PERIODIC_WAKEUP:
@@ -999,8 +998,8 @@ static int print_field_ge_v5(u8 *reg, int index)
 			str = "may";
 		else
 			str = "shall not";
-		printf("\t[1] AUTO_EN: Device %s perform background ops while\n"
-			"not servicing the host\n", str);
+		printf("\t[1] AUTO_EN: Device %s perform background ops while"
+		       "\t    not servicing the host\n", str);
 		return 1;
 
 	case EXT_CSD_BKOPS_START:
@@ -1029,7 +1028,7 @@ static int print_field_ge_v5(u8 *reg, int index)
 		printf("\t[2] EN_REL_WR: %s\n", str);
 		val = get_field_val(WR_REL_PARAM, 4, 0x1);
 		printf("\t[4] EN_RPMB_REL_WR: RPMB transfer size is either\n"
-			"256B (1 512B frame), 512B (2 512B frame)%s\n",
+		       "\t    256B (1 512B frame), 512B (2 512B frame)%s\n",
 			val ? ", 8KB (32 512B frames)" : "");
 		return 1;
 
@@ -1115,7 +1114,7 @@ static int print_field_ge_v5(u8 *reg, int index)
 		printf("\t[6] CD_PERM_WP_DIS: %s\n", str);
 
 		val = get_field_val(USER_WP, 7, 0x1);
-		printf("\t[7] PERM_PSWD_DS: Password protection features\n"
+		printf("\t[7] PERM_PSWD_DS: Password protection features "
 			"are %sabled\n", val ? "dis" : "en");
 		return 1;
 
@@ -1129,14 +1128,14 @@ static int print_field_ge_v5(u8 *reg, int index)
 		printf("\t[0] B_PWR_WP_EN: %s\n", str);
 		val = get_field_val(BOOT_WP, 1, 0x1);
 		printf("\t[1] B_PWR_WP_SEC_SEL: B_PWR_WP_EN(Bit 0) applies\n"
-			"to boot Area%s only, if B_SEC_WP_SEL (bit 7 is set)\n",
+		       "\t    to boot Area%s only, if B_SEC_WP_SEL (bit 7 is set)\n",
 			val ? "2" : "1");
 		val = get_field_val(BOOT_WP, 2, 0x1);
 		printf("\t[2] B_PERM_WP_EN: Boot region is %spermanently\n"
-			"write protected\n", val ? "" : "not ");
+		       "\t    write protected\n", val ? "" : "not ");
 		val = get_field_val(BOOT_WP, 3, 0x1);
 		printf("\t[3] B_PERM_WP_SEC_SEL: B_PERM_WP_EN(Bit 2) applies\n"
-			"to boot Area%s only, if B_SEC_WP_SEL (bit 7 is set)\n",
+		       "\t    to boot Area%s only, if B_SEC_WP_SEL (bit 7 is set)\n",
 			val ? "2" : "1");
 		val = get_field_val(BOOT_WP, 4, 0x1);
 		if (val)
@@ -1156,7 +1155,7 @@ static int print_field_ge_v5(u8 *reg, int index)
 		else
 			str = "boot partitions and B_PERM_WP_SEC_SEL (bit 3) and B_PWR_WP_SEC_SEL (bit 1) have no impact";
 		printf("\t[6] B_SEC_WP_SEL: B_PERM_WP_EN(bit2) and\n"
-			"B_PWR_WP_EN (bit 0) apply to %s\n", str);
+		       "\t    B_PWR_WP_EN (bit 0) apply to %s\n", str);
 		return 1;
 
 	case EXT_CSD_BOOT_WP_STATUS:
@@ -1211,14 +1210,14 @@ static int print_field_ge_v5(u8 *reg, int index)
 	case EXT_CSD_MIN_PERF_DDR_R_8_52:
 		print_field_caption(MIN_PERF_DDR_R_8_52, R);
 		val = get_field_val(MIN_PERF_DDR_R_8_52, 0, 0xFF);
-		printf("\t[7-0] Minimum Read Performance for 8bit at 52MHz in\n"
+		printf("\t[7-0] Minimum Read Performance for 8bit at 52MHz in "
 			"DDR mode %#02x\n", val);
 		return 1;
 
 	case EXT_CSD_MIN_PERF_DDR_W_8_52:
 		print_field_caption(MIN_PERF_DDR_W_8_52, R);
 		val = get_field_val(MIN_PERF_DDR_W_8_52, 0, 0xFF);
-		printf("\tMinimum Write Performance for 8bit at 52MHz in DDR\n"
+		printf("\tMinimum Write Performance for 8bit at 52MHz in DDR "
 			"mode %#02x\n", val);
 		return 1;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
