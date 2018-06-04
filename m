Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fPmNI-00056l-Ns
 for barebox@lists.infradead.org; Mon, 04 Jun 2018 10:06:10 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon,  4 Jun 2018 12:05:46 +0200
Message-Id: <20180604100546.19140-5-o.rempel@pengutronix.de>
In-Reply-To: <20180604100546.19140-1-o.rempel@pengutronix.de>
References: <20180604100546.19140-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v3 4/4] MIPS: bootm: add ELF handler
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

With this handler barebox will be able to start linux kernel as
is, without additional image conversation.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/Kconfig     |  1 +
 arch/mips/lib/bootm.c | 56 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 57 insertions(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 359f67883..9aedf9a77 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -7,6 +7,7 @@ config MIPS
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	select HAVE_CONFIGURABLE_TEXT_BASE
 	select HAS_DMA
+	select ELF
 	default y
 
 config SYS_SUPPORTS_BIG_ENDIAN
diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
index 91e7e1c68..70ab3b157 100644
--- a/arch/mips/lib/bootm.c
+++ b/arch/mips/lib/bootm.c
@@ -10,6 +10,7 @@
 #include <restart.h>
 
 #include <asm/byteorder.h>
+#include <asm/io.h>
 
 static int do_bootm_barebox(struct image_data *data)
 {
@@ -42,11 +43,66 @@ static struct binfmt_hook binfmt_barebox_hook = {
 	.exec = "bootm",
 };
 
+static int do_bootm_elf(struct image_data *data)
+{
+	void (*entry)(int, void *);
+	struct elf_image *elf;
+	void *buf;
+	int ret;
+
+	buf = read_file(data->os_file, NULL);
+	if (!buf)
+		return -EINVAL;
+
+	elf = elf_load_image(buf);
+	if (IS_ERR(elf))
+		return PTR_ERR(elf);
+
+	ret = bootm_get_devicetree(data);
+	if (ret)
+		goto bootm_elf_done;
+
+	pr_info("Starting application at 0x%08lx, dts 0x%08lx...\n",
+		phys_to_virt(elf->entry), data->of_root_node);
+
+	if (data->dryrun)
+		goto bootm_elf_done;
+
+	shutdown_barebox();
+
+	entry = (void *)elf->entry;
+
+	entry(-2, phys_to_virt((unsigned long)data->oftree));
+
+	pr_err("ELF application terminated\n");
+	ret = -EINVAL;
+
+bootm_elf_done:
+	elf_release_image(elf);
+	free(buf);
+
+	return ret;
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
