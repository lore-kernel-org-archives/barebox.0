Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RV9PE-0007jw-1z
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 22:10:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 23:10:02 +0100
Message-Id: <1322518209-2965-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322518209-2965-1-git-send-email-s.hauer@pengutronix.de>
References: <1322518209-2965-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/16] bootm: do not select uncompression methods
To: barebox@lists.infradead.org

Instead, let the user select them manually so that bootm supports
all compression types compiled in.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig |   12 ------------
 commands/bootm.c |    4 ++--
 2 files changed, 2 insertions(+), 14 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 18ab840..e5c0fb5 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -292,18 +292,6 @@ config CMD_BOOTM
 	select CRC32
 	prompt "bootm"
 
-config CMD_BOOTM_ZLIB
-	bool
-	depends on CMD_BOOTM
-	select ZLIB
-	prompt "bootm with zlib support"
-
-config CMD_BOOTM_BZLIB
-	bool
-	depends on CMD_BOOTM
-	select BZLIB
-	prompt "bootm with bzlib support"
-
 config CMD_BOOTM_SHOW_TYPE
 	bool
 	depends on CMD_BOOTM
diff --git a/commands/bootm.c b/commands/bootm.c
index 578e9a5..878b7aa 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -131,7 +131,7 @@ int relocate_image(struct image_handle *handle, void *load_address)
 			memmove ((void *) image_get_load(hdr), (uchar *)data, len);
 		}
 		break;
-#ifdef CONFIG_CMD_BOOTM_ZLIB
+#ifdef CONFIG_ZLIB
 	case IH_COMP_GZIP:
 		printf ("   Uncompressing ... ");
 
@@ -141,7 +141,7 @@ int relocate_image(struct image_handle *handle, void *load_address)
 			return ret;
 		break;
 #endif
-#ifdef CONFIG_CMD_BOOTM_BZLIB
+#ifdef CONFIG_BZLIB
 	case IH_COMP_BZIP2:
 		printf ("   Uncompressing ... ");
 
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
