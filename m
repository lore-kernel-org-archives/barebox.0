Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0g0V-0002yP-4V
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 05:51:37 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 22 Aug 2019 07:51:12 +0200
Message-Id: <20190822055114.931-10-ahmad@a3f.at>
In-Reply-To: <20190822055114.931-1-ahmad@a3f.at>
References: <20190822055114.931-1-ahmad@a3f.at>
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
Subject: [PATCH 09/11] commands: mmc_extcsd: describe missing bit
To: barebox@lists.infradead.org
Cc: afa@pengutronix.de

The EXT_CSD_EXCEPTION_EVENTS_STATUS array entry is wrongly duplicated.
Replace the index by the correct field at byte offset 58[1].

[1]: See http://webshop.atlantiksysteme.de/temp/FLEXXONeMMC4.5pSLCSPECV1.2.pdf

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/mmc_extcsd.c | 11 +++++++++--
 include/mci.h         |  1 +
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/commands/mmc_extcsd.c b/commands/mmc_extcsd.c
index c27bb722ea51..ad8e9ad19f5f 100644
--- a/commands/mmc_extcsd.c
+++ b/commands/mmc_extcsd.c
@@ -222,8 +222,8 @@ static struct extcsd_reg extcsd[] = {
                 .access = ACC_R,
                 .width = 2,
         },
-        [EXT_CSD_EXCEPTION_EVENTS_STATUS] = {
-                .name = "EXT_CSD_EXCEPTION_EVENTS_STATUS",
+        [EXT_CSD_EXCEPTION_DYNCAP_NEEDED] = {
+                .name = "EXT_CSD_EXCEPTION_DYNCAP_NEEDED",
                 .access = ACC_R,
                 .width = 1,
         },
@@ -1833,6 +1833,13 @@ static int print_field(u8 *reg, int index)
 		printf("\t[4] EXTENDED_SECURITY_FAILURE: %i\n", val);
 		return 1;
 
+	case EXT_CSD_EXCEPTION_DYNCAP_NEEDED:
+		if  (get_field_val(EXT_CSD_EXCEPTION_EVENTS_STATUS, 2, 0x1)) {
+			val = get_field_val(EXT_CSD_EXCEPTION_DYNCAP_NEEDED, 0, 0x1);
+			printf("\t[0] DYNCAP_NEEDED: %i\n", val);
+		}
+                return 1;
+
 	case EXT_CSD_EXCEPTION_EVENTS_CTRL:
 		val = get_field_val(EXT_CSD_EXCEPTION_EVENTS_CTRL, 1, 0x1);
 		printf("\t[1] DYNCAP_EVENT_EN: %i\n", val);
diff --git a/include/mci.h b/include/mci.h
index 072008ef9da7..77625ea8e901 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -164,6 +164,7 @@
 #define EXT_CSD_EXT_PARTITIONS_ATTRIBUTE	52	/* R/W, 2 bytes */
 #define EXT_CSD_EXCEPTION_EVENTS_STATUS		54	/* RO, 2 bytes */
 #define EXT_CSD_EXCEPTION_EVENTS_CTRL		56	/* R/W, 2 bytes */
+#define EXT_CSD_EXCEPTION_DYNCAP_NEEDED		58	/* RO, 1 byte */
 #define EXT_CSD_CLASS_6_CTRL			59	/* R/W */
 #define EXT_CSD_INI_TIMEOUT_EMU			60	/* RO */
 #define EXT_CSD_DATA_SECTOR_SIZE		61	/* RO */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
