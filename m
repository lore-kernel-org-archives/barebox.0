Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo4.mail-out.ovh.net ([188.165.33.112]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T0Wfl-0001Xu-Uw
 for barebox@lists.infradead.org; Sun, 12 Aug 2012 11:49:34 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 0D2121054319
 for <barebox@lists.infradead.org>; Sun, 12 Aug 2012 13:54:09 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 12 Aug 2012 13:49:37 +0200
Message-Id: <1344772179-13591-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1344772179-13591-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120812114647.GF6271@game.jcrosoft.org>
 <1344772179-13591-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/4] filetype: add fat filesystem support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/filetype.c  |   20 ++++++++++++++++++++
 include/filetype.h |    1 +
 2 files changed, 21 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 1a5b82d..e736d43 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -22,6 +22,7 @@
 #include <common.h>
 #include <filetype.h>
 #include <asm/byteorder.h>
+#include <asm/unaligned.h>
 #include <fcntl.h>
 #include <fs.h>
 #include <malloc.h>
@@ -40,6 +41,7 @@ static const char *filetype_str[] = {
 	[filetype_aimage] = "Android boot image",
 	[filetype_sh] = "Bourne Shell",
 	[filetype_mips_barebox] = "MIPS barebox image",
+	[filetype_fat] = "FAT filesytem",
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -50,6 +52,22 @@ const char *file_type_to_string(enum filetype f)
 	return NULL;
 }
 
+static int is_fat(u8 *buf)
+{
+	if (get_unaligned_le16(&buf[510]) != 0xAA55)
+		return 0;
+
+	/* FAT */
+	if ((get_unaligned_le32(&buf[54]) & 0xFFFFFF) == 0x544146)
+		return 1;
+
+	/* FAT32 */
+	if ((get_unaligned_le32(&buf[82]) & 0xFFFFFF) == 0x544146)
+		return 1;
+
+	return 0;
+}
+
 enum filetype file_detect_type(void *_buf)
 {
 	u32 *buf = _buf;
@@ -81,6 +99,8 @@ enum filetype file_detect_type(void *_buf)
 		return filetype_aimage;
 	if (strncmp(buf8 + 0x10, "barebox", 7) == 0)
 		return filetype_mips_barebox;
+	if (is_fat(buf8))
+		return filetype_fat;
 
 	return filetype_unknown;
 }
diff --git a/include/filetype.h b/include/filetype.h
index f5de8ed..179ec0f 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -18,6 +18,7 @@ enum filetype {
 	filetype_aimage,
 	filetype_sh,
 	filetype_mips_barebox,
+	filetype_fat,
 };
 
 const char *file_type_to_string(enum filetype f);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
