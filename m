Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lDt-00006s-5f
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:28:26 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 2403DA00CA4
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:21 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:25:49 +0200
Message-Id: <1463992010-31537-2-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1463992010-31537-1-git-send-email-t.remmet@phytec.de>
References: <1463992010-31537-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 01/62] UBI: add missing kmem_cache_free() in process_pool_aeb
 error path
To: barebox@lists.infradead.org

From: Richard Genoud <richard.genoud@gmail.com>

I ran into this error after a ubiupdatevol, because I forgot to backport
e9110361a9a4 UBI: fix the volumes tree sorting criteria.

UBI error: process_pool_aeb: orphaned volume in fastmap pool
UBI error: ubi_scan_fastmap: Attach by fastmap failed, doing a full scan!
kmem_cache_destroy ubi_ainf_peb_slab: Slab cache still has objects
CPU: 0 PID: 1 Comm: swapper Not tainted 3.14.18-00053-gf05cac8dbf85 #1
[<c000d298>] (unwind_backtrace) from [<c000baa8>] (show_stack+0x10/0x14)
[<c000baa8>] (show_stack) from [<c01b7a68>] (destroy_ai+0x230/0x244)
[<c01b7a68>] (destroy_ai) from [<c01b8fd4>] (ubi_attach+0x98/0x1ec)
[<c01b8fd4>] (ubi_attach) from [<c01ade90>] (ubi_attach_mtd_dev+0x2b8/0x868)
[<c01ade90>] (ubi_attach_mtd_dev) from [<c038b510>] (ubi_init+0x1dc/0x2ac)
[<c038b510>] (ubi_init) from [<c0008860>] (do_one_initcall+0x94/0x140)
[<c0008860>] (do_one_initcall) from [<c037aadc>] (kernel_init_freeable+0xe8/0x1b0)
[<c037aadc>] (kernel_init_freeable) from [<c02730ac>] (kernel_init+0x8/0xe4)
[<c02730ac>] (kernel_init) from [<c00093f0>] (ret_from_fork+0x14/0x24)
UBI: scanning is finished

Freeing the cache in the error path fixes the Slab error.

Tested on at91sam9g35 (3.14.18+fastmap backports)

Signed-off-by: Richard Genoud <richard.genoud@gmail.com>
Cc: stable <stable@vger.kernel.org> # 3.10+

Use kfree instead of kmem_cache_free() for barebox.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/fastmap.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index 8f29430..a3e9069 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -329,6 +329,7 @@ static int process_pool_aeb(struct ubi_device *ubi, struct ubi_attach_info *ai,
 		av = tmp_av;
 	else {
 		ubi_err("orphaned volume in fastmap pool!");
+		kfree(new_aeb);
 		return UBI_BAD_FASTMAP;
 	}
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
