Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8MLe-0002ag-1S
 for barebox@lists.infradead.org; Thu, 12 Sep 2019 10:29:11 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Sep 2019 12:29:00 +0200
Message-Id: <20190912102905.21307-2-a.fatoum@pengutronix.de>
In-Reply-To: <20190912102905.21307-1-a.fatoum@pengutronix.de>
References: <20190912102905.21307-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/7] ARM: Layerscape: add bootm handler for images
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The layerscape images are preceeded by a RCW and PBI, which are interpreted
by the Layerscape Hardware Pre-Bootloader and aren't executable as ARM code.
To maintain the ability to network boot them, add a bootm handler that
skips the fixed-size header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-layerscape/Makefile   |  1 +
 arch/arm/mach-layerscape/pblimage.c | 46 +++++++++++++++++++++++++++++
 2 files changed, 47 insertions(+)
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
index 000000000000..74a4c805bc67
--- /dev/null
+++ b/arch/arm/mach-layerscape/pblimage.c
@@ -0,0 +1,46 @@
+#include <bootm.h>
+#include <common.h>
+#include <init.h>
+#include <libfile.h>
+#include <linux/sizes.h>
+
+#define BAREBOX_STAGE2_OFFSET	SZ_128K
+
+static int do_bootm_layerscape_pblimage(struct image_data *pbl_data)
+{
+	int ret;
+	char pblimage_filename[] = "/.layerscape-pbl.img";
+	struct bootm_data bb_data = {
+		.initrd_address = UIMAGE_INVALID_ADDRESS,
+		.os_address = UIMAGE_SOME_ADDRESS,
+		.os_file = pblimage_filename,
+	};
+
+	ret = copy_file_2(pbl_data->os_file, bb_data.os_file,
+			  BAREBOX_STAGE2_OFFSET, 0);
+	if (ret)
+		return ret;
+
+	return bootm_boot(&bb_data);
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
