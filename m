Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z6xIW-00031L-RJ
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 08:41:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jun 2015 10:40:56 +0200
Message-Id: <1434962466-23590-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434962466-23590-1-git-send-email-s.hauer@pengutronix.de>
References: <1434962466-23590-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/11] mtd: cfi-flash: We can print longlongs
To: Barebox List <barebox@lists.infradead.org>

printf supports printing longlongs, so drop print_longlong.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nor/cfi_flash.c | 24 +-----------------------
 1 file changed, 1 insertion(+), 23 deletions(-)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 0fa41bf..6d82764 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -124,19 +124,6 @@ static int flash_write_cfiword (struct flash_info *info, ulong dest,
 }
 
 #ifdef DEBUG
-/*
- * Debug support
- */
-void print_longlong (char *str, unsigned long long data)
-{
-	int i;
-	char *cp;
-
-	cp = (unsigned char *) &data;
-	for (i = 0; i < 8; i++)
-		sprintf (&str[i * 2], "%2.2x", *cp++);
-}
-
 static void flash_printqry (struct cfi_qry *qry)
 {
 	u8 *p = (u8 *)qry;
@@ -867,16 +854,7 @@ int flash_isequal(struct flash_info *info, flash_sect_t sect,
 		dev_dbg(info->dev, "is= %8.8x %8.8x\n", flash_read32(addr), (u32)cword);
 		retval = (flash_read32(addr) == cword);
 	} else if (bankwidth_is_8(info)) {
-#ifdef DEBUG
-		{
-			char str1[20];
-			char str2[20];
-
-			print_longlong (str1, flash_read32(addr));
-			print_longlong (str2, cword);
-			dev_dbg(info->dev, "is= %s %s\n", str1, str2);
-		}
-#endif
+		dev_dbg(info->dev, "is= %16.16llx %16.16llx\n", flash_read64(addr), (u64)cword);
 		retval = (flash_read64(addr) == cword);
 	} else
 		retval = 0;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
