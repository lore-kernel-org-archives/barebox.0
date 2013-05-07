Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZkrS-0008NG-IZ
 for barebox@lists.infradead.org; Tue, 07 May 2013 16:35:31 +0000
Received: by mail-la0-f52.google.com with SMTP id fm20so777999lab.39
 for <barebox@lists.infradead.org>; Tue, 07 May 2013 09:35:08 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  7 May 2013 20:34:11 +0400
Message-Id: <1367944452-20946-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1367944452-20946-1-git-send-email-antonynpavlov@gmail.com>
References: <1367944452-20946-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 3/4] MIPS: qemu-malta: add device tree support
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
