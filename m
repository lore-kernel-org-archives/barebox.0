Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRX35-0001H5-Vx
 for barebox@lists.infradead.org; Thu, 23 Apr 2020 08:17:33 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Thu, 23 Apr 2020 10:17:11 +0200
Message-Id: <20200423081712.4022-7-cleger@kalray.eu>
In-Reply-To: <20200423081712.4022-1-cleger@kalray.eu>
References: <20200423081712.4022-1-cleger@kalray.eu>
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
Subject: [PATCH v2 6/6] mips: lib: bootm: use bootm elf loading capabilities
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

Now that the elf file is loaded by the bootm core, there is no need for
elf pointer anymore. Thus all elf related fields can be removed.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 arch/mips/lib/bootm.c | 27 +++++++--------------------
 1 file changed, 7 insertions(+), 20 deletions(-)

diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
index 5bb09cc2d..c53a679c5 100644
--- a/arch/mips/lib/bootm.c
+++ b/arch/mips/lib/bootm.c
@@ -46,43 +46,30 @@ static struct binfmt_hook binfmt_barebox_hook = {
 static int do_bootm_elf(struct image_data *data)
 {
 	void (*entry)(int, void *);
-	struct elf_image *elf;
-	void *fdt, *buf;
+	void *fdt;
 	int ret = 0;
 
-	buf = read_file(data->os_file, NULL);
-	if (!buf)
-		return -EINVAL;
-
-	elf = elf_load_image(buf);
-	if (IS_ERR(elf))
-		return PTR_ERR(elf);
-
 	fdt = bootm_get_devicetree(data);
-	if (IS_ERR(fdt)) {
-		ret = PTR_ERR(fdt);
-		goto bootm_elf_done;
-	}
+	if (IS_ERR(fdt))
+		return PTR_ERR(fdt);
 
 	pr_info("Starting application at 0x%08lx, dts 0x%08lx...\n",
-		phys_to_virt(elf->entry), data->of_root_node);
+		phys_to_virt(data->os_address), data->of_root_node);
 
 	if (data->dryrun)
-		goto bootm_elf_done;
+		goto bootm_free_fdt;
 
 	shutdown_barebox();
 
-	entry = (void *) (unsigned long) elf->entry;
+	entry = (void *) (unsigned long) data->os_address;
 
 	entry(-2, phys_to_virt((unsigned long)fdt));
 
 	pr_err("ELF application terminated\n");
 	ret = -EINVAL;
 
-bootm_elf_done:
-	elf_release_image(elf);
+bootm_free_fdt:
 	free(fdt);
-	free(buf);
 
 	return ret;
 }
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
