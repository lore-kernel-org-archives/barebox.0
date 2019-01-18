Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkIDp-0006ar-U2
 for barebox@lists.infradead.org; Fri, 18 Jan 2019 00:41:23 +0000
Received: by mail-pg1-x543.google.com with SMTP id z10so5203226pgp.7
 for <barebox@lists.infradead.org>; Thu, 17 Jan 2019 16:41:21 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 Jan 2019 16:41:13 -0800
Message-Id: <20190118004113.20740-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] ls: Adjust amount of space allocated for filesize
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Maximum file size on 64-bit system is 2^63-1 (9223372036854775807),
which takes more that 14 characters of space. In order to keep things
properly aligned adjust that spacing to 20 on 64-bit platforms.

Before:

ls -l /dev/
d---------              0 .
d---------              0 ..
crw-------          16384 dds-eeprom
crw-------            256 e1000-invm0
crw-------          16384 eeprom0
cr--------              0 full
crw-------           2048 imx-ocotp
crw-------          16384 main-eeprom
crw-------             64 mdio0-phy00
crw------- 9223372036854775807 mem
c-w-------              0 netconsole-1
c-w-------              0 null
crw-------   256060514304 nvme0n1
cr--------              0 prng
crw-------     4294967296 ram0
c-w-------              0 serial0-1
cr--------              0 zero

After:

ls -l /dev/
d---------                   0 .
d---------                   0 ..
crw-------               16384 dds-eeprom
crw-------                 256 e1000-invm0
crw-------               16384 eeprom0
cr--------                   0 full
crw-------                2048 imx-ocotp
crw-------               16384 main-eeprom
crw-------                  64 mdio0-phy00
crw------- 9223372036854775807 mem
c-w-------                   0 netconsole-1
c-w-------                   0 null
crw-------        256060514304 nvme0n1
cr--------                   0 prng
crw-------          4294967296 ram0
c-w-------                   0 serial0-1
cr--------                   0 zero

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/ls.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/commands/ls.c b/commands/ls.c
index e54991862..e5e37d75c 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -26,6 +26,15 @@
 #include <getopt.h>
 #include <stringlist.h>
 
+/*
+ * SIZELEN = strlen(itoa(MAX_LFS_FILESIZE)) + 1;
+ */
+#ifdef CONFIG_CPU_64
+#define SIZELEN		20
+#else
+#define SIZELEN		14
+#endif
+
 static void ls_one(const char *path, const char* fullname)
 {
 	char modestr[11];
@@ -38,7 +47,8 @@ static void ls_one(const char *path, const char* fullname)
 		return;
 
 	mkmodestr(s.st_mode, modestr);
-	printf("%s %14llu %*.*s", modestr, s.st_size, namelen, namelen, path);
+	printf("%s %*llu %*.*s", modestr, SIZELEN, s.st_size, namelen,
+	       namelen, path);
 
 	if (S_ISLNK(s.st_mode)) {
 		char realname[PATH_MAX];
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
