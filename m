Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJul-0003vd-65
 for barebox@lists.infradead.org; Tue, 01 Oct 2019 15:18:12 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Oct 2019 17:18:08 +0200
Message-Id: <20191001151808.25187-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] ARM: stm32mp: add bootm handler for images
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

STM32 images are preceded by a fixed-size 256 byte header, which is
interpreted by the TF-A first stage bootloader and isn't executable
as ARM code.

To maintain the ability to network boot them, add a bootm handler that
skips the header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-stm32mp/Makefile     |  2 +-
 arch/arm/mach-stm32mp/stm32image.c | 50 ++++++++++++++++++++++++++++++
 2 files changed, 51 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-stm32mp/stm32image.c

diff --git a/arch/arm/mach-stm32mp/Makefile b/arch/arm/mach-stm32mp/Makefile
index 16a218658ade..204cad608f56 100644
--- a/arch/arm/mach-stm32mp/Makefile
+++ b/arch/arm/mach-stm32mp/Makefile
@@ -1 +1 @@
-obj- := __dummy__.o
+obj-$(CONFIG_BOOTM) := stm32image.o
diff --git a/arch/arm/mach-stm32mp/stm32image.c b/arch/arm/mach-stm32mp/stm32image.c
new file mode 100644
index 000000000000..84975c5c3bf1
--- /dev/null
+++ b/arch/arm/mach-stm32mp/stm32image.c
@@ -0,0 +1,50 @@
+#define pr_fmt(fmt) "stm32image: " fmt
+
+#include <bootm.h>
+#include <common.h>
+#include <init.h>
+#include <memory.h>
+#include <linux/sizes.h>
+
+#define BAREBOX_STAGE2_OFFSET	256
+
+static int do_bootm_stm32image(struct image_data *data)
+{
+	void (*barebox)(void);
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
+	barebox();
+
+	return -EIO;
+}
+
+static struct image_handler image_handler_stm32_image_v1_handler = {
+	.name = "STM32 image (v1)",
+	.bootm = do_bootm_stm32image,
+	.filetype = filetype_stm32_image_v1,
+};
+
+static int stm32mp_register_stm32image_image_handler(void)
+{
+	register_image_handler(&image_handler_stm32_image_v1_handler);
+
+	return 0;
+}
+late_initcall(stm32mp_register_stm32image_image_handler);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
