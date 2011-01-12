Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pz0-f49.google.com ([209.85.210.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PcqS7-00027N-Lu
	for barebox@lists.infradead.org; Wed, 12 Jan 2011 02:28:50 +0000
Received: by pzk30 with SMTP id 30so23573pzk.36
	for <barebox@lists.infradead.org>; Tue, 11 Jan 2011 18:28:45 -0800 (PST)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Wed, 12 Jan 2011 13:27:55 +1100
Message-Id: <1294799275-18113-1-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH] imx(25,35): save boot location into $barebox_loc env.
To: barebox@lists.infradead.org

Saves the boot source into an environment variable so env scripts
can more easily use boot source information.

Note only tested on imx35. I haven't added support for any other variants
because I'm not familiar with them. (And can't test them anyway).

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 arch/arm/mach-imx/Makefile |    1 +
 arch/arm/mach-imx/boot.c   |   95 ++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 96 insertions(+), 0 deletions(-)
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
index 0000000..446a6ab
--- /dev/null
+++ b/arch/arm/mach-imx/boot.c
@@ -0,0 +1,95 @@
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
+/*
+ * Saves the boot source media into the $barebox_loc enviroment variable
+ *
+ * This information is useful for barebox init scripts as we can then easily
+ * use a kernel image stored on the same media that we launch barebox with
+ * (for example).
+ *
+ * imx25 and imx35 can boot into barebox from several media such as
+ * nand, nor, mmc/sd cards, serial roms. "mmc" is used to represent several
+ * sources as its impossible to distinguish between them.
+ *
+ * Some sources such as serial roms can themselves have 3 different boot
+ * possibilities (i2c1, i2c2 etc). It is assumed that any board will
+ * only be using one of these at any one time.
+ *
+ * Note also that I suspect that the boot source pins are only sampled at
+ * power up.
+ */
+static int imx_boot_save_loc(void)
+{
+	const char *bareboxloc = NULL;
+	uint32_t reg;
+	unsigned int ctrl, type;
+
+	/* [CTRL][TYPE] */
+	const char *const locations[4][4] = {
+		{ /* CTRL = WEIM */
+			"nor",
+			0,
+			"onenand",
+			0
+		}, { /* CTRL == NAND */
+			"nand",
+			"nand",
+			"nand",
+			"nand",
+		}, { /* CTRL == ATA, (imx35 only) */
+			0,
+			0, /* might be p-ata */
+			0,
+			0,
+		}, { /* CTRL == expansion */
+			"mmc", /* note imx25 could also be: movinand, ce-ata */
+			0,
+			"i2c",
+			"spi",
+		}
+	};
+
+	reg = readl(IMX_CCM_BASE + CCM_RCSR);
+	ctrl = (reg >> CCM_RCSR_MEM_CTRL_SHIFT) & 0x3;
+	type = (reg >> CCM_RCSR_MEM_TYPE_SHIFT) & 0x3;
+
+	bareboxloc = locations[ctrl][type];
+
+	if (bareboxloc) {
+		setenv("barebox_loc", bareboxloc);
+		export("barebox_loc");
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
