Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4Xal-0006J1-Ak
 for barebox@lists.infradead.org; Sat, 18 Jan 2014 15:13:48 +0000
Received: by mail-lb0-f181.google.com with SMTP id z5so3860436lbh.12
 for <barebox@lists.infradead.org>; Sat, 18 Jan 2014 07:13:25 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 18 Jan 2014 19:12:59 +0400
Message-Id: <1390057983-17921-10-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
References: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 09/13] MIPS: loongson-ls1b: add ns16550-based console
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/loongson-ls1b/Makefile |  1 +
 arch/mips/boards/loongson-ls1b/serial.c | 22 ++++++++++++++++++++++
 arch/mips/mach-loongson/Kconfig         |  1 +
 3 files changed, 24 insertions(+)
 create mode 100644 arch/mips/boards/loongson-ls1b/serial.c

diff --git a/arch/mips/boards/loongson-ls1b/Makefile b/arch/mips/boards/loongson-ls1b/Makefile
index 0899b66..a21952b 100644
--- a/arch/mips/boards/loongson-ls1b/Makefile
+++ b/arch/mips/boards/loongson-ls1b/Makefile
@@ -1 +1,2 @@
 obj-y += ram.o
+obj-y += serial.o
diff --git a/arch/mips/boards/loongson-ls1b/serial.c b/arch/mips/boards/loongson-ls1b/serial.c
new file mode 100644
index 0000000..d8e0f7c
--- /dev/null
+++ b/arch/mips/boards/loongson-ls1b/serial.c
@@ -0,0 +1,22 @@
+#include <common.h>
+#include <init.h>
+#include <ns16550.h>
+
+#include <mach/loongson1.h>
+
+static struct NS16550_plat serial_plat = {
+	.clock = 83000000,
+	.shift = 0,
+};
+
+static int console_init(void)
+{
+	barebox_set_model("Loongson Tech LS1B Demo Board");
+	barebox_set_hostname("ls1b");
+
+	add_ns16550_device(DEVICE_ID_DYNAMIC, KSEG1ADDR(LS1X_UART2_BASE),
+		8, IORESOURCE_MEM_8BIT, &serial_plat);
+
+	return 0;
+}
+console_initcall(console_init);
diff --git a/arch/mips/mach-loongson/Kconfig b/arch/mips/mach-loongson/Kconfig
index c2cb774..263b67e 100644
--- a/arch/mips/mach-loongson/Kconfig
+++ b/arch/mips/mach-loongson/Kconfig
@@ -14,6 +14,7 @@ config BOARD_LOONGSON_TECH_LS1B
 	select SYS_SUPPORTS_LITTLE_ENDIAN
 	select CSRC_R4K_LIB
 	select HAS_DEBUG_LL
+	select DRIVER_SERIAL_NS16550
 
 endchoice
 
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
