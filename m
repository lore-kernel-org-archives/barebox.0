Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjdr2-0006Dy-GF
 for barebox@lists.infradead.org; Fri, 12 Jun 2020 07:11:58 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Fri, 12 Jun 2020 09:10:36 +0200
Message-Id: <20200612071036.27864-9-cleger@kalray.eu>
In-Reply-To: <20200612071036.27864-1-cleger@kalray.eu>
References: <20200612071036.27864-1-cleger@kalray.eu>
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
Subject: [PATCH v6 8/8] mips: lib: bootm: use bootm elf loading capabilities
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>, Oleksij Rempel <linux@rempel-privat.de>

Now that the elf file is loaded by the bootm core, there is no need for
elf pointer anymore. Thus all elf related fields can be removed and
bootm_load_os can be used.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 arch/mips/lib/bootm.c | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
index 8e16994b6..6c56202ea 100644
--- a/arch/mips/lib/bootm.c
+++ b/arch/mips/lib/bootm.c
@@ -46,41 +46,35 @@ static struct binfmt_hook binfmt_barebox_hook = {
 static int do_bootm_elf(struct image_data *data)
 {
 	void (*entry)(int, void *);
-	struct elf_image *elf;
 	void *fdt;
 	int ret = 0;
 
-	elf = elf_open(data->os_file);
-	if (IS_ERR(elf))
-		return PTR_ERR(elf);
-
-	ret = elf_load(elf);
+	ret = bootm_load_os(data, data->os_address);
 	if (ret)
-		goto bootm_elf_done;
+		return ret;
 
 	fdt = bootm_get_devicetree(data);
 	if (IS_ERR(fdt)) {
 		ret = PTR_ERR(fdt);
-		goto bootm_elf_done;
+		goto bootm_free_fdt;
 	}
 
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
-	elf_close(elf);
+bootm_free_fdt:
 	free(fdt);
 
 	return ret;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
