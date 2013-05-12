Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f174.google.com ([209.85.217.174])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbcMl-0007O8-KM
 for barebox@lists.infradead.org; Sun, 12 May 2013 19:55:32 +0000
Received: by mail-lb0-f174.google.com with SMTP id r10so5725377lbi.19
 for <barebox@lists.infradead.org>; Sun, 12 May 2013 12:55:09 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 12 May 2013 23:54:05 +0400
Message-Id: <1368388446-31669-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1368388446-31669-1-git-send-email-antonynpavlov@gmail.com>
References: <1368388446-31669-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 3/4] MIPS: qemu-malta: add device tree support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/qemu-malta/init.c |   11 -----------
 arch/mips/dts/qemu-malta.dts       |   12 ++++++++++++
 2 files changed, 12 insertions(+), 11 deletions(-)
 create mode 100644 arch/mips/dts/qemu-malta.dts

diff --git a/arch/mips/boards/qemu-malta/init.c b/arch/mips/boards/qemu-malta/init.c
index fb4472f..db26b3b 100644
--- a/arch/mips/boards/qemu-malta/init.c
+++ b/arch/mips/boards/qemu-malta/init.c
@@ -20,21 +20,10 @@
 #include <types.h>
 #include <driver.h>
 #include <init.h>
-#include <asm/memory.h>
 #include <ns16550.h>
 #include <mach/hardware.h>
-#include <io.h>
 #include <partition.h>
 #include <sizes.h>
-#include <asm/common.h>
-
-static int malta_mem_init(void)
-{
-	mips_add_ram0(SZ_256M);
-
-	return 0;
-}
-mem_initcall(malta_mem_init);
 
 static int malta_devices_init(void)
 {
diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
new file mode 100644
index 0000000..c4dcf05
--- /dev/null
+++ b/arch/mips/dts/qemu-malta.dts
@@ -0,0 +1,12 @@
+/dts-v1/;
+
+/include/ "skeleton.dtsi"
+
+/ {
+	model = "qemu malta";
+	compatible = "qemu,malta";
+
+	memory {
+		reg = <0x00000000 0x10000000>;
+	};
+};
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
