Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tzkzz-0007Gd-Ez
 for barebox@lists.infradead.org; Mon, 28 Jan 2013 09:27:32 +0000
Received: from mail416.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B3311DC10C8
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2013 10:37:24 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 28 Jan 2013 10:26:10 +0100
Message-Id: <1359365172-30549-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130128092320.GQ26329@game.jcrosoft.org>
References: <20130128092320.GQ26329@game.jcrosoft.org>
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
Subject: [PATCH 1/3] pbl: move configs to pbl/Kconfig
To: barebox@lists.infradead.org

so it more easy to add new entry and to maintain

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Kconfig |   42 +-----------------------------------------
 pbl/Kconfig    |   43 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 44 insertions(+), 41 deletions(-)
 create mode 100644 pbl/Kconfig

diff --git a/common/Kconfig b/common/Kconfig
index eccae4c..21c061c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -105,47 +105,7 @@ config ENVIRONMENT_VARIABLES
 
 menu "memory layout"
 
-config HAVE_PBL_IMAGE
-	bool
-
-config HAVE_IMAGE_COMPRESSION
-	bool
-
-config PBL_IMAGE
-	bool "Pre-Bootloader image"
-	depends on HAVE_PBL_IMAGE
-
-config PBL_FORCE_PIGGYDATA_COPY
-	bool
-	help
-	  In some case we need to copy the PIGGYDATA as the link address
-	  as example we run from SRAM and shutdown the SDRAM/DDR for
-	  reconfiguration but most of the time we just need to copy the
-	  executable code.
-
-if PBL_IMAGE
-
-config IMAGE_COMPRESSION
-	bool
-	depends on HAVE_IMAGE_COMPRESSION
-	default y
-
-if IMAGE_COMPRESSION
-
-choice
-	prompt "Compression"
-
-config IMAGE_COMPRESSION_LZO
-	bool "lzo"
-
-config IMAGE_COMPRESSION_GZIP
-	bool "gzip"
-
-endchoice
-
-endif
-
-endif
+source "pbl/Kconfig"
 
 config MMU
 	bool "Enable MMU"
diff --git a/pbl/Kconfig b/pbl/Kconfig
new file mode 100644
index 0000000..ea7d227
--- /dev/null
+++ b/pbl/Kconfig
@@ -0,0 +1,43 @@
+config HAVE_PBL_IMAGE
+	bool
+
+config HAVE_IMAGE_COMPRESSION
+	bool
+
+config PBL_IMAGE
+	bool "Pre-Bootloader image"
+	depends on HAVE_PBL_IMAGE
+
+config PBL_FORCE_PIGGYDATA_COPY
+	bool
+	help
+	  In some case we need to copy the PIGGYDATA as the link address
+	  as example we run from SRAM and shutdown the SDRAM/DDR for
+	  reconfiguration but most of the time we just need to copy the
+	  executable code.
+
+if PBL_IMAGE
+
+config IMAGE_COMPRESSION
+	bool
+	depends on HAVE_IMAGE_COMPRESSION
+	default y
+
+if IMAGE_COMPRESSION
+
+choice
+	prompt "Compression"
+
+config IMAGE_COMPRESSION_LZO
+	bool "lzo"
+
+config IMAGE_COMPRESSION_GZIP
+	bool "gzip"
+
+endchoice
+
+endif
+
+endif
+
+
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
