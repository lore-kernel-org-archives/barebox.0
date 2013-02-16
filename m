Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo1.mail-out.ovh.net ([178.32.127.22]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U6i7p-0002OR-V8
 for barebox@lists.infradead.org; Sat, 16 Feb 2013 13:48:32 +0000
Received: from mail99.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 8D0E2FFAB5F
 for <barebox@lists.infradead.org>; Sat, 16 Feb 2013 15:03:49 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 16 Feb 2013 14:47:09 +0100
Message-Id: <1361022429-3688-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1361022429-3688-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130216113811.GG19322@game.jcrosoft.org>
 <1361022429-3688-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/5] disk: partitions: add EFI GUID Partition Table
To: barebox@lists.infradead.org
Cc: Rob Herring <rob.herring@calxeda.com>

form linux 3.8

so you can have part by num or name
not by GUID as this is a non human reading name

     `---- ffe08000.sata
          `---- 0x00000000-0x3fffffff: /dev/ata0
          `---- 0x00100000-0x063fffff: /dev/ata0.0
          `---- 0x00100000-0x063fffff: /dev/ata0.boot
          `---- 0x06400000-0x3fefffff: /dev/ata0.1
          `---- 0x06400000-0x3fefffff: /dev/ata0.linux

Cc: Rob Herring <rob.herring@calxeda.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/partitions/Kconfig  |   19 ++
 common/partitions/Makefile |    1 +
 common/partitions/efi.c    |  477 ++++++++++++++++++++++++++++++++++++++
 common/partitions/efi.h    |  123 ++++++++++
 include/linux/efi.h        |  547 ++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 1167 insertions(+)
 create mode 100644 common/partitions/efi.c
 create mode 100644 common/partitions/efi.h
 create mode 100644 include/linux/efi.h

diff --git a/common/partitions/Kconfig b/common/partitions/Kconfig
index 3f81c2f..ca4452b 100644
--- a/common/partitions/Kconfig
+++ b/common/partitions/Kconfig
@@ -11,3 +11,22 @@ config PARTITION_DISK_DOS
 	bool "DOS partition support"
 	help
 	  Add support to handle partitions in DOS style.
+
+config PARTITION_DISK_EFI
+	depends on PARTITION_DISK
+	default y
+	bool "EFI: GPT partition support"
+	help
+	  Add support to handle partitions in GUID Partition Table style.
+
+config PARTITION_DISK_EFI_GPT_NO_FORCE
+	depends on PARTITION_DISK_EFI
+	default y
+	bool "EFI: GPT: force test Protective MBR for validity"
+	help
+	  This will be added to the EFI Spec. per Intel after v1.02
+
+config PARTITION_DISK_EFI_GPT_COMPARE
+	depends on PARTITION_DISK_EFI
+	default y
+	bool "EFI: GPT: compare primary and Alternate GPT header for validity"
diff --git a/common/partitions/Makefile b/common/partitions/Makefile
index 0a5c70d..2b0c5b4 100644
--- a/common/partitions/Makefile
+++ b/common/partitions/Makefile
@@ -1 +1,2 @@
 obj-$(CONFIG_PARTITION_DISK_DOS)	+= dos.o
+obj-$(CONFIG_PARTITION_DISK_EFI)	+= efi.o
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
new file mode 100644
index 0000000..727bd93
--- /dev/null
+++ b/common/partitions/efi.c
@@ -0,0 +1,477 @@
+/************************************************************
+ * EFI GUID Partition Table handling
+ *
+ * http://www.uefi.org/specs/
+ * http://www.intel.com/technology/efi/
+ *
+ * efi.[ch] by Matt Domsch <Matt_Domsch@dell.com>
+ *   Copyright 2000,2001,2002,2004 Dell Inc.
+ *
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ */
+
+#include <common.h>
+#include <disks.h>
+#include <init.h>
+#include <asm/unaligned.h>
+#include <dma.h>
+#include <linux/ctype.h>
+
+#include "efi.h"
+#include "parser.h"
+
+static int force_gpt = IS_ENABLED(CONFIG_PARTITION_DISK_EFI_GPT_NO_FORCE);
+
+/**
+ * efi_crc32() - EFI version of crc32 function
+ * @buf: buffer to calculate crc32 of
+ * @len - length of buf
+ *
+ * Description: Returns EFI-style CRC32 value for @buf
+ * 
+ * This function uses the little endian Ethernet polynomial
+ * but seeds the function with ~0, and xor's with ~0 at the end.
+ * Note, the EFI Specification, v1.02, has a reference to
+ * Dr. Dobbs Journal, May 1994 (actually it's in May 1992).
+ */
+static inline u32
+efi_crc32(const void *buf, unsigned long len)
+{
+	return crc32(0, buf, len);
+}
+
+/**
+ * last_lba(): return number of last logical block of device
+ * @bdev: block device
+ * 
+ * Description: Returns last LBA value on success, 0 on error.
+ * This is stored (by sd and ide-geometry) in
+ *  the part[0] entry for this disk, and is the number of
+ *  physical sectors available on the disk.
+ */
+static u64 last_lba(struct block_device *bdev)
+{
+	if (!bdev)
+		return 0;
+	return bdev->num_blocks;
+}
+
+/**
+ * alloc_read_gpt_entries(): reads partition entries from disk
+ * @dev_desc
+ * @gpt - GPT header
+ *
+ * Description: Returns ptes on success,  NULL on error.
+ * Allocates space for PTEs based on information found in @gpt.
+ * Notes: remember to free pte when you're done!
+ */
+static gpt_entry *alloc_read_gpt_entries(struct block_device *blk,
+					 gpt_header * pgpt_head)
+{
+	size_t count = 0;
+	gpt_entry *pte = NULL;
+	unsigned long from, size;
+	int ret;
+
+	count = le32_to_cpu(pgpt_head->num_partition_entries) *
+		le32_to_cpu(pgpt_head->sizeof_partition_entry);
+
+	if (!count)
+		return NULL;
+	pte = kzalloc(count, GFP_KERNEL);
+	if (!pte)
+		return NULL;
+
+	from = le64_to_cpu(pgpt_head->partition_entry_lba);
+	size = count / GPT_BLOCK_SIZE;
+	ret = blk->ops->read(blk, pte, from, size);
+	if (ret) {
+		kfree(pte);
+		pte=NULL;
+		return NULL;
+	}
+	return pte;
+}
+
+static inline unsigned short bdev_logical_block_size(struct block_device
+*bdev)
+{
+	return SECTOR_SIZE;
+}
+
+/**
+ * alloc_read_gpt_header(): Allocates GPT header, reads into it from disk
+ * @state
+ * @lba is the Logical Block Address of the partition table
+ * 
+ * Description: returns GPT header on success, NULL on error.   Allocates
+ * and fills a GPT header starting at @ from @state->bdev.
+ * Note: remember to free gpt when finished with it.
+ */
+static gpt_header *alloc_read_gpt_header(struct block_device *blk,
+					 u64 lba)
+{
+	gpt_header *gpt;
+	unsigned ssz = bdev_logical_block_size(blk);
+	int ret;
+
+	gpt = kzalloc(ssz, GFP_KERNEL);
+	if (!gpt)
+		return NULL;
+
+	ret = blk->ops->read(blk, gpt, lba, 1);
+	if (ret) {
+		kfree(gpt);
+		gpt=NULL;
+		return NULL;
+	}
+
+	return gpt;
+}
+
+/**
+ * is_gpt_valid() - tests one GPT header and PTEs for validity
+ *
+ * lba is the logical block address of the GPT header to test
+ * gpt is a GPT header ptr, filled on return.
+ * ptes is a PTEs ptr, filled on return.
+ *
+ * Description: returns 1 if valid,  0 on error.
+ * If valid, returns pointers to PTEs.
+ */
+static int is_gpt_valid(struct block_device *blk, u64 lba,
+			gpt_header **gpt, gpt_entry **ptes)
+{
+	u32 crc, origcrc;
+	u64 lastlba;
+
+	if (!ptes)
+		return 0;
+	if (!(*gpt = alloc_read_gpt_header(blk, lba)))
+		return 0;
+
+	/* Check the GPT header signature */
+	if (le64_to_cpu((*gpt)->signature) != GPT_HEADER_SIGNATURE) {
+		dev_dbg(blk->dev, "GUID Partition Table Header signature is wrong:"
+			"0x%llX != 0x%llX\n",
+			(unsigned long long)le64_to_cpu((*gpt)->signature),
+			(unsigned long long)GPT_HEADER_SIGNATURE);
+		goto fail;
+	}
+
+	/* Check the GUID Partition Table CRC */
+	origcrc = le32_to_cpu((*gpt)->header_crc32);
+	(*gpt)->header_crc32 = 0;
+	crc = efi_crc32((const unsigned char *) (*gpt), le32_to_cpu((*gpt)->header_size));
+
+	if (crc != origcrc) {
+		dev_dbg(blk->dev, "GUID Partition Table Header CRC is wrong: %x != %x\n",
+			 crc, origcrc);
+		goto fail;
+	}
+	(*gpt)->header_crc32 = cpu_to_le32(origcrc);
+
+	/* Check that the my_lba entry points to the LBA that contains
+	 * the GUID Partition Table */
+	if (le64_to_cpu((*gpt)->my_lba) != lba) {
+		dev_dbg(blk->dev, "GPT: my_lba incorrect: %llX != %llX\n",
+			(unsigned long long)le64_to_cpu((*gpt)->my_lba),
+			(unsigned long long)lba);
+		goto fail;
+	}
+
+	/* Check the first_usable_lba and last_usable_lba are within the disk. */
+	lastlba = last_lba(blk);
+	if (le64_to_cpu((*gpt)->first_usable_lba) > lastlba) {
+		dev_dbg(blk->dev, "GPT: first_usable_lba incorrect: %lld > %lld\n",
+			 (unsigned long long)le64_to_cpu((*gpt)->first_usable_lba),
+			 (unsigned long long)lastlba);
+		goto fail;
+	}
+	if (le64_to_cpu((*gpt)->last_usable_lba) > lastlba) {
+		dev_dbg(blk->dev, "GPT: last_usable_lba incorrect: %lld > %lld\n",
+			 (unsigned long long)le64_to_cpu((*gpt)->last_usable_lba),
+			 (unsigned long long)lastlba);
+		goto fail;
+	}
+
+	if (!(*ptes = alloc_read_gpt_entries(blk, *gpt)))
+		goto fail;
+
+	/* Check the GUID Partition Table Entry Array CRC */
+	crc = efi_crc32((const unsigned char *)*ptes,
+		le32_to_cpu((*gpt)->num_partition_entries) *
+		le32_to_cpu((*gpt)->sizeof_partition_entry));
+
+	if (crc != le32_to_cpu((*gpt)->partition_entry_array_crc32)) {
+		dev_dbg(blk->dev, "GUID Partitition Entry Array CRC check failed.\n");
+		goto fail_ptes;
+	}
+
+	/* We're done, all's well */
+	return 1;
+
+ fail_ptes:
+	kfree(*ptes);
+	*ptes = NULL;
+ fail:
+	kfree(*gpt);
+	*gpt = NULL;
+	return 0;
+}
+
+/**
+ * is_pte_valid() - tests one PTE for validity
+ * @pte is the pte to check
+ * @lastlba is last lba of the disk
+ *
+ * Description: returns 1 if valid,  0 on error.
+ */
+static inline int
+is_pte_valid(const gpt_entry *pte, const u64 lastlba)
+{
+	if ((!efi_guidcmp(pte->partition_type_guid, NULL_GUID)) ||
+	    le64_to_cpu(pte->starting_lba) > lastlba	 ||
+	    le64_to_cpu(pte->ending_lba)   > lastlba)
+		return 0;
+	return 1;
+}
+
+/**
+ * compare_gpts() - Search disk for valid GPT headers and PTEs
+ * @pgpt is the primary GPT header
+ * @agpt is the alternate GPT header
+ * @lastlba is the last LBA number
+ * Description: Returns nothing.  Sanity checks pgpt and agpt fields
+ * and prints warnings on discrepancies.
+ * 
+ */
+static void
+compare_gpts(struct device_d *dev, gpt_header *pgpt, gpt_header *agpt, u64 lastlba)
+{
+	int error_found = 0;
+	if (!pgpt || !agpt)
+		return;
+	if (le64_to_cpu(pgpt->my_lba) != le64_to_cpu(agpt->alternate_lba)) {
+		dev_warn(dev,
+		       "GPT:Primary header LBA != Alt. header alternate_lba\n");
+		dev_warn(dev, "GPT:%lld != %lld\n",
+		       (unsigned long long)le64_to_cpu(pgpt->my_lba),
+		       (unsigned long long)le64_to_cpu(agpt->alternate_lba));
+		error_found++;
+	}
+	if (le64_to_cpu(pgpt->alternate_lba) != le64_to_cpu(agpt->my_lba)) {
+		dev_warn(dev,
+		       "GPT:Primary header alternate_lba != Alt. header my_lba\n");
+		dev_warn(dev, "GPT:%lld != %lld\n",
+		       (unsigned long long)le64_to_cpu(pgpt->alternate_lba),
+		       (unsigned long long)le64_to_cpu(agpt->my_lba));
+		error_found++;
+	}
+	if (le64_to_cpu(pgpt->first_usable_lba) !=
+	    le64_to_cpu(agpt->first_usable_lba)) {
+		dev_warn(dev, "GPT:first_usable_lbas don't match.\n");
+		dev_warn(dev, "GPT:%lld != %lld\n",
+		       (unsigned long long)le64_to_cpu(pgpt->first_usable_lba),
+		       (unsigned long long)le64_to_cpu(agpt->first_usable_lba));
+		error_found++;
+	}
+	if (le64_to_cpu(pgpt->last_usable_lba) !=
+	    le64_to_cpu(agpt->last_usable_lba)) {
+		dev_warn(dev, "GPT:last_usable_lbas don't match.\n");
+		dev_warn(dev, "GPT:%lld != %lld\n",
+		       (unsigned long long)le64_to_cpu(pgpt->last_usable_lba),
+		       (unsigned long long)le64_to_cpu(agpt->last_usable_lba));
+		error_found++;
+	}
+	if (efi_guidcmp(pgpt->disk_guid, agpt->disk_guid)) {
+		dev_warn(dev, "GPT:disk_guids don't match.\n");
+		error_found++;
+	}
+	if (le32_to_cpu(pgpt->num_partition_entries) !=
+	    le32_to_cpu(agpt->num_partition_entries)) {
+		dev_warn(dev, "GPT:num_partition_entries don't match: "
+		       "0x%x != 0x%x\n",
+		       le32_to_cpu(pgpt->num_partition_entries),
+		       le32_to_cpu(agpt->num_partition_entries));
+		error_found++;
+	}
+	if (le32_to_cpu(pgpt->sizeof_partition_entry) !=
+	    le32_to_cpu(agpt->sizeof_partition_entry)) {
+		dev_warn(dev,
+		       "GPT:sizeof_partition_entry values don't match: "
+		       "0x%x != 0x%x\n",
+		       le32_to_cpu(pgpt->sizeof_partition_entry),
+		       le32_to_cpu(agpt->sizeof_partition_entry));
+		error_found++;
+	}
+	if (le32_to_cpu(pgpt->partition_entry_array_crc32) !=
+	    le32_to_cpu(agpt->partition_entry_array_crc32)) {
+		dev_warn(dev,
+		       "GPT:partition_entry_array_crc32 values don't match: "
+		       "0x%x != 0x%x\n",
+		       le32_to_cpu(pgpt->partition_entry_array_crc32),
+		       le32_to_cpu(agpt->partition_entry_array_crc32));
+		error_found++;
+	}
+	if (le64_to_cpu(pgpt->alternate_lba) != lastlba) {
+		dev_warn(dev,
+		       "GPT:Primary header thinks Alt. header is not at the end of the disk.\n");
+		dev_warn(dev, "GPT:%lld != %lld\n",
+			(unsigned long long)le64_to_cpu(pgpt->alternate_lba),
+			(unsigned long long)lastlba);
+		error_found++;
+	}
+
+	if (le64_to_cpu(agpt->my_lba) != lastlba) {
+		dev_warn(dev,
+		       "GPT:Alternate GPT header not at the end of the disk.\n");
+		dev_warn(dev, "GPT:%lld != %lld\n",
+			(unsigned long long)le64_to_cpu(agpt->my_lba),
+			(unsigned long long)lastlba);
+		error_found++;
+	}
+
+	if (error_found)
+		dev_warn(dev, "GPT: Use GNU Parted to correct GPT errors.\n");
+	return;
+}
+
+/**
+ * find_valid_gpt() - Search disk for valid GPT headers and PTEs
+ * @state
+ * @gpt is a GPT header ptr, filled on return.
+ * @ptes is a PTEs ptr, filled on return.
+ * Description: Returns 1 if valid, 0 on error.
+ * If valid, returns pointers to newly allocated GPT header and PTEs.
+ * Validity depends on PMBR being valid (or being overridden by the
+ * 'gpt' kernel command line option) and finding either the Primary
+ * GPT header and PTEs valid, or the Alternate GPT header and PTEs
+ * valid.  If the Primary GPT header is not valid, the Alternate GPT header
+ * is not checked unless the 'gpt' kernel command line option is passed.
+ * This protects against devices which misreport their size, and forces
+ * the user to decide to use the Alternate GPT.
+ */
+static int find_valid_gpt(void *buf, struct block_device *blk, gpt_header **gpt,
+			  gpt_entry **ptes)
+{
+	int good_pgpt = 0, good_agpt = 0;
+	gpt_header *pgpt = NULL, *agpt = NULL;
+	gpt_entry *pptes = NULL, *aptes = NULL;
+	u64 lastlba;
+
+	if (!ptes)
+		return 0;
+
+	lastlba = last_lba(blk);
+	if (force_gpt) {
+		/* This will be added to the EFI Spec. per Intel after v1.02. */
+		if (file_detect_type(buf, SECTOR_SIZE * 2) != filetype_gpt)
+			goto fail;
+	}
+
+	good_pgpt = is_gpt_valid(blk, GPT_PRIMARY_PARTITION_TABLE_LBA,
+				 &pgpt, &pptes);
+	if (good_pgpt)
+		good_agpt = is_gpt_valid(blk,
+					 le64_to_cpu(pgpt->alternate_lba),
+					 &agpt, &aptes);
+	if (!good_agpt && force_gpt)
+		good_agpt = is_gpt_valid(blk, lastlba, &agpt, &aptes);
+
+	/* The obviously unsuccessful case */
+	if (!good_pgpt && !good_agpt)
+		goto fail;
+
+	if (IS_ENABLED(CONFIG_PARTITION_DISK_EFI_GPT_COMPARE))
+		compare_gpts(blk->dev, pgpt, agpt, lastlba);
+
+	/* The good cases */
+	if (good_pgpt) {
+		*gpt  = pgpt;
+		*ptes = pptes;
+		kfree(agpt);
+		kfree(aptes);
+		if (!good_agpt)
+			dev_warn(blk->dev, "Alternate GPT is invalid, using primary GPT.\n");
+		return 1;
+	}
+	else if (good_agpt) {
+		*gpt  = agpt;
+		*ptes = aptes;
+		kfree(pgpt);
+		kfree(pptes);
+		dev_warn(blk->dev, "Primary GPT is invalid, using alternate GPT.\n");
+		return 1;
+	}
+
+ fail:
+	kfree(pgpt);
+	kfree(agpt);
+	kfree(pptes);
+	kfree(aptes);
+	*gpt = NULL;
+	*ptes = NULL;
+	return 0;
+}
+
+static void part_set_efi_name(gpt_entry *pte, char *dest)
+{
+	int i;
+
+	for (i = 0; i < GPT_PARTNAME_MAX_SIZE ; i++) {
+		u8 c;
+		c = pte->partition_name[i] & 0xff;
+		c = (c && !isprint(c)) ? '.' : c;
+		dest[i] = c;
+	}
+	dest[i] = 0;
+}
+
+static void efi_partition(void *buf, struct block_device *blk,
+			  struct partition_desc *pd)
+{
+	gpt_header *gpt = NULL;
+	gpt_entry *ptes = NULL;
+	int i = 0;
+	int nb_part;
+	struct partition *pentry;
+
+	if (!find_valid_gpt(buf, blk, &gpt, &ptes) || !gpt || !ptes) {
+		kfree(gpt);
+		kfree(ptes);
+		return;
+	}
+
+	nb_part = le32_to_cpu(gpt->num_partition_entries);
+	for (i = 0; i < MAX_PARTITION && i < nb_part; i++) {
+		if (!is_pte_valid(&ptes[i], last_lba(blk))) {
+			dev_dbg(blk->dev, "Invalid pte %d\n", i);
+			return;
+		}
+
+		pentry = &pd->parts[pd->used_entries];
+		pentry->first_sec = le64_to_cpu(ptes[i].starting_lba);
+		pentry->size = le64_to_cpu(ptes[i].ending_lba) - pentry->first_sec;
+		pentry->size++;
+		part_set_efi_name(&ptes[i], pentry->name);
+		pd->used_entries++;
+	}
+
+	if (i > MAX_PARTITION)
+		dev_warn(blk->dev, "num_partition_entries (%d) > max partition number (%d)\n",
+			 nb_part, MAX_PARTITION);
+}
+
+static struct partition_parser efi_partition_parser = {
+	.parse = efi_partition,
+	.type = filetype_gpt,
+};
+
+static int efi_partition_init(void)
+{
+	return partition_parser_register(&efi_partition_parser);
+}
+postconsole_initcall(efi_partition_init);
diff --git a/common/partitions/efi.h b/common/partitions/efi.h
new file mode 100644
index 0000000..5c1d0ad
--- /dev/null
+++ b/common/partitions/efi.h
@@ -0,0 +1,123 @@
+/************************************************************
+ * EFI GUID Partition Table
+ * Per Intel EFI Specification v1.02
+ * http://developer.intel.com/technology/efi/efi.htm
+ *
+ * By Matt Domsch <Matt_Domsch@dell.com>  Fri Sep 22 22:15:56 CDT 2000  
+ *   Copyright 2000,2001 Dell Inc.
+ *
+ *  This program is free software; you can redistribute it and/or modify
+ *  it under the terms of the GNU General Public License as published by
+ *  the Free Software Foundation; either version 2 of the License, or
+ *  (at your option) any later version.
+ * 
+ *  This program is distributed in the hope that it will be useful,
+ *  but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *  GNU General Public License for more details.
+ *
+ *  You should have received a copy of the GNU General Public License
+ *  along with this program; if not, write to the Free Software
+ *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ * 
+ ************************************************************/
+
+#ifndef FS_PART_EFI_H_INCLUDED
+#define FS_PART_EFI_H_INCLUDED
+
+#include <linux/efi.h>
+
+#define MSDOS_MBR_SIGNATURE 0xaa55
+#define EFI_PMBR_OSTYPE_EFI 0xEF
+#define EFI_PMBR_OSTYPE_EFI_GPT 0xEE
+
+#define GPT_BLOCK_SIZE 512
+#define GPT_HEADER_SIGNATURE 0x5452415020494645ULL
+#define GPT_HEADER_REVISION_V1 0x00010000
+#define GPT_PRIMARY_PARTITION_TABLE_LBA 1
+
+#define PARTITION_SYSTEM_GUID \
+	EFI_GUID( 0xC12A7328, 0xF81F, 0x11d2, \
+		0xBA, 0x4B, 0x00, 0xA0, 0xC9, 0x3E, 0xC9, 0x3B)
+#define LEGACY_MBR_PARTITION_GUID \
+	EFI_GUID( 0x024DEE41, 0x33E7, 0x11d3, \
+		0x9D, 0x69, 0x00, 0x08, 0xC7, 0x81, 0xF3, 0x9F)
+#define PARTITION_MSFT_RESERVED_GUID \
+	EFI_GUID( 0xE3C9E316, 0x0B5C, 0x4DB8, \
+		0x81, 0x7D, 0xF9, 0x2D, 0xF0, 0x02, 0x15, 0xAE)
+#define PARTITION_BASIC_DATA_GUID \
+	EFI_GUID( 0xEBD0A0A2, 0xB9E5, 0x4433, \
+		0x87, 0xC0, 0x68, 0xB6, 0xB7, 0x26, 0x99, 0xC7)
+#define PARTITION_LINUX_RAID_GUID \
+	EFI_GUID( 0xa19d880f, 0x05fc, 0x4d3b, \
+		0xa0, 0x06, 0x74, 0x3f, 0x0f, 0x84, 0x91, 0x1e)
+#define PARTITION_LINUX_SWAP_GUID \
+	EFI_GUID( 0x0657fd6d, 0xa4ab, 0x43c4, \
+		0x84, 0xe5, 0x09, 0x33, 0xc8, 0x4b, 0x4f, 0x4f)
+#define PARTITION_LINUX_LVM_GUID \
+	EFI_GUID( 0xe6d6d379, 0xf507, 0x44c2, \
+		0xa2, 0x3c, 0x23, 0x8f, 0x2a, 0x3d, 0xf9, 0x28)
+
+/* based on linux/include/genhd.h */
+struct legacy_partition {
+	unsigned char boot_ind;		/* 0x80 - active */
+	unsigned char head;		/* starting head */
+	unsigned char sector;		/* starting sector */
+	unsigned char cyl;		/* starting cylinder */
+	unsigned char sys_ind;		/* What partition type */
+	unsigned char end_head;		/* end head */
+	unsigned char end_sector;	/* end sector */
+	unsigned char end_cyl;		/* end cylinder */
+	__le32 start_sect;	/* starting sector counting from 0 */
+	__le32 nr_sects;		/* nr of sectors in partition */
+} __attribute__ ((packed));
+
+/* based on linux/fs/partitions/efi.h */
+typedef struct _gpt_header {
+	__le64 signature;
+	__le32 revision;
+	__le32 header_size;
+	__le32 header_crc32;
+	__le32 reserved1;
+	__le64 my_lba;
+	__le64 alternate_lba;
+	__le64 first_usable_lba;
+	__le64 last_usable_lba;
+	efi_guid_t disk_guid;
+	__le64 partition_entry_lba;
+	__le32 num_partition_entries;
+	__le32 sizeof_partition_entry;
+	__le32 partition_entry_array_crc32;
+
+	/* The rest of the logical block is reserved by UEFI and must be zero.
+	 * EFI standard handles this by:
+	 *
+	 * uint8_t		reserved2[ BlockSize - 92 ];
+	 */
+} __attribute__ ((packed)) gpt_header;
+
+typedef struct _gpt_entry_attributes {
+	u64 required_to_function:1;
+	u64 reserved:47;
+        u64 type_guid_specific:16;
+} __attribute__ ((packed)) gpt_entry_attributes;
+
+#define GPT_PARTNAME_MAX_SIZE	(72 / sizeof (efi_char16_t))
+typedef struct _gpt_entry {
+	efi_guid_t partition_type_guid;
+	efi_guid_t unique_partition_guid;
+	__le64 starting_lba;
+	__le64 ending_lba;
+	gpt_entry_attributes attributes;
+	efi_char16_t partition_name[GPT_PARTNAME_MAX_SIZE];
+} __attribute__ ((packed)) gpt_entry;
+
+typedef struct _legacy_mbr {
+	u8 boot_code[440];
+	__le32 unique_mbr_signature;
+	__le16 unknown;
+	struct legacy_partition partition_record[4];
+	__le16 signature;
+} __attribute__ ((packed)) legacy_mbr;
+
+#endif	/* _DISK_PART_EFI_H */
diff --git a/include/linux/efi.h b/include/linux/efi.h
new file mode 100644
index 0000000..7933d71
--- /dev/null
+++ b/include/linux/efi.h
@@ -0,0 +1,547 @@
+#ifndef _LINUX_EFI_H
+#define _LINUX_EFI_H
+
+/*
+ * Extensible Firmware Interface
+ * Based on 'Extensible Firmware Interface Specification' version 0.9, April 30, 1999
+ *
+ * Copyright (C) 1999 VA Linux Systems
+ * Copyright (C) 1999 Walt Drummond <drummond@valinux.com>
+ * Copyright (C) 1999, 2002-2003 Hewlett-Packard Co.
+ *	David Mosberger-Tang <davidm@hpl.hp.com>
+ *	Stephane Eranian <eranian@hpl.hp.com>
+ */
+#include <linux/string.h>
+#include <linux/types.h>
+
+#define EFI_SUCCESS		0
+#define EFI_LOAD_ERROR          ( 1 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_INVALID_PARAMETER	( 2 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_UNSUPPORTED		( 3 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_BAD_BUFFER_SIZE     ( 4 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_BUFFER_TOO_SMALL	( 5 | (1UL << (BITS_PER_LONG-1)))
+#define EFI_NOT_FOUND		(14 | (1UL << (BITS_PER_LONG-1)))
+
+typedef unsigned long efi_status_t;
+typedef u8 efi_bool_t;
+typedef u16 efi_char16_t;		/* UNICODE character */
+
+
+typedef struct {
+	u8 b[16];
+} efi_guid_t;
+
+#define EFI_GUID(a,b,c,d0,d1,d2,d3,d4,d5,d6,d7) \
+((efi_guid_t) \
+{{ (a) & 0xff, ((a) >> 8) & 0xff, ((a) >> 16) & 0xff, ((a) >> 24) & 0xff, \
+  (b) & 0xff, ((b) >> 8) & 0xff, \
+  (c) & 0xff, ((c) >> 8) & 0xff, \
+  (d0), (d1), (d2), (d3), (d4), (d5), (d6), (d7) }})
+
+/*
+ * Generic EFI table header
+ */
+typedef	struct {
+	u64 signature;
+	u32 revision;
+	u32 headersize;
+	u32 crc32;
+	u32 reserved;
+} efi_table_hdr_t;
+
+/*
+ * Memory map descriptor:
+ */
+
+/* Memory types: */
+#define EFI_RESERVED_TYPE		 0
+#define EFI_LOADER_CODE			 1
+#define EFI_LOADER_DATA			 2
+#define EFI_BOOT_SERVICES_CODE		 3
+#define EFI_BOOT_SERVICES_DATA		 4
+#define EFI_RUNTIME_SERVICES_CODE	 5
+#define EFI_RUNTIME_SERVICES_DATA	 6
+#define EFI_CONVENTIONAL_MEMORY		 7
+#define EFI_UNUSABLE_MEMORY		 8
+#define EFI_ACPI_RECLAIM_MEMORY		 9
+#define EFI_ACPI_MEMORY_NVS		10
+#define EFI_MEMORY_MAPPED_IO		11
+#define EFI_MEMORY_MAPPED_IO_PORT_SPACE	12
+#define EFI_PAL_CODE			13
+#define EFI_MAX_MEMORY_TYPE		14
+
+/* Attribute values: */
+#define EFI_MEMORY_UC		((u64)0x0000000000000001ULL)	/* uncached */
+#define EFI_MEMORY_WC		((u64)0x0000000000000002ULL)	/* write-coalescing */
+#define EFI_MEMORY_WT		((u64)0x0000000000000004ULL)	/* write-through */
+#define EFI_MEMORY_WB		((u64)0x0000000000000008ULL)	/* write-back */
+#define EFI_MEMORY_WP		((u64)0x0000000000001000ULL)	/* write-protect */
+#define EFI_MEMORY_RP		((u64)0x0000000000002000ULL)	/* read-protect */
+#define EFI_MEMORY_XP		((u64)0x0000000000004000ULL)	/* execute-protect */
+#define EFI_MEMORY_RUNTIME	((u64)0x8000000000000000ULL)	/* range requires runtime mapping */
+#define EFI_MEMORY_DESCRIPTOR_VERSION	1
+
+#define EFI_PAGE_SHIFT		12
+
+typedef struct {
+	u32 type;
+	u32 pad;
+	u64 phys_addr;
+	u64 virt_addr;
+	u64 num_pages;
+	u64 attribute;
+} efi_memory_desc_t;
+
+typedef struct {
+	efi_guid_t guid;
+	u32 headersize;
+	u32 flags;
+	u32 imagesize;
+} efi_capsule_header_t;
+
+/*
+ * Allocation types for calls to boottime->allocate_pages.
+ */
+#define EFI_ALLOCATE_ANY_PAGES		0
+#define EFI_ALLOCATE_MAX_ADDRESS	1
+#define EFI_ALLOCATE_ADDRESS		2
+#define EFI_MAX_ALLOCATE_TYPE		3
+
+typedef int (*efi_freemem_callback_t) (u64 start, u64 end, void *arg);
+
+/*
+ * Types and defines for Time Services
+ */
+#define EFI_TIME_ADJUST_DAYLIGHT 0x1
+#define EFI_TIME_IN_DAYLIGHT     0x2
+#define EFI_UNSPECIFIED_TIMEZONE 0x07ff
+
+typedef struct {
+	u16 year;
+	u8 month;
+	u8 day;
+	u8 hour;
+	u8 minute;
+	u8 second;
+	u8 pad1;
+	u32 nanosecond;
+	s16 timezone;
+	u8 daylight;
+	u8 pad2;
+} efi_time_t;
+
+typedef struct {
+	u32 resolution;
+	u32 accuracy;
+	u8 sets_to_zero;
+} efi_time_cap_t;
+
+/*
+ * EFI Boot Services table
+ */
+typedef struct {
+	efi_table_hdr_t hdr;
+	void *raise_tpl;
+	void *restore_tpl;
+	void *allocate_pages;
+	void *free_pages;
+	void *get_memory_map;
+	void *allocate_pool;
+	void *free_pool;
+	void *create_event;
+	void *set_timer;
+	void *wait_for_event;
+	void *signal_event;
+	void *close_event;
+	void *check_event;
+	void *install_protocol_interface;
+	void *reinstall_protocol_interface;
+	void *uninstall_protocol_interface;
+	void *handle_protocol;
+	void *__reserved;
+	void *register_protocol_notify;
+	void *locate_handle;
+	void *locate_device_path;
+	void *install_configuration_table;
+	void *load_image;
+	void *start_image;
+	void *exit;
+	void *unload_image;
+	void *exit_boot_services;
+	void *get_next_monotonic_count;
+	void *stall;
+	void *set_watchdog_timer;
+	void *connect_controller;
+	void *disconnect_controller;
+	void *open_protocol;
+	void *close_protocol;
+	void *open_protocol_information;
+	void *protocols_per_handle;
+	void *locate_handle_buffer;
+	void *locate_protocol;
+	void *install_multiple_protocol_interfaces;
+	void *uninstall_multiple_protocol_interfaces;
+	void *calculate_crc32;
+	void *copy_mem;
+	void *set_mem;
+	void *create_event_ex;
+} efi_boot_services_t;
+
+/*
+ * Types and defines for EFI ResetSystem
+ */
+#define EFI_RESET_COLD 0
+#define EFI_RESET_WARM 1
+#define EFI_RESET_SHUTDOWN 2
+
+/*
+ * EFI Runtime Services table
+ */
+#define EFI_RUNTIME_SERVICES_SIGNATURE ((u64)0x5652453544e5552ULL)
+#define EFI_RUNTIME_SERVICES_REVISION  0x00010000
+
+typedef struct {
+	efi_table_hdr_t hdr;
+	unsigned long get_time;
+	unsigned long set_time;
+	unsigned long get_wakeup_time;
+	unsigned long set_wakeup_time;
+	unsigned long set_virtual_address_map;
+	unsigned long convert_pointer;
+	unsigned long get_variable;
+	unsigned long get_next_variable;
+	unsigned long set_variable;
+	unsigned long get_next_high_mono_count;
+	unsigned long reset_system;
+	unsigned long update_capsule;
+	unsigned long query_capsule_caps;
+	unsigned long query_variable_info;
+} efi_runtime_services_t;
+
+typedef efi_status_t efi_get_time_t (efi_time_t *tm, efi_time_cap_t *tc);
+typedef efi_status_t efi_set_time_t (efi_time_t *tm);
+typedef efi_status_t efi_get_wakeup_time_t (efi_bool_t *enabled, efi_bool_t *pending,
+					    efi_time_t *tm);
+typedef efi_status_t efi_set_wakeup_time_t (efi_bool_t enabled, efi_time_t *tm);
+typedef efi_status_t efi_get_variable_t (efi_char16_t *name, efi_guid_t *vendor, u32 *attr,
+					 unsigned long *data_size, void *data);
+typedef efi_status_t efi_get_next_variable_t (unsigned long *name_size, efi_char16_t *name,
+					      efi_guid_t *vendor);
+typedef efi_status_t efi_set_variable_t (efi_char16_t *name, efi_guid_t *vendor, 
+					 u32 attr, unsigned long data_size,
+					 void *data);
+typedef efi_status_t efi_get_next_high_mono_count_t (u32 *count);
+typedef void efi_reset_system_t (int reset_type, efi_status_t status,
+				 unsigned long data_size, efi_char16_t *data);
+typedef efi_status_t efi_set_virtual_address_map_t (unsigned long memory_map_size,
+						unsigned long descriptor_size,
+						u32 descriptor_version,
+						efi_memory_desc_t *virtual_map);
+typedef efi_status_t efi_query_variable_info_t(u32 attr,
+					       u64 *storage_space,
+					       u64 *remaining_space,
+					       u64 *max_variable_size);
+typedef efi_status_t efi_update_capsule_t(efi_capsule_header_t **capsules,
+					  unsigned long count,
+					  unsigned long sg_list);
+typedef efi_status_t efi_query_capsule_caps_t(efi_capsule_header_t **capsules,
+					      unsigned long count,
+					      u64 *max_size,
+					      int *reset_type);
+
+/*
+ *  EFI Configuration Table and GUID definitions
+ */
+#define NULL_GUID \
+    EFI_GUID(  0x00000000, 0x0000, 0x0000, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 )
+
+#define MPS_TABLE_GUID    \
+    EFI_GUID(  0xeb9d2d2f, 0x2d88, 0x11d3, 0x9a, 0x16, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d )
+
+#define ACPI_TABLE_GUID    \
+    EFI_GUID(  0xeb9d2d30, 0x2d88, 0x11d3, 0x9a, 0x16, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d )
+
+#define ACPI_20_TABLE_GUID    \
+    EFI_GUID(  0x8868e871, 0xe4f1, 0x11d3, 0xbc, 0x22, 0x0, 0x80, 0xc7, 0x3c, 0x88, 0x81 )
+
+#define SMBIOS_TABLE_GUID    \
+    EFI_GUID(  0xeb9d2d31, 0x2d88, 0x11d3, 0x9a, 0x16, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d )
+
+#define SAL_SYSTEM_TABLE_GUID    \
+    EFI_GUID(  0xeb9d2d32, 0x2d88, 0x11d3, 0x9a, 0x16, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d )
+
+#define HCDP_TABLE_GUID	\
+    EFI_GUID(  0xf951938d, 0x620b, 0x42ef, 0x82, 0x79, 0xa8, 0x4b, 0x79, 0x61, 0x78, 0x98 )
+
+#define UGA_IO_PROTOCOL_GUID \
+    EFI_GUID(  0x61a4d49e, 0x6f68, 0x4f1b, 0xb9, 0x22, 0xa8, 0x6e, 0xed, 0xb, 0x7, 0xa2 )
+
+#define EFI_GLOBAL_VARIABLE_GUID \
+    EFI_GUID(  0x8be4df61, 0x93ca, 0x11d2, 0xaa, 0x0d, 0x00, 0xe0, 0x98, 0x03, 0x2b, 0x8c )
+
+#define UV_SYSTEM_TABLE_GUID \
+    EFI_GUID(  0x3b13a7d4, 0x633e, 0x11dd, 0x93, 0xec, 0xda, 0x25, 0x56, 0xd8, 0x95, 0x93 )
+
+#define LINUX_EFI_CRASH_GUID \
+    EFI_GUID(  0xcfc8fc79, 0xbe2e, 0x4ddc, 0x97, 0xf0, 0x9f, 0x98, 0xbf, 0xe2, 0x98, 0xa0 )
+
+#define LOADED_IMAGE_PROTOCOL_GUID \
+    EFI_GUID(  0x5b1b31a1, 0x9562, 0x11d2, 0x8e, 0x3f, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b )
+
+#define EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID \
+    EFI_GUID(  0x9042a9de, 0x23dc, 0x4a38, 0x96, 0xfb, 0x7a, 0xde, 0xd0, 0x80, 0x51, 0x6a )
+
+#define EFI_UGA_PROTOCOL_GUID \
+    EFI_GUID(  0x982c298b, 0xf4fa, 0x41cb, 0xb8, 0x38, 0x77, 0xaa, 0x68, 0x8f, 0xb8, 0x39 )
+
+#define EFI_PCI_IO_PROTOCOL_GUID \
+    EFI_GUID(  0x4cf5b200, 0x68b8, 0x4ca5, 0x9e, 0xec, 0xb2, 0x3e, 0x3f, 0x50, 0x2, 0x9a )
+
+#define EFI_FILE_INFO_ID \
+    EFI_GUID(  0x9576e92, 0x6d3f, 0x11d2, 0x8e, 0x39, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b )
+
+#define EFI_FILE_SYSTEM_GUID \
+    EFI_GUID(  0x964e5b22, 0x6459, 0x11d2, 0x8e, 0x39, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b )
+
+typedef struct {
+	efi_guid_t guid;
+	u64 table;
+} efi_config_table_64_t;
+
+typedef struct {
+	efi_guid_t guid;
+	u32 table;
+} efi_config_table_32_t;
+
+typedef struct {
+	efi_guid_t guid;
+	unsigned long table;
+} efi_config_table_t;
+
+#define EFI_SYSTEM_TABLE_SIGNATURE ((u64)0x5453595320494249ULL)
+
+#define EFI_2_30_SYSTEM_TABLE_REVISION  ((2 << 16) | (30))
+#define EFI_2_20_SYSTEM_TABLE_REVISION  ((2 << 16) | (20))
+#define EFI_2_10_SYSTEM_TABLE_REVISION  ((2 << 16) | (10))
+#define EFI_2_00_SYSTEM_TABLE_REVISION  ((2 << 16) | (00))
+#define EFI_1_10_SYSTEM_TABLE_REVISION  ((1 << 16) | (10))
+#define EFI_1_02_SYSTEM_TABLE_REVISION  ((1 << 16) | (02))
+
+typedef struct {
+	efi_table_hdr_t hdr;
+	u64 fw_vendor;	/* physical addr of CHAR16 vendor string */
+	u32 fw_revision;
+	u32 __pad1;
+	u64 con_in_handle;
+	u64 con_in;
+	u64 con_out_handle;
+	u64 con_out;
+	u64 stderr_handle;
+	u64 _stderr;
+	u64 runtime;
+	u64 boottime;
+	u32 nr_tables;
+	u32 __pad2;
+	u64 tables;
+} efi_system_table_64_t;
+
+typedef struct {
+	efi_table_hdr_t hdr;
+	u32 fw_vendor;	/* physical addr of CHAR16 vendor string */
+	u32 fw_revision;
+	u32 con_in_handle;
+	u32 con_in;
+	u32 con_out_handle;
+	u32 con_out;
+	u32 stderr_handle;
+	u32 _stderr;
+	u32 runtime;
+	u32 boottime;
+	u32 nr_tables;
+	u32 tables;
+} efi_system_table_32_t;
+
+typedef struct {
+	efi_table_hdr_t hdr;
+	unsigned long fw_vendor;	/* physical addr of CHAR16 vendor string */
+	u32 fw_revision;
+	unsigned long con_in_handle;
+	unsigned long con_in;
+	unsigned long con_out_handle;
+	unsigned long con_out;
+	unsigned long stderr_handle;
+	unsigned long _stderr;
+	efi_runtime_services_t *runtime;
+	efi_boot_services_t *boottime;
+	unsigned long nr_tables;
+	unsigned long tables;
+} efi_system_table_t;
+
+struct efi_memory_map {
+	void *phys_map;
+	void *map;
+	void *map_end;
+	int nr_map;
+	unsigned long desc_version;
+	unsigned long desc_size;
+};
+
+typedef struct {
+	u32 revision;
+	void *parent_handle;
+	efi_system_table_t *system_table;
+	void *device_handle;
+	void *file_path;
+	void *reserved;
+	u32 load_options_size;
+	void *load_options;
+	void *image_base;
+	__aligned_u64 image_size;
+	unsigned int image_code_type;
+	unsigned int image_data_type;
+	unsigned long unload;
+} efi_loaded_image_t;
+
+typedef struct {
+	u64 revision;
+	void *open_volume;
+} efi_file_io_interface_t;
+
+typedef struct {
+	u64 size;
+	u64 file_size;
+	u64 phys_size;
+	efi_time_t create_time;
+	efi_time_t last_access_time;
+	efi_time_t modification_time;
+	__aligned_u64 attribute;
+	efi_char16_t filename[1];
+} efi_file_info_t;
+
+typedef struct {
+	u64 revision;
+	void *open;
+	void *close;
+	void *delete;
+	void *read;
+	void *write;
+	void *get_position;
+	void *set_position;
+	void *get_info;
+	void *set_info;
+	void *flush;
+} efi_file_handle_t;
+
+#define EFI_FILE_MODE_READ	0x0000000000000001
+#define EFI_FILE_MODE_WRITE	0x0000000000000002
+#define EFI_FILE_MODE_CREATE	0x8000000000000000
+
+#define EFI_INVALID_TABLE_ADDR		(~0UL)
+
+/*
+ * All runtime access to EFI goes through this structure:
+ */
+extern struct efi {
+	efi_system_table_t *systab;	/* EFI system table */
+	unsigned int runtime_version;	/* Runtime services version */
+	unsigned long mps;		/* MPS table */
+	unsigned long acpi;		/* ACPI table  (IA64 ext 0.71) */
+	unsigned long acpi20;		/* ACPI table  (ACPI 2.0) */
+	unsigned long smbios;		/* SM BIOS table */
+	unsigned long sal_systab;	/* SAL system table */
+	unsigned long boot_info;	/* boot info table */
+	unsigned long hcdp;		/* HCDP table */
+	unsigned long uga;		/* UGA table */
+	unsigned long uv_systab;	/* UV system table */
+	efi_get_time_t *get_time;
+	efi_set_time_t *set_time;
+	efi_get_wakeup_time_t *get_wakeup_time;
+	efi_set_wakeup_time_t *set_wakeup_time;
+	efi_get_variable_t *get_variable;
+	efi_get_next_variable_t *get_next_variable;
+	efi_set_variable_t *set_variable;
+	efi_query_variable_info_t *query_variable_info;
+	efi_update_capsule_t *update_capsule;
+	efi_query_capsule_caps_t *query_capsule_caps;
+	efi_get_next_high_mono_count_t *get_next_high_mono_count;
+	efi_reset_system_t *reset_system;
+	efi_set_virtual_address_map_t *set_virtual_address_map;
+} efi;
+
+static inline int
+efi_guidcmp (efi_guid_t left, efi_guid_t right)
+{
+	return memcmp(&left, &right, sizeof (efi_guid_t));
+}
+
+static inline char *
+efi_guid_unparse(efi_guid_t *guid, char *out)
+{
+	sprintf(out, "%pUl", guid->b);
+        return out;
+}
+
+/*
+ * Variable Attributes
+ */
+#define EFI_VARIABLE_NON_VOLATILE       0x0000000000000001
+#define EFI_VARIABLE_BOOTSERVICE_ACCESS 0x0000000000000002
+#define EFI_VARIABLE_RUNTIME_ACCESS     0x0000000000000004
+#define EFI_VARIABLE_HARDWARE_ERROR_RECORD 0x0000000000000008
+#define EFI_VARIABLE_AUTHENTICATED_WRITE_ACCESS 0x0000000000000010
+#define EFI_VARIABLE_TIME_BASED_AUTHENTICATED_WRITE_ACCESS 0x0000000000000020
+#define EFI_VARIABLE_APPEND_WRITE	0x0000000000000040
+
+#define EFI_VARIABLE_MASK 	(EFI_VARIABLE_NON_VOLATILE | \
+				EFI_VARIABLE_BOOTSERVICE_ACCESS | \
+				EFI_VARIABLE_RUNTIME_ACCESS | \
+				EFI_VARIABLE_HARDWARE_ERROR_RECORD | \
+				EFI_VARIABLE_AUTHENTICATED_WRITE_ACCESS | \
+				EFI_VARIABLE_TIME_BASED_AUTHENTICATED_WRITE_ACCESS | \
+				EFI_VARIABLE_APPEND_WRITE)
+/*
+ * The type of search to perform when calling boottime->locate_handle
+ */
+#define EFI_LOCATE_ALL_HANDLES			0
+#define EFI_LOCATE_BY_REGISTER_NOTIFY		1
+#define EFI_LOCATE_BY_PROTOCOL			2
+
+/*
+ * EFI Device Path information
+ */
+#define EFI_DEV_HW			0x01
+#define  EFI_DEV_PCI				 1
+#define  EFI_DEV_PCCARD				 2
+#define  EFI_DEV_MEM_MAPPED			 3
+#define  EFI_DEV_VENDOR				 4
+#define  EFI_DEV_CONTROLLER			 5
+#define EFI_DEV_ACPI			0x02
+#define   EFI_DEV_BASIC_ACPI			 1
+#define   EFI_DEV_EXPANDED_ACPI			 2
+#define EFI_DEV_MSG			0x03
+#define   EFI_DEV_MSG_ATAPI			 1
+#define   EFI_DEV_MSG_SCSI			 2
+#define   EFI_DEV_MSG_FC			 3
+#define   EFI_DEV_MSG_1394			 4
+#define   EFI_DEV_MSG_USB			 5
+#define   EFI_DEV_MSG_USB_CLASS			15
+#define   EFI_DEV_MSG_I20			 6
+#define   EFI_DEV_MSG_MAC			11
+#define   EFI_DEV_MSG_IPV4			12
+#define   EFI_DEV_MSG_IPV6			13
+#define   EFI_DEV_MSG_INFINIBAND		 9
+#define   EFI_DEV_MSG_UART			14
+#define   EFI_DEV_MSG_VENDOR			10
+#define EFI_DEV_MEDIA			0x04
+#define   EFI_DEV_MEDIA_HARD_DRIVE		 1
+#define   EFI_DEV_MEDIA_CDROM			 2
+#define   EFI_DEV_MEDIA_VENDOR			 3
+#define   EFI_DEV_MEDIA_FILE			 4
+#define   EFI_DEV_MEDIA_PROTOCOL		 5
+#define EFI_DEV_BIOS_BOOT		0x05
+#define EFI_DEV_END_PATH		0x7F
+#define EFI_DEV_END_PATH2		0xFF
+#define   EFI_DEV_END_INSTANCE			0x01
+#define   EFI_DEV_END_ENTIRE			0xFF
+
+#endif /* _LINUX_EFI_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
