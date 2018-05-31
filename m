Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fOUVQ-00082X-Ai
 for barebox@lists.infradead.org; Thu, 31 May 2018 20:49:10 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 31 May 2018 22:48:51 +0200
Message-Id: <20180531204851.1719-4-o.rempel@pengutronix.de>
In-Reply-To: <20180531204851.1719-1-o.rempel@pengutronix.de>
References: <20180531204851.1719-1-o.rempel@pengutronix.de>
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
Subject: [PATCH 4/4] MIPS: bootm: add ELF handler
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

With this handler barebox will be able to start linux kernel as
is, without additional image conversation.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/lib/bootm.c | 47 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
index 91e7e1c68..8906ae7b4 100644
--- a/arch/mips/lib/bootm.c
+++ b/arch/mips/lib/bootm.c
@@ -10,6 +10,7 @@
 #include <restart.h>
 
 #include <asm/byteorder.h>
+#include <asm/io.h>
 
 static int do_bootm_barebox(struct image_data *data)
 {
@@ -42,11 +43,57 @@ static struct binfmt_hook binfmt_barebox_hook = {
 	.exec = "bootm",
 };
 
+static int do_bootm_elf(struct image_data *data)
+{
+	void (*entry)(int, void *);
+	struct elf_image *elf;
+	void *buf;
+
+	buf = read_file(data->os_file, NULL);
+	if (!buf)
+		return -EINVAL;
+
+	elf = elf_load_image(buf);
+	if (IS_ERR(elf))
+		return PTR_ERR(elf);
+
+	bootm_get_devicetree(data);
+
+	pr_info("Starting application at 0x%08lx, dts 0x%08lx...\n",
+		phys_to_virt(elf->entry), data->of_root_node);
+
+	shutdown_barebox();
+
+	entry = (void *)elf->entry;
+
+	entry(-2, phys_to_virt((unsigned long )data->oftree));
+
+	pr_err("ELF application terminated\n");
+
+	elf_release_image(elf);
+
+	return -EINVAL;
+}
+
+static struct image_handler elf_handler = {
+	.name = "ELF",
+	.bootm = do_bootm_elf,
+	.filetype = filetype_elf,
+};
+
+static struct binfmt_hook binfmt_elf_hook = {
+	.type = filetype_elf,
+	.exec = "bootm",
+};
+
 static int mips_register_image_handler(void)
 {
 	register_image_handler(&barebox_handler);
 	binfmt_register(&binfmt_barebox_hook);
 
+	register_image_handler(&elf_handler);
+	binfmt_register(&binfmt_elf_hook);
+
 	return 0;
 }
 late_initcall(mips_register_image_handler);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
