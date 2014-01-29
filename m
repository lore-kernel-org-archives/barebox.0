Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8Sxa-0006g0-Nk
 for barebox@lists.infradead.org; Wed, 29 Jan 2014 11:05:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 29 Jan 2014 12:05:06 +0100
Message-Id: <1390993508-10287-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] scripts: fix_size: check magic
To: barebox@lists.infradead.org

Instead of passing the offset to the fix_size tool check the image to
fixup for a valid header so that only recognized files are fixed up.
This makes the usage of this tool safer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/pbl/Makefile |  2 +-
 scripts/fix_size.c    | 32 +++++++++++++++++++++++++-------
 2 files changed, 26 insertions(+), 8 deletions(-)

diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
index bfa73b9..5e90f3d 100644
--- a/arch/arm/pbl/Makefile
+++ b/arch/arm/pbl/Makefile
@@ -23,7 +23,7 @@ $(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
 	$(call if_changed,objcopy)
 	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
 	$(Q)$(kecho) '  Barebox: fix size'
-	$(Q)$(objtree)/scripts/fix_size -f $(objtree)/$@ -o 0x2c $(FIX_SIZE)
+	$(Q)$(objtree)/scripts/fix_size -f $(objtree)/$@ $(FIX_SIZE)
 	$(Q)$(kecho) '  Barebox: $@ is ready'
 
 $(obj)/zbarebox.S: $(obj)/zbarebox FORCE
diff --git a/scripts/fix_size.c b/scripts/fix_size.c
index 869ae7e..1daf5fc 100644
--- a/scripts/fix_size.c
+++ b/scripts/fix_size.c
@@ -2,6 +2,7 @@
 #include <stdio.h>
 #include <sys/types.h>
 #include <sys/stat.h>
+#include <string.h>
 #include <unistd.h>
 #include <stdint.h>
 #include <fcntl.h>
@@ -15,20 +16,17 @@ int main(int argc, char**argv)
 	struct stat s;
 	int c;
 	int fd;
-	uint64_t offset = 0;
 	uint32_t size = 0;
 	char *file = NULL;
 	int ret = 1;
 	int is_bigendian = 0;
+	char magic[8];
 
-	while ((c = getopt (argc, argv, "hf:o:b")) != -1) {
+	while ((c = getopt (argc, argv, "hf:b")) != -1) {
 		switch (c) {
 		case 'f':
 			file = optarg;
 			break;
-		case 'o':
-			offset = strtoul(optarg, NULL, 16);
-			break;
 		case 'b':
 			is_bigendian = 1;
 			break;
@@ -45,13 +43,33 @@ int main(int argc, char**argv)
 		return 1;
 	}
 
-	fd = open(file, O_WRONLY);
+	fd = open(file, O_RDWR);
 	if (fd < 0) {
 		perror("open");
 		return 1;
 	}
 
-	ret = lseek(fd, offset, SEEK_SET);
+	ret = lseek(fd, 0x20, SEEK_SET);
+	if (ret < 0) {
+		perror("lseek");
+		ret = 1;
+		goto err;
+	}
+
+	ret = read(fd, magic, sizeof(magic));
+	if (ret < 0) {
+		perror("read");
+		ret = 1;
+		goto err;
+	}
+
+	if (strcmp(magic, "barebox")) {
+		fprintf(stderr, "invalid magic\n");
+		ret = 1;
+		goto err;
+	}
+
+	ret = lseek(fd, 0x2c, SEEK_SET);
 	if (ret < 0) {
 		perror("lseek");
 		ret = 1;
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
