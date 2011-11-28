Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RV9PD-0007jm-Qa
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 22:10:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 23:10:01 +0100
Message-Id: <1322518209-2965-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/16] lib: prompt for uncompression functions
To: barebox@lists.infradead.org

Allow the user to manually select the uncompression support
he wants to have so that we have a single point where a user
can see which uncompression support will be compiled in.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/Kconfig     |    6 ++++--
 lib/lzo/Kconfig |    1 +
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/lib/Kconfig b/lib/Kconfig
index 531398f..e16dd35 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -1,8 +1,9 @@
+menu "Library routines"
 config ZLIB
-	bool
+	bool "include gzip uncompression support"
 
 config BZLIB
-	bool
+	bool "include bzip2 uncompression support"
 
 config GENERIC_FIND_NEXT_BIT
 	def_bool n
@@ -18,3 +19,4 @@ config FDT
 config OFTREE
 	select FDT
 	bool
+endmenu
diff --git a/lib/lzo/Kconfig b/lib/lzo/Kconfig
index 4016785..03c3350 100644
--- a/lib/lzo/Kconfig
+++ b/lib/lzo/Kconfig
@@ -1,4 +1,5 @@
 config LZO_DECOMPRESS
+	bool "include lzo uncompression support"
 	bool
 
 config LZO_COMPRESS
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
