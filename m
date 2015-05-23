Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YwGPm-00018o-5i
 for barebox@lists.infradead.org; Sat, 23 May 2015 20:53:06 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Sat, 23 May 2015 22:52:19 +0200
Message-Id: <1432414340-6271-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 1/2] bootm: add magicvar description for global.bootm.oftree
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 commands/bootm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/commands/bootm.c b/commands/bootm.c
index a65864a6db76..75849a1bac1f 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -183,6 +183,7 @@ BAREBOX_MAGICVAR_NAMED(global_bootm_image, global.bootm.image, "bootm default bo
 BAREBOX_MAGICVAR_NAMED(global_bootm_image_loadaddr, global.bootm.image.loadaddr, "bootm default boot image loadaddr");
 BAREBOX_MAGICVAR_NAMED(global_bootm_initrd, global.bootm.initrd, "bootm default initrd");
 BAREBOX_MAGICVAR_NAMED(global_bootm_initrd_loadaddr, global.bootm.initrd.loadaddr, "bootm default initrd loadaddr");
+BAREBOX_MAGICVAR_NAMED(global_bootm_oftree, global.bootm.oftree, "bootm default oftree");
 
 static struct binfmt_hook binfmt_uimage_hook = {
 	.type = filetype_uimage,
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
