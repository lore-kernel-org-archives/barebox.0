Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGBEI-0002Se-PN
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 19:23:32 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Fri, 17 Jul 2015 21:22:43 +0200
Message-Id: <1437160969-31517-11-git-send-email-m.olbrich@pengutronix.de>
In-Reply-To: <1437160969-31517-1-git-send-email-m.olbrich@pengutronix.de>
References: <1437160969-31517-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 10/16] efi: use xasprintf() when appropriate
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 arch/efi/efi/efi-block-io.c | 2 +-
 arch/efi/efi/efi.c          | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/efi/efi/efi-block-io.c b/arch/efi/efi/efi-block-io.c
index 85603d913d5b..e02d3b49cc99 100644
--- a/arch/efi/efi/efi-block-io.c
+++ b/arch/efi/efi/efi-block-io.c
@@ -147,7 +147,7 @@ int efi_bio_probe(struct efi_device *efidev)
 	efi_bio_print_info(priv);
 	priv->dev = &efidev->dev;
 
-	priv->blk.cdev.name = asprintf("disk%d", cdev_find_free_index("disk"));
+	priv->blk.cdev.name = xasprintf("disk%d", cdev_find_free_index("disk"));
 	priv->blk.blockbits = ffs(media->block_size) - 1;
 	priv->blk.num_blocks = media->last_block + 1;
 	priv->blk.ops = &efi_bio_ops;
diff --git a/arch/efi/efi/efi.c b/arch/efi/efi/efi.c
index 1f0deed577f0..6cffac60f54b 100644
--- a/arch/efi/efi/efi.c
+++ b/arch/efi/efi/efi.c
@@ -125,7 +125,7 @@ struct efi_boot *efi_get_boot(int num)
 	int size;
 	char *name;
 
-	name = asprintf("Boot%04X", num);
+	name = xasprintf("Boot%04X", num);
 
 	buf = efi_get_global_var(name, &size);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
