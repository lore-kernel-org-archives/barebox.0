Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
	helo=mo2.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RCYTV-0001d0-74
	for barebox@lists.infradead.org; Sat, 08 Oct 2011 15:06:06 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id BBB61DCE755
	for <barebox@lists.infradead.org>;
	Sat,  8 Oct 2011 17:07:54 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  8 Oct 2011 16:41:55 +0200
Message-Id: <1318084919-3984-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/5] move digest to crypto/
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Makefile                 |    2 +-
 arch/arm/Kconfig         |    1 +
 arch/blackfin/Kconfig    |    2 +-
 arch/mips/Kconfig        |    1 +
 arch/nios2/Kconfig       |    2 +-
 arch/ppc/Kconfig         |    1 +
 arch/sandbox/Kconfig     |    1 +
 arch/x86/Kconfig         |    1 +
 {lib => crypto}/Kconfig  |   15 ---------------
 crypto/Makefile          |    5 +++++
 {lib => crypto}/crc16.c  |    0
 {lib => crypto}/crc32.c  |    0
 {lib => crypto}/md5.c    |    0
 {lib => crypto}/sha1.c   |    0
 {lib => crypto}/sha256.c |    0
 lib/Kconfig              |   22 ----------------------
 lib/Makefile             |    5 -----
 scripts/bareboxenv.c     |    2 +-
 scripts/mkimage.c        |    2 +-
 19 files changed, 15 insertions(+), 47 deletions(-)
 copy {lib => crypto}/Kconfig (56%)
 create mode 100644 crypto/Makefile
 rename {lib => crypto}/crc16.c (100%)
 rename {lib => crypto}/crc32.c (100%)
 rename {lib => crypto}/md5.c (100%)
 rename {lib => crypto}/sha1.c (100%)
 rename {lib => crypto}/sha256.c (100%)

diff --git a/Makefile b/Makefile
index ccf012c..175444d 100644
--- a/Makefile
+++ b/Makefile
@@ -410,7 +410,7 @@ scripts: scripts_basic include/config/auto.conf
 	$(Q)$(MAKE) $(build)=$(@)
 
 # Objects we will link into barebox / subdirs we need to visit
-common-y		:= common/ drivers/ commands/ lib/ net/ fs/
+common-y		:= common/ drivers/ commands/ lib/ crypto/ net/ fs/
 
 ifeq ($(dot-config),1)
 # Read in config
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index d123787..da33000 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -144,3 +144,4 @@ source net/Kconfig
 source drivers/Kconfig
 source fs/Kconfig
 source lib/Kconfig
+source crypto/Kconfig
diff --git a/arch/blackfin/Kconfig b/arch/blackfin/Kconfig
index 587f802..1c58ba8 100644
--- a/arch/blackfin/Kconfig
+++ b/arch/blackfin/Kconfig
@@ -73,4 +73,4 @@ source net/Kconfig
 source drivers/Kconfig
 source fs/Kconfig
 source lib/Kconfig
-
+source crypto/Kconfig
diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 8970470..50d5c67 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -225,3 +225,4 @@ source net/Kconfig
 source drivers/Kconfig
 source fs/Kconfig
 source lib/Kconfig
+source crypto/Kconfig
diff --git a/arch/nios2/Kconfig b/arch/nios2/Kconfig
index b4b0429..e1af0c0 100644
--- a/arch/nios2/Kconfig
+++ b/arch/nios2/Kconfig
@@ -36,4 +36,4 @@ source net/Kconfig
 source drivers/Kconfig
 source fs/Kconfig
 source lib/Kconfig
-
+source crypto/Kconfig
diff --git a/arch/ppc/Kconfig b/arch/ppc/Kconfig
index 50ccaac..4c7b7cd 100644
--- a/arch/ppc/Kconfig
+++ b/arch/ppc/Kconfig
@@ -55,3 +55,4 @@ source net/Kconfig
 source drivers/Kconfig
 source fs/Kconfig
 source lib/Kconfig
+source crypto/Kconfig
diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 36f8afb..10e6829 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -20,3 +20,4 @@ source net/Kconfig
 source drivers/Kconfig
 source fs/Kconfig
 source lib/Kconfig
+source crypto/Kconfig
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 6e70760..711bbfe 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -65,3 +65,4 @@ source net/Kconfig
 source drivers/Kconfig
 source fs/Kconfig
 source lib/Kconfig
+source crypto/Kconfig
diff --git a/lib/Kconfig b/crypto/Kconfig
similarity index 56%
copy from lib/Kconfig
copy to crypto/Kconfig
index ad2b3cf..9f01810 100644
--- a/lib/Kconfig
+++ b/crypto/Kconfig
@@ -1,9 +1,3 @@
-config ZLIB
-	bool
-
-config BZLIB
-	bool
-
 config CRC32
 	bool
 
@@ -25,12 +19,3 @@ config SHA256
 	bool "SHA256"
 
 endif
-
-config GENERIC_FIND_NEXT_BIT
-	def_bool n
-
-config PROCESS_ESCAPE_SEQUENCE
-	def_bool n
-
-source lib/lzo/Kconfig
-
diff --git a/crypto/Makefile b/crypto/Makefile
new file mode 100644
index 0000000..a88c5b7
--- /dev/null
+++ b/crypto/Makefile
@@ -0,0 +1,5 @@
+obj-$(CONFIG_CRC32)	+= crc32.o
+obj-$(CONFIG_CRC16)	+= crc16.o
+obj-$(CONFIG_MD5)	+= md5.o
+obj-$(CONFIG_SHA1)	+= sha1.o
+obj-$(CONFIG_SHA256)	+= sha256.o
diff --git a/lib/crc16.c b/crypto/crc16.c
similarity index 100%
rename from lib/crc16.c
rename to crypto/crc16.c
diff --git a/lib/crc32.c b/crypto/crc32.c
similarity index 100%
rename from lib/crc32.c
rename to crypto/crc32.c
diff --git a/lib/md5.c b/crypto/md5.c
similarity index 100%
rename from lib/md5.c
rename to crypto/md5.c
diff --git a/lib/sha1.c b/crypto/sha1.c
similarity index 100%
rename from lib/sha1.c
rename to crypto/sha1.c
diff --git a/lib/sha256.c b/crypto/sha256.c
similarity index 100%
rename from lib/sha256.c
rename to crypto/sha256.c
diff --git a/lib/Kconfig b/lib/Kconfig
index ad2b3cf..51f43e0 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -4,28 +4,6 @@ config ZLIB
 config BZLIB
 	bool
 
-config CRC32
-	bool
-
-config CRC16
-	bool
-
-menuconfig DIGEST
-	bool "Digest                        "
-
-if DIGEST
-
-config MD5
-	bool "MD5"
-
-config SHA1
-	bool "SHA1"
-
-config SHA256
-	bool "SHA256"
-
-endif
-
 config GENERIC_FIND_NEXT_BIT
 	def_bool n
 
diff --git a/lib/Makefile b/lib/Makefile
index d96cfe7..c66da7a 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -17,8 +17,6 @@ obj-y			+= recursive_action.o
 obj-y			+= make_directory.o
 obj-$(CONFIG_BZLIB)	+= bzlib.o bzlib_crctable.o bzlib_decompress.o bzlib_huffman.o bzlib_randtable.o
 obj-$(CONFIG_ZLIB)	+= zlib.o gunzip.o
-obj-$(CONFIG_CRC32)	+= crc32.o
-obj-$(CONFIG_CRC16)	+= crc16.o
 obj-$(CONFIG_CMDLINE_EDITING)	+= readline.o
 obj-$(CONFIG_SIMPLE_READLINE)	+= readline_simple.o
 obj-$(CONFIG_GLOB)		+= fnmatch.o
@@ -31,6 +29,3 @@ obj-y			+= lzo/
 obj-y			+= show_progress.o
 obj-$(CONFIG_LZO_DECOMPRESS)		+= decompress_unlzo.o
 obj-$(CONFIG_PROCESS_ESCAPE_SEQUENCE)	+= process_escape_sequence.o
-obj-$(CONFIG_MD5)	+= md5.o
-obj-$(CONFIG_SHA1)	+= sha1.o
-obj-$(CONFIG_SHA256)	+= sha256.o
diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
index 5c7f10e..b0d5818 100644
--- a/scripts/bareboxenv.c
+++ b/scripts/bareboxenv.c
@@ -117,7 +117,7 @@ char *concat_subpath_file(const char *path, const char *f)
 
 #include "../lib/recursive_action.c"
 #include "../include/envfs.h"
-#include "../lib/crc32.c"
+#include "../crypto/crc32.c"
 #include "../lib/make_directory.c"
 #include "../include/environment.h"
 #include "../common/environment.c"
diff --git a/scripts/mkimage.c b/scripts/mkimage.c
index d3a8bfb..3beab91 100644
--- a/scripts/mkimage.c
+++ b/scripts/mkimage.c
@@ -34,7 +34,7 @@
 char *cmdname;
 
 #include "../include/zlib.h"
-#include "../lib/crc32.c"
+#include "../crypto/crc32.c"
 
 //extern unsigned long crc32 (unsigned long crc, const char *buf, unsigned int len);
 
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
