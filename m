Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAC4t-0003zI-Tw
 for barebox@lists.infradead.org; Tue, 17 Sep 2019 11:55:29 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 17 Sep 2019 13:55:13 +0200
Message-Id: <20190917115518.14953-2-a.fatoum@pengutronix.de>
In-Reply-To: <20190917115518.14953-1-a.fatoum@pengutronix.de>
References: <20190917115518.14953-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 1/6] ARM: Layerscape: add bootm handler for images
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The layerscape images are preceeded by a RCW and PBI, which are interpreted
by the Layerscape Hardware Pre-Bootloader and aren't executable as ARM code.
To maintain the ability to network boot them, add a bootm handler that
skips the fixed-size header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-layerscape/Makefile   |  1 +
 arch/arm/mach-layerscape/pblimage.c | 58 +++++++++++++++++++++++++++++
 2 files changed, 59 insertions(+)
 create mode 100644 arch/arm/mach-layerscape/pblimage.c

diff --git a/arch/arm/mach-layerscape/Makefile b/arch/arm/mach-layerscape/Makefile
index 8a814f944161..854a327c9125 100644
--- a/arch/arm/mach-layerscape/Makefile
+++ b/arch/arm/mach-layerscape/Makefile
@@ -5,3 +5,4 @@ obj-y += icid.o
 obj-pbl-y += boot.o
 pbl-y += xload-qspi.o xload.o
 obj-$(CONFIG_ARCH_LAYERSCAPE_PPA) += ppa.o ppa-entry.o
+obj-$(CONFIG_BOOTM) += pblimage.o
diff --git a/arch/arm/mach-layerscape/pblimage.c b/arch/arm/mach-layerscape/pblimage.c
new file mode 100644
index 000000000000..deaf7143b92b
--- /dev/null
+++ b/arch/arm/mach-layerscape/pblimage.c
@@ -0,0 +1,58 @@
+#define pr_fmt(fmt) "pblimage: " fmt
+
+#include <bootm.h>
+#include <common.h>
+#include <init.h>
+#include <memory.h>
+#include <linux/sizes.h>
+
+#define BAREBOX_STAGE2_OFFSET	SZ_128K
+
+static int do_bootm_layerscape_pblimage(struct image_data *data)
+{
+	void (*barebox)(unsigned long x0, unsigned long x1, unsigned long x2,
+		       unsigned long x3);
+	resource_size_t start, end;
+	int ret;
+
+	ret = memory_bank_first_find_space(&start, &end);
+	if (ret)
+		return ret;
+
+	ret = bootm_load_os(data, start);
+	if (ret)
+		return ret;
+
+	barebox = (void*)start + BAREBOX_STAGE2_OFFSET;
+
+	if (data->verbose)
+		printf("Loaded barebox image to 0x%08lx\n",
+		       (unsigned long)barebox);
+
+	shutdown_barebox();
+
+	barebox(0, 0, 0, 0);
+
+	return -EIO;
+}
+
+static struct image_handler image_handler_layerscape_pbl_image = {
+	.name = "Layerscape image",
+	.bootm = do_bootm_layerscape_pblimage,
+	.filetype = filetype_layerscape_image,
+};
+
+static struct image_handler image_handler_layerscape_qspi_pbl_image = {
+	.name = "Layerscape QSPI image",
+	.bootm = do_bootm_layerscape_pblimage,
+	.filetype = filetype_layerscape_qspi_image,
+};
+
+static int layerscape_register_pbl_image_handler(void)
+{
+	register_image_handler(&image_handler_layerscape_pbl_image);
+	register_image_handler(&image_handler_layerscape_qspi_pbl_image);
+
+	return 0;
+}
+late_initcall(layerscape_register_pbl_image_handler);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
