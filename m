Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eapkK-0005td-G0
 for barebox@lists.infradead.org; Sun, 14 Jan 2018 21:23:18 +0000
Received: by mail-lf0-x244.google.com with SMTP id y71so11151691lfd.12
 for <barebox@lists.infradead.org>; Sun, 14 Jan 2018 13:23:08 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 15 Jan 2018 00:22:49 +0300
Message-Id: <20180114212252.29682-5-antonynpavlov@gmail.com>
In-Reply-To: <20180114212252.29682-1-antonynpavlov@gmail.com>
References: <20180114212252.29682-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 4/7] move parseopt to lib/
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/Makefile                | 2 +-
 fs/fs.c                    | 3 +--
 fs/nfs.c                   | 3 +--
 {fs => include}/parseopt.h | 0
 lib/Makefile               | 1 +
 {fs => lib}/parseopt.c     | 0
 6 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/fs/Makefile b/fs/Makefile
index b3f929f506..8e3fd78e92 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -4,7 +4,7 @@ obj-$(CONFIG_FS_RAMFS)	+= ramfs.o
 obj-y			+= devfs-core.o
 obj-$(CONFIG_FS_DEVFS)	+= devfs.o
 obj-$(CONFIG_FS_FAT)	+= fat/
-obj-y	+= fs.o parseopt.o
+obj-y	+= fs.o
 obj-$(CONFIG_FS_UBIFS)	+= ubifs/
 obj-$(CONFIG_FS_TFTP)	+= tftp.o
 obj-$(CONFIG_FS_OMAP4_USBBOOT)	+= omap4_usbbootfs.o
diff --git a/fs/fs.c b/fs/fs.c
index f61ee091b5..ccb4943669 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -35,8 +35,7 @@
 #include <libgen.h>
 #include <block.h>
 #include <libfile.h>
-
-#include "parseopt.h"
+#include <parseopt.h>
 
 char *mkmodestr(unsigned long mode, char *str)
 {
diff --git a/fs/nfs.c b/fs/nfs.c
index 97f01cfb34..75cd127eeb 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -36,8 +36,7 @@
 #include <linux/sizes.h>
 #include <byteorder.h>
 #include <globalvar.h>
-
-#include "parseopt.h"
+#include <parseopt.h>
 
 #define SUNRPC_PORT     111
 
diff --git a/fs/parseopt.h b/include/parseopt.h
similarity index 100%
rename from fs/parseopt.h
rename to include/parseopt.h
diff --git a/lib/Makefile b/lib/Makefile
index 1be1742499..8f7ef4e4ed 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -59,3 +59,4 @@ obj-y			+= reed_solomon/
 obj-$(CONFIG_RATP)	+= ratp.o
 obj-y			+= list_sort.o
 obj-y			+= int_sqrt.o
+obj-y			+= parseopt.o
diff --git a/fs/parseopt.c b/lib/parseopt.c
similarity index 100%
rename from fs/parseopt.c
rename to lib/parseopt.c
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
