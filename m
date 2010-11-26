Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PM4PU-0002tK-6t
	for barebox@lists.infradead.org; Fri, 26 Nov 2010 19:56:45 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 26 Nov 2010 20:52:32 +0100
Message-Id: <1290801161-2417-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20101126194353.GH26540@game.jcrosoft.org>
References: <20101126194353.GH26540@game.jcrosoft.org>
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
Subject: [PATCH 03/12] cfi_flash: move flash_read_uchar from inline to noinline
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>, Patrice Vilchez <patrice.vilchez@atmel.com>

it will reduce the binary size of 28 bytes
and fix some issue observerd during the porting of the at91rm9200ek
when reading the device_id and manufacturor_id

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/nor/cfi_flash.c |   15 +++++++++++++++
 drivers/nor/cfi_flash.h |   15 +--------------
 2 files changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index 08e45ef..0efe0d4 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -186,6 +186,21 @@ static void flash_printqry (struct flash_info *info, flash_sect_t sect)
 #endif
 
 /*
+ * read a character at a port width address
+ */
+uchar flash_read_uchar (struct flash_info *info, uint offset)
+{
+	uchar *cp;
+
+	cp = flash_make_addr (info, 0, offset);
+#if defined(__LITTLE_ENDIAN)
+	return (cp[0]);
+#else
+	return (cp[info->portwidth - 1]);
+#endif
+}
+
+/*
  * read a short word by swapping for ppc format.
  */
 static ushort flash_read_ushort (struct flash_info *info, flash_sect_t sect, uint offset)
diff --git a/drivers/nor/cfi_flash.h b/drivers/nor/cfi_flash.h
index 047a035..9a299db 100644
--- a/drivers/nor/cfi_flash.h
+++ b/drivers/nor/cfi_flash.h
@@ -211,20 +211,7 @@ static inline uchar *flash_make_addr (struct flash_info *info, flash_sect_t sect
 	return ((uchar *) (info->start[sect] + (offset * info->portwidth)));
 }
 
-/*
- * read a character at a port width address
- */
-static inline uchar flash_read_uchar (struct flash_info *info, uint offset)
-{
-	uchar *cp;
-
-	cp = flash_make_addr (info, 0, offset);
-#if defined(__LITTLE_ENDIAN)
-	return (cp[0]);
-#else
-	return (cp[info->portwidth - 1]);
-#endif
-}
+uchar flash_read_uchar (struct flash_info *info, uint offset);
 
 #ifdef CONFIG_DRIVER_CFI_BANK_WIDTH_1
 #define bankwidth_is_1(info) (info->portwidth == 1)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
