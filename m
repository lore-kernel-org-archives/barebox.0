Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x244.google.com ([2a00:1450:400c:c0c::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL9If-0003Fy-1x
 for barebox@lists.infradead.org; Tue, 22 May 2018 15:34:13 +0000
Received: by mail-wr0-x244.google.com with SMTP id w3-v6so13271325wrl.12
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 08:33:58 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Tue, 22 May 2018 18:33:33 +0300
Message-Id: <20180522153342.24933-4-pmamonov@gmail.com>
In-Reply-To: <20180522153342.24933-1-pmamonov@gmail.com>
References: <20180522153342.24933-1-pmamonov@gmail.com>
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
Subject: [PATCH v3 03/12] mtd: cfi-flash: fix write_buff() for 64 bit systems
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

write_buff() uses ~(flash_info.portwidth - 1) to mask lower bits of addr. This
causes higher 32 bits of addr to be discarded on a 64 bit system, since
flash_info.portwidth is 32 bits long (unsigned int) and addr is 64 bits long
(unsigned long).

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/mtd/nor/cfi_flash.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 5bdcccae1..01ab1aa27 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -515,7 +515,7 @@ static int write_buff(struct flash_info *info, const u8 *src,
 	int buffered_size;
 #endif
 	/* get lower aligned address */
-	wp = addr & ~(info->portwidth - 1);
+	wp = addr & ~((unsigned long)info->portwidth - 1);
 
 	/* handle unaligned start */
 	aln = addr - wp;
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
