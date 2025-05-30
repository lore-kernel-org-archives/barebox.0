Delivery-date: Fri, 30 May 2025 13:44:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKyA4-001vqz-27
	for lore@lore.pengutronix.de;
	Fri, 30 May 2025 13:44:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKyA3-0002Mr-6o
	for lore@pengutronix.de; Fri, 30 May 2025 13:44:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ar9zOiE6Rfry9YAfk9Msqk2pLGzDVNpwHAhVD+U6pho=; b=dC2f9/GyUywgIRtr5PQv9y070E
	Okdqvd9l/eUxR6nBX/ol2mb/Btu9seKEn7wCxuGE3Tn84RLg5FoRwOml4uV9ZK96LVYAhrPjtkHn0
	byGj65uVLTtU7dL2zIQp6vcLXNg/FGr4cuIpDpkij6xbNN+bqccLXq3lhUm+cme16AWDtKUgQArWK
	JWJYi7XJo2GPC1aPQCYrOreNQoGAOZvDSsVPYAg5bLz5DfkOaEda4rwZuT8uHxSu2ttVDtNTp4Q8M
	Jg5Z3fBNhr8UVkdy9GqbLdkiy9OAGDyaIxcYYtuU6e2HhGO2so2sudfnT8XymaMBA86yW0q0OiK9D
	noZfo3TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKy9M-00000000RrG-3Qwu;
	Fri, 30 May 2025 11:43:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKy6n-00000000RbU-3Qve
	for barebox@lists.infradead.org;
	Fri, 30 May 2025 11:41:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1uKy6l-0008Th-SW; Fri, 30 May 2025 13:41:07 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uKy6l-000y4l-20;
	Fri, 30 May 2025 13:41:07 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uKy6l-004EcH-1o;
	Fri, 30 May 2025 13:41:07 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 30 May 2025 13:41:01 +0200
Message-Id: <20250530114106.1009454-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250530114106.1009454-1-o.rempel@pengutronix.de>
References: <20250530114106.1009454-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250530_044110_176922_130B4350 
X-CRM114-Status: GOOD (  32.92  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 2/7] nvmem: rmem: add write and protect support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add reg_write and reg_protect operations to the rmem NVMEM driver.
This makes rmem devices writable (they were previously read-only via the
NVMEM interface due to lacking reg_write) and allows specific regions
to be marked read-only.

The primary motivation is to improve testing of NVMEM consumer code that
handles write protection, by enabling rmem to emulate such hardware,
particularly in sandbox environments.

Key changes:

- reg_write implemented: Enables writes. Writes to protected regions
  return -EROFS.

- reg_protect implemented:
  - NVMEM_PROTECT_DISABLE_WRITE: Marks range read-only. Merges
    overlapping/adjacent protected ranges.

  - NVMEM_PROTECT_ENABLE_WRITE: Makes range writable. Splits/shrinks
    existing protected ranges as needed.

  - Internal list (protected_ranges_list) and helpers manage read-only
    regions (overlap, adjacency, split, merge logic).

  - Probe function updated for new ops and list initialization.

The core range protection logic is generic and could be a candidate for
a future common NVMEM helper library.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/nvmem/rmem.c | 436 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 436 insertions(+)

diff --git a/drivers/nvmem/rmem.c b/drivers/nvmem/rmem.c
index afa0dd78c8f4..be3203de73d3 100644
--- a/drivers/nvmem/rmem.c
+++ b/drivers/nvmem/rmem.c
@@ -8,9 +8,17 @@
 #include <linux/nvmem-provider.h>
 #include <init.h>
 
+struct protected_range {
+	unsigned int offset;
+	size_t len;
+	struct list_head node;
+};
+
 struct rmem {
 	struct device *dev;
 	const struct resource *mem;
+	size_t total_size;
+	struct list_head protected_ranges_list;
 };
 
 static int rmem_read(void *context, unsigned int offset,
@@ -21,6 +29,429 @@ static int rmem_read(void *context, unsigned int offset,
 			bytes, offset, 0);
 }
 
+/**
+ * rmem_ranges_overlap - Check if two memory ranges overlap.
+ * @offset1: Starting offset of the first range.
+ * @len1:    Length of the first range.
+ * @offset2: Starting offset of the second range.
+ * @len2:    Length of the second range.
+ *
+ * Compares two memory ranges, defined by their starting offsets and
+ * lengths, to determine if they have any common region. Ranges with
+ * zero length are considered non-overlapping.
+ *
+ * The ranges are treated as inclusive, i.e., a range starting at @offset
+ * with length @len covers all bytes from @offset to @offset + @len - 1.
+ *
+ * Return: True if the ranges overlap, false otherwise.
+ */
+static bool rmem_ranges_overlap(unsigned int offset1, size_t len1,
+				unsigned int offset2, size_t len2)
+{
+	unsigned int end1_inclusive;
+	unsigned int end2_inclusive;
+
+	/* A range with zero length cannot overlap with anything. */
+	if (len1 == 0 || len2 == 0)
+		return false;
+
+	/* Calculate the inclusive end points of the ranges.
+	 * It's assumed that offset + len - 1 will not cause an
+	 * arithmetic overflow that wraps around in a problematic way
+	 * for typical NVMEM sizes and offsets.
+	 */
+	end1_inclusive = offset1 + len1 - 1;
+	end2_inclusive = offset2 + len2 - 1;
+
+	/*
+	 * Two ranges [A, B] and [C, D] overlap if A <= D and C <= B.
+	 * Here:
+	 * Range 1 is [offset1, end1_inclusive]
+	 * Range 2 is [offset2, end2_inclusive]
+	 */
+	return (offset1 <= end2_inclusive && offset2 <= end1_inclusive);
+}
+
+/**
+ * rmem_write - Write data to the NVMEM device.
+ * @context:	Pointer to the rmem private data (passed as void*).
+ * @offset:	Offset within the NVMEM device to write to.
+ * @val:	Buffer containing the data to write.
+ * @bytes:	Number of bytes to write.
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+static int rmem_write(void *context, unsigned int offset,
+		      const void *val, size_t bytes)
+{
+	struct rmem *rmem = context;
+	struct protected_range *pr;
+
+	/* Check against protected ranges */
+	list_for_each_entry(pr, &rmem->protected_ranges_list, node) {
+		if (rmem_ranges_overlap(offset, bytes, pr->offset, pr->len)) {
+			dev_warn(rmem->dev,
+				 "Write [0x%x, len %zu] overlaps with protected [0x%x, len %zu]\n",
+				 offset, bytes, pr->offset, pr->len);
+			return -EROFS;
+		}
+	}
+
+	return mem_copy(rmem->dev, (void *)rmem->mem->start + offset, val,
+			bytes, 0 /*offset_in_dest*/, 0 /*offset_in_val*/);
+}
+
+/**
+ * rmem_are_ranges_adjacent - Check if two memory ranges are adjacent.
+ * @offset1:	Offset of the first range.
+ * @len1:	Length of the first range.
+ * @offset2:	Offset of the second range.
+ * @len2:	Length of the second range.
+ *
+ * Ranges are adjacent if one ends immediately before the other begins.
+ * Zero-length ranges are not considered adjacent to anything.
+ *
+ * Return: True if the ranges are adjacent, false otherwise.
+ */
+static bool rmem_are_ranges_adjacent(unsigned int offset1, size_t len1,
+				     unsigned int offset2, size_t len2)
+{
+	unsigned int end1_inclusive, end2_inclusive;
+
+	if (len1 == 0 || len2 == 0)
+		return false;
+
+	end1_inclusive = offset1 + len1 - 1;
+	end2_inclusive = offset2 + len2 - 1;
+
+	if (end1_inclusive != ~0U && offset2 == end1_inclusive + 1)
+		return true; /* range2 is immediately after range1 */
+	if (end2_inclusive != ~0U && offset1 == end2_inclusive + 1)
+		return true; /* range1 is immediately after range2 */
+
+	return false;
+}
+
+/**
+ * rmem_protect_range - Mark a memory range as read-only.
+ * @rmem:	Pointer to the rmem private data.
+ * @offset:	Starting offset of the range to protect.
+ * @bytes:	Length of the range to protect.
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ *
+ * This function adds a new protected range. If the new range overlaps or
+ * is adjacent to existing protected ranges, they are merged into a single,
+ * larger protected range.
+ */
+static int rmem_protect_range(struct rmem *rmem, unsigned int offset,
+			      size_t bytes)
+{
+	struct protected_range *pr, *tmp_pr;
+	unsigned int current_prot_offset = offset;
+	size_t current_prot_len = bytes;
+	bool overlaps, adjacent;
+
+	/*
+	 * Iterate and merge with existing overlapping or adjacent ranges.
+	 * The new range
+	 * [current_prot_offset, current_prot_offset + current_prot_len - 1]
+	 * might grow by merging with existing protected ranges.
+	 */
+	list_for_each_entry_safe(pr, tmp_pr, &rmem->protected_ranges_list,
+				 node) {
+		overlaps = rmem_ranges_overlap(current_prot_offset,
+					       current_prot_len,
+					       pr->offset, pr->len);
+		adjacent = rmem_are_ranges_adjacent(current_prot_offset,
+						    current_prot_len,
+						    pr->offset, pr->len);
+
+		if (overlaps || adjacent) {
+			unsigned int merged_offset, merged_end_incl,
+				     pr_end_inclusive,
+				     current_prot_end_inclusive;
+
+			/*
+			 * Calculate the inclusive end of the existing protected
+			 * range ('pr') that we are currently examining in the
+			 * list. For example, if pr->offset is 10 and pr->len
+			 * is 5, the range is [10, 11, 12, 13, 14], so
+			 * pr_end_inclusive is 14.
+			 */
+			pr_end_inclusive = pr->offset + pr->len - 1;
+			/*
+			 * Calculate the inclusive end of the
+			 * 'current_prot_range'. This is the range we are trying
+			 * to add or the result of previous merges.
+			 */
+			current_prot_end_inclusive =
+				current_prot_offset + current_prot_len - 1;
+			/*
+			 * Determine the starting offset of the new, combined
+			 * (merged) range. This will be the minimum of the start
+			 * of the 'current_prot_range' and the start of the
+			 * existing protected range 'pr'.
+			 */
+			merged_offset = min(current_prot_offset, pr->offset);
+			/*
+			 * Determine the ending offset (inclusive) of the new,
+			 * combined range. This will be the maximum of the end
+			 * of the 'current_prot_range' and the end of the
+			 * existing protected range 'pr'.
+			 */
+			merged_end_incl = max(current_prot_end_inclusive,
+						   pr_end_inclusive);
+			/*
+			 * Update the 'current_prot_range' to reflect the merge.
+			 * The new offset is the calculated merged_offset.
+			 */
+			current_prot_offset = merged_offset;
+			/*
+			 * The new length is calculated from the merged start
+			 * and end. Length = (inclusive_end - start_offset) + 1.
+			 */
+			current_prot_len = merged_end_incl - merged_offset + 1;
+
+			/*
+			 * The existing protected range 'pr' has now been fully
+			 * incorporated into the (potentially expanded)
+			 * 'current_prot_range'. Therefore, 'pr' can be removed
+			 * from the list and its memory freed.
+			 */
+			list_del(&pr->node);
+			kfree(pr);
+		}
+	}
+
+	/* Add the final merged range */
+	pr = kzalloc(sizeof(*pr), GFP_KERNEL);
+	if (!pr)
+		return -ENOMEM;
+
+	pr->offset = current_prot_offset;
+	pr->len = current_prot_len;
+	list_add_tail(&pr->node, &rmem->protected_ranges_list);
+
+	dev_info(rmem->dev, "Protected range [0x%x, len %zu]\n",
+		 pr->offset, pr->len);
+	return 0;
+}
+
+/**
+ * rmem_create_sub_range - Helper to create a new protected_range structure.
+ * @offset: Offset of the sub-range.
+ * @len: Length of the sub-range.
+ * @new_ranges_list: List to add the new range to if successfully created.
+ *
+ * Return: 0 on success, negative error code on failure.
+ */
+static int rmem_create_sub_range(unsigned int offset, size_t len,
+				 struct list_head *new_ranges_list)
+{
+	struct protected_range *part;
+
+	if (len == 0)
+		return 0;
+
+	part = kzalloc(sizeof(*part), GFP_KERNEL);
+	if (!part)
+		return -ENOMEM;
+
+	part->offset = offset;
+	part->len = len;
+	list_add_tail(&part->node, new_ranges_list);
+
+	return 0;
+}
+
+/**
+ * rmem_handle_unprotect_overlap - Adjust protected ranges due to unprotection.
+ * @pr_to_split: The existing protected range that overlaps with the
+ *		 unprotection request.
+ * @unprot_offset: Starting offset of the unprotection request.
+ * @unprot_len: Length of the unprotection request.
+ * @newly_created_ranges: List to add newly created (split) sub-ranges to.
+ *
+ * This function takes an existing protected range (@pr_to_split) that is known
+ * to overlap with an unprotection request. It removes @pr_to_split and creates
+ * up to two new protected ranges representing the parts of @pr_to_split that
+ * do *not* overlap with the unprotection request. These new sub-ranges are
+ * added to the @newly_created_ranges list.
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+static int rmem_handle_unprotect_overlap(struct protected_range *pr_to_split,
+					 unsigned int unprot_offset,
+					 size_t unprot_len,
+					 struct list_head *newly_created_ranges)
+{
+	unsigned int p_orig_offset, p_orig_end_inclusive, unprot_end_inclusive;
+	unsigned int right_offset = 0;
+	size_t right_len = 0;
+	size_t left_len = 0;
+	size_t p_orig_len;
+	int ret = 0;
+
+	/* Store original properties of the range to be split */
+	p_orig_offset = pr_to_split->offset;
+	p_orig_len = pr_to_split->len;
+
+	/* Calculate inclusive end of the original protected range */
+	p_orig_end_inclusive = p_orig_offset + p_orig_len - 1;
+	/* Calculate inclusive end of the unprotection range */
+	unprot_end_inclusive = unprot_offset + unprot_len - 1;
+
+	/* The original protected range 'pr_to_split' is being affected.
+	 * It will be replaced by zero, one, or two new sub-ranges.
+	 * Remove it from the list and free its memory.
+	 */
+	list_del(&pr_to_split->node);
+	kfree(pr_to_split);
+
+	/*
+	 * Calculate the properties of the 'left part'.
+	 * This is the portion of the original protected range (P_orig)
+	 * that lies entirely before the unprotection region (U) starts.
+	 * P_orig: [p_orig_offset, ..., p_orig_end_inclusive]
+	 * U:      [unprot_offset, ..., unprot_end_inclusive]
+	 *
+	 * If p_orig_offset is less than unprot_offset, there's a potential left
+	 * part.
+	 * Example: P_orig = [10, len 10] (ends at 19), U = [15, len 3]
+	 *          (ends at 17)
+	 * Left part: offset 10, len (15 - 10) = 5.  [10,11,12,13,14]
+	 */
+	if (p_orig_offset < unprot_offset)
+		left_len = unprot_offset - p_orig_offset;
+
+	/*
+	 * Calculate the properties of the 'right part'.
+	 * This is the portion of the original protected range (P_orig)
+	 * that lies entirely after the unprotection region (U) ends.
+	 *
+	 * If p_orig_end_inclusive is greater than unprot_end_inclusive,
+	 * there's a potential right part.
+	 * Example: P_orig = [10, len 10] (ends at 19), U = [12, len 3]
+	 *          (ends at 14)
+	 * Right part: offset (14 + 1) = 15, len (19 - 14) = 5. [15,16,17,18,19]
+	 */
+	if (p_orig_end_inclusive > unprot_end_inclusive) {
+		right_offset = unprot_end_inclusive + 1;
+		right_len = p_orig_end_inclusive - unprot_end_inclusive;
+	}
+
+	/* Attempt to create and add the left sub-range, if it exists
+	 * (left_len > 0)
+	 */
+	ret = rmem_create_sub_range(p_orig_offset, left_len,
+				    newly_created_ranges);
+	if (ret)
+		return ret;
+
+	/* Attempt to create and add the right sub-range, if it exists
+	 * (right_len > 0)
+	 */
+	ret = rmem_create_sub_range(right_offset, right_len,
+				    newly_created_ranges);
+	return ret;
+}
+
+/**
+ * rmem_unprotect_range - Mark a memory range as writable (remove protection).
+ * @rmem:	Pointer to the rmem private data.
+ * @offset:	Starting offset of the range to unprotect.
+ * @bytes:	Length of the range to unprotect.
+ *
+ * Return: 0 on success, -ENOMEM if memory allocation fails.
+ *
+ * This function removes protection from the specified range. If this range
+ * overlaps with existing protected ranges, those ranges may be split or
+ * shrunk.
+ */
+static int rmem_unprotect_range(struct rmem *rmem, unsigned int offset,
+				size_t bytes)
+{
+	struct protected_range *pr, *tmp_pr;
+	int ret = 0;
+
+	/* Temporary list for ranges created by splitting existing protected
+	 * ranges
+	 */
+	LIST_HEAD(newly_created_ranges);
+
+	list_for_each_entry_safe(pr, tmp_pr, &rmem->protected_ranges_list,
+				 node) {
+		/* No overlap, this protected range is unaffected */
+		if (!rmem_ranges_overlap(pr->offset, pr->len, offset, bytes))
+			continue;
+
+		ret = rmem_handle_unprotect_overlap(pr, offset, bytes,
+						    &newly_created_ranges);
+		if (ret)
+			goto cleanup_new_ranges_unprotect;
+	}
+
+	/* Add all newly created (split) ranges to the main list */
+	list_splice_tail_init(&newly_created_ranges,
+			      &rmem->protected_ranges_list);
+
+	if (ret)
+		return ret;
+
+	dev_info(rmem->dev, "Unprotected range [0x%x, len %zu]\n",
+		 offset, bytes);
+	return 0;
+
+cleanup_new_ranges_unprotect:
+	/* Free any ranges allocated on the temporary list before the error
+	 * occurred
+	 */
+	list_for_each_entry_safe(pr, tmp_pr, &newly_created_ranges, node) {
+		list_del(&pr->node);
+		kfree(pr);
+	}
+	return ret;
+}
+
+/**
+ * rmem_protect - NVMEM operation to change protection status of a range.
+ * @context:	Pointer to the rmem private data (passed as void*).
+ * @offset:	Starting offset of the range.
+ * @bytes:	Length of the range.
+ * @prot:	Protection mode (NVMEM_PROT_READONLY or NVMEM_PROT_WRITABLE).
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+static int rmem_protect(void *context, unsigned int offset,
+			size_t bytes, int prot)
+{
+	struct rmem *rmem = context;
+	int ret = 0;
+
+	switch (prot) {
+	case NVMEM_PROTECT_DISABLE_WRITE:
+		ret = rmem_protect_range(rmem, offset, bytes);
+		break;
+	case NVMEM_PROTECT_ENABLE_WRITE:
+		ret = rmem_unprotect_range(rmem, offset, bytes);
+		break;
+	default:
+		dev_warn(rmem->dev, "%s: Invalid protection mode %d\n",
+			 __func__, prot);
+		ret = -EINVAL;
+		break;
+	}
+
+	if (ret)
+		return ret;
+
+	dev_dbg(rmem->dev, "Protection operation completed for range [0x%x, len %zu], mode %d\n",
+		offset, bytes, prot);
+
+	return 0;
+}
+
 static int rmem_probe(struct device *dev)
 {
 	struct nvmem_config config = { };
@@ -36,12 +467,17 @@ static int rmem_probe(struct device *dev)
 		return -ENOMEM;
 
 	priv->mem = mem;
+	INIT_LIST_HEAD(&priv->protected_ranges_list);
 
 	config.dev = priv->dev = dev;
 	config.priv = priv;
 	config.name = "rmem";
 	config.size = resource_size(mem);
+	priv->total_size = config.size;
+
 	config.reg_read = rmem_read;
+	config.reg_write = rmem_write;
+	config.reg_protect = rmem_protect;
 
 	return PTR_ERR_OR_ZERO(nvmem_register(&config));
 }
-- 
2.39.5



