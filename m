Delivery-date: Wed, 31 Jul 2024 10:06:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ4LV-004jYl-1O
	for lore@lore.pengutronix.de;
	Wed, 31 Jul 2024 10:06:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ4LS-0004Tz-Ow
	for lore@pengutronix.de; Wed, 31 Jul 2024 10:06:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8TusDSpIDppco0jpeNmz9GOdXpfw94v3c1Dqv4KdTsg=; b=dpJtLeMuCxMBsALxDSBtjxG+92
	1UOODngL0/2HnRMaQBtK4rZZnP4wvwsTstJjYTOOzrKVzc/hhxcfCgKQUUemYZ6YoEoepkmeMWuil
	3qclL+9FEAl2sAEIf9oi2W5nZKz3hJfpKjFwBQH6AGLIicdg3DPd1tUpS/oX6cVuLJSUmNjF2Y4CY
	xPTPpCoi7847hgjTQZLpybkfoXEJUTuRFz81Os9Pu7gqbTdCTBArUUEFibMiqpfqBAA5Fa8Q8HAeH
	bxYqTyzL5O1a1txxN7AIzyK5cnYNQ+3nxleCNm2D9jkPx9QYoSLx0xz3bfrdzrKrVcFrpRhR5ngTb
	gY8I81Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Ku-00000000FBt-3Ivu;
	Wed, 31 Jul 2024 08:05:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Kn-00000000F6e-1VwY
	for barebox@bombadil.infradead.org;
	Wed, 31 Jul 2024 08:05:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8TusDSpIDppco0jpeNmz9GOdXpfw94v3c1Dqv4KdTsg=; b=aotSmUq5CueDEgKg/+hGl84Yr3
	cv07XMhAt2knmDHnbEs6NOKbP0m32uPVDMbbG33OWljWoCBzXHrJU0nGN+7UmTNYWhMw/rvYmR5dH
	c4P7k8MQwmp7dN2nwdKTDRpcEgcr6Qa/imjoHJt/N/lpUxIjoQLlHR+lvopcfTNwaEw5pOKm1KF60
	k92CxlIdp20HmwMKgQwbw5p2tjis1kTVW6qdvfSEHxWDGNg3a+eRyRY4mCjsUI16Y9S/Nqs5/ThH3
	X3hQx2JYoyLMmGbi4tcCy2fUHOOTmGhogwx9mytURj7O0uLjHTgDpEFECK4atQW66U5+nf9Eny+gy
	7WICZhTA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Kh-00000005ATu-40Yx
	for barebox@lists.infradead.org;
	Wed, 31 Jul 2024 08:05:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kd-0003ye-PU; Wed, 31 Jul 2024 10:05:11 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kd-003Tfv-AH; Wed, 31 Jul 2024 10:05:11 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kd-001Wt2-0j;
	Wed, 31 Jul 2024 10:05:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 Jul 2024 10:05:08 +0200
Message-Id: <20240731080510.364706-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240731080510.364706-1-a.fatoum@pengutronix.de>
References: <20240731080510.364706-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_090517_082897_0F8C0D89 
X-CRM114-Status: GOOD (  39.39  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 08/10] mci: add support for discarding write blocks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

A common optimization for flashing is to skip gaps between partitions
and only flash actual data. The problem with that is that data from
the previous installation may persist and confuse later software, e.g.
an existing barebox state partition not contained in the image may
survive, when the expectation is that a new state is created.

eMMCs can support three different commands for erasing data:

  - Erase: This has the widest support, but works on only on the level
    of erase groups that may span multiple write blocks.
    The region reads as either '0' or '1' afterwards.

  - Trim: New in eMMC v4.4. This erases write blocks.
    The region reads as either '0' or '1' afterwards.

  - Discard: New in eMMC v4.5. This discards write blocks. It's up to the
    card what action if any is taken.
    All or part of the data may remain accessible.

All of these don't enforce a actual physical NAND erase operation.
In case erasure does happen, it may happen later at a convenient time.

All of them, except for discard guarantee that a fixed pattern (either
all zeroes or all ones) will be read back after the erase operation
concludes. Therefore let's use them in barebox to implement the erase
command.

The behavior of the erase command will be similar to the Linux
blkdiscard -z command when the erase byte value is all-zeroes. In Linux
blkdiscard -z is emulated with zero writes if the erased byte is 0xFF,
but for barebox, the erase operation won't care whether it writes 0x00
or 0xFF.

Note that this is considerably slower than need be, because we don't
erase multiple erase groups at once. Doing so could run into the
send_cmd timeout of the host hardware or its drivers. The correct
workaround is to calculate the duration of the erase operation and split
up the erases, so we always stay below a specific erase operation
duration. There's a comment that explains this and implementing it is
left as future exercise.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - fix typos (Yann)
  - remove superfluous to <= from check (Sascha)
  - fix chunking of erase size (Sascha)
---
 drivers/mci/Kconfig    |   5 +
 drivers/mci/mci-core.c | 391 ++++++++++++++++++++++++++++++++++++++---
 include/mci.h          |  10 ++
 3 files changed, 385 insertions(+), 21 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 1e8c85643b9a..f760614725fa 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -40,6 +40,11 @@ config MCI_WRITE
 	default y
 	select DISK_WRITE
 
+config MCI_ERASE
+	bool "Support erasing MCI cards"
+	depends on MCI_WRITE
+	default y
+
 config MCI_MMC_BOOT_PARTITIONS
 	bool "support MMC boot partitions"
 	help
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 984294bfc107..1dead86dd170 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -20,6 +20,7 @@
 #include <disks.h>
 #include <of.h>
 #include <linux/err.h>
+#include <linux/log2.h>
 #include <linux/sizes.h>
 #include <dma.h>
 
@@ -168,6 +169,32 @@ static int mci_send_status(struct mci *mci, unsigned int *status)
 	return ret;
 }
 
+static int mci_app_sd_status(struct mci *mci, __be32 *ssr)
+{
+	int err;
+	struct mci_cmd cmd;
+	struct mci_data data;
+
+	cmd.cmdidx = MMC_CMD_APP_CMD;
+	cmd.resp_type = MMC_RSP_R1;
+	cmd.cmdarg = mci->rca << 16;
+
+	err = mci_send_cmd_retry(mci, &cmd, NULL, 4);
+	if (err)
+		return err;
+
+	cmd.cmdidx = SD_CMD_APP_SD_STATUS;
+	cmd.resp_type = MMC_RSP_R1;
+	cmd.cmdarg = 0;
+
+	data.dest = (u8 *)ssr;
+	data.blocksize = 64;
+	data.blocks = 1;
+	data.flags = MMC_DATA_READ;
+
+	return mci_send_cmd_retry(mci, &cmd, &data, 3);
+}
+
 static int mmc_switch_status_error(struct mci_host *host, u32 status)
 {
 	if (mmc_host_is_spi(host)) {
@@ -286,6 +313,57 @@ static int mci_block_write(struct mci *mci, const void *src, int blocknum,
 	return ret;
 }
 
+/**
+ * Erase one or several blocks of data to the card
+ * @param mci_dev MCI instance
+ * @param from Block number to start erasing from
+ * @param number of blocks to erase
+ * @return Transaction status (0 on success)
+ */
+static int mci_block_erase(struct mci *card, unsigned int from,
+			   unsigned int blkcnt, unsigned int arg)
+{
+	unsigned int to = from + blkcnt - 1;
+	struct mci_cmd cmd = {};
+	int err;
+
+	if (!card->high_capacity) {
+		from *= card->write_bl_len;
+		to *= card->write_bl_len;
+	}
+
+	cmd.cmdidx = IS_SD(card) ? SD_ERASE_WR_BLK_START : MMC_ERASE_GROUP_START;
+	cmd.cmdarg = from;
+	cmd.resp_type = MMC_RSP_R1;
+	err = mci_send_cmd(card, &cmd, NULL);
+	if (err)
+		goto err_out;
+
+	memset(&cmd, 0, sizeof(struct mci_cmd));
+	cmd.cmdidx = IS_SD(card) ? SD_ERASE_WR_BLK_END : MMC_ERASE_GROUP_END;
+	cmd.cmdarg = to;
+	cmd.resp_type = MMC_RSP_SPI_R1 | MMC_RSP_R1 | MMC_CMD_AC;
+	err = mci_send_cmd(card, &cmd, NULL);
+	if (err)
+		goto err_out;
+
+	memset(&cmd, 0, sizeof(struct mci_cmd));
+	cmd.cmdidx = MMC_ERASE;
+	cmd.cmdarg = arg;
+	cmd.resp_type = MMC_RSP_R1b;
+
+	err = mci_send_cmd(card, &cmd, NULL);
+	if (err)
+		goto err_out;
+
+	return 0;
+
+err_out:
+	dev_err(&card->dev, "erase cmd %d error %d, status %#x\n",
+		cmd.cmdidx, err, cmd.response[0]);
+	return -EIO;
+}
+
 /**
  * Read one or several block(s) of data from the card
  * @param mci MCI instance
@@ -773,6 +851,49 @@ static int sd_switch(struct mci *mci, unsigned mode, unsigned group,
 	return mci_send_cmd(mci, &cmd, &data);
 }
 
+static int sd_read_ssr(struct mci *mci)
+{
+	static const unsigned int sd_au_size[] = {
+		0,		SZ_16K / 512,		SZ_32K / 512,
+		SZ_64K / 512,	SZ_128K / 512,		SZ_256K / 512,
+		SZ_512K / 512,	SZ_1M / 512,		SZ_2M / 512,
+		SZ_4M / 512,	SZ_8M / 512,		(SZ_8M + SZ_4M) / 512,
+		SZ_16M / 512,	(SZ_16M + SZ_8M) / 512,	SZ_32M / 512,
+		SZ_64M / 512,
+	};
+	__be32 *ssr;
+	int err;
+	unsigned int au, eo, et, es;
+
+	if (!IS_ENABLED(CONFIG_MCI_ERASE))
+		return -ENOSYS;
+
+	ssr = dma_alloc(64);
+
+	err = mci_app_sd_status(mci, ssr);
+	if (err)
+		goto out;
+
+	au = (be32_to_cpu(ssr[2]) >> 12) & 0xF;
+	if ((au <= 9) || (mci->version == SD_VERSION_3)) {
+		mci->ssr.au = sd_au_size[au];
+		es = (be32_to_cpu(ssr[3]) >> 24) & 0xFF;
+		es |= (be32_to_cpu(ssr[2]) & 0xFF) << 8;
+		et = (be32_to_cpu(ssr[3]) >> 18) & 0x3F;
+		if (es && et) {
+			eo = (be32_to_cpu(ssr[3]) >> 16) & 0x3;
+			mci->ssr.erase_timeout = (et * 1000) / es;
+			mci->ssr.erase_offset = eo * 1000;
+		}
+	} else {
+		dev_dbg(&mci->dev, "invalid allocation unit size.\n");
+	}
+
+out:
+	dma_free(ssr);
+	return err;
+}
+
 /**
  * Change transfer frequency for an SD card
  * @param mci MCI instance
@@ -845,6 +966,11 @@ static int sd_change_freq(struct mci *mci)
 	if (mci->scr[0] & SD_DATA_4BIT)
 		mci->card_caps |= MMC_CAP_4_BIT_DATA;
 
+	if (mci->scr[0] & SD_DATA_STAT_AFTER_ERASE)
+		mci->erased_byte = 0xFF;
+	else
+		mci->erased_byte = 0x0;
+
 	/* Version 1.0 doesn't support switching */
 	if (mci->version == SD_VERSION_1_0)
 		return 0;
@@ -1083,6 +1209,47 @@ static void mci_extract_block_lengths_from_csd(struct mci *mci)
 		mci->write_bl_len, mci->read_bl_len);
 }
 
+/**
+ * Extract erase group size
+ * @param mci MCI instance
+ */
+static void mci_extract_erase_group_size(struct mci *mci)
+{
+	if (!IS_ENABLED(CONFIG_MCI_ERASE) ||
+	    !(UNSTUFF_BITS(mci->csd, 84, 12) & CCC_ERASE))
+		return;
+
+
+	if (IS_SD(mci) && UNSTUFF_BITS(mci->csd, 126, 2) != 0) {
+		/* For SD with csd_struct v1, erase group is always one sector */
+		mci->erase_grp_size = 1;
+	} else {
+		if (mci->ext_csd[EXT_CSD_ERASE_GROUP_DEF] & 0x01) {
+			/* Read out group size from ext_csd */
+			mci->erase_grp_size = mci->ext_csd[EXT_CSD_HC_ERASE_GRP_SIZE] * 1024;
+		} else {
+			/* Calculate the group size from the csd value. */
+			int erase_gsz, erase_gmul;
+
+			erase_gsz = (mci->csd[2] & 0x00007c00) >> 10;
+			erase_gmul = (mci->csd[2] & 0x000003e0) >> 5;
+			mci->erase_grp_size = (erase_gsz + 1)
+				* (erase_gmul + 1);
+		}
+
+		if (mci->ext_csd[EXT_CSD_ERASED_MEM_CONT])
+			mci->erased_byte = 0xFF;
+		else
+			mci->erased_byte = 0x0;
+
+		if (mci->ext_csd[EXT_CSD_SEC_FEATURE_SUPPORT] & EXT_CSD_SEC_FEATURE_TRIM_EN)
+			mci->can_trim = true;
+	}
+
+	dev_dbg(&mci->dev, "Erase group is %u sector(s). Trim %ssupported\n",
+		mci->erase_grp_size, mci->can_trim ? "" : "not ");
+}
+
 /**
  * Extract card's capacitiy from the CSD
  * @param mci MCI instance
@@ -1229,6 +1396,10 @@ static int mci_startup_sd(struct mci *mci)
 
 	mci_set_clock(mci, mci->tran_speed);
 
+	err = sd_read_ssr(mci);
+	if (err)
+		dev_dbg(&mci->dev, "unable to read ssr: %pe\n", ERR_PTR(err));
+
 	return 0;
 }
 
@@ -1700,6 +1871,7 @@ static int mci_startup(struct mci *mci)
 	dev_info(&mci->dev, "detected %s card version %s\n", IS_SD(mci) ? "SD" : "MMC",
 		mci_version_string(mci));
 	mci_extract_card_capacity_from_csd(mci);
+	mci_extract_erase_group_size(mci);
 
 	if (IS_SD(mci))
 		err = mci_startup_sd(mci);
@@ -1791,6 +1963,186 @@ static int mci_blk_part_switch(struct mci_part *part)
 
 /* ------------------ attach to the blocklayer --------------------------- */
 
+static int mci_sd_check_write(struct mci *mci, const char *op,
+			      sector_t block, blkcnt_t num_blocks)
+{
+	struct mci_host *host = mci->host;
+
+	if (!host->disable_wp &&
+	    host->ops.card_write_protected && host->ops.card_write_protected(host)) {
+		dev_err(&mci->dev, "card write protected\n");
+		return -EPERM;
+	}
+
+	dev_dbg(&mci->dev, "%s: %s %llu block(s), starting at %llu\n",
+		__func__, op, num_blocks, block);
+
+	if (mci->write_bl_len != SECTOR_SIZE) {
+		dev_dbg(&mci->dev, "MMC/SD block size is not %d bytes (its %u bytes instead)\n",
+				SECTOR_SIZE, mci->read_bl_len);
+		return -EINVAL;
+	}
+
+	/* size of the block number field in the MMC/SD command is 32 bit only */
+	if (block > MAX_BUFFER_NUMBER) {
+		dev_dbg(&mci->dev, "Cannot handle block number %llu. Too large!\n", block);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static unsigned int mmc_align_erase_size(struct mci *card,
+					 sector_t *from,
+					 sector_t *to,
+					 blkcnt_t nr)
+{
+	unsigned int from_new = *from, to_new, nr_new = nr, rem;
+
+	/*
+	 * When the 'card->erase_size' is power of 2, we can use round_up/down()
+	 * to align the erase size efficiently.
+	 */
+	if (is_power_of_2(card->erase_grp_size)) {
+		unsigned int temp = from_new;
+
+		from_new = round_up(temp, card->erase_grp_size);
+		rem = from_new - temp;
+
+		if (nr_new > rem)
+			nr_new -= rem;
+		else
+			return 0;
+
+		nr_new = round_down(nr_new, card->erase_grp_size);
+	} else {
+		rem = from_new % card->erase_grp_size;
+		if (rem) {
+			rem = card->erase_grp_size - rem;
+			from_new += rem;
+			if (nr_new > rem)
+				nr_new -= rem;
+			else
+				return 0;
+		}
+
+		rem = nr_new % card->erase_grp_size;
+		if (rem)
+			nr_new -= rem;
+	}
+
+	if (nr_new == 0)
+		return 0;
+
+	to_new = from_new + nr_new;
+
+	if (*to != to_new || *from != from_new)
+		dev_warn(&card->dev, "Erase range changed to [0x%x-0x%x] because of %u sector erase group\n",
+			 from_new, to_new, card->erase_grp_size);
+
+	*to = to_new;
+	*from = from_new;
+
+	return nr_new;
+}
+
+/**
+ * Erase a memory region
+ * @param blk All info about the block device we need
+ * @param block first block to erase
+ * @param num_blocks Number of blocks to erase
+ * @return 0 on success, anything else on failure
+ *
+ */
+static int mci_sd_erase(struct block_device *blk, sector_t from,
+			blkcnt_t blkcnt)
+{
+	struct mci_part *part = container_of(blk, struct mci_part, blk);
+	struct mci *mci = part->mci;
+	sector_t i = 0;
+	unsigned arg;
+	sector_t to = from + blkcnt;
+	int rc;
+
+	mci_blk_part_switch(part);
+
+	rc = mci_sd_check_write(mci, "Erase", from, blkcnt);
+	if (rc)
+		return rc;
+
+	if (!mci->erase_grp_size)
+		return -EOPNOTSUPP;
+
+	if (mci->can_trim) {
+		arg = MMC_TRIM_ARG;
+	} else {
+		/* We don't use discard, as it doesn't guarantee a fixed value */
+		arg = MMC_ERASE_ARG;
+		blkcnt = mmc_align_erase_size(mci, &from, &to, blkcnt);
+	}
+
+	if (blkcnt == 0)
+		return 0;
+
+	/* 'from' and 'to' are inclusive */
+	to -= 1;
+
+	while (i < blkcnt) {
+		sector_t blk_r;
+
+		/* TODO: While it's possible to clear many erase groups at once
+		 * and it greatly improves throughput, drivers need adjustment:
+		 *
+		 * Many drivers hardcode a maximal wait time before aborting
+		 * the wait for R1b and returning -ETIMEDOUT. With long
+		 * erases/trims, we are bound to run into this timeout, so for now
+		 * we just split into sufficiently small erases that are unlikely
+		 * to trigger the timeout.
+		 *
+		 * What Linux does and what we should be doing in barebox is:
+		 *
+		 *  - add a struct mci_cmd::busy_timeout member that drivers should
+		 *    use instead of hardcoding their own timeout delay. The busy
+		 *    timeout length can be calculated by the MCI core after
+		 *    consulting the appropriate CSD/EXT_CSD/SSR registers.
+		 *
+		 *  - add a struct mci_host::max_busy_timeout member, where drivers
+		 *    can indicate the maximum timeout they are able to support.
+		 *    The MCI core will never set a busy_timeout that exceeds this
+		 *    value.
+		 *
+		 *  Example Samsung eMMC 8GTF4:
+		 *
+		 *    time erase /dev/mmc2.part_of_512m # 1024 trims
+		 *    time: 2849ms
+		 *
+		 *    time erase /dev/mmc2.part_of_512m # single trim
+		 *    time: 56ms
+		 */
+
+		if (IS_SD(mci) && mci->ssr.au) {
+			blk_r = ((blkcnt - i) > mci->ssr.au) ?
+				mci->ssr.au : (blkcnt - i);
+		} else {
+			blk_r = ((blkcnt - i) > mci->erase_grp_size) ?
+				mci->erase_grp_size : (blkcnt - i);
+		}
+
+		rc =  mci_block_erase(mci, from + i, blk_r, arg);
+		if (rc)
+			break;
+
+		/* Waiting for the ready status */
+		rc = mci_poll_until_ready(mci, 1000 /* ms */);
+		if (rc)
+			break;
+
+		i += blk_r;
+	}
+
+	return i == blkcnt ? 0 : rc;
+}
+
 /**
  * Write a chunk of sectors to media
  * @param blk All info about the block device we need
@@ -1806,7 +2158,6 @@ static int mci_sd_write(struct block_device *blk,
 {
 	struct mci_part *part = container_of(blk, struct mci_part, blk);
 	struct mci *mci = part->mci;
-	struct mci_host *host = mci->host;
 	int rc;
 	blkcnt_t max_req_block = num_blocks;
 	blkcnt_t write_block;
@@ -1816,26 +2167,9 @@ static int mci_sd_write(struct block_device *blk,
 
 	mci_blk_part_switch(part);
 
-	if (!host->disable_wp &&
-	    host->ops.card_write_protected && host->ops.card_write_protected(host)) {
-		dev_err(&mci->dev, "card write protected\n");
-		return -EPERM;
-	}
-
-	dev_dbg(&mci->dev, "%s: Write %llu block(s), starting at %llu\n",
-		__func__, num_blocks, block);
-
-	if (mci->write_bl_len != SECTOR_SIZE) {
-		dev_dbg(&mci->dev, "MMC/SD block size is not %d bytes (its %u bytes instead)\n",
-				SECTOR_SIZE, mci->read_bl_len);
-		return -EINVAL;
-	}
-
-	/* size of the block number field in the MMC/SD command is 32 bit only */
-	if (block > MAX_BUFFER_NUMBER) {
-		dev_dbg(&mci->dev, "Cannot handle block number %llu. Too large!\n", block);
-		return -EINVAL;
-	}
+	rc = mci_sd_check_write(mci, "Write", block, num_blocks);
+	if (rc)
+		return rc;
 
 	while (num_blocks) {
 		write_block = min(num_blocks, max_req_block);
@@ -2123,6 +2457,20 @@ static void mci_info(struct device *dev)
 		return;
 	printf("  Version: %s\n", mci_version_string(mci));
 	printf("  Capacity: %u MiB\n", (unsigned)(mci->capacity >> 20));
+	if (CONFIG_MCI_ERASE) {
+		printf("  Erase support:");
+		if (mci->can_trim)
+			printf(" trim");
+		if (mci->erase_grp_size) {
+			printf(" erase(%u sector%s%s)", mci->ssr.au ?: mci->erase_grp_size,
+			       mci->erase_grp_size > 1 ? "s" : "",
+			       mci->ssr.au ? " AU" : "");
+		}
+		if (mci->can_trim || mci->erase_grp_size)
+			printf(", erase value: 0x%02x\n", mci->erased_byte);
+		else
+			printf(" none\n");
+	}
 
 	if (mci->high_capacity)
 		printf("  High capacity card\n");
@@ -2180,6 +2528,7 @@ static int mci_check_if_already_initialized(struct mci *mci)
 static struct block_device_ops mci_ops = {
 	.read = mci_sd_read,
 	.write = IS_ENABLED(CONFIG_MCI_WRITE) ? mci_sd_write : NULL,
+	.erase = IS_ENABLED(CONFIG_MCI_ERASE) ? mci_sd_erase : NULL,
 };
 
 static int mci_set_boot(struct param_d *param, void *priv)
diff --git a/include/mci.h b/include/mci.h
index 610040937ee5..3bf1455a401c 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -616,6 +616,12 @@ struct mci_part {
 #define MMC_BLK_DATA_AREA_RPMB	(1<<3)
 };
 
+struct sd_ssr {
+	unsigned int au;                /* In sectors */
+	unsigned int erase_timeout;     /* In milliseconds */
+	unsigned int erase_offset;      /* In milliseconds */
+};
+
 /** MMC/SD and interface instance information */
 struct mci {
 	struct mci_host *host;		/**< the host for this card */
@@ -629,16 +635,20 @@ struct mci {
 	unsigned short rca;	/**< relative card address */
 	u8 sdio:1;              /**< card is a SDIO card */
 	u8 high_capacity:1;	/**< high capacity card is connected (OCR -> OCR_HCS) */
+	u8 can_trim:1;		/**< high capacity card is connected (OCR -> OCR_HCS) */
+	u8 erased_byte;
 	unsigned tran_speed;	/**< Maximum transfer speed */
 	/** currently used data block length for read accesses */
 	unsigned read_bl_len;
 	/** currently used data block length for write accesses */
 	unsigned write_bl_len;
+	unsigned erase_grp_size;
 	uint64_t capacity;	/**< Card's data capacity in bytes */
 	int ready_for_use;	/** true if already probed */
 	int dsr_imp;		/**< DSR implementation state from CSD */
 	u8 *ext_csd;
 	int probe;
+	struct sd_ssr ssr;
 	int bootpart;
 	int boot_ack_enable;
 
-- 
2.39.2



