Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22f.google.com ([2607:f8b0:400e:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aS9Ol-0004pL-7f
 for barebox@lists.infradead.org; Sat, 06 Feb 2016 20:24:06 +0000
Received: by mail-pa0-x22f.google.com with SMTP id yy13so52204860pab.3
 for <barebox@lists.infradead.org>; Sat, 06 Feb 2016 12:23:41 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  6 Feb 2016 12:23:00 -0800
Message-Id: <1454790180-3156-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [RFC] spi-nor: Use different timeout values for write and erase
 operations
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Some chips take longer than 40 seconds to perform certain
operations. One concrete example would be M25P128 that, according to
its spec, can take up to 250 seconds to perform a chip erase.

This commit:

     - Adds 'wait_time` parameter to spi_nor_wait_till_ready() so that
       each individual caller of would be able to use custom timeout

     - Adds timings information to flash_info and nor_spi structures
       to specify sector and chip erase timeouts

     - Modifies the code of spi_nor_erase() to make use of previously
       mentioned changes

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 329 ++++++++++++++++++++++--------------------
 include/linux/mtd/spi-nor.h   |  13 ++
 2 files changed, 188 insertions(+), 154 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 27f4abc..c9cd76c 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -43,6 +43,8 @@ struct flash_info {
 	u16		page_size;
 	u16		addr_width;
 
+	struct spi_nor_timings timings;
+
 	u16		flags;
 #define	SECT_4K			0x01	/* SPINOR_OP_BE_4K works uniformly */
 #define	SPI_NOR_NO_ERASE	0x02	/* No erase command needed */
@@ -228,14 +230,14 @@ static int spi_nor_ready(struct spi_nor *nor)
  * Service routine to read status register until ready, or timeout occurs.
  * Returns non-zero if error.
  */
-static int spi_nor_wait_till_ready(struct spi_nor *nor)
+static int spi_nor_wait_till_ready(struct spi_nor *nor, uint64_t wait_time)
 {
 	uint64_t start = get_time_ns();
 	int timeout = 0;
 	int ret;
 
 	while (!timeout) {
-		if (is_timeout(start, 40 * SECOND))
+		if (is_timeout(start, wait_time))
 			timeout = 1;
 
 		ret = spi_nor_ready(nor);
@@ -308,7 +310,7 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 	len = instr->len;
 
 	/* Assure previous operations are completed */
-	ret = spi_nor_wait_till_ready(nor);
+	ret = spi_nor_wait_till_ready(nor, 40 * SECOND);
 	if (ret)
 		goto erase_err;
 
@@ -325,7 +327,8 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 			goto erase_err;
 		}
 
-		ret = spi_nor_wait_till_ready(nor);
+		ret = spi_nor_wait_till_ready(nor,
+					      nor->timings.chip_erase);
 		if (ret)
 			goto erase_err;
 
@@ -347,7 +350,8 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 			addr += mtd->erasesize;
 			len -= mtd->erasesize;
 
-			ret = spi_nor_wait_till_ready(nor);
+			ret = spi_nor_wait_till_ready(nor,
+						      nor->timings.sector_erase);
 			if (ret)
 				goto erase_err;
 		}
@@ -395,7 +399,8 @@ static int spi_nor_unlock(struct mtd_info *mtd, loff_t ofs, size_t len)
 }
 
 /* Used when the "_ext_id" is two bytes at most */
-#define INFO(_jedec_id, _ext_id, _sector_size, _n_sectors, _flags)	\
+#define INFO(_jedec_id, _ext_id, _sector_size, _n_sectors,		\
+	     _sector_erase_time, _chip_erase_time, _flags)		\
 	((unsigned long)&(struct flash_info) {				\
 		.id = {							\
 			((_jedec_id) >> 16) & 0xff,			\
@@ -408,10 +413,15 @@ static int spi_nor_unlock(struct mtd_info *mtd, loff_t ofs, size_t len)
 		.sector_size = (_sector_size),				\
 		.n_sectors = (_n_sectors),				\
 		.page_size = 256,					\
+		.timings = {						\
+			.sector_erase	= _sector_erase_time,		\
+			.chip_erase	= _chip_erase_time,		\
+		},							\
 		.flags = (_flags),					\
 	})
 
-#define INFO6(_jedec_id, _ext_id, _sector_size, _n_sectors, _flags)	\
+#define INFO6(_jedec_id, _ext_id, _sector_size, _n_sectors,		\
+	     _sector_erase_time, _chip_erase_time, _flags)		\
 	((unsigned long)&(struct flash_info) {				\
 		.id = {							\
 			((_jedec_id) >> 16) & 0xff,			\
@@ -425,15 +435,24 @@ static int spi_nor_unlock(struct mtd_info *mtd, loff_t ofs, size_t len)
 		.sector_size = (_sector_size),				\
 		.n_sectors = (_n_sectors),				\
 		.page_size = 256,					\
+		.timings = {						\
+			.sector_erase	= _sector_erase_time,		\
+			.chip_erase	= _chip_erase_time,		\
+		},							\
 		.flags = (_flags),					\
 	})
 
-#define CAT25_INFO(_sector_size, _n_sectors, _page_size, _addr_width, _flags)	\
+#define CAT25_INFO(_sector_size, _n_sectors, _page_size, _addr_width,	\
+	     _sector_erase_time, _chip_erase_time, _flags)		\
 	((unsigned long)&(struct flash_info) {				\
 		.sector_size = (_sector_size),				\
 		.n_sectors = (_n_sectors),				\
 		.page_size = (_page_size),				\
 		.addr_width = (_addr_width),				\
+		.timings = {						\
+			.sector_erase	= _sector_erase_time,		\
+			.chip_erase	= _chip_erase_time,		\
+		},							\
 		.flags = (_flags),					\
 	})
 
@@ -443,178 +462,178 @@ static int spi_nor_unlock(struct mtd_info *mtd, loff_t ofs, size_t len)
  */
 static const struct spi_device_id spi_nor_ids[] = {
 	/* Atmel -- some are (confusingly) marketed as "DataFlash" */
-	{ "at25fs010",  INFO(0x1f6601, 0, 32 * 1024,   4, SECT_4K) },
-	{ "at25fs040",  INFO(0x1f6604, 0, 64 * 1024,   8, SECT_4K) },
+	{ "at25fs010",  INFO(0x1f6601, 0, 32 * 1024,   4, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "at25fs040",  INFO(0x1f6604, 0, 64 * 1024,   8, 40 * SECOND, 40 * SECOND, SECT_4K) },
 
-	{ "at25df041a", INFO(0x1f4401, 0, 64 * 1024,   8, SECT_4K) },
-	{ "at25df321a", INFO(0x1f4701, 0, 64 * 1024,  64, SECT_4K) },
-	{ "at25df641",  INFO(0x1f4800, 0, 64 * 1024, 128, SECT_4K) },
+	{ "at25df041a", INFO(0x1f4401, 0, 64 * 1024,   8, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "at25df321a", INFO(0x1f4701, 0, 64 * 1024,  64, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "at25df641",  INFO(0x1f4800, 0, 64 * 1024, 128, 40 * SECOND, 40 * SECOND, SECT_4K) },
 
-	{ "at26f004",   INFO(0x1f0400, 0, 64 * 1024,  8, SECT_4K) },
-	{ "at26df081a", INFO(0x1f4501, 0, 64 * 1024, 16, SECT_4K) },
-	{ "at26df161a", INFO(0x1f4601, 0, 64 * 1024, 32, SECT_4K) },
-	{ "at26df321",  INFO(0x1f4700, 0, 64 * 1024, 64, SECT_4K) },
+	{ "at26f004",   INFO(0x1f0400, 0, 64 * 1024,  8, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "at26df081a", INFO(0x1f4501, 0, 64 * 1024, 16, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "at26df161a", INFO(0x1f4601, 0, 64 * 1024, 32, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "at26df321",  INFO(0x1f4700, 0, 64 * 1024, 64, 40 * SECOND, 40 * SECOND, SECT_4K) },
 
-	{ "at45db081d", INFO(0x1f2500, 0, 64 * 1024, 16, SECT_4K) },
+	{ "at45db081d", INFO(0x1f2500, 0, 64 * 1024, 16, 40 * SECOND, 40 * SECOND, SECT_4K) },
 
 	/* EON -- en25xxx */
-	{ "en25f32",    INFO(0x1c3116, 0, 64 * 1024,   64, SECT_4K) },
-	{ "en25p32",    INFO(0x1c2016, 0, 64 * 1024,   64, 0) },
-	{ "en25q32b",   INFO(0x1c3016, 0, 64 * 1024,   64, 0) },
-	{ "en25p64",    INFO(0x1c2017, 0, 64 * 1024,  128, 0) },
-	{ "en25q64",    INFO(0x1c3017, 0, 64 * 1024,  128, SECT_4K) },
-	{ "en25qh128",  INFO(0x1c7018, 0, 64 * 1024,  256, 0) },
-	{ "en25qh256",  INFO(0x1c7019, 0, 64 * 1024,  512, 0) },
-	{ "en25s64",	INFO(0x1c3817, 0, 64 * 1024,  128, 0) },
+	{ "en25f32",    INFO(0x1c3116, 0, 64 * 1024,   64, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "en25p32",    INFO(0x1c2016, 0, 64 * 1024,   64, 40 * SECOND, 40 * SECOND, 0) },
+	{ "en25q32b",   INFO(0x1c3016, 0, 64 * 1024,   64, 40 * SECOND, 40 * SECOND, 0) },
+	{ "en25p64",    INFO(0x1c2017, 0, 64 * 1024,  128, 40 * SECOND, 40 * SECOND, 0) },
+	{ "en25q64",    INFO(0x1c3017, 0, 64 * 1024,  128, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "en25qh128",  INFO(0x1c7018, 0, 64 * 1024,  256, 40 * SECOND, 40 * SECOND, 0) },
+	{ "en25qh256",  INFO(0x1c7019, 0, 64 * 1024,  512, 40 * SECOND, 40 * SECOND, 0) },
+	{ "en25s64",	INFO(0x1c3817, 0, 64 * 1024,  128, 40 * SECOND, 40 * SECOND, 0) },
 
 	/* ESMT */
-	{ "f25l32pa", INFO(0x8c2016, 0, 64 * 1024, 64, SECT_4K) },
+	{ "f25l32pa", INFO(0x8c2016, 0, 64 * 1024, 64, 40 * SECOND, 40 * SECOND, SECT_4K) },
 
 	/* Everspin */
-	{ "mr25h256", CAT25_INFO( 32 * 1024, 1, 256, 2, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
-	{ "mr25h10",  CAT25_INFO(128 * 1024, 1, 256, 3, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
+	{ "mr25h256", CAT25_INFO( 32 * 1024, 1, 256, 2, 40 * SECOND, 40 * SECOND, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
+	{ "mr25h10",  CAT25_INFO(128 * 1024, 1, 256, 3, 40 * SECOND, 40 * SECOND, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
 
 	/* Fujitsu */
-	{ "mb85rs1mt", INFO(0x047f27, 0, 128 * 1024, 1, SPI_NOR_NO_ERASE) },
+	{ "mb85rs1mt", INFO(0x047f27, 0, 128 * 1024, 1, 40 * SECOND, 40 * SECOND, SPI_NOR_NO_ERASE) },
 
 	/* GigaDevice */
-	{ "gd25q32", INFO(0xc84016, 0, 64 * 1024,  64, SECT_4K) },
-	{ "gd25q64", INFO(0xc84017, 0, 64 * 1024, 128, SECT_4K) },
-	{ "gd25q128", INFO(0xc84018, 0, 64 * 1024, 256, SECT_4K) },
+	{ "gd25q32", INFO(0xc84016, 0, 64 * 1024,  64, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "gd25q64", INFO(0xc84017, 0, 64 * 1024, 128, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "gd25q128", INFO(0xc84018, 0, 64 * 1024, 256, 40 * SECOND, 40 * SECOND, SECT_4K) },
 
 	/* Intel/Numonyx -- xxxs33b */
-	{ "160s33b",  INFO(0x898911, 0, 64 * 1024,  32, 0) },
-	{ "320s33b",  INFO(0x898912, 0, 64 * 1024,  64, 0) },
-	{ "640s33b",  INFO(0x898913, 0, 64 * 1024, 128, 0) },
+	{ "160s33b",  INFO(0x898911, 0, 64 * 1024,  32, 40 * SECOND, 40 * SECOND, 0) },
+	{ "320s33b",  INFO(0x898912, 0, 64 * 1024,  64, 40 * SECOND, 40 * SECOND, 0) },
+	{ "640s33b",  INFO(0x898913, 0, 64 * 1024, 128, 40 * SECOND, 40 * SECOND, 0) },
 
 	/* Macronix */
-	{ "mx25l2005a",  INFO(0xc22012, 0, 64 * 1024,   4, SECT_4K) },
-	{ "mx25l4005a",  INFO(0xc22013, 0, 64 * 1024,   8, SECT_4K) },
-	{ "mx25l8005",   INFO(0xc22014, 0, 64 * 1024,  16, 0) },
-	{ "mx25l1606e",  INFO(0xc22015, 0, 64 * 1024,  32, SECT_4K) },
-	{ "mx25l3205d",  INFO(0xc22016, 0, 64 * 1024,  64, 0) },
-	{ "mx25l3255e",  INFO(0xc29e16, 0, 64 * 1024,  64, SECT_4K) },
-	{ "mx25l6405d",  INFO(0xc22017, 0, 64 * 1024, 128, 0) },
-	{ "mx25u6435f",  INFO(0xc22537, 0, 64 * 1024, 128, SECT_4K) },
-	{ "mx25l12805d", INFO(0xc22018, 0, 64 * 1024, 256, 0) },
-	{ "mx25l12855e", INFO(0xc22618, 0, 64 * 1024, 256, 0) },
-	{ "mx25l25635e", INFO(0xc22019, 0, 64 * 1024, 512, 0) },
-	{ "mx25l25655e", INFO(0xc22619, 0, 64 * 1024, 512, 0) },
-	{ "mx66l51235l", INFO(0xc2201a, 0, 64 * 1024, 1024, SPI_NOR_QUAD_READ) },
-	{ "mx66l1g55g",  INFO(0xc2261b, 0, 64 * 1024, 2048, SPI_NOR_QUAD_READ) },
+	{ "mx25l2005a",  INFO(0xc22012, 0, 64 * 1024,   4, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "mx25l4005a",  INFO(0xc22013, 0, 64 * 1024,   8, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "mx25l8005",   INFO(0xc22014, 0, 64 * 1024,  16, 40 * SECOND, 40 * SECOND, 0) },
+	{ "mx25l1606e",  INFO(0xc22015, 0, 64 * 1024,  32, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "mx25l3205d",  INFO(0xc22016, 0, 64 * 1024,  64, 40 * SECOND, 40 * SECOND, 0) },
+	{ "mx25l3255e",  INFO(0xc29e16, 0, 64 * 1024,  64, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "mx25l6405d",  INFO(0xc22017, 0, 64 * 1024, 128, 40 * SECOND, 40 * SECOND, 0) },
+	{ "mx25u6435f",  INFO(0xc22537, 0, 64 * 1024, 128, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "mx25l12805d", INFO(0xc22018, 0, 64 * 1024, 256, 40 * SECOND, 40 * SECOND, 0) },
+	{ "mx25l12855e", INFO(0xc22618, 0, 64 * 1024, 256, 40 * SECOND, 40 * SECOND, 0) },
+	{ "mx25l25635e", INFO(0xc22019, 0, 64 * 1024, 512, 40 * SECOND, 40 * SECOND, 0) },
+	{ "mx25l25655e", INFO(0xc22619, 0, 64 * 1024, 512, 40 * SECOND, 40 * SECOND, 0) },
+	{ "mx66l51235l", INFO(0xc2201a, 0, 64 * 1024, 1024, 40 * SECOND, 40 * SECOND, SPI_NOR_QUAD_READ) },
+	{ "mx66l1g55g",  INFO(0xc2261b, 0, 64 * 1024, 2048, 40 * SECOND, 40 * SECOND, SPI_NOR_QUAD_READ) },
 
 	/* Micron */
-	{ "n25q032",	 INFO(0x20ba16, 0, 64 * 1024,   64, SPI_NOR_QUAD_READ) },
-	{ "n25q064",     INFO(0x20ba17, 0, 64 * 1024,  128, SPI_NOR_QUAD_READ) },
-	{ "n25q128a11",  INFO(0x20bb18, 0, 64 * 1024,  256, SPI_NOR_QUAD_READ) },
-	{ "n25q128a13",  INFO(0x20ba18, 0, 64 * 1024,  256, SPI_NOR_QUAD_READ) },
-	{ "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, SECT_4K | SPI_NOR_QUAD_READ) },
-	{ "n25q512a",    INFO(0x20bb20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
-	{ "n25q512ax3",  INFO(0x20ba20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
-	{ "n25q00",      INFO(0x20ba21, 0, 64 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
+	{ "n25q032",	 INFO(0x20ba16, 0, 64 * 1024,   64, 40 * SECOND, 40 * SECOND, SPI_NOR_QUAD_READ) },
+	{ "n25q064",     INFO(0x20ba17, 0, 64 * 1024,  128, 40 * SECOND, 40 * SECOND, SPI_NOR_QUAD_READ) },
+	{ "n25q128a11",  INFO(0x20bb18, 0, 64 * 1024,  256, 40 * SECOND, 40 * SECOND, SPI_NOR_QUAD_READ) },
+	{ "n25q128a13",  INFO(0x20ba18, 0, 64 * 1024,  256, 40 * SECOND, 40 * SECOND, SPI_NOR_QUAD_READ) },
+	{ "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, 40 * SECOND, 40 * SECOND, SECT_4K | SPI_NOR_QUAD_READ) },
+	{ "n25q512a",    INFO(0x20bb20, 0, 64 * 1024, 1024, 40 * SECOND, 40 * SECOND, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
+	{ "n25q512ax3",  INFO(0x20ba20, 0, 64 * 1024, 1024, 40 * SECOND, 40 * SECOND, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
+	{ "n25q00",      INFO(0x20ba21, 0, 64 * 1024, 2048, 40 * SECOND, 40 * SECOND, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
 
 	/* PMC */
-	{ "pm25lv512",   INFO(0,        0, 32 * 1024,    2, SECT_4K_PMC) },
-	{ "pm25lv010",   INFO(0,        0, 32 * 1024,    4, SECT_4K_PMC) },
-	{ "pm25lq032",   INFO(0x7f9d46, 0, 64 * 1024,   64, SECT_4K) },
+	{ "pm25lv512",   INFO(0,        0, 32 * 1024,    2, 40 * SECOND, 40 * SECOND, SECT_4K_PMC) },
+	{ "pm25lv010",   INFO(0,        0, 32 * 1024,    4, 40 * SECOND, 40 * SECOND, SECT_4K_PMC) },
+	{ "pm25lq032",   INFO(0x7f9d46, 0, 64 * 1024,   64, 40 * SECOND, 40 * SECOND, SECT_4K) },
 
 	/* Spansion -- single (large) sector size only, at least
 	 * for the chips listed here (without boot sectors).
 	 */
-	{ "s25sl032p",  INFO(0x010215, 0x4d00,  64 * 1024,  64, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "s25sl064p",  INFO(0x010216, 0x4d00,  64 * 1024, 128, 0) },
-	{ "s25fl256s0", INFO(0x010219, 0x4d00, 256 * 1024, 128, 0) },
-	{ "s25fl256s1", INFO(0x010219, 0x4d01,  64 * 1024, 512, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "s25fl512s",  INFO(0x010220, 0x4d00, 256 * 1024, 256, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "s70fl01gs",  INFO(0x010221, 0x4d00, 256 * 1024, 256, 0) },
-	{ "s25sl12800", INFO(0x012018, 0x0300, 256 * 1024,  64, 0) },
-	{ "s25sl12801", INFO(0x012018, 0x0301,  64 * 1024, 256, 0) },
-	{ "s25fl128s",	INFO6(0x012018, 0x4d0180, 64 * 1024, 256, SPI_NOR_QUAD_READ) },
-	{ "s25fl129p0", INFO(0x012018, 0x4d00, 256 * 1024,  64, 0) },
-	{ "s25fl129p1", INFO(0x012018, 0x4d01,  64 * 1024, 256, 0) },
-	{ "s25sl004a",  INFO(0x010212,      0,  64 * 1024,   8, 0) },
-	{ "s25sl008a",  INFO(0x010213,      0,  64 * 1024,  16, 0) },
-	{ "s25sl016a",  INFO(0x010214,      0,  64 * 1024,  32, 0) },
-	{ "s25sl032a",  INFO(0x010215,      0,  64 * 1024,  64, 0) },
-	{ "s25sl064a",  INFO(0x010216,      0,  64 * 1024, 128, 0) },
-	{ "s25fl008k",  INFO(0xef4014,      0,  64 * 1024,  16, SECT_4K) },
-	{ "s25fl016k",  INFO(0xef4015,      0,  64 * 1024,  32, SECT_4K) },
-	{ "s25fl064k",  INFO(0xef4017,      0,  64 * 1024, 128, SECT_4K) },
-	{ "s25fl132k",  INFO(0x014016,      0,  64 * 1024,  64, 0) },
-	{ "s25fl204k",  INFO(0x014013,      0,  64 * 1024,   8, SECT_4K) },
+	{ "s25sl032p",  INFO(0x010215, 0x4d00,  64 * 1024,  64, 40 * SECOND, 40 * SECOND, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "s25sl064p",  INFO(0x010216, 0x4d00,  64 * 1024, 128, 40 * SECOND, 40 * SECOND, 0) },
+	{ "s25fl256s0", INFO(0x010219, 0x4d00, 256 * 1024, 128, 40 * SECOND, 40 * SECOND, 0) },
+	{ "s25fl256s1", INFO(0x010219, 0x4d01,  64 * 1024, 512, 40 * SECOND, 40 * SECOND, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "s25fl512s",  INFO(0x010220, 0x4d00, 256 * 1024, 256, 40 * SECOND, 40 * SECOND, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "s70fl01gs",  INFO(0x010221, 0x4d00, 256 * 1024, 256, 40 * SECOND, 40 * SECOND, 0) },
+	{ "s25sl12800", INFO(0x012018, 0x0300, 256 * 1024,  64, 40 * SECOND, 40 * SECOND, 0) },
+	{ "s25sl12801", INFO(0x012018, 0x0301,  64 * 1024, 256, 40 * SECOND, 40 * SECOND, 0) },
+	{ "s25fl128s",	INFO6(0x012018, 0x4d0180, 64 * 1024, 256, 40 * SECOND, 40 * SECOND, SPI_NOR_QUAD_READ) },
+	{ "s25fl129p0", INFO(0x012018, 0x4d00, 256 * 1024,  64, 40 * SECOND, 40 * SECOND, 0) },
+	{ "s25fl129p1", INFO(0x012018, 0x4d01,  64 * 1024, 256, 40 * SECOND, 40 * SECOND, 0) },
+	{ "s25sl004a",  INFO(0x010212,      0,  64 * 1024,   8, 40 * SECOND, 40 * SECOND, 0) },
+	{ "s25sl008a",  INFO(0x010213,      0,  64 * 1024,  16, 40 * SECOND, 40 * SECOND, 0) },
+	{ "s25sl016a",  INFO(0x010214,      0,  64 * 1024,  32, 40 * SECOND, 40 * SECOND, 0) },
+	{ "s25sl032a",  INFO(0x010215,      0,  64 * 1024,  64, 40 * SECOND, 40 * SECOND, 0) },
+	{ "s25sl064a",  INFO(0x010216,      0,  64 * 1024, 128, 40 * SECOND, 40 * SECOND, 0) },
+	{ "s25fl008k",  INFO(0xef4014,      0,  64 * 1024,  16, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "s25fl016k",  INFO(0xef4015,      0,  64 * 1024,  32, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "s25fl064k",  INFO(0xef4017,      0,  64 * 1024, 128, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "s25fl132k",  INFO(0x014016,      0,  64 * 1024,  64, 40 * SECOND, 40 * SECOND, 0) },
+	{ "s25fl204k",  INFO(0x014013,      0,  64 * 1024,   8, 40 * SECOND, 40 * SECOND, SECT_4K) },
 
 	/* SST -- large erase sizes are "overlays", "sectors" are 4K */
-	{ "sst25vf040b", INFO(0xbf258d, 0, 64 * 1024,  8, SECT_4K | SST_WRITE) },
-	{ "sst25vf080b", INFO(0xbf258e, 0, 64 * 1024, 16, SECT_4K | SST_WRITE) },
-	{ "sst25vf016b", INFO(0xbf2541, 0, 64 * 1024, 32, SECT_4K | SST_WRITE) },
-	{ "sst25vf032b", INFO(0xbf254a, 0, 64 * 1024, 64, SECT_4K | SST_WRITE) },
-	{ "sst25vf064c", INFO(0xbf254b, 0, 64 * 1024, 128, SECT_4K) },
-	{ "sst25wf512",  INFO(0xbf2501, 0, 64 * 1024,  1, SECT_4K | SST_WRITE) },
-	{ "sst25wf010",  INFO(0xbf2502, 0, 64 * 1024,  2, SECT_4K | SST_WRITE) },
-	{ "sst25wf020",  INFO(0xbf2503, 0, 64 * 1024,  4, SECT_4K | SST_WRITE) },
-	{ "sst25wf040",  INFO(0xbf2504, 0, 64 * 1024,  8, SECT_4K | SST_WRITE) },
-	{ "sst25wf080",  INFO(0xbf2505, 0, 64 * 1024, 16, SECT_4K | SST_WRITE) },
+	{ "sst25vf040b", INFO(0xbf258d, 0, 64 * 1024,  8, 40 * SECOND, 40 * SECOND, SECT_4K | SST_WRITE) },
+	{ "sst25vf080b", INFO(0xbf258e, 0, 64 * 1024, 16, 40 * SECOND, 40 * SECOND, SECT_4K | SST_WRITE) },
+	{ "sst25vf016b", INFO(0xbf2541, 0, 64 * 1024, 32, 40 * SECOND, 40 * SECOND, SECT_4K | SST_WRITE) },
+	{ "sst25vf032b", INFO(0xbf254a, 0, 64 * 1024, 64, 40 * SECOND, 40 * SECOND, SECT_4K | SST_WRITE) },
+	{ "sst25vf064c", INFO(0xbf254b, 0, 64 * 1024, 128, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "sst25wf512",  INFO(0xbf2501, 0, 64 * 1024,  1, 40 * SECOND, 40 * SECOND, SECT_4K | SST_WRITE) },
+	{ "sst25wf010",  INFO(0xbf2502, 0, 64 * 1024,  2, 40 * SECOND, 40 * SECOND, SECT_4K | SST_WRITE) },
+	{ "sst25wf020",  INFO(0xbf2503, 0, 64 * 1024,  4, 40 * SECOND, 40 * SECOND, SECT_4K | SST_WRITE) },
+	{ "sst25wf040",  INFO(0xbf2504, 0, 64 * 1024,  8, 40 * SECOND, 40 * SECOND, SECT_4K | SST_WRITE) },
+	{ "sst25wf080",  INFO(0xbf2505, 0, 64 * 1024, 16, 40 * SECOND, 40 * SECOND, SECT_4K | SST_WRITE) },
 
 	/* ST Microelectronics -- newer production may have feature updates */
-	{ "m25p05",  INFO(0x202010,  0,  32 * 1024,   2, 0) },
-	{ "m25p10",  INFO(0x202011,  0,  32 * 1024,   4, 0) },
-	{ "m25p20",  INFO(0x202012,  0,  64 * 1024,   4, 0) },
-	{ "m25p40",  INFO(0x202013,  0,  64 * 1024,   8, 0) },
-	{ "m25p80",  INFO(0x202014,  0,  64 * 1024,  16, 0) },
-	{ "m25p16",  INFO(0x202015,  0,  64 * 1024,  32, 0) },
-	{ "m25p32",  INFO(0x202016,  0,  64 * 1024,  64, 0) },
-	{ "m25p64",  INFO(0x202017,  0,  64 * 1024, 128, 0) },
-	{ "m25p128", INFO(0x202018,  0, 256 * 1024,  64, 0) },
-
-	{ "m25p05-nonjedec",  INFO(0, 0,  32 * 1024,   2, 0) },
-	{ "m25p10-nonjedec",  INFO(0, 0,  32 * 1024,   4, 0) },
-	{ "m25p20-nonjedec",  INFO(0, 0,  64 * 1024,   4, 0) },
-	{ "m25p40-nonjedec",  INFO(0, 0,  64 * 1024,   8, 0) },
-	{ "m25p80-nonjedec",  INFO(0, 0,  64 * 1024,  16, 0) },
-	{ "m25p16-nonjedec",  INFO(0, 0,  64 * 1024,  32, 0) },
-	{ "m25p32-nonjedec",  INFO(0, 0,  64 * 1024,  64, 0) },
-	{ "m25p64-nonjedec",  INFO(0, 0,  64 * 1024, 128, 0) },
-	{ "m25p128-nonjedec", INFO(0, 0, 256 * 1024,  64, 0) },
-
-	{ "m45pe10", INFO(0x204011,  0, 64 * 1024,    2, 0) },
-	{ "m45pe80", INFO(0x204014,  0, 64 * 1024,   16, 0) },
-	{ "m45pe16", INFO(0x204015,  0, 64 * 1024,   32, 0) },
-
-	{ "m25pe20", INFO(0x208012,  0, 64 * 1024,  4,       0) },
-	{ "m25pe80", INFO(0x208014,  0, 64 * 1024, 16,       0) },
-	{ "m25pe16", INFO(0x208015,  0, 64 * 1024, 32, SECT_4K) },
-
-	{ "m25px16",    INFO(0x207115,  0, 64 * 1024, 32, SECT_4K) },
-	{ "m25px32",    INFO(0x207116,  0, 64 * 1024, 64, SECT_4K) },
-	{ "m25px32-s0", INFO(0x207316,  0, 64 * 1024, 64, SECT_4K) },
-	{ "m25px32-s1", INFO(0x206316,  0, 64 * 1024, 64, SECT_4K) },
-	{ "m25px64",    INFO(0x207117,  0, 64 * 1024, 128, 0) },
-	{ "m25px80",    INFO(0x207114,  0, 64 * 1024, 16, 0) },
+	{ "m25p05",  INFO(0x202010,  0,  32 * 1024,   2, 40 * SECOND, 40 * SECOND, 0) },
+	{ "m25p10",  INFO(0x202011,  0,  32 * 1024,   4, 40 * SECOND, 40 * SECOND, 0) },
+	{ "m25p20",  INFO(0x202012,  0,  64 * 1024,   4, 40 * SECOND, 40 * SECOND, 0) },
+	{ "m25p40",  INFO(0x202013,  0,  64 * 1024,   8, 40 * SECOND, 40 * SECOND, 0) },
+	{ "m25p80",  INFO(0x202014,  0,  64 * 1024,  16, 40 * SECOND, 40 * SECOND, 0) },
+	{ "m25p16",  INFO(0x202015,  0,  64 * 1024,  32, 40 * SECOND, 40 * SECOND, 0) },
+	{ "m25p32",  INFO(0x202016,  0,  64 * 1024,  64, 40 * SECOND, 40 * SECOND, 0) },
+	{ "m25p64",  INFO(0x202017,  0,  64 * 1024, 128, 40 * SECOND, 40 * SECOND, 0) },
+	{ "m25p128", INFO(0x202018,  0, 256 * 1024,  64, 3 * SECOND, 250 * SECOND, 0) },
+
+	{ "m25p05-nonjedec",  INFO(0, 0,  32 * 1024,   2, 40 * SECOND, 40 * SECOND, 0) },
+	{ "m25p10-nonjedec",  INFO(0, 0,  32 * 1024,   4, 40 * SECOND, 40 * SECOND, 0) },
+	{ "m25p20-nonjedec",  INFO(0, 0,  64 * 1024,   4, 40 * SECOND, 40 * SECOND, 0) },
+	{ "m25p40-nonjedec",  INFO(0, 0,  64 * 1024,   8, 40 * SECOND, 40 * SECOND, 0) },
+	{ "m25p80-nonjedec",  INFO(0, 0,  64 * 1024,  16, 40 * SECOND, 40 * SECOND, 0) },
+	{ "m25p16-nonjedec",  INFO(0, 0,  64 * 1024,  32, 40 * SECOND, 40 * SECOND, 0) },
+	{ "m25p32-nonjedec",  INFO(0, 0,  64 * 1024,  64, 40 * SECOND, 40 * SECOND, 0) },
+	{ "m25p64-nonjedec",  INFO(0, 0,  64 * 1024, 128, 40 * SECOND, 40 * SECOND, 0) },
+	{ "m25p128-nonjedec", INFO(0, 0, 256 * 1024,  64, 40 * SECOND, 40 * SECOND, 0) },
+
+	{ "m45pe10", INFO(0x204011,  0, 64 * 1024,    2, 40 * SECOND, 40 * SECOND, 0) },
+	{ "m45pe80", INFO(0x204014,  0, 64 * 1024,   16, 40 * SECOND, 40 * SECOND, 0) },
+	{ "m45pe16", INFO(0x204015,  0, 64 * 1024,   32, 40 * SECOND, 40 * SECOND, 0) },
+
+	{ "m25pe20", INFO(0x208012,  0, 64 * 1024,  4, 40 * SECOND, 40 * SECOND,       0) },
+	{ "m25pe80", INFO(0x208014,  0, 64 * 1024, 16, 40 * SECOND, 40 * SECOND,       0) },
+	{ "m25pe16", INFO(0x208015,  0, 64 * 1024, 32, 40 * SECOND, 40 * SECOND, SECT_4K) },
+
+	{ "m25px16",    INFO(0x207115,  0, 64 * 1024, 32, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "m25px32",    INFO(0x207116,  0, 64 * 1024, 64, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "m25px32-s0", INFO(0x207316,  0, 64 * 1024, 64, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "m25px32-s1", INFO(0x206316,  0, 64 * 1024, 64, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "m25px64",    INFO(0x207117,  0, 64 * 1024, 128, 40 * SECOND, 40 * SECOND, 0) },
+	{ "m25px80",    INFO(0x207114,  0, 64 * 1024, 16, 40 * SECOND, 40 * SECOND, 0) },
 
 	/* Winbond -- w25x "blocks" are 64K, "sectors" are 4KiB */
-	{ "w25x05", INFO(0xef3010, 0, 64 * 1024,  1,  SECT_4K) },
-	{ "w25x10", INFO(0xef3011, 0, 64 * 1024,  2,  SECT_4K) },
-	{ "w25x20", INFO(0xef3012, 0, 64 * 1024,  4,  SECT_4K) },
-	{ "w25x40", INFO(0xef3013, 0, 64 * 1024,  8,  SECT_4K) },
-	{ "w25x80", INFO(0xef3014, 0, 64 * 1024,  16, SECT_4K) },
-	{ "w25x16", INFO(0xef3015, 0, 64 * 1024,  32, SECT_4K) },
-	{ "w25x32", INFO(0xef3016, 0, 64 * 1024,  64, SECT_4K) },
-	{ "w25q32", INFO(0xef4016, 0, 64 * 1024,  64, SECT_4K) },
-	{ "w25q32dw", INFO(0xef6016, 0, 64 * 1024,  64, SECT_4K) },
-	{ "w25x64", INFO(0xef3017, 0, 64 * 1024, 128, SECT_4K) },
-	{ "w25q64", INFO(0xef4017, 0, 64 * 1024, 128, SECT_4K) },
-	{ "w25q64dw", INFO(0xef6017, 0, 64 * 1024, 128, SECT_4K) },
-	{ "w25q80", INFO(0xef5014, 0, 64 * 1024,  16, SECT_4K) },
-	{ "w25q80bl", INFO(0xef4014, 0, 64 * 1024,  16, SECT_4K) },
-	{ "w25q128", INFO(0xef4018, 0, 64 * 1024, 256, SECT_4K) },
-	{ "w25q256", INFO(0xef4019, 0, 64 * 1024, 512, SECT_4K) },
+	{ "w25x05", INFO(0xef3010, 0, 64 * 1024,  1,  40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "w25x10", INFO(0xef3011, 0, 64 * 1024,  2,  40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "w25x20", INFO(0xef3012, 0, 64 * 1024,  4,  40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "w25x40", INFO(0xef3013, 0, 64 * 1024,  8,  40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "w25x80", INFO(0xef3014, 0, 64 * 1024,  16, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "w25x16", INFO(0xef3015, 0, 64 * 1024,  32, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "w25x32", INFO(0xef3016, 0, 64 * 1024,  64, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "w25q32", INFO(0xef4016, 0, 64 * 1024,  64, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "w25q32dw", INFO(0xef6016, 0, 64 * 1024,  64, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "w25x64", INFO(0xef3017, 0, 64 * 1024, 128, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "w25q64", INFO(0xef4017, 0, 64 * 1024, 128, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "w25q64dw", INFO(0xef6017, 0, 64 * 1024, 128, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "w25q80", INFO(0xef5014, 0, 64 * 1024,  16, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "w25q80bl", INFO(0xef4014, 0, 64 * 1024,  16, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "w25q128", INFO(0xef4018, 0, 64 * 1024, 256, 40 * SECOND, 40 * SECOND, SECT_4K) },
+	{ "w25q256", INFO(0xef4019, 0, 64 * 1024, 512, 40 * SECOND, 40 * SECOND, SECT_4K) },
 
 	/* Catalyst / On Semiconductor -- non-JEDEC */
-	{ "cat25c11", CAT25_INFO(  16, 8, 16, 1, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
-	{ "cat25c03", CAT25_INFO(  32, 8, 16, 2, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
-	{ "cat25c09", CAT25_INFO( 128, 8, 32, 2, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
-	{ "cat25c17", CAT25_INFO( 256, 8, 32, 2, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
-	{ "cat25128", CAT25_INFO(2048, 8, 64, 2, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
+	{ "cat25c11", CAT25_INFO(  16, 8, 16, 1, 40 * SECOND, 40 * SECOND, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
+	{ "cat25c03", CAT25_INFO(  32, 8, 16, 2, 40 * SECOND, 40 * SECOND, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
+	{ "cat25c09", CAT25_INFO( 128, 8, 32, 2, 40 * SECOND, 40 * SECOND, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
+	{ "cat25c17", CAT25_INFO( 256, 8, 32, 2, 40 * SECOND, 40 * SECOND, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
+	{ "cat25128", CAT25_INFO(2048, 8, 64, 2, 40 * SECOND, 40 * SECOND, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
 	{ },
 };
 
@@ -684,7 +703,7 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
 
 		/* write one byte. */
 		nor->write(nor, to, 1, retlen, buf);
-		ret = spi_nor_wait_till_ready(nor);
+		ret = spi_nor_wait_till_ready(nor, 40 * SECOND);
 		if (ret)
 			goto time_out;
 	}
@@ -696,7 +715,7 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
 
 		/* write two bytes. */
 		nor->write(nor, to, 2, retlen, buf + actual);
-		ret = spi_nor_wait_till_ready(nor);
+		ret = spi_nor_wait_till_ready(nor, 40 * SECOND);
 		if (ret)
 			goto time_out;
 		to += 2;
@@ -705,7 +724,7 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
 	nor->sst_write_second = false;
 
 	write_disable(nor);
-	ret = spi_nor_wait_till_ready(nor);
+	ret = spi_nor_wait_till_ready(nor, 40 * SECOND);
 	if (ret)
 		goto time_out;
 
@@ -716,7 +735,7 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
 		nor->program_opcode = SPINOR_OP_BP;
 		nor->write(nor, to, 1, retlen, buf + actual);
 
-		ret = spi_nor_wait_till_ready(nor);
+		ret = spi_nor_wait_till_ready(nor, 40 * SECOND);
 		if (ret)
 			goto time_out;
 		write_disable(nor);
@@ -762,7 +781,7 @@ static int spi_nor_write(struct mtd_info *mtd, loff_t to, size_t len,
 			if (page_size > nor->page_size)
 				page_size = nor->page_size;
 
-			ret = spi_nor_wait_till_ready(nor);
+			ret = spi_nor_wait_till_ready(nor, 40 * SECOND);
 			if (ret)
 				goto write_err;
 
@@ -772,7 +791,7 @@ static int spi_nor_write(struct mtd_info *mtd, loff_t to, size_t len,
 		}
 	}
 
-	ret = spi_nor_wait_till_ready(nor);
+	ret = spi_nor_wait_till_ready(nor, 40 * SECOND);
 write_err:
 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_WRITE);
 	return ret;
@@ -788,7 +807,7 @@ static int macronix_quad_enable(struct spi_nor *nor)
 	nor->cmd_buf[0] = val | SR_QUAD_EN_MX;
 	nor->write_reg(nor, SPINOR_OP_WRSR, nor->cmd_buf, 1, 0);
 
-	if (spi_nor_wait_till_ready(nor))
+	if (spi_nor_wait_till_ready(nor, 40 * SECOND))
 		return 1;
 
 	ret = read_sr(nor);
@@ -980,6 +999,8 @@ int spi_nor_scan(struct spi_nor *nor, const char *name, enum read_mode mode,
 	nor->page_size = info->page_size;
 	mtd->writebufsize = nor->page_size;
 
+	memcpy(&nor->timings, &info->timings, sizeof(nor->timings));
+
 	if (np) {
 		/* If we were instantiated by DT, use it */
 		if (of_property_read_bool(np, "m25p,fast-read"))
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index de9ac08..9b2cae4 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -123,6 +123,18 @@ enum spi_nor_option_flags {
 };
 
 /**
+ * struct spi_nor_timings - Structure containing maximum timing values
+ * for various write/erase operations (per chip's specification)
+ *
+ * @sector_erase:	maximum amount of time it takes to erase a sector
+ * @chip_erase:		maximum amount of time it takes to erase whole chip
+ */
+struct spi_nor_timings {
+	uint64_t sector_erase;
+	uint64_t chip_erase;
+};
+
+/**
  * struct spi_nor - Structure for defining a the SPI NOR layer
  * @mtd:		point to a mtd_info structure
  * @lock:		the lock for the read/write/erase/lock/unlock operations
@@ -164,6 +176,7 @@ struct spi_nor {
 	u8			program_opcode;
 	enum read_mode		flash_read;
 	bool			sst_write_second;
+	struct spi_nor_timings  timings;
 	u32			flags;
 	struct spi_nor_xfer_cfg	cfg;
 	u8			cmd_buf[SPI_NOR_MAX_CMD_SIZE];
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
