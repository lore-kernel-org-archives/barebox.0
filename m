Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 82-148-208-25.fiber.unet.nl ([82.148.208.25]
	helo=berilia.team-embedded.nl)
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RLBI2-000101-B2
	for barebox@lists.infradead.org; Tue, 01 Nov 2011 10:10:03 +0000
Received: from keppler ([192.168.0.13] helo=localhost.localdomain)
	by berilia.team-embedded.nl with esmtp (Exim 4.69)
	(envelope-from <mark.vels@team-embedded.nl>) id 1RLBCp-0005eI-W4
	for barebox@lists.infradead.org; Tue, 01 Nov 2011 11:04:31 +0100
From: Mark Vels <mark.vels@team-embedded.nl>
Date: Tue,  1 Nov 2011 11:09:41 +0100
Message-Id: <1552821178bc19a824f929106771cd192d39589a.1320141619.git.mark.vels@team-embedded.nl>
In-Reply-To: <cover.1320141619.git.mark.vels@team-embedded.nl>
References: <cover.1320141619.git.mark.vels@team-embedded.nl>
In-Reply-To: <cover.1320141619.git.mark.vels@team-embedded.nl>
References: <cover.1320141619.git.mark.vels@team-embedded.nl>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/9] trivial: De-orphan NAND doxygen output and fix @param
	syntax
To: barebox@lists.infradead.org


Signed-off-by: Mark Vels <mark.vels@team-embedded.nl>
---
 drivers/mtd/nand/nand_hwecc_syndrome.c   |   44 ++++++----
 drivers/mtd/nand/nand_omap_bch_decoder.c |   19 +++--
 drivers/mtd/nand/nand_write.c            |  136 +++++++++++++++--------------
 3 files changed, 108 insertions(+), 91 deletions(-)

diff --git a/drivers/mtd/nand/nand_hwecc_syndrome.c b/drivers/mtd/nand/nand_hwecc_syndrome.c
index dd067c9..937f574 100644
--- a/drivers/mtd/nand/nand_hwecc_syndrome.c
+++ b/drivers/mtd/nand/nand_hwecc_syndrome.c
@@ -9,12 +9,16 @@
 #include <io.h>
 #include <malloc.h>
 #include <module.h>
+/**
+ * @file
+*/
+
 
 /**
- * nand_read_page_syndrome - [REPLACABLE] hardware ecc syndrom based page read
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @buf:	buffer to store read data
+ * @brief nand_read_page_syndrome - [REPLACABLE] hardware ecc syndrom based page read
+ * @param mtd	mtd info structure
+ * @param chip	nand chip info structure
+ * @param buf	buffer to store read data
  *
  * The hw generator calculates the error syndrome automatically. Therefor
  * we need a special oob layout and handling.
@@ -64,10 +68,10 @@ static int nand_read_page_syndrome(struct mtd_info *mtd, struct nand_chip *chip,
 	return 0;
 }
 /**
- * nand_write_page_syndrome - [REPLACABLE] hardware ecc syndrom based page write
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @buf:	data buffer
+ * @brief nand_write_page_syndrome - [REPLACABLE] hardware ecc syndrom based page write
+ * @param mtd	mtd info structure
+ * @param chip	nand chip info structure
+ * @param buf	data buffer
  *
  * The hw generator calculates the error syndrome automatically. Therefor
  * we need a special oob layout and handling.
@@ -110,12 +114,12 @@ static void nand_write_page_syndrome(struct mtd_info *mtd,
 #endif
 
 /**
- * nand_read_oob_syndrome - [REPLACABLE] OOB data read function for HW ECC
+ * @brief nand_read_oob_syndrome - [REPLACABLE] OOB data read function for HW ECC
  *			    with syndromes
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @page:	page number to read
- * @sndcmd:	flag whether to issue read command or not
+ * @param mtd	mtd info structure
+ * @param chip	nand chip info structure
+ * @param page	page number to read
+ * @param sndcmd flag whether to issue read command or not
  */
 static int nand_read_oob_syndrome(struct mtd_info *mtd, struct nand_chip *chip,
 				  int page, int sndcmd)
@@ -148,14 +152,14 @@ static int nand_read_oob_syndrome(struct mtd_info *mtd, struct nand_chip *chip,
 	return 1;
 }
 
+#ifdef CONFIG_NAND_WRITE
 /**
- * nand_write_oob_syndrome - [REPLACABLE] OOB data write function for HW ECC
+ * @brief nand_write_oob_syndrome - [REPLACABLE] OOB data write function for HW ECC
  *			     with syndrome - only for large page flash !
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @page:	page number to write
+ * @param mtd	mtd info structure
+ * @param chip	nand chip info structure
+ * @param page	page number to write
  */
-#ifdef CONFIG_NAND_WRITE
 static int nand_write_oob_syndrome(struct mtd_info *mtd,
 				   struct nand_chip *chip, int page)
 {
@@ -209,6 +213,10 @@ static int nand_write_oob_syndrome(struct mtd_info *mtd,
 }
 #endif
 
+/**
+ * @brief nand_init_ecc_hw_syndrome - Init the HW ECC with syndrome.
+ * @param chip	nand chip info structure
+*/
 void nand_init_ecc_hw_syndrome(struct nand_chip *chip)
 {
 		/* Use standard syndrome read/write page function ? */
diff --git a/drivers/mtd/nand/nand_omap_bch_decoder.c b/drivers/mtd/nand/nand_omap_bch_decoder.c
index 356f71f..83cb0c4 100644
--- a/drivers/mtd/nand/nand_omap_bch_decoder.c
+++ b/drivers/mtd/nand/nand_omap_bch_decoder.c
@@ -22,9 +22,13 @@
 #define PPP	0x201B	/* Primary Polynomial : x^13 + x^4 + x^3 + x + 1 */
 #define P	0x001B	/* With omitted x^13 */
 #define POLY	12	/* degree of the primary Polynomial less one */
+/**
+ * @file
+*/
+
 
 /**
- * mpy_mod_gf - GALOIS field multiplier
+ * @brief mpy_mod_gf - GALOIS field multiplier
  * Input  : A(x), B(x)
  * Output : A(x)*B(x) mod P(x)
  */
@@ -52,7 +56,7 @@ static unsigned int mpy_mod_gf(unsigned int a, unsigned int b)
 /**
  * chien - CHIEN search
  *
- * @location - Error location vector pointer
+ * @parm location	Error location vector pointer
  *
  * Inputs  : ELP(z)
  *	     No. of found errors
@@ -123,8 +127,8 @@ static int chien(unsigned int select_4_8, int err_nums,
 }
 
 /* synd : 16 Syndromes
- * return: gamaas - Coefficients to the error polynomial
- * return: : Number of detected errors
+ * @return gamaas - Coefficients to the error polynomial
+ * @return Number of detected errors
 */
 static unsigned int berlekamp(unsigned int select_4_8,
 			unsigned int synd[], unsigned int err[])
@@ -350,10 +354,11 @@ static void syndrome(unsigned int select_4_8,
 }
 
 /**
- * decode_bch - BCH decoder for 4- and 8-bit error correction
+ * @brief decode_bch - BCH decoder for 4- and 8-bit error correction
  *
- * @ecc - ECC syndrome generated by hw BCH engine
- * @err_loc - pointer to error location array
+ * @param select_4_8	Indicates the number of error bits.
+ * @param ecc		ECC syndrome generated by hw BCH engine
+ * @param err_loc	pointer to error location array
  *
  * This function does post sydrome generation (hw generated) decoding
  * for:-
diff --git a/drivers/mtd/nand/nand_write.c b/drivers/mtd/nand/nand_write.c
index 13b6c89..823de5d 100644
--- a/drivers/mtd/nand/nand_write.c
+++ b/drivers/mtd/nand/nand_write.c
@@ -12,14 +12,18 @@
 
 #include "nand.h"
 
+/**
+ * @file
+*/
+
 static int nand_do_write_oob(struct mtd_info *mtd, loff_t to,
 			     struct mtd_oob_ops *ops);
 
 /**
- * nand_write_buf - [DEFAULT] write buffer to chip
- * @mtd:	MTD device structure
- * @buf:	data buffer
- * @len:	number of bytes to write
+ * @brief nand_write_buf - [DEFAULT] write buffer to chip
+ * @param mtd	MTD device structure
+ * @param buf	data buffer
+ * @param len	number of bytes to write
  *
  * Default write function for 8bit buswith
  */
@@ -33,10 +37,10 @@ void nand_write_buf(struct mtd_info *mtd, const uint8_t *buf, int len)
 }
 
 /**
- * nand_write_buf16 - [DEFAULT] write buffer to chip
- * @mtd:	MTD device structure
- * @buf:	data buffer
- * @len:	number of bytes to write
+ * @brief nand_write_buf16 - [DEFAULT] write buffer to chip
+ * @param mtd	MTD device structure
+ * @param buf	data buffer
+ * @param len	number of bytes to write
  *
  * Default write function for 16bit buswith
  */
@@ -53,9 +57,9 @@ void nand_write_buf16(struct mtd_info *mtd, const uint8_t *buf, int len)
 }
 
 /**
- * nand_default_block_markbad - [DEFAULT] mark a block bad
- * @mtd:	MTD device structure
- * @ofs:	offset from device start
+ * @brief nand_default_block_markbad - [DEFAULT] mark a block bad
+ * @param mtd	MTD device structure
+ * @param ofs	offset from device start
  *
  * This is the default implementation, which can be overridden by
  * a hardware specific driver.
@@ -93,8 +97,8 @@ int nand_default_block_markbad(struct mtd_info *mtd, loff_t ofs)
 }
 
 /**
- * nand_check_wp - [GENERIC] check if the chip is write protected
- * @mtd:	MTD device structure
+ * @brief nand_check_wp - [GENERIC] check if the chip is write protected
+ * @param mtd	MTD device structure
  * Check, if the device is write protected
  *
  * The function expects, that the device is already selected
@@ -108,10 +112,10 @@ static int nand_check_wp(struct mtd_info *mtd)
 }
 
 /**
- * nand_write_oob_std - [REPLACABLE] the most common OOB data write function
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @page:	page number to write
+ * @brief nand_write_oob_std - [REPLACABLE] the most common OOB data write function
+ * @param mtd	mtd info structure
+ * @param chip	nand chip info structure
+ * @param page	page number to write
  */
 int nand_write_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
 			      int page)
@@ -131,10 +135,10 @@ int nand_write_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
 }
 
 /**
- * nand_write_page_raw - [Intern] raw page write function
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @buf:	data buffer
+ * @brief nand_write_page_raw - [Intern] raw page write function
+ * @param mtd	mtd info structure
+ * @param chip	nand chip info structure
+ * @param buf	data buffer
  */
 void nand_write_page_raw(struct mtd_info *mtd, struct nand_chip *chip,
 				const uint8_t *buf)
@@ -144,13 +148,13 @@ void nand_write_page_raw(struct mtd_info *mtd, struct nand_chip *chip,
 }
 
 /**
- * nand_write_page - [REPLACEABLE] write one page
- * @mtd:	MTD device structure
- * @chip:	NAND chip descriptor
- * @buf:	the data to write
- * @page:	page number to write
- * @cached:	cached programming
- * @raw:	use _raw version of write_page
+ * @brief nand_write_page - [REPLACEABLE] write one page
+ * @param mtd	MTD device structure
+ * @param chip	NAND chip descriptor
+ * @param buf	the data to write
+ * @param page	page number to write
+ * @param cached cached programming
+ * @param raw	use _raw version of write_page
  */
 int nand_write_page(struct mtd_info *mtd, struct nand_chip *chip,
 			   const uint8_t *buf, int page, int cached, int raw)
@@ -201,10 +205,10 @@ int nand_write_page(struct mtd_info *mtd, struct nand_chip *chip,
 }
 
 /**
- * nand_fill_oob - [Internal] Transfer client buffer to oob
- * @chip:	nand chip structure
- * @oob:	oob data buffer
- * @ops:	oob ops structure
+ * @brief nand_fill_oob - [Internal] Transfer client buffer to oob
+ * @param chip	nand chip structure
+ * @param oob	oob data buffer
+ * @param ops	oob ops structure
  */
 static uint8_t *nand_fill_oob(struct nand_chip *chip, uint8_t *oob,
 				  struct mtd_oob_ops *ops)
@@ -252,10 +256,10 @@ static uint8_t *nand_fill_oob(struct nand_chip *chip, uint8_t *oob,
 #define NOTALIGNED(x)	(x & (chip->subpagesize - 1)) != 0
 
 /**
- * nand_do_write_ops - [Internal] NAND write with ECC
- * @mtd:	MTD device structure
- * @to:		offset to write to
- * @ops:	oob operations description structure
+ * @brief nand_do_write_ops - [Internal] NAND write with ECC
+ * @param mtd	MTD device structure
+ * @param to	offset to write to
+ * @param ops	oob operations description structure
  *
  * NAND write with ECC
  */
@@ -354,12 +358,12 @@ int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
 }
 
 /**
- * nand_write - [MTD Interface] NAND write with ECC
- * @mtd:	MTD device structure
- * @to:		offset to write to
- * @len:	number of bytes to write
- * @retlen:	pointer to variable to store the number of written bytes
- * @buf:	the data to write
+ * @brief nand_write - [MTD Interface] NAND write with ECC
+ * @param mtd	MTD device structure
+ * @param to	offset to write to
+ * @param len	number of bytes to write
+ * @param retlen pointer to variable to store the number of written bytes
+ * @param buf	the data to write
  *
  * NAND write with ECC
  */
@@ -387,10 +391,10 @@ int nand_write(struct mtd_info *mtd, loff_t to, size_t len,
 }
 
 /**
- * nand_do_write_oob - [MTD Interface] NAND write out-of-band
- * @mtd:	MTD device structure
- * @to:		offset to write to
- * @ops:	oob operation description structure
+ * @brief nand_do_write_oob - [MTD Interface] NAND write out-of-band
+ * @param mtd	MTD device structure
+ * @param to	offset to write to
+ * @param ops	oob operation description structure
  *
  * NAND write out-of-band
  */
@@ -467,10 +471,10 @@ static int nand_do_write_oob(struct mtd_info *mtd, loff_t to,
 }
 
 /**
- * nand_write_oob - [MTD Interface] NAND write data and/or out-of-band
- * @mtd:	MTD device structure
- * @to:		offset to write to
- * @ops:	oob operation description structure
+ * @brief nand_write_oob - [MTD Interface] NAND write data and/or out-of-band
+ * @param mtd	MTD device structure
+ * @param to	offset to write to
+ * @param ops	oob operation description structure
  */
 int nand_write_oob(struct mtd_info *mtd, loff_t to,
 			  struct mtd_oob_ops *ops)
@@ -506,9 +510,9 @@ int nand_write_oob(struct mtd_info *mtd, loff_t to,
 }
 
 /**
- * single_erease_cmd - [GENERIC] NAND standard block erase command function
- * @mtd:	MTD device structure
- * @page:	the page address of the block which will be erased
+ * @brief single_erease_cmd - [GENERIC] NAND standard block erase command function
+ * @param mtd	MTD device structure
+ * @param page	the page address of the block which will be erased
  *
  * Standard erase command for NAND chips
  */
@@ -521,9 +525,9 @@ void single_erase_cmd(struct mtd_info *mtd, int page)
 }
 
 /**
- * multi_erease_cmd - [GENERIC] AND specific block erase command function
- * @mtd:	MTD device structure
- * @page:	the page address of the block which will be erased
+ * @brief multi_erease_cmd - [GENERIC] AND specific block erase command function
+ * @param mtd	MTD device structure
+ * @param page	the page address of the block which will be erased
  *
  * AND multi block erase command function
  * Erase 4 consecutive blocks
@@ -540,9 +544,9 @@ void multi_erase_cmd(struct mtd_info *mtd, int page)
 }
 
 /**
- * nand_erase - [MTD Interface] erase block(s)
- * @mtd:	MTD device structure
- * @instr:	erase instruction
+ * @brief nand_erase - [MTD Interface] erase block(s)
+ * @param mtd	MTD device structure
+ * @param instr	erase instruction
  *
  * Erase one ore more blocks
  */
@@ -553,10 +557,10 @@ int nand_erase(struct mtd_info *mtd, struct erase_info *instr)
 
 #define BBT_PAGE_MASK	0xffffff3f
 /**
- * nand_erase_nand - [Internal] erase block(s)
- * @mtd:	MTD device structure
- * @instr:	erase instruction
- * @allowbbt:	allow erasing the bbt area
+ * @brief nand_erase_nand - [Internal] erase block(s)
+ * @param mtd	MTD device structure
+ * @param instr erase instruction
+ * @param allowbbt allow erasing the bbt area
  *
  * Erase one ore more blocks
  */
@@ -726,9 +730,9 @@ int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
 }
 
 /**
- * nand_block_markbad - [MTD Interface] Mark block at the given offset as bad
- * @mtd:	MTD device structure
- * @ofs:	offset relative to mtd start
+ * @brief nand_block_markbad - [MTD Interface] Mark block at the given offset as bad
+ * @param mtd	MTD device structure
+ * @param ofs	offset relative to mtd start
  */
 int nand_block_markbad(struct mtd_info *mtd, loff_t ofs)
 {
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
