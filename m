Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XgtSl-0002tM-7B
 for barebox@lists.infradead.org; Wed, 22 Oct 2014 10:48:20 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Wed, 22 Oct 2014 12:47:52 +0200
Message-Id: <1413974872-23330-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH] EFI: report correct block device size
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

last_block is a zero-based block number, so the total number of blocks is
last_block + 1

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 arch/efi/efi/efi-block-io.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/efi/efi/efi-block-io.c b/arch/efi/efi/efi-block-io.c
index 00115317fc9b..85603d913d5b 100644
--- a/arch/efi/efi/efi-block-io.c
+++ b/arch/efi/efi/efi-block-io.c
@@ -149,7 +149,7 @@ int efi_bio_probe(struct efi_device *efidev)
 
 	priv->blk.cdev.name = asprintf("disk%d", cdev_find_free_index("disk"));
 	priv->blk.blockbits = ffs(media->block_size) - 1;
-	priv->blk.num_blocks = media->last_block;
+	priv->blk.num_blocks = media->last_block + 1;
 	priv->blk.ops = &efi_bio_ops;
 	priv->blk.dev = &efidev->dev;
 
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
