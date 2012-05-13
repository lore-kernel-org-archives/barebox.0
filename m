Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp22.mail.ru ([94.100.176.175])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STRVf-0007LA-JV
 for barebox@lists.infradead.org; Sun, 13 May 2012 05:38:24 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 13 May 2012 09:38:05 +0400
Message-Id: <1336887485-11941-4-git-send-email-shc_work@mail.ru>
In-Reply-To: <1336887485-11941-1-git-send-email-shc_work@mail.ru>
References: <1336887485-11941-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 4/4] PCM038: Initial PCM970 development board support
To: barebox@lists.infradead.org

Some devices need to be moved to the PCM970 source file later, because
in fact these devices are not installed on the main unit PCM038.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/Makefile |    5 ++---
 arch/arm/boards/pcm038/pcm038.c |    3 ---
 arch/arm/boards/pcm038/pcm970.c |   30 ++++++++++++++++++++++++++++++
 arch/arm/mach-imx/Kconfig       |    8 ++++++++
 4 files changed, 40 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/boards/pcm038/pcm970.c

diff --git a/arch/arm/boards/pcm038/Makefile b/arch/arm/boards/pcm038/Makefile
index 970804e..6cd3a5b 100644
--- a/arch/arm/boards/pcm038/Makefile
+++ b/arch/arm/boards/pcm038/Makefile
@@ -1,3 +1,2 @@
-
-obj-y += lowlevel.o
-obj-y += pcm038.o
+obj-y					+= lowlevel.o pcm038.o
+obj-$(CONFIG_MACH_PCM970_BASEBOARD)	+= pcm970.o
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 4f0a60a..db60f2c 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -287,9 +287,6 @@ static int pcm038_devices_init(void)
 	/* configure SRAM on cs1 */
 	imx27_setup_weimcs(1, 0x0000d843, 0x22252521, 0x22220a00);
 
-	/* configure SJA1000 on cs4 */
-	imx27_setup_weimcs(4, 0x0000DCF6, 0x444A0301, 0x44443302);
-
 	/* initizalize gpios */
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
 		imx_gpio_mode(mode[i]);
diff --git a/arch/arm/boards/pcm038/pcm970.c b/arch/arm/boards/pcm038/pcm970.c
new file mode 100644
index 0000000..cdd68a3
--- /dev/null
+++ b/arch/arm/boards/pcm038/pcm970.c
@@ -0,0 +1,30 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <io.h>
+#include <init.h>
+#include <mach/imx-regs.h>
+
+static int pcm970_init(void)
+{
+	/* Configure SJA1000 on cs4 */
+	imx27_setup_weimcs(4, 0x0000DCF6, 0x444A0301, 0x44443302);
+
+	return 0;
+}
+
+late_initcall(pcm970_init);
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 3236762..b402677 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -294,6 +294,14 @@ config MACH_PCM038
 	  Say Y here if you are using Phytec's phyCORE-i.MX27 (pcm038) equipped
 	  with a Freescale i.MX27 Processor
 
+config MACH_PCM970_BASEBOARD
+	bool "PHYTEC PCM970 development board"
+	depends on MACH_PCM038
+	default y
+	help
+	  This adds board specific devices that can be found on Phytec's
+	  PCM970 evaluation board.
+
 config MACH_NESO
 	bool "Garz+Fricke Neso"
 	select MACH_HAS_LOWLEVEL_INIT
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
