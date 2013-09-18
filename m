Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMACG-0008IL-5G
 for barebox@lists.infradead.org; Wed, 18 Sep 2013 05:21:05 +0000
Received: by mail-la0-f44.google.com with SMTP id eo20so5322878lab.3
 for <barebox@lists.infradead.org>; Tue, 17 Sep 2013 22:20:42 -0700 (PDT)
From: Dmitry Smagin <dmitry.s.smagin@gmail.com>
Date: Wed, 18 Sep 2013 09:20:32 +0400
Message-Id: <1379481633-24534-3-git-send-email-dmitry.s.smagin@gmail.com>
In-Reply-To: <1379481633-24534-1-git-send-email-dmitry.s.smagin@gmail.com>
References: <1379481633-24534-1-git-send-email-dmitry.s.smagin@gmail.com>
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
Subject: [PATCH 2/3] MIPS: rxz50: add initial devicetree support
To: barebox@lists.infradead.org
Cc: Dmitry Smagin <dmitry.s.smagin@gmail.com>

Memory initialization is moved from board.c to rzx50.dts file.

Signed-off-by: Dmitry Smagin <dmitry.s.smagin@gmail.com>
---
 arch/mips/boards/rzx50/Makefile |  1 -
 arch/mips/boards/rzx50/board.c  | 12 ------------
 arch/mips/boards/rzx50/serial.c |  1 -
 arch/mips/dts/rzx50.dts         | 12 ++++++++++++
 4 files changed, 12 insertions(+), 14 deletions(-)
 delete mode 100644 arch/mips/boards/rzx50/board.c
 create mode 100644 arch/mips/dts/rzx50.dts

diff --git a/arch/mips/boards/rzx50/Makefile b/arch/mips/boards/rzx50/Makefile
index 9e14763..ff1a655 100644
--- a/arch/mips/boards/rzx50/Makefile
+++ b/arch/mips/boards/rzx50/Makefile
@@ -1,2 +1 @@
-obj-y += board.o
 obj-$(CONFIG_DRIVER_SERIAL_NS16550) += serial.o
diff --git a/arch/mips/boards/rzx50/board.c b/arch/mips/boards/rzx50/board.c
deleted file mode 100644
index 9e655ab..0000000
--- a/arch/mips/boards/rzx50/board.c
+++ /dev/null
@@ -1,12 +0,0 @@
-#include <common.h>
-#include <init.h>
-#include <sizes.h>
-#include <asm/memory.h>
-
-static int mem_init(void)
-{
-	mips_add_ram0(SZ_64M);
-
-	return 0;
-}
-mem_initcall(mem_init);
diff --git a/arch/mips/boards/rzx50/serial.c b/arch/mips/boards/rzx50/serial.c
index 0038c1d..566356a 100644
--- a/arch/mips/boards/rzx50/serial.c
+++ b/arch/mips/boards/rzx50/serial.c
@@ -22,7 +22,6 @@
 
 static int rzx50_console_init(void)
 {
-	barebox_set_model("Ritmix RZX-50");
 	barebox_set_hostname("rzx50");
 
 	/* Register the serial port */
diff --git a/arch/mips/dts/rzx50.dts b/arch/mips/dts/rzx50.dts
new file mode 100644
index 0000000..69320dd
--- /dev/null
+++ b/arch/mips/dts/rzx50.dts
@@ -0,0 +1,12 @@
+/dts-v1/;
+
+/include/ "skeleton.dtsi"
+
+/ {
+	model = "Ritmix RZX-50";
+	compatible = "ritmix,rzx50";
+
+	memory {
+		reg = <0x00000000 0x4000000>;
+	};
+};
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
