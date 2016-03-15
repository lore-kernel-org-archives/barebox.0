Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1afmxI-0005IP-Td
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:16:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:15:34 +0100
Message-Id: <1458040534-6171-17-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458040534-6171-1-git-send-email-s.hauer@pengutronix.de>
References: <1458040534-6171-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/16] mtd: ubi: Make debug options configurable
To: Barebox List <barebox@lists.infradead.org>

This makes the UBI debug options configurable. This make the debug
options actually available to the user and also allows the compiler
to optimize away the debug code when the options are disabled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/Kconfig | 13 +++++++++++++
 drivers/mtd/ubi/debug.h | 10 ++++++++--
 2 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/ubi/Kconfig b/drivers/mtd/ubi/Kconfig
index ccd547d..4c49793 100644
--- a/drivers/mtd/ubi/Kconfig
+++ b/drivers/mtd/ubi/Kconfig
@@ -77,4 +77,17 @@ config MTD_UBI_FASTMAP
 
 	   If in doubt, say "N".
 
+comment "UBI debugging options"
+
+config MTD_UBI_CHECK_IO
+	bool "Check IO operations"
+	help
+	  When enabled UBI will check if erased blocks are really erased and if areas
+	  written to are empty before writing.
+
+config MTD_UBI_GENERAL_EXTRA_CHECKS
+	bool "general extra checks"
+	help
+	  This enables some general extra checks in UBI
+
 endif # MTD_UBI
diff --git a/drivers/mtd/ubi/debug.h b/drivers/mtd/ubi/debug.h
index c1b41b4..511e454 100644
--- a/drivers/mtd/ubi/debug.h
+++ b/drivers/mtd/ubi/debug.h
@@ -74,11 +74,17 @@ static inline int ubi_dbg_is_bgt_disabled(const struct ubi_device *ubi)
 
 static inline int ubi_dbg_chk_io(const struct ubi_device *ubi)
 {
-	return ubi->dbg.chk_io;
+	if (IS_ENABLED(CONFIG_MTD_UBI_CHECK_IO))
+		return 1;
+	else
+		return 0;
 }
 
 static inline int ubi_dbg_chk_gen(const struct ubi_device *ubi)
 {
-	return ubi->dbg.chk_gen;
+	if (IS_ENABLED(CONFIG_MTD_UBI_GENERAL_EXTRA_CHECKS))
+		return 1;
+	else
+		return 0;
 }
 #endif /* !__UBI_DEBUG_H__ */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
