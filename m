Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRDRh-0007Hw-UX
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 11:21:39 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Wed, 22 Apr 2020 13:21:19 +0200
Message-Id: <20200422112119.23181-7-cleger@kalray.eu>
In-Reply-To: <20200422112119.23181-1-cleger@kalray.eu>
References: <20200422112119.23181-1-cleger@kalray.eu>
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
Subject: [PATCH 6/6] mips: lib: bootm: use new data->elf member
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

Now that the elf file is loaded by the bootm core, use this field
directly instead of manually loading the elf file.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 arch/mips/lib/bootm.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
index 5bb09cc2d..1e5fdd4ae 100644
--- a/arch/mips/lib/bootm.c
+++ b/arch/mips/lib/bootm.c
@@ -46,18 +46,10 @@ static struct binfmt_hook binfmt_barebox_hook = {
 static int do_bootm_elf(struct image_data *data)
 {
 	void (*entry)(int, void *);
-	struct elf_image *elf;
-	void *fdt, *buf;
+	struct elf_image *elf = data->elf;
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
 	if (IS_ERR(fdt)) {
 		ret = PTR_ERR(fdt);
@@ -82,7 +74,6 @@ static int do_bootm_elf(struct image_data *data)
 bootm_elf_done:
 	elf_release_image(elf);
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
