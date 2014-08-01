Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.245]
 helo=DVREDG01.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XD82Y-0003Pu-G2
 for barebox@lists.infradead.org; Fri, 01 Aug 2014 08:18:14 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Fri, 1 Aug 2014 16:18:04 +0800
Message-ID: <1406881084-4256-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH] Makefile: remove drivers/serial/Makefile.rej file
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

This file is introduced by commit: 949df9c
Remove it.

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---
This patch is base on the next branch.

 drivers/serial/Makefile.rej | 7 -------
 1 file changed, 7 deletions(-)
 delete mode 100644 drivers/serial/Makefile.rej

diff --git a/drivers/serial/Makefile.rej b/drivers/serial/Makefile.rej
deleted file mode 100644
index 3c4cd01..0000000
--- a/drivers/serial/Makefile.rej
+++ /dev/null
@@ -1,7 +0,0 @@
---- drivers/serial/Makefile
-+++ drivers/serial/Makefile
-@@ -19,3 +19,4 @@
- obj-$(CONFIG_DRIVER_SERIAL_AUART)		+= serial_auart.o
- obj-$(CONFIG_DRIVER_SERIAL_CADENCE)		+= serial_cadence.o
- obj-$(CONFIG_DRIVER_SERIAL_EFI_STDIO)		+= efi-stdio.o
-+obj-$(CONFIG_DRIVER_SERIAL_DIGIC)		+= serial_digic.o
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
