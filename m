Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp33.i.mail.ru ([94.100.177.93])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VeqYm-000247-1L
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 18:13:37 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  8 Nov 2013 22:12:55 +0400
Message-Id: <1383934379-27100-4-git-send-email-shc_work@mail.ru>
In-Reply-To: <1383934379-27100-1-git-send-email-shc_work@mail.ru>
References: <1383934379-27100-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/6] ARM: mxs: Fix signed/unsigned arguments for printf
To: barebox@lists.infradead.org

"%d" in format string requires a signed integer.
"%u" in format string requires a unsigned integer.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-mxs/bcb.c       | 8 ++++----
 arch/arm/mach-mxs/iomux-imx.c | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-mxs/bcb.c b/arch/arm/mach-mxs/bcb.c
index b5d793e..a7f4ba9 100644
--- a/arch/arm/mach-mxs/bcb.c
+++ b/arch/arm/mach-mxs/bcb.c
@@ -179,7 +179,7 @@ static int calc_bb_offset(struct mtd_info *mtd, struct mx28_fcb *fcb)
 	bb_mark_chunk = bb_mark_offset / chunk_total_size;
 	bb_mark_chunk_offs = bb_mark_offset - (bb_mark_chunk * chunk_total_size);
 	if (bb_mark_chunk_offs > chunk_data_size) {
-		printf("Unsupported ECC layout; BB mark resides in ECC data: %u\n",
+		printf("Unsupported ECC layout; BB mark resides in ECC data: %i\n",
 			bb_mark_chunk_offs);
 		return -EINVAL;
 	}
@@ -267,12 +267,12 @@ static int find_fcb(struct mtd_info *mtd, void *ref, int page)
 	chip->cmdfunc(mtd, NAND_CMD_READ0, 0x00, page);
 	ret = chip->ecc.read_page_raw(mtd, chip, buf, 1, page);
 	if (ret) {
-		printf("Failed to read FCB from page %u: %d\n", page, ret);
+		printf("Failed to read FCB from page %i: %d\n", page, ret);
 		return ret;
 	}
 	chip->select_chip(mtd, -1);
 	if (memcmp(buf, ref, mtd->writesize) == 0) {
-		printf("%s: Found FCB in page %u (%08x)\n", __func__,
+		printf("%s: Found FCB in page %i (%08x)\n", __func__,
 			page, page * mtd->writesize);
 		ret = 1;
 	}
@@ -376,7 +376,7 @@ int update_bcb(int argc, char *argv[])
 
 		ret = write_fcb(mtd, buf, block);
 		if (ret) {
-			printf("Failed to write FCB to block %u\n", block);
+			printf("Failed to write FCB to block %i\n", block);
 			return ret;
 		}
 
diff --git a/arch/arm/mach-mxs/iomux-imx.c b/arch/arm/mach-mxs/iomux-imx.c
index b8b69b3..24295c5 100644
--- a/arch/arm/mach-mxs/iomux-imx.c
+++ b/arch/arm/mach-mxs/iomux-imx.c
@@ -99,7 +99,7 @@ void imx_gpio_mode(uint32_t m)
 
 	/* some pins are disabled when configured for GPIO */
 	if ((gpio_pin > MAX_GPIO_NO) && (GET_FUNC(m) == IS_GPIO)) {
-		printf("Cannot configure pad %d to GPIO\n", gpio_pin);
+		printf("Cannot configure pad %u to GPIO\n", gpio_pin);
 		return;
 	}
 
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
