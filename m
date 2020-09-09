Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFxrD-0002tP-Br
 for barebox@lists.infradead.org; Wed, 09 Sep 2020 11:01:44 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Wed,  9 Sep 2020 13:01:14 +0200
Message-Id: <20200909110118.19923-1-jbe@pengutronix.de>
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
Subject: [PATCH 1/5] commands: mmc_extcsd: print_field: fix 32 bit overflow
To: barebox@lists.infradead.org
Cc: Juergen Borleis <jbe@pengutronix.de>

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 commands/mmc_extcsd.c | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/commands/mmc_extcsd.c b/commands/mmc_extcsd.c
index c9a28fb1fe..40d11df17d 100644
--- a/commands/mmc_extcsd.c
+++ b/commands/mmc_extcsd.c
@@ -11,6 +11,7 @@
 #include <mci.h>
 #include <getopt.h>
 #include <fs.h>
+#include <linux/sizes.h>
 
 #define EXT_CSD_BLOCKSIZE	512
 
@@ -1142,7 +1143,7 @@ static int print_field(u8 *reg, int index)
 		return 1;
 
 	case EXT_CSD_SEC_COUNT:
-		tmp64 = val * 512;
+		tmp64 *= 512;
 		printf("\tDevice density: %llu B\n", tmp64);
 		return 1;
 
@@ -1232,7 +1233,7 @@ static int print_field(u8 *reg, int index)
 
 	case EXT_CSD_HC_ERASE_GRP_SIZE:
 		val = get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
-		val = val * 524288;
+		val = val * SZ_512K;
 		if (val)
 			str = basprintf("Erase-unit size: %u", val);
 		else
@@ -1342,7 +1343,8 @@ static int print_field(u8 *reg, int index)
 	case EXT_CSD_ENH_SIZE_MULT:
 		tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
 		tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
-		tmp64 = val * tmp * 524288;
+		tmp64 *= tmp;
+		tmp64 *= SZ_512K;
 		printf("\tEnhanced User Data Area %i Size: %llu B\n",
 				index - EXT_CSD_ENH_SIZE_MULT, tmp64);
 		return 1;
@@ -1350,28 +1352,32 @@ static int print_field(u8 *reg, int index)
 	case EXT_CSD_GP_SIZE_MULT3:
 		tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
 		tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
-		tmp64 = val * tmp * 524288;
+		tmp64 *= tmp;
+		tmp64 *= SZ_512K;
 		printf("\tGeneral_Purpose_Partition_3 Size: %llu B\n", tmp64);
 		return 1;
 
 	case EXT_CSD_GP_SIZE_MULT2:
 		tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
 		tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
-		tmp64 = val * tmp * 524288;
+		tmp64 *= tmp;
+		tmp64 *= SZ_512K;
 		printf("\tGeneral_Purpose_Partition_2 Size: %llu B\n", tmp64);
 		return 1;
 
 	case EXT_CSD_GP_SIZE_MULT1:
 		tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
 		tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
-		tmp64 = val * tmp * 524288;
+		tmp64 *= tmp;
+		tmp64 *= SZ_512K;
 		printf("\tGeneral_Purpose_Partition_1 Size: %llu B\n", tmp64);
 		return 1;
 
 	case EXT_CSD_GP_SIZE_MULT0:
 		tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
 		tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
-		tmp64 = val * tmp * 524288;
+		tmp64 *= tmp;
+		tmp64 *= SZ_512K;
 		printf("\tGeneral_Purpose_Partition_0 Size: %llu B\n", tmp64);
 		return 1;
 
@@ -1422,7 +1428,8 @@ static int print_field(u8 *reg, int index)
 	case EXT_CSD_MAX_ENH_SIZE_MULT:
 		tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
 		tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
-		tmp64 = val * tmp * 524288;
+		tmp64 *= tmp;
+		tmp64 *= SZ_512K;
 		printf("\tMax Enhanced Area: %llu B\n", tmp64);
 		return 1;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
