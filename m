Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VOMkD-00050g-NI
 for barebox@lists.infradead.org; Tue, 24 Sep 2013 07:09:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 24 Sep 2013 09:08:41 +0200
Message-Id: <1380006527-2599-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380006527-2599-1-git-send-email-s.hauer@pengutronix.de>
References: <1380006527-2599-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/11] bootm: move getenv_loadaddr from command to common
To: barebox@lists.infradead.org

getenv_loadaddr may be used by other code, so move it
from command/ to common/

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c | 13 -------------
 common/bootm.c   | 13 +++++++++++++
 include/boot.h   |  2 ++
 3 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 8ce4867..c1d2ec4 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -75,19 +75,6 @@ static char *bootm_image_name_and_no(const char *name, int *no)
 #define BOOTM_OPTS BOOTM_OPTS_COMMON
 #endif
 
-unsigned long long getenv_loadaddr(const char *name)
-{
-	const char *valstr = getenv(name);
-
-	if (!valstr)
-		return UIMAGE_SOME_ADDRESS;
-
-	if (valstr[0] == '\0')
-		return UIMAGE_SOME_ADDRESS;
-
-	return simple_strtoull(valstr, NULL, 0);
-}
-
 static int do_bootm(int argc, char *argv[])
 {
 	int opt;
diff --git a/common/bootm.c b/common/bootm.c
index f7e4f9a..6b2c2a6 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -26,6 +26,19 @@ int register_image_handler(struct image_handler *handler)
 	return 0;
 }
 
+unsigned long long getenv_loadaddr(const char *name)
+{
+	const char *valstr = getenv(name);
+
+	if (!valstr)
+		return UIMAGE_SOME_ADDRESS;
+
+	if (valstr[0] == '\0')
+		return UIMAGE_SOME_ADDRESS;
+
+	return simple_strtoull(valstr, NULL, 0);
+}
+
 static struct image_handler *bootm_find_handler(enum filetype filetype,
 		struct image_data *data)
 {
diff --git a/include/boot.h b/include/boot.h
index ccce8e1..8d42d39 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -96,4 +96,6 @@ static inline int linux_bootargs_overwrite(const char *bootargs)
 
 int bootm_boot(struct image_data *);
 
+unsigned long long getenv_loadaddr(const char *name);
+
 #endif /* __BOOT_H */
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
