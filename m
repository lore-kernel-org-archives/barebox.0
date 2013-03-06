Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDAjm-0000Wo-6z
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 09:34:18 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 31236104E6F8
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 10:45:17 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 10:29:37 +0100
Message-Id: <1362562189-17783-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130306092643.GF4401@game.jcrosoft.org>
 <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 08/20] filetype: add barebox arm application
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/filetype.c  |   35 +++++++++++++++++++++++++++++++++++
 include/filetype.h |    2 ++
 2 files changed, 37 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 8652f1d..16b217b 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -23,6 +23,7 @@
 #include <fs.h>
 #include <malloc.h>
 #include <errno.h>
+#include <linux/license.h>
 
 struct filetype_str {
 	const char *name;	/* human readable filetype */
@@ -49,6 +50,8 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_png] = { "PNG image", "png" },
 	[filetype_ext] = { "ext filesystem", "ext" },
 	[filetype_gpt] = { "GUID Partition Table", "gpt" },
+	[filetype_arm_application] = { "arm barebox application", "arm-barebox-app"},
+	[filetype_arm_gpl_application] = { "arm barebox GPL compatible application", "arm-barebox-gpl-app"},
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -151,6 +154,35 @@ enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec)
 	return filetype_mbr;
 }
 
+bool is_barebox_app_gpl_compatible(const uint8_t *buf8, size_t bufsize)
+{
+	int i;
+
+	if (bufsize < 12)
+		return false;
+
+	bufsize -= 12;
+
+	for (i = 0; i < bufsize; i++, buf8++) {
+		if (!strncmp("license=", buf8, 8) &&
+		    license_is_gpl_compatible(buf8 + 8))
+				return true;
+	}
+
+	return false;
+}
+
+enum filetype is_barebox_arm_app(const uint8_t *buf8, size_t bufsize)
+{
+	if (strcmp(buf8 + 0x20, "barebox_arm_app"))
+		return filetype_unknown;
+	/* license=GPL */
+	if (is_barebox_app_gpl_compatible(buf8 + 0x80, bufsize))
+		return filetype_arm_gpl_application;
+
+	return filetype_arm_application;
+}
+
 enum filetype file_detect_type(const void *_buf, size_t bufsize)
 {
 	const u32 *buf = _buf;
@@ -201,6 +233,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (buf[9] == 0x016f2818 || buf[9] == 0x18286f01)
 		return filetype_arm_zimage;
 
+	type = is_barebox_arm_app(buf8, bufsize);
+	if (type != filetype_unknown)
+		return type;
 	if (bufsize < 512)
 		return filetype_unknown;
 
diff --git a/include/filetype.h b/include/filetype.h
index 78ca5d2..09cdc99 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -24,6 +24,8 @@ enum filetype {
 	filetype_png,
 	filetype_ext,
 	filetype_gpt,
+	filetype_arm_application,
+	filetype_arm_gpl_application,
 	filetype_max,
 };
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
