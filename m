Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo3.mail-out.ovh.net ([87.98.172.249])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cry5H-00051Q-IW
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 02:39:15 +0000
Received: from player758.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id A7F42B9DDF
 for <barebox@lists.infradead.org>; Sun, 26 Mar 2017 04:38:47 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 26 Mar 2017 04:44:57 +0200
Message-Id: <1490496304-30850-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170325083155.GA14076@mail.ovh.net>
 <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 06/13] boot_verify: make it modifiable at start time
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/bootm.c      |  2 +-
 common/boot_verify.c  | 39 +++++++++++++++++++++++++++++++++------
 common/bootm.c        |  2 +-
 include/boot_verify.h | 15 ++++++++++++---
 4 files changed, 47 insertions(+), 11 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index b35aaa914..cb520a1ba 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -64,7 +64,7 @@ static int do_bootm(int argc, char *argv[])
 	while ((opt = getopt(argc, argv, BOOTM_OPTS)) > 0) {
 		switch(opt) {
 		case 'c':
-			if (data.verify < BOOT_VERIFY_HASH)
+			if (data.verify > BOOT_VERIFY_HASH)
 				data.verify = BOOT_VERIFY_HASH;
 			break;
 		case 's':
diff --git a/common/boot_verify.c b/common/boot_verify.c
index afe929e68..9cbeb7a65 100644
--- a/common/boot_verify.c
+++ b/common/boot_verify.c
@@ -11,22 +11,49 @@ enum boot_verify boot_get_verify_mode(void)
 	return boot_verify_mode;
 }
 
+/* keep it for the most secure to the less */
 static const char * const boot_verify_names[] = {
-#ifndef CONFIG_BOOT_FORCE_SIGNED_IMAGES
-	[BOOT_VERIFY_NONE] = "none",
-	[BOOT_VERIFY_HASH] = "hash",
-	[BOOT_VERIFY_AVAILABLE] = "available",
-#endif
 	[BOOT_VERIFY_SIGNATURE] = "signature",
+	[BOOT_VERIFY_AVAILABLE] = "available",
+	[BOOT_VERIFY_HASH] = "hash",
+	[BOOT_VERIFY_NONE] = "none",
 };
 
+/* allow architecture to overwrite it such as EFI */
+static int default_is_secure_mode(void)
+{
+	if (IS_ENABLED(CONFIG_BOOT_FORCE_SIGNED_IMAGES))
+		return 1;
+
+	return 0;
+}
+
+static int (*__is_secure_mode)(void) = default_is_secure_mode;
+
+int is_secure_mode(void)
+{
+	return __is_secure_mode();
+}
+
+void boot_set_is_secure_mode(int (*fn)(void))
+{
+	__is_secure_mode = fn;
+}
+
 static int init_boot_verify(void)
 {
+	int size;
+
 	if (IS_ENABLED(CONFIG_BOOT_FORCE_SIGNED_IMAGES))
 		boot_verify_mode = BOOT_VERIFY_SIGNATURE;
 
+	if (is_secure_mode())
+		size = 1;
+	else
+		size = ARRAY_SIZE(boot_verify_names);
+
 	globalvar_add_simple_enum("boot.verify", (unsigned int *)&boot_verify_mode,
-				  boot_verify_names, ARRAY_SIZE(boot_verify_names));
+				  boot_verify_names, size);
 
 	return 0;
 }
diff --git a/common/bootm.c b/common/bootm.c
index 74202a829..1558f3c5d 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -159,7 +159,7 @@ static int bootm_open_initrd_uimage(struct image_data *data)
 		if (!data->initrd)
 			return -EINVAL;
 
-		if (boot_get_verify_mode() > BOOT_VERIFY_NONE) {
+		if (boot_get_verify_mode() != BOOT_VERIFY_NONE) {
 			ret = uimage_verify(data->initrd);
 			if (ret) {
 				printf("Checking data crc failed with %s\n",
diff --git a/include/boot_verify.h b/include/boot_verify.h
index 3a4436584..ee830bf5c 100644
--- a/include/boot_verify.h
+++ b/include/boot_verify.h
@@ -2,10 +2,10 @@
 #define __BOOT_VERIFY_H__
 
 enum boot_verify {
-	BOOT_VERIFY_NONE,
-	BOOT_VERIFY_HASH,
-	BOOT_VERIFY_AVAILABLE,
 	BOOT_VERIFY_SIGNATURE,
+	BOOT_VERIFY_AVAILABLE,
+	BOOT_VERIFY_HASH,
+	BOOT_VERIFY_NONE,
 };
 
 #ifndef CONFIG_BOOT_VERIFY
@@ -13,8 +13,17 @@ static inline enum boot_verify boot_get_verify_mode(void)
 {
 	return BOOT_VERIFY_NONE;
 }
+
+static int inline is_secure_mode(void)
+{
+	return 0;
+}
+
+static void inline boot_set_is_secure_mode(int (*fn)(void)) {}
 #else
 enum boot_verify boot_get_verify_mode(void);
+int is_secure_mode(void);
+void boot_set_is_secure_mode(int (*fn)(void));
 #endif
 
 #endif /* __BOOT_VERIFY_H__ */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
