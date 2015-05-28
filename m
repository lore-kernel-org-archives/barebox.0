Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yy0Aj-0000A2-ND
 for barebox@lists.infradead.org; Thu, 28 May 2015 15:56:52 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 28 May 2015 17:56:07 +0200
Message-Id: <1432828567-14037-9-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1432828567-14037-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1432828567-14037-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 8/8] mtd: m25p80: use the SPI nor framework
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Use the spi-nor framework for the m25p80 driver to de-duplicate the code base
and follow along with the linux kernel version, so bugfixes or features can be
easier integrated.

Based on the Linux v4.1-rc3 version of m25p80.c.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mtd/devices/Kconfig  |   2 +-
 drivers/mtd/devices/m25p80.c | 998 +++++++------------------------------------
 2 files changed, 166 insertions(+), 834 deletions(-)

diff --git a/drivers/mtd/devices/Kconfig b/drivers/mtd/devices/Kconfig
index 7f9c30625844..345c348c692b 100644
--- a/drivers/mtd/devices/Kconfig
+++ b/drivers/mtd/devices/Kconfig
@@ -21,7 +21,7 @@ config MTD_DATAFLASH_WRITE_VERIFY
 
 config MTD_M25P80
 	tristate "Support most SPI Flash chips (AT26DF, M25P, W25X, ...)"
-	depends on SPI
+	depends on MTD_SPI_NOR
 	help
 	  This enables access to most modern SPI flash chips, used for
 	  program and data storage. Series supported include Atmel AT26DF,
diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 095a4ca0936c..c941767de94c 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -25,774 +25,202 @@
 #include <errno.h>
 #include <linux/err.h>
 #include <clock.h>
-#include <linux/math64.h>
-#include <linux/mtd/cfi.h>
 #include <linux/mtd/mtd.h>
+#include <linux/mtd/spi-nor.h>
+#include <linux/mod_devicetable.h>
 
-/* Flash opcodes. */
-#define	OPCODE_WREN		0x06	/* Write enable */
-#define	OPCODE_RDSR		0x05	/* Read status register */
-#define	OPCODE_WRSR		0x01	/* Write status register 1 byte */
-#define	OPCODE_NORM_READ	0x03	/* Read data bytes (low frequency) */
-#define	OPCODE_FAST_READ	0x0b	/* Read data bytes (high frequency) */
-#define	OPCODE_PP		0x02	/* Page program (up to 256 bytes) */
-#define	OPCODE_BE_4K		0x20	/* Erase 4KiB block */
-#define	OPCODE_BE_32K		0x52	/* Erase 32KiB block */
-#define	OPCODE_CHIP_ERASE	0xc7	/* Erase whole flash chip */
-#define	OPCODE_SE		0xd8	/* Sector erase (usually 64KiB) */
-#define	OPCODE_RDID		0x9f	/* Read JEDEC ID */
-
-/* Used for SST flashes only. */
-#define	OPCODE_BP		0x02	/* Byte program */
-#define	OPCODE_WRDI		0x04	/* Write disable */
-#define	OPCODE_AAI_WP		0xad	/* Auto address increment word program */
-
-/* Used for Macronix flashes only. */
-#define	OPCODE_EN4B		0xb7	/* Enter 4-byte mode */
-#define	OPCODE_EX4B		0xe9	/* Exit 4-byte mode */
-
-/* Used for Spansion flashes only. */
-#define	OPCODE_BRWR		0x17	/* Bank register write */
-
-/* Status Register bits. */
-#define	SR_WIP			1	/* Write in progress */
-#define	SR_WEL			2	/* Write enable latch */
-/* meaning of other SR_* bits may differ between vendors */
-#define	SR_BP0			4	/* Block protect 0 */
-#define	SR_BP1			8	/* Block protect 1 */
-#define	SR_BP2			0x10	/* Block protect 2 */
-#define	SR_SRWD			0x80	/* SR write protect */
-
-/* Define max times to check status register before we give up. */
-#define	MAX_READY_WAIT		40	/* M25P16 specs 40s max chip erase */
 #define MAX_CMD_SIZE		6
 
-#define JEDEC_MFR(_jedec_id)	((_jedec_id) >> 16)
-
-/****************************************************************************/
-
-#define SPI_NAME_SIZE   32
-
 struct m25p {
 	struct spi_device	*spi;
+	struct spi_nor		spi_nor;
 	struct mtd_info		mtd;
-	u16			page_size;
-	unsigned		sector_size;
-	u16			addr_width;
-	u8			erase_opcode;
-	u8			erase_opcode_4k;
-	u8			*command;
+	u8			command[MAX_CMD_SIZE];
 };
 
-static inline struct m25p *mtd_to_m25p(struct mtd_info *mtd)
-{
-	return container_of(mtd, struct m25p, mtd);
-}
-
-/****************************************************************************/
-
-/*
- * Internal helper functions
- */
-
-/*
- * Read the status register, returning its value in the location
- * Return the status register value.
- * Returns negative if error occurred.
- */
-static int read_sr(struct m25p *flash)
-{
-	ssize_t retval;
-	u8 code = OPCODE_RDSR;
-	u8 val;
-
-	retval = spi_write_then_read(flash->spi, &code, 1, &val, 1);
-
-	if (retval < 0) {
-		dev_err(&flash->spi->dev, "error %d reading SR\n",
-				(int) retval);
-		return retval;
-	}
-
-	return val;
-}
-
-/*
- * Write status register 1 byte
- * Returns negative if error occurred.
- */
-static int write_sr(struct m25p *flash, u8 val)
-{
-	flash->command[0] = OPCODE_WRSR;
-	flash->command[1] = val;
-
-	return spi_write(flash->spi, flash->command, 2);
-}
-
-/*
- * Set write enable latch with Write Enable command.
- * Returns negative if error occurred.
- */
-static inline int write_enable(struct m25p *flash)
-{
-	u8	code = OPCODE_WREN;
-
-	return spi_write_then_read(flash->spi, &code, 1, NULL, 0);
-}
-
-/*
- * Send write disble instruction to the chip.
- */
-static inline int write_disable(struct m25p *flash)
-{
-	u8	code = OPCODE_WRDI;
-
-	return spi_write_then_read(flash->spi, &code, 1, NULL, 0);
-}
-
-/*
- * Enable/disable 4-byte addressing mode.
- */
-static inline int set_4byte(struct m25p *flash, u32 jedec_id, int enable)
-{
-	switch (JEDEC_MFR(jedec_id)) {
-	case CFI_MFR_MACRONIX:
-		flash->command[0] = enable ? OPCODE_EN4B : OPCODE_EX4B;
-		return spi_write(flash->spi, flash->command, 1);
-	default:
-		/* Spansion style */
-		flash->command[0] = OPCODE_BRWR;
-		flash->command[1] = enable << 7;
-		return spi_write(flash->spi, flash->command, 2);
-	}
-}
-
-/*
- * Service routine to read status register until ready, or timeout occurs.
- * Returns non-zero if error.
- */
-static int wait_till_ready(struct m25p *flash)
+static int m25p80_read_reg(struct spi_nor *nor, u8 code, u8 *val, int len)
 {
-	int sr;
-	uint64_t timer_start;
+	struct m25p *flash = nor->priv;
+	struct spi_device *spi = flash->spi;
+	int ret;
 
-	timer_start = get_time_ns();
+	ret = spi_write_then_read(spi, &code, 1, val, len);
+	if (ret < 0)
+		dev_err(&spi->dev, "error %d reading %x\n", ret, code);
 
-	do {
-		if ((sr = read_sr(flash)) < 0)
-			break;
-		else if (!(sr & SR_WIP))
-			return 0;
-
-	} while (!(is_timeout(timer_start, MAX_READY_WAIT * SECOND)));
-
-	return -ETIMEDOUT;
-}
-
-/*
- * Erase the whole flash memory
- *
- * Returns 0 if successful, non-zero otherwise.
- */
-static int erase_chip(struct m25p *flash)
-{
-	dev_dbg(&flash->spi->dev, "%s %lldKiB\n",
-		__func__, (long long)(flash->mtd.size >> 10));
-
-	/* Wait until finished previous write command. */
-	if (wait_till_ready(flash))
-		return -ETIMEDOUT;
-
-	/* Send write enable, then erase commands. */
-	write_enable(flash);
-
-	/* Set up command buffer. */
-	flash->command[0] = OPCODE_CHIP_ERASE;
-
-	spi_write(flash->spi, flash->command, 1);
-
-	return 0;
+	return ret;
 }
 
-static void m25p_addr2cmd(struct m25p *flash, unsigned int addr, u8 *cmd)
+static void m25p_addr2cmd(struct spi_nor *nor, unsigned int addr, u8 *cmd)
 {
 	/* opcode is in cmd[0] */
-	cmd[1] = addr >> (flash->addr_width * 8 -  8);
-	cmd[2] = addr >> (flash->addr_width * 8 - 16);
-	cmd[3] = addr >> (flash->addr_width * 8 - 24);
-	cmd[4] = addr >> (flash->addr_width * 8 - 32);
+	cmd[1] = addr >> (nor->addr_width * 8 -  8);
+	cmd[2] = addr >> (nor->addr_width * 8 - 16);
+	cmd[3] = addr >> (nor->addr_width * 8 - 24);
+	cmd[4] = addr >> (nor->addr_width * 8 - 32);
 }
 
-static int m25p_cmdsz(struct m25p *flash)
+static int m25p_cmdsz(struct spi_nor *nor)
 {
-	return 1 + flash->addr_width;
-}
-
-/*
- * Erase one sector of flash memory at offset ``offset'' which is any
- * address within the sector which should be erased.
- *
- * Returns 0 if successful, non-zero otherwise.
- */
-static int erase_sector(struct m25p *flash, u32 offset, u32 command)
-{
-	dev_dbg(&flash->spi->dev, "%s %dKiB at 0x%08x\n",
-		__func__, flash->mtd.erasesize / 1024, offset);
-
-	/* Wait until finished previous write command. */
-	if (wait_till_ready(flash))
-		return -ETIMEDOUT;
-
-	/* Send write enable, then erase commands. */
-	write_enable(flash);
-
-	/* Set up command buffer. */
-	flash->command[0] = command;
-	m25p_addr2cmd(flash, offset, flash->command);
-
-	spi_write(flash->spi, flash->command, m25p_cmdsz(flash));
-
-	return 0;
+	return 1 + nor->addr_width;
 }
 
-/****************************************************************************/
-
-/*
- * MTD implementation
- */
-
-/*
- * Erase an address range on the flash chip.  The address range may extend
- * one or more erase sectors.  Return an error is there is a problem erasing.
- */
-static int m25p80_erase(struct mtd_info *mtd, struct erase_info *instr)
+static int m25p80_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len,
+			    int wr_en)
 {
-	struct m25p *flash = mtd_to_m25p(mtd);
-	u32 addr;
-	uint32_t rem;
-	uint64_t len;
-
-	dev_dbg(&flash->spi->dev, "%s at 0x%llx, len %lld\n",
-			__func__, (long long)instr->addr,
-			(long long)instr->len);
-
-	div_u64_rem(instr->len, mtd->erasesize, &rem);
-	if (rem)
-		return -EINVAL;
-
-	addr = instr->addr;
-	len = instr->len;
-
-	/* whole-chip erase? */
-	if (len == flash->mtd.size) {
-		if (erase_chip(flash)) {
-			instr->state = MTD_ERASE_FAILED;
-			return -EIO;
-		}
-		return 0;
-	}
-
-	if (flash->erase_opcode_4k) {
-		while (len && (addr & (flash->sector_size - 1))) {
-			if (ctrlc())
-				return -EINTR;
-			if (erase_sector(flash, addr, flash->erase_opcode_4k))
-				return -EIO;
-			addr += mtd->erasesize;
-			len -= mtd->erasesize;
-		}
-
-		while (len >= flash->sector_size) {
-			if (ctrlc())
-				return -EINTR;
-			if (erase_sector(flash, addr, flash->erase_opcode))
-				return -EIO;
-			addr += flash->sector_size;
-			len -= flash->sector_size;
-		}
-
-		while (len) {
-			if (ctrlc())
-				return -EINTR;
-			if (erase_sector(flash, addr, flash->erase_opcode_4k))
-				return -EIO;
-			addr += mtd->erasesize;
-			len -= mtd->erasesize;
-		}
-	} else {
-		while (len) {
-			if (ctrlc())
-				return -EINTR;
-			if (erase_sector(flash, addr, flash->erase_opcode))
-				return -EIO;
-
-			if (len <= mtd->erasesize)
-				break;
-			addr += mtd->erasesize;
-			len -= mtd->erasesize;
-		}
-	}
+	struct m25p *flash = nor->priv;
+	struct spi_device *spi = flash->spi;
 
-	if (wait_till_ready(flash))
-		return -ETIMEDOUT;
+	flash->command[0] = opcode;
+	if (buf)
+		memcpy(&flash->command[1], buf, len);
 
-	instr->state = MTD_ERASE_DONE;
-	mtd_erase_callback(instr);
-
-	return 0;
+	return spi_write(spi, flash->command, len + 1);
 }
 
-/*
- * Read an address range from the flash chip.  The address range
- * may be any size provided it is within the physical boundaries.
- */
-static int m25p80_read(struct mtd_info *mtd, loff_t from, size_t len,
-	size_t *retlen, u_char *buf)
+static void m25p80_write(struct spi_nor *nor, loff_t to, size_t len,
+			 size_t *retlen, const u_char *buf)
 {
-	struct m25p *flash = mtd_to_m25p(mtd);
-	struct spi_transfer t[2];
+	struct m25p *flash = nor->priv;
+	struct spi_device *spi = flash->spi;
+	struct spi_transfer t[2] = {};
 	struct spi_message m;
-	int fast_read = 0;
-
-	if (flash->spi->max_speed_hz >= 25000000)
-		fast_read = 1;
+	int cmd_sz = m25p_cmdsz(nor);
 
 	spi_message_init(&m);
-	memset(t, 0, (sizeof t));
 
-	/* NOTE:
-	 * OPCODE_FAST_READ (if available) is faster.
-	 * Should add 1 byte DUMMY_BYTE.
-	 */
+	if (nor->program_opcode == SPINOR_OP_AAI_WP && nor->sst_write_second)
+		cmd_sz = 1;
+
+	flash->command[0] = nor->program_opcode;
+	m25p_addr2cmd(nor, to, flash->command);
+
 	t[0].tx_buf = flash->command;
-	t[0].len = m25p_cmdsz(flash) + fast_read;
+	t[0].len = cmd_sz;
 	spi_message_add_tail(&t[0], &m);
 
-	t[1].rx_buf = buf;
+	t[1].tx_buf = buf;
 	t[1].len = len;
 	spi_message_add_tail(&t[1], &m);
 
-	/* Wait till previous write/erase is done. */
-	if (wait_till_ready(flash))
-		return -ETIMEDOUT;
-
-	/* FIXME switch to OPCODE_FAST_READ.  It's required for higher
-	 * clocks; and at this writing, every chip this driver handles
-	 * supports that opcode.
-	 */
+	spi_sync(spi, &m);
 
-	/* Set up the write data buffer. */
-	flash->command[0] = fast_read ? OPCODE_FAST_READ : OPCODE_NORM_READ;
-	m25p_addr2cmd(flash, from, flash->command);
-
-	spi_sync(flash->spi, &m);
-
-	*retlen = m.actual_length - m25p_cmdsz(flash) - fast_read;
-
-	return 0;
+	*retlen += m.actual_length - cmd_sz;
 }
 
 /*
- * Write an address range to the flash chip.  Data must be written in
- * FLASH_PAGESIZE chunks.  The address range may be any size provided
- * it is within the physical boundaries.
+ * Read an address range from the nor chip.  The address range
+ * may be any size provided it is within the physical boundaries.
  */
-static int m25p80_write(struct mtd_info *mtd, loff_t to, size_t len,
-	size_t *retlen, const u_char *buf)
+static int m25p80_read(struct spi_nor *nor, loff_t from, size_t len,
+		       size_t *retlen, u_char *buf)
 {
-	struct m25p *flash = mtd_to_m25p(mtd);
-	u32 page_offset, page_size;
+	struct m25p *flash = nor->priv;
+	struct spi_device *spi = flash->spi;
 	struct spi_transfer t[2];
 	struct spi_message m;
+	unsigned int dummy = nor->read_dummy;
 
-	dev_dbg(&flash->spi->dev, "m25p80_write %ld bytes at 0x%08llx\n",
-			(unsigned long)len, to);
+	/* convert the dummy cycles to the number of bytes */
+	dummy /= 8;
 
 	spi_message_init(&m);
 	memset(t, 0, (sizeof t));
 
+	flash->command[0] = nor->read_opcode;
+	m25p_addr2cmd(nor, from, flash->command);
+
 	t[0].tx_buf = flash->command;
-	t[0].len = m25p_cmdsz(flash);
+	t[0].len = m25p_cmdsz(nor) + dummy;
 	spi_message_add_tail(&t[0], &m);
 
-	t[1].tx_buf = buf;
+	t[1].rx_buf = buf;
+	t[1].len = len;
 	spi_message_add_tail(&t[1], &m);
 
-	/* Wait until finished previous write command. */
-	if (wait_till_ready(flash))
-		return -ETIMEDOUT;
-
-	write_enable(flash);
-
-	/* Set up the opcode in the write buffer. */
-	flash->command[0] = OPCODE_PP;
-	m25p_addr2cmd(flash, to, flash->command);
-
-	page_offset = to & (flash->page_size - 1);
-
-	/* do all the bytes fit onto one page? */
-	if (page_offset + len <= flash->page_size) {
-		t[1].len = len;
-
-		spi_sync(flash->spi, &m);
-
-		*retlen = m.actual_length - m25p_cmdsz(flash);
-	} else {
-		u32 i;
-
-		/* the size of data remaining on the first page */
-		page_size = flash->page_size - page_offset;
-
-		t[1].len = page_size;
-		spi_sync(flash->spi, &m);
-
-		*retlen = m.actual_length - m25p_cmdsz(flash);
-
-		/* write everything in flash->page_size chunks */
-		for (i = page_size; i < len; i += page_size) {
-			page_size = len - i;
-			if (page_size > flash->page_size)
-				page_size = flash->page_size;
-
-			/* write the next page to flash */
-			m25p_addr2cmd(flash, to + i, flash->command);
-
-			t[1].tx_buf = buf + i;
-			t[1].len = page_size;
-
-			wait_till_ready(flash);
-
-			write_enable(flash);
-
-			spi_sync(flash->spi, &m);
-
-			*retlen += m.actual_length - m25p_cmdsz(flash);
-		}
-	}
+	spi_sync(spi, &m);
 
+	*retlen = m.actual_length - m25p_cmdsz(nor) - dummy;
 	return 0;
 }
 
-static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
-		size_t *retlen, const u_char *buf)
+static int m25p80_erase(struct spi_nor *nor, loff_t offset)
 {
-	struct m25p *flash = mtd_to_m25p(mtd);
-	struct spi_transfer t[2];
-	struct spi_message m;
-	size_t actual;
-	int cmd_sz, ret;
+	struct m25p *flash = nor->priv;
 
-	dev_dbg(&flash->spi->dev, "%s to 0x%08x, len %zd\n",
-			__func__, (u32)to, len);
+        dev_dbg(nor->dev, "%dKiB at 0x%08x\n",
+                flash->mtd.erasesize / 1024, (u32)offset);
 
-	spi_message_init(&m);
-	memset(t, 0, (sizeof t));
+        /* Set up command buffer. */
+        flash->command[0] = nor->erase_opcode;
+        m25p_addr2cmd(nor, offset, flash->command);
 
-	t[0].tx_buf = flash->command;
-	t[0].len = m25p_cmdsz(flash);
-	spi_message_add_tail(&t[0], &m);
+        spi_write(flash->spi, flash->command, m25p_cmdsz(nor));
 
-	t[1].tx_buf = buf;
-	spi_message_add_tail(&t[1], &m);
-
-	/* Wait until finished previous write command. */
-	ret = wait_till_ready(flash);
-	if (ret)
-		goto time_out;
-
-	write_enable(flash);
-
-	actual = to % 2;
-	/* Start write from odd address. */
-	if (actual) {
-		flash->command[0] = OPCODE_BP;
-		m25p_addr2cmd(flash, to, flash->command);
-
-		/* write one byte. */
-		t[1].len = 1;
-		spi_sync(flash->spi, &m);
-		ret = wait_till_ready(flash);
-		if (ret)
-			goto time_out;
-		*retlen += m.actual_length - m25p_cmdsz(flash);
-	}
-	to += actual;
-
-	flash->command[0] = OPCODE_AAI_WP;
-	m25p_addr2cmd(flash, to, flash->command);
-
-	/* Write out most of the data here. */
-	cmd_sz = m25p_cmdsz(flash);
-	for (; actual < len - 1; actual += 2) {
-		t[0].len = cmd_sz;
-		/* write two bytes. */
-		t[1].len = 2;
-		t[1].tx_buf = buf + actual;
-
-		spi_sync(flash->spi, &m);
-		ret = wait_till_ready(flash);
-		if (ret)
-			goto time_out;
-		*retlen += m.actual_length - cmd_sz;
-		cmd_sz = 1;
-		to += 2;
-	}
-	write_disable(flash);
-	ret = wait_till_ready(flash);
-	if (ret)
-		goto time_out;
-
-	/* Write out trailing byte if it exists. */
-	if (actual != len) {
-		write_enable(flash);
-		flash->command[0] = OPCODE_BP;
-		m25p_addr2cmd(flash, to, flash->command);
-		t[0].len = m25p_cmdsz(flash);
-		t[1].len = 1;
-		t[1].tx_buf = buf + actual;
-
-		spi_sync(flash->spi, &m);
-		ret = wait_till_ready(flash);
-		if (ret)
-			goto time_out;
-		*retlen += m.actual_length - m25p_cmdsz(flash);
-		write_disable(flash);
-	}
-
-time_out:
-	return ret;
+	return 0;
 }
 
-/****************************************************************************/
-
 /*
- * SPI device driver setup and teardown
- */
-
-struct flash_info {
-	/* JEDEC id zero means "no ID" (most older chips); otherwise it has
-	 * a high byte of zero plus three data bytes: the manufacturer id,
-	 * then a two byte device id.
-	 */
-	u32		jedec_id;
-	u16             ext_id;
-
-	/* The size listed here is what works with OPCODE_SE, which isn't
-	 * necessarily called a "sector" by the vendor.
-	 */
-	unsigned	sector_size;
-	u16		n_sectors;
-
-	u16		page_size;
-	u16		addr_width;
-
-	u16		flags;
-#define	SECT_4K		0x01		/* OPCODE_BE_4K works uniformly */
-#define	M25P_NO_ERASE	0x02		/* No erase command needed */
-};
-
-#define INFO(_jedec_id, _ext_id, _sector_size, _n_sectors, _flags)	\
-	((unsigned long)&(struct flash_info) {				\
-		.jedec_id = (_jedec_id),				\
-		.ext_id = (_ext_id),					\
-		.sector_size = (_sector_size),				\
-		.n_sectors = (_n_sectors),				\
-		.page_size = 256,					\
-		.flags = (_flags),					\
-	})
-
-#define CAT25_INFO(_sector_size, _n_sectors, _page_size, _addr_width)	\
-	((unsigned long)&(struct flash_info) {				\
-		.sector_size = (_sector_size),				\
-		.n_sectors = (_n_sectors),				\
-		.page_size = (_page_size),				\
-		.addr_width = (_addr_width),				\
-		.flags = M25P_NO_ERASE,					\
-	})
-
-/* NOTE: double check command sets and memory organization when you add
- * more flash chips.  This current list focusses on newer chips, which
- * have been converging on command sets which including JEDEC ID.
+ * Do NOT add to this array without reading the following:
+ *
+ * Historically, many flash devices are bound to this driver by their name. But
+ * since most of these flash are compatible to some extent, and their
+ * differences can often be differentiated by the JEDEC read-ID command, we
+ * encourage new users to add support to the spi-nor library, and simply bind
+ * against a generic string here (e.g., "nor-jedec").
+ *
+ * Many flash names are kept here in this list (as well as in spi-nor.c) to
+ * keep them available as module aliases for existing platforms.
  */
 static const struct platform_device_id m25p_ids[] = {
-	/* Atmel -- some are (confusingly) marketed as "DataFlash" */
-	{ "at25fs010",  INFO(0x1f6601, 0, 32 * 1024,   4, SECT_4K) },
-	{ "at25fs040",  INFO(0x1f6604, 0, 64 * 1024,   8, SECT_4K) },
-
-	{ "at25df041a", INFO(0x1f4401, 0, 64 * 1024,   8, SECT_4K) },
-	{ "at25df321a", INFO(0x1f4701, 0, 64 * 1024,  64, SECT_4K) },
-	{ "at25df641",  INFO(0x1f4800, 0, 64 * 1024, 128, SECT_4K) },
-
-	{ "at26f004",   INFO(0x1f0400, 0, 64 * 1024,  8, SECT_4K) },
-	{ "at26df081a", INFO(0x1f4501, 0, 64 * 1024, 16, SECT_4K) },
-	{ "at26df161a", INFO(0x1f4601, 0, 64 * 1024, 32, SECT_4K) },
-	{ "at26df321",  INFO(0x1f4700, 0, 64 * 1024, 64, SECT_4K) },
-
-	{ "at45db081d", INFO(0x1f2500, 0, 64 * 1024, 16, SECT_4K) },
-
-	/* EON -- en25xxx */
-	{ "en25f32", INFO(0x1c3116, 0, 64 * 1024,  64, SECT_4K) },
-	{ "en25p32", INFO(0x1c2016, 0, 64 * 1024,  64, 0) },
-	{ "en25q32b", INFO(0x1c3016, 0, 64 * 1024,  64, 0) },
-	{ "en25p64", INFO(0x1c2017, 0, 64 * 1024, 128, 0) },
-	{ "en25q64", INFO(0x1c3017, 0, 64 * 1024, 128, SECT_4K) },
-
-	/* Everspin */
-	{ "mr25h256", CAT25_INFO(  32 * 1024, 1, 256, 2) },
-
-	/* Intel/Numonyx -- xxxs33b */
-	{ "160s33b",  INFO(0x898911, 0, 64 * 1024,  32, 0) },
-	{ "320s33b",  INFO(0x898912, 0, 64 * 1024,  64, 0) },
-	{ "640s33b",  INFO(0x898913, 0, 64 * 1024, 128, 0) },
-	{ "n25q064",  INFO(0x20ba17, 0, 64 * 1024, 128, 0) },
-
-	/* Macronix */
-	{ "mx25l2005a",  INFO(0xc22012, 0, 64 * 1024,   4, SECT_4K) },
-	{ "mx25l4005a",  INFO(0xc22013, 0, 64 * 1024,   8, SECT_4K) },
-	{ "mx25l8005",   INFO(0xc22014, 0, 64 * 1024,  16, 0) },
-	{ "mx25l1606e",  INFO(0xc22015, 0, 64 * 1024,  32, SECT_4K) },
-	{ "mx25l3205d",  INFO(0xc22016, 0, 64 * 1024,  64, 0) },
-	{ "mx25l6405d",  INFO(0xc22017, 0, 64 * 1024, 128, 0) },
-	{ "mx25l12805d", INFO(0xc22018, 0, 64 * 1024, 256, 0) },
-	{ "mx25l12855e", INFO(0xc22618, 0, 64 * 1024, 256, 0) },
-	{ "mx25l25635e", INFO(0xc22019, 0, 64 * 1024, 512, 0) },
-	{ "mx25l25655e", INFO(0xc22619, 0, 64 * 1024, 512, 0) },
-
-	/* Micron */
-	{ "n25q064",     INFO(0x20ba17, 0, 64 * 1024,  128, 0) },
-	{ "n25q128a11",  INFO(0x20bb18, 0, 64 * 1024,  256, 0) },
-	{ "n25q128a13",  INFO(0x20ba18, 0, 64 * 1024,  256, 0) },
-	{ "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, SECT_4K) },
-
-	/* Spansion -- single (large) sector size only, at least
-	 * for the chips listed here (without boot sectors).
-	 */
-	{ "s25sl032p",  INFO(0x010215, 0x4d00,  64 * 1024,  64, 0) },
-	{ "s25sl064p",  INFO(0x010216, 0x4d00,  64 * 1024, 128, 0) },
-	{ "s25fl256s0", INFO(0x010219, 0x4d00, 256 * 1024, 128, 0) },
-	{ "s25fl256s1", INFO(0x010219, 0x4d01,  64 * 1024, 512, 0) },
-	{ "s25fl512s",  INFO(0x010220, 0x4d00, 256 * 1024, 256, 0) },
-	{ "s70fl01gs",  INFO(0x010221, 0x4d00, 256 * 1024, 256, 0) },
-	{ "s25sl12800", INFO(0x012018, 0x0300, 256 * 1024,  64, 0) },
-	{ "s25sl12801", INFO(0x012018, 0x0301,  64 * 1024, 256, 0) },
-	{ "s25fl129p0", INFO(0x012018, 0x4d00, 256 * 1024,  64, 0) },
-	{ "s25fl129p1", INFO(0x012018, 0x4d01,  64 * 1024, 256, 0) },
-	{ "s25sl004a",  INFO(0x010212,      0,  64 * 1024,   8, 0) },
-	{ "s25sl008a",  INFO(0x010213,      0,  64 * 1024,  16, 0) },
-	{ "s25sl016a",  INFO(0x010214,      0,  64 * 1024,  32, 0) },
-	{ "s25sl032a",  INFO(0x010215,      0,  64 * 1024,  64, 0) },
-	{ "s25sl064a",  INFO(0x010216,      0,  64 * 1024, 128, 0) },
-	{ "s25fl016k",  INFO(0xef4015,      0,  64 * 1024,  32, SECT_4K) },
-	{ "s25fl064k",  INFO(0xef4017,      0,  64 * 1024, 128, SECT_4K) },
-
-	/* SST -- large erase sizes are "overlays", "sectors" are 4K */
-	{ "sst25vf040b", INFO(0xbf258d, 0, 64 * 1024,  8, SECT_4K) },
-	{ "sst25vf080b", INFO(0xbf258e, 0, 64 * 1024, 16, SECT_4K) },
-	{ "sst25vf016b", INFO(0xbf2541, 0, 64 * 1024, 32, SECT_4K) },
-	{ "sst25vf032b", INFO(0xbf254a, 0, 64 * 1024, 64, SECT_4K) },
-	{ "sst25wf512",  INFO(0xbf2501, 0, 64 * 1024,  1, SECT_4K) },
-	{ "sst25wf010",  INFO(0xbf2502, 0, 64 * 1024,  2, SECT_4K) },
-	{ "sst25wf020",  INFO(0xbf2503, 0, 64 * 1024,  4, SECT_4K) },
-	{ "sst25wf040",  INFO(0xbf2504, 0, 64 * 1024,  8, SECT_4K) },
-
-	/* ST Microelectronics -- newer production may have feature updates */
-	{ "m25p05",  INFO(0x202010,  0,  32 * 1024,   2, 0) },
-	{ "m25p10",  INFO(0x202011,  0,  32 * 1024,   4, 0) },
-	{ "m25p20",  INFO(0x202012,  0,  64 * 1024,   4, 0) },
-	{ "m25p40",  INFO(0x202013,  0,  64 * 1024,   8, 0) },
-	{ "m25p80",  INFO(0x202014,  0,  64 * 1024,  16, 0) },
-	{ "m25p16",  INFO(0x202015,  0,  64 * 1024,  32, 0) },
-	{ "m25p32",  INFO(0x202016,  0,  64 * 1024,  64, 0) },
-	{ "m25p64",  INFO(0x202017,  0,  64 * 1024, 128, 0) },
-	{ "m25p128", INFO(0x202018,  0, 256 * 1024,  64, 0) },
-	{ "n25q032", INFO(0x20ba16,  0,  64 * 1024,  64, 0) },
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
-	{ "m25px32",    INFO(0x207116,  0, 64 * 1024, 64, SECT_4K) },
-	{ "m25px32-s0", INFO(0x207316,  0, 64 * 1024, 64, SECT_4K) },
-	{ "m25px32-s1", INFO(0x206316,  0, 64 * 1024, 64, SECT_4K) },
-	{ "m25px64",    INFO(0x207117,  0, 64 * 1024, 128, 0) },
-
-	/* Winbond -- w25x "blocks" are 64K, "sectors" are 4KiB */
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
-	{ "w25q80", INFO(0xef5014, 0, 64 * 1024,  16, SECT_4K) },
-	{ "w25q80bl", INFO(0xef4014, 0, 64 * 1024,  16, SECT_4K) },
-
-	/* Catalyst / On Semiconductor -- non-JEDEC */
-	{ "cat25c11", CAT25_INFO(  16, 8, 16, 1) },
-	{ "cat25c03", CAT25_INFO(  32, 8, 16, 2) },
-	{ "cat25c09", CAT25_INFO( 128, 8, 32, 2) },
-	{ "cat25c17", CAT25_INFO( 256, 8, 32, 2) },
-	{ "cat25128", CAT25_INFO(2048, 8, 64, 2) },
+	{"at25fs010"},  {"at25fs040"},  {"at25df041a"}, {"at25df321a"},
+	{"at25df641"},  {"at26f004"},   {"at26df081a"}, {"at26df161a"},
+	{"at26df321"},  {"at45db081d"},
+	{"en25f32"},    {"en25p32"},    {"en25q32b"},   {"en25p64"},
+	{"en25q64"},    {"en25qh128"},  {"en25qh256"},
+	{"f25l32pa"},
+	{"mr25h256"},   {"mr25h10"},
+	{"gd25q32"},    {"gd25q64"},
+	{"160s33b"},    {"320s33b"},    {"640s33b"},
+	{"mx25l2005a"}, {"mx25l4005a"}, {"mx25l8005"},  {"mx25l1606e"},
+	{"mx25l3205d"}, {"mx25l3255e"}, {"mx25l6405d"}, {"mx25l12805d"},
+	{"mx25l12855e"},{"mx25l25635e"},{"mx25l25655e"},{"mx66l51235l"},
+	{"mx66l1g55g"},
+	{"n25q064"},    {"n25q128a11"}, {"n25q128a13"}, {"n25q256a"},
+	{"n25q512a"},   {"n25q512ax3"}, {"n25q00"},
+	{"pm25lv512"},  {"pm25lv010"},  {"pm25lq032"},
+	{"s25sl032p"},  {"s25sl064p"},  {"s25fl256s0"}, {"s25fl256s1"},
+	{"s25fl512s"},  {"s70fl01gs"},  {"s25sl12800"}, {"s25sl12801"},
+	{"s25fl129p0"}, {"s25fl129p1"}, {"s25sl004a"},  {"s25sl008a"},
+	{"s25sl016a"},  {"s25sl032a"},  {"s25sl064a"},  {"s25fl008k"},
+	{"s25fl016k"},  {"s25fl064k"},  {"s25fl132k"},
+	{"sst25vf040b"},{"sst25vf080b"},{"sst25vf016b"},{"sst25vf032b"},
+	{"sst25vf064c"},{"sst25wf512"}, {"sst25wf010"}, {"sst25wf020"},
+	{"sst25wf040"},
+	{"m25p05"},     {"m25p10"},     {"m25p20"},     {"m25p40"},
+	{"m25p80"},     {"m25p16"},     {"m25p32"},     {"m25p64"},
+	{"m25p128"},    {"n25q032"},
+	{"m25p05-nonjedec"},    {"m25p10-nonjedec"},    {"m25p20-nonjedec"},
+	{"m25p40-nonjedec"},    {"m25p80-nonjedec"},    {"m25p16-nonjedec"},
+	{"m25p32-nonjedec"},    {"m25p64-nonjedec"},    {"m25p128-nonjedec"},
+	{"m45pe10"},    {"m45pe80"},    {"m45pe16"},
+	{"m25pe20"},    {"m25pe80"},    {"m25pe16"},
+	{"m25px16"},    {"m25px32"},    {"m25px32-s0"}, {"m25px32-s1"},
+	{"m25px64"},    {"m25px80"},
+	{"w25x10"},     {"w25x20"},     {"w25x40"},     {"w25x80"},
+	{"w25x16"},     {"w25x32"},     {"w25q32"},     {"w25q32dw"},
+	{"w25x64"},     {"w25q64"},     {"w25q80"},     {"w25q80bl"},
+	{"w25q128"},    {"w25q256"},    {"cat25c11"},
+	{"cat25c03"},   {"cat25c09"},   {"cat25c17"},   {"cat25128"},
+
+        /*
+         * Generic support for SPI NOR that can be identified by the JEDEC READ
+         * ID opcode (0x9F). Use this, if possible.
+         */
+        {"nor-jedec"},
 	{ },
 };
 
-static const struct platform_device_id *jedec_probe(struct spi_device *spi)
-{
-	int			tmp;
-	u8			code = OPCODE_RDID;
-	u8			id[5];
-	u32			jedec;
-	u16			ext_jedec;
-	struct flash_info	*info;
-
-	/* JEDEC also defines an optional "extended device information"
-	 * string for after vendor-specific data, after the three bytes
-	 * we use here.  Supporting some chips might require using it.
-	 */
-	tmp = spi_write_then_read(spi, &code, 1, id, 5);
-	if (tmp < 0) {
-		dev_dbg(&spi->dev, "%s: error %d reading JEDEC ID\n",
-				dev_name(&spi->dev), tmp);
-		return ERR_PTR(tmp);
-	}
-	jedec = id[0];
-	jedec = jedec << 8;
-	jedec |= id[1];
-	jedec = jedec << 8;
-	jedec |= id[2];
-
-	ext_jedec = id[3] << 8 | id[4];
-
-	for (tmp = 0; tmp < ARRAY_SIZE(m25p_ids) - 1; tmp++) {
-		info = (void *)m25p_ids[tmp].driver_data;
-		if (info->jedec_id == jedec) {
-			if (info->ext_id != 0 && info->ext_id != ext_jedec)
-				continue;
-			return &m25p_ids[tmp];
-		}
-	}
-	dev_err(&spi->dev, "unrecognized JEDEC id %06x\n", jedec);
-	return ERR_PTR(-ENODEV);
-}
-
-
 /*
  * board specific setup should have ensured the SPI clock used here
  * matches what the READ command supports, at least until this driver
@@ -801,164 +229,68 @@ static const struct platform_device_id *jedec_probe(struct spi_device *spi)
 static int m25p_probe(struct device_d *dev)
 {
 	struct spi_device *spi = (struct spi_device *)dev->type_data;
-	const struct platform_device_id	*id = NULL;
 	struct flash_platform_data	*data;
 	struct m25p			*flash;
-	struct flash_info		*info = NULL;
-	unsigned			i;
-	unsigned			do_jdec_probe = 1;
-	char				*flashname = NULL;
-	const char			*typename = NULL;
+	struct spi_nor			*nor;
+	enum read_mode mode =		SPI_NOR_NORMAL;
+	char				*flash_name = NULL;
 	int				device_id;
+	int ret;
 
-	/* Platform data helps sort out which chip type we have, as
-	 * well as how this board partitions it.  If we don't have
-	 * a chip ID, try the JEDEC id commands; they'll work for most
-	 * newer chips, even if we don't recognize the particular chip.
-	 */
 	data = dev->platform_data;
-	if (data && data->type)
-		typename = data->type;
-	else if (dev->id_entry)
-		typename = dev->id_entry->name;
-
-	if (typename) {
-		const struct platform_device_id *plat_id;
-
-		for (i = 0; i < ARRAY_SIZE(m25p_ids) - 1; i++) {
-			plat_id = &m25p_ids[i];
-			if (strcmp(typename, plat_id->name))
-				continue;
-			break;
-		}
-
-		if (i < ARRAY_SIZE(m25p_ids) - 1) {
-			id = plat_id;
-			info = (void *)id->driver_data;
-			/* If flash type is provided but the memory is not
-			 * JEDEC compliant, don't try to probe the JEDEC id */
-			if (!info->jedec_id)
-				do_jdec_probe = 0;
-		} else
-			dev_warn(&spi->dev, "unrecognized id %s\n", typename);
-	}
-
-	if (do_jdec_probe) {
-		const struct platform_device_id *jid;
-
-		jid = jedec_probe(spi);
-		if (IS_ERR(jid)) {
-			return PTR_ERR(jid);
-		} else if (jid != id) {
-			/*
-			 * JEDEC knows better, so overwrite platform ID. We
-			 * can't trust partitions any longer, but we'll let
-			 * mtd apply them anyway, since some partitions may be
-			 * marked read-only, and we don't want to lose that
-			 * information, even if it's not 100% accurate.
-			 */
-			if (id)
-				dev_warn(dev, "found %s, expected %s\n",
-					jid->name, id->name);
-
-			id = jid;
-			info = (void *)jid->driver_data;
-		}
-	}
 
 	flash = xzalloc(sizeof *flash);
-	flash->command = xmalloc(MAX_CMD_SIZE);
 
+	nor = &flash->spi_nor;
+
+	/* install the hooks */
+	nor->read = m25p80_read;
+	nor->write = m25p80_write;
+	nor->erase = m25p80_erase;
+	nor->write_reg = m25p80_write_reg;
+	nor->read_reg = m25p80_read_reg;
+
+	nor->dev = dev;
+	nor->mtd = &flash->mtd;
+	nor->priv = flash;
+
+	flash->mtd.priv = nor;
+	flash->mtd.parent = &spi->dev;
 	flash->spi = spi;
+
 	dev->priv = (void *)flash;
-	/*
-	 * Atmel, SST and Intel/Numonyx serial flash tend to power
-	 * up with the software protection bits set
-	 */
-
-	if (JEDEC_MFR(info->jedec_id) == CFI_MFR_ATMEL ||
-	    JEDEC_MFR(info->jedec_id) == CFI_MFR_INTEL ||
-	    JEDEC_MFR(info->jedec_id) == CFI_MFR_SST) {
-		write_enable(flash);
-		write_sr(flash, 0);
-	}
+
+	if (data && data->name)
+		flash->mtd.name = data->name;
+
+	if (data && data->type)
+		flash_name = data->type;
+	else if (data && data->name)
+		flash_name = data->name;
+	else if (dev->id_entry)
+		flash_name = dev->id_entry->name;
+	else
+		flash_name = NULL; /* auto-detect */
+
+	ret = spi_nor_scan(nor, flash_name, mode);
+	if (ret)
+		return ret;
 
 	device_id = DEVICE_ID_SINGLE;
 	if (dev->device_node) {
 		const char *alias = of_alias_get(dev->device_node);
 		if (alias)
-			flashname = xstrdup(alias);
+			flash_name = xstrdup(alias);
 	} else if (data && data->name) {
-		flashname = data->name;
+		flash_name = data->name;
 	}
 
-	if (!flashname) {
+	if (!flash_name) {
 		device_id = DEVICE_ID_DYNAMIC;
-		flashname = "m25p";
-	}
-
-	flash->mtd.type = MTD_NORFLASH;
-	flash->mtd.writesize = 1;
-	flash->mtd.flags = MTD_CAP_NORFLASH;
-	flash->mtd.size = (uint64_t)info->sector_size * info->n_sectors;
-	flash->mtd.erase = m25p80_erase;
-	flash->mtd.read = m25p80_read;
-
-	/* sst flash chips use AAI word program */
-	if (IS_ENABLED(CONFIG_MTD_SST25L) && JEDEC_MFR(info->jedec_id) == CFI_MFR_SST)
-		flash->mtd.write = sst_write;
-	else
-		flash->mtd.write = m25p80_write;
-
-	/* prefer "small sector" erase if possible */
-	if (info->flags & SECT_4K) {
-		flash->erase_opcode_4k = OPCODE_BE_4K;
-		flash->erase_opcode = OPCODE_SE;
-		flash->mtd.erasesize = 4096;
-	} else {
-		flash->erase_opcode = OPCODE_SE;
-		flash->mtd.erasesize = info->sector_size;
-	}
-
-	if (info->flags & M25P_NO_ERASE)
-		flash->mtd.flags |= MTD_NO_ERASE;
-
-	flash->mtd.parent = &spi->dev;
-	flash->page_size = info->page_size;
-	flash->sector_size = info->sector_size;
-
-	if (info->addr_width)
-		flash->addr_width = info->addr_width;
-	else {
-		/* enable 4-byte addressing if the device exceeds 16MiB */
-		if (flash->mtd.size > 0x1000000) {
-			flash->addr_width = 4;
-			set_4byte(flash, info->jedec_id, 1);
-		} else
-			flash->addr_width = 3;
+		flash_name = "m25p";
 	}
 
-	dev_info(dev, "%s (%lld Kbytes)\n", id->name,
-			(long long)flash->mtd.size >> 10);
-
-	dev_dbg(dev, "mtd .name = %s, .size = 0x%llx (%lldMiB) "
-			".erasesize = 0x%.8x (%uKiB) .numeraseregions = %d\n",
-		flash->mtd.name,
-		(long long)flash->mtd.size, (long long)(flash->mtd.size >> 20),
-		flash->mtd.erasesize, flash->mtd.erasesize / 1024,
-		flash->mtd.numeraseregions);
-
-	if (flash->mtd.numeraseregions)
-		for (i = 0; i < flash->mtd.numeraseregions; i++)
-			dev_dbg(dev, "mtd.eraseregions[%d] = { .offset = 0x%llx, "
-				".erasesize = 0x%.8x (%uKiB), "
-				".numblocks = %d }\n",
-				i, (long long)flash->mtd.eraseregions[i].offset,
-				flash->mtd.eraseregions[i].erasesize,
-				flash->mtd.eraseregions[i].erasesize / 1024,
-				flash->mtd.eraseregions[i].numblocks);
-
-	return add_mtd_device(&flash->mtd, flashname, device_id);
+	return add_mtd_device(&flash->mtd, flash_name, device_id);
 }
 
 static __maybe_unused struct of_device_id m25p80_dt_ids[] = {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
