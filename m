Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLq4L-0006A0-NM
 for barebox@lists.infradead.org; Tue, 17 Sep 2013 07:51:34 +0000
Received: from mail434.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 59D9F1030211
 for <barebox@lists.infradead.org>; Tue, 17 Sep 2013 09:51:11 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 17 Sep 2013 09:52:18 +0200
Message-Id: <1379404339-6716-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] filetype: add arm u-boot support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/filetype.c  | 3 +++
 include/filetype.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 7507d85..59ea25a 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -35,6 +35,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_lzo_compressed] = { "lzo compressed", "lzo" },
 	[filetype_lz4_compressed] = { "lz4 compressed", "lz4" },
 	[filetype_arm_barebox] = { "arm barebox image", "arm-barebox" },
+	[filetype_arm_uboot] = { "arm u-boot image", "arm-u-boot" },
 	[filetype_uimage] = { "U-Boot uImage", "u-boot" },
 	[filetype_ubi] = { "UBI image", "ubi" },
 	[filetype_jffs2] = { "JFFS2 image", "jffs2" },
@@ -226,6 +227,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 
 	if (is_barebox_arm_head(_buf))
 		return filetype_arm_barebox;
+	if (buf[15] == 0xdeadbeef)
+		return filetype_arm_uboot;
 	if (buf[9] == 0x016f2818 || buf[9] == 0x18286f01)
 		return filetype_arm_zimage;
 
diff --git a/include/filetype.h b/include/filetype.h
index 9a864da..b83b9be 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -12,6 +12,7 @@ enum filetype {
 	filetype_lzo_compressed,
 	filetype_lz4_compressed,
 	filetype_arm_barebox,
+	filetype_arm_uboot,
 	filetype_uimage,
 	filetype_ubi,
 	filetype_jffs2,
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
