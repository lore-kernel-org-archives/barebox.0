Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x241.google.com ([2a00:1450:400c:c0c::241])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1epbKX-0004HD-PF
 for barebox@lists.infradead.org; Sat, 24 Feb 2018 15:01:45 +0000
Received: by mail-wr0-x241.google.com with SMTP id z12so16887421wrg.4
 for <barebox@lists.infradead.org>; Sat, 24 Feb 2018 07:01:31 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Sat, 24 Feb 2018 16:01:14 +0100
Message-Id: <20180224150121.28309-3-aleksander@aleksander.es>
In-Reply-To: <20180224150121.28309-1-aleksander@aleksander.es>
References: <20180224150121.28309-1-aleksander@aleksander.es>
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
Subject: [PATCH v3 2/9] ratp: moved logic to its own subdirectory
To: barebox@lists.infradead.org, s.hauer@pengutronix.de
Cc: Aleksander Morgado <aleksander@aleksander.es>

We are going to add new RATP command implementations in separate files
within this subdirectory.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 common/Kconfig           | 13 +------------
 common/Makefile          |  4 ++--
 common/ratp/Kconfig      | 14 ++++++++++++++
 common/ratp/Makefile     |  1 +
 common/{ => ratp}/ratp.c |  0
 5 files changed, 18 insertions(+), 14 deletions(-)
 create mode 100644 common/ratp/Kconfig
 create mode 100644 common/ratp/Makefile
 rename common/{ => ratp}/ratp.c (100%)

diff --git a/common/Kconfig b/common/Kconfig
index 93b1d8927..81cf72a95 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -755,18 +755,7 @@ config PBL_CONSOLE
 	  must be running at the address it's linked at and bss must
 	  be cleared. On ARM that would be after setup_c().
 
-config CONSOLE_RATP
-	bool
-	select RATP
-	select CRC16
-	select POLLER
-	depends on CONSOLE_FULL
-	prompt "RATP console support"
-	help
-	  This option adds support for remote controlling barebox via serial
-	  port. The regular console is designed for human interaction whereas
-	  this option adds a machine readable interface for controlling barebox.
-	  Say yes here if you want to control barebox from a remote host.
+source common/ratp/Kconfig
 
 config PARTITION
 	bool
diff --git a/common/Makefile b/common/Makefile
index 5351ef0f7..bc9474a3a 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -46,7 +46,8 @@ obj-$(CONFIG_RESET_SOURCE)	+= reset_source.o
 obj-$(CONFIG_SHELL_HUSH)	+= hush.o
 obj-$(CONFIG_SHELL_SIMPLE)	+= parser.o
 obj-$(CONFIG_STATE)		+= state/
-obj-$(CONFIG_RATP)		+= ratp.o
+obj-$(CONFIG_RATP)		+= ratp/
+obj-$(CONFIG_CONSOLE_RATP)	+= ratp/
 obj-$(CONFIG_BOOTCHOOSER)	+= bootchooser.o
 obj-$(CONFIG_UIMAGE)		+= image.o uimage.o
 obj-$(CONFIG_FITIMAGE)		+= image-fit.o
@@ -60,7 +61,6 @@ obj-$(CONFIG_FILE_LIST)		+= file-list.o
 obj-$(CONFIG_FIRMWARE)		+= firmware.o
 obj-$(CONFIG_UBIFORMAT)		+= ubiformat.o
 obj-$(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB) += imx-bbu-nand-fcb.o
-obj-$(CONFIG_CONSOLE_RATP)	+= ratp.o
 obj-$(CONFIG_BOOT)		+= boot.o
 
 ifdef CONFIG_PASSWORD
diff --git a/common/ratp/Kconfig b/common/ratp/Kconfig
new file mode 100644
index 000000000..93ff75d64
--- /dev/null
+++ b/common/ratp/Kconfig
@@ -0,0 +1,14 @@
+
+config CONSOLE_RATP
+	bool
+	select RATP
+	select CRC16
+	select POLLER
+	depends on CONSOLE_FULL
+	prompt "RATP console support"
+	help
+	  This option adds support for remote controlling barebox via serial
+	  port. The regular console is designed for human interaction whereas
+	  this option adds a machine readable interface for controlling barebox.
+	  Say yes here if you want to control barebox from a remote host.
+
diff --git a/common/ratp/Makefile b/common/ratp/Makefile
new file mode 100644
index 000000000..cab14c6fb
--- /dev/null
+++ b/common/ratp/Makefile
@@ -0,0 +1 @@
+obj-y += ratp.o
diff --git a/common/ratp.c b/common/ratp/ratp.c
similarity index 100%
rename from common/ratp.c
rename to common/ratp/ratp.c
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
