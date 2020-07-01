Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqVDu-0004wy-BD
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 05:24:04 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 07:23:40 +0200
Message-Id: <20200701052340.9462-29-a.fatoum@pengutronix.de>
In-Reply-To: <20200701052340.9462-1-a.fatoum@pengutronix.de>
References: <20200701052340.9462-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 28/28] ARM: at91: sama5d27-giantboard: add default
 environment/bbu
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The board only has SD-Card as storage. Add a barebox update handler to
flash barebox to it, as well as an nv.boot.default=mmc1 to boot from it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/sama5d27-giantboard/Makefile    |  2 ++
 arch/arm/boards/sama5d27-giantboard/board.c     | 17 +++++++++++++++++
 .../defaultenv-giantboard/nv/boot.default       |  1 +
 arch/arm/dts/at91-sama5d27_giantboard.dts       |  6 ++++++
 4 files changed, 26 insertions(+)
 create mode 100644 arch/arm/boards/sama5d27-giantboard/board.c
 create mode 100644 arch/arm/boards/sama5d27-giantboard/defaultenv-giantboard/nv/boot.default

diff --git a/arch/arm/boards/sama5d27-giantboard/Makefile b/arch/arm/boards/sama5d27-giantboard/Makefile
index b08c4a93ca27..f5869c483978 100644
--- a/arch/arm/boards/sama5d27-giantboard/Makefile
+++ b/arch/arm/boards/sama5d27-giantboard/Makefile
@@ -1 +1,3 @@
 lwl-y += lowlevel.o
+obj-y += board.o
+bbenv-y += defaultenv-giantboard
diff --git a/arch/arm/boards/sama5d27-giantboard/board.c b/arch/arm/boards/sama5d27-giantboard/board.c
new file mode 100644
index 000000000000..1d4453ede35b
--- /dev/null
+++ b/arch/arm/boards/sama5d27-giantboard/board.c
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <init.h>
+#include <envfs.h>
+#include <bbu.h>
+
+static int giantboard_device_init(void)
+{
+	bbu_register_std_file_update("microSD", BBU_HANDLER_FLAG_DEFAULT,
+				     "/mnt/mmc1.0/barebox.bin",
+				     filetype_arm_barebox);
+
+	defaultenv_append_directory(defaultenv_giantboard);
+
+	return 0;
+}
+device_initcall(giantboard_device_init);
diff --git a/arch/arm/boards/sama5d27-giantboard/defaultenv-giantboard/nv/boot.default b/arch/arm/boards/sama5d27-giantboard/defaultenv-giantboard/nv/boot.default
new file mode 100644
index 000000000000..646f435652ef
--- /dev/null
+++ b/arch/arm/boards/sama5d27-giantboard/defaultenv-giantboard/nv/boot.default
@@ -0,0 +1 @@
+mmc1
diff --git a/arch/arm/dts/at91-sama5d27_giantboard.dts b/arch/arm/dts/at91-sama5d27_giantboard.dts
index 6ba094c3da1a..2ba3ff217101 100644
--- a/arch/arm/dts/at91-sama5d27_giantboard.dts
+++ b/arch/arm/dts/at91-sama5d27_giantboard.dts
@@ -25,6 +25,12 @@
 
 	chosen {
 		stdout-path = &uart1;
+
+		environment {
+			compatible = "barebox,environment";
+			device-path = &sdmmc1;
+			file-path = "barebox.env";
+		};
 	};
 
 	leds {
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
