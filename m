Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iw0-f177.google.com ([209.85.214.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PcRM2-0005Nl-R2
	for barebox@lists.infradead.org; Mon, 10 Jan 2011 23:40:52 +0000
Received: by iwn38 with SMTP id 38so20877937iwn.36
	for <barebox@lists.infradead.org>; Mon, 10 Jan 2011 15:40:49 -0800 (PST)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Tue, 11 Jan 2011 10:40:16 +1100
Message-Id: <1294702816-21612-4-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1294702816-21612-1-git-send-email-marc@cpdesign.com.au>
References: <1294702816-21612-1-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH v2 3/3] imx(25,35): save boot location into $boot_loc env.
To: barebox@lists.infradead.org

Saves the boot source into an environment variable so env scripts
can more easily use boot source information. We could also
look at the extra information in the MEM_TYPE bits if needed in future,
but this is good enough for my purposes.

Note only tested on imx35. I haven't added support for any other variants
because I'm not familiar with them. (And can't test them anyway).

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 arch/arm/mach-imx/Makefile |    1 +
 arch/arm/mach-imx/boot.c   |   61 ++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 62 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/mach-imx/boot.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index d000683..3b2deaf 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -11,3 +11,4 @@ obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
 obj-y += speed.o
 obj-y += devices.o
+obj-y += boot.o
diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
new file mode 100644
index 0000000..560fc76
--- /dev/null
+++ b/arch/arm/mach-imx/boot.c
@@ -0,0 +1,61 @@
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
+#include <common.h>
+#include <environment.h>
+#include <init.h>
+
+#include <asm/io.h>
+#include <mach/imx-regs.h>
+
+#if defined(CONFIG_ARCH_IMX25) || defined(CONFIG_ARCH_IMX35)
+static int imx_boot_save_loc(void)
+{
+	const char *bootloc = NULL;
+	uint32_t reg;
+
+	reg = readl(IMX_CCM_BASE + CCM_RCSR);
+
+	switch ((reg >> CCM_RCSR_MEM_CTRL_SHIFT) & 0x3) {
+	case 0x03:		/* SD/MMC, I2C, SPI is the source */
+		bootloc = "expansion";
+		break;
+	case 0x01:		/* NAND is the source */
+		bootloc = "nand";
+		break;
+	case 0x00:		/* NOR, OneNand is the source */
+		bootloc = "weim";
+		break;
+	default:
+		break;
+	}
+
+	if (bootloc) {
+		setenv("boot_loc", bootloc);
+		export("boot_loc");
+	}
+
+	return 0;
+}
+
+/*
+ * This can only be called after env_push_context() has been called
+ * so it is a late_initcall.
+ */
+late_initcall(imx_boot_save_loc);
+
+#endif
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
