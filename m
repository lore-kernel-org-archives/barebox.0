Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ienbw-0000FU-HQ
 for barebox@lists.infradead.org; Tue, 10 Dec 2019 22:04:09 +0000
Received: from astat.fritz.box (a89-183-112-47.net-htp.de [89.183.112.47])
 by lynxeye.de (Postfix) with ESMTPA id DAEAEE74240
 for <barebox@lists.infradead.org>; Tue, 10 Dec 2019 23:03:26 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue, 10 Dec 2019 23:03:22 +0100
Message-Id: <20191210220322.47425-4-dev@lynxeye.de>
In-Reply-To: <20191210220322.47425-1-dev@lynxeye.de>
References: <20191210220322.47425-1-dev@lynxeye.de>
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
Subject: [PATCH 4/4] ARM: zynq: add Zynq image bootm handler
To: barebox@lists.infradead.org

This adds a bootm handler for the Zynq image, to allow second
stage booting of a unchanged Zynq boot image.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-zynq/Makefile        |  2 +-
 arch/arm/mach-zynq/bootm-zynqimg.c | 49 ++++++++++++++++++++++++++++++
 2 files changed, 50 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-zynq/bootm-zynqimg.c

diff --git a/arch/arm/mach-zynq/Makefile b/arch/arm/mach-zynq/Makefile
index 3252247d176d..c88ab4666f0f 100644
--- a/arch/arm/mach-zynq/Makefile
+++ b/arch/arm/mach-zynq/Makefile
@@ -1 +1 @@
-obj-y += zynq.o
+obj-y += zynq.o bootm-zynqimg.o
diff --git a/arch/arm/mach-zynq/bootm-zynqimg.c b/arch/arm/mach-zynq/bootm-zynqimg.c
new file mode 100644
index 000000000000..e903ab667905
--- /dev/null
+++ b/arch/arm/mach-zynq/bootm-zynqimg.c
@@ -0,0 +1,49 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <bootm.h>
+#include <common.h>
+#include <init.h>
+#include <memory.h>
+
+static int do_bootm_zynqimage(struct image_data *data)
+{
+	resource_size_t start, end;
+	void (*barebox)(void);
+	u32 *header;
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
+	header = (u32*)start;
+	barebox = (void*)start + header[12];
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
+static struct image_handler zynq_image_handler = {
+	.name = "Zynq image",
+	.bootm = do_bootm_zynqimage,
+	.filetype = filetype_zynq_image,
+};
+
+static int zynq_register_image_handler(void)
+{
+	register_image_handler(&zynq_image_handler);
+
+	return 0;
+}
+late_initcall(zynq_register_image_handler);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
