Delivery-date: Thu, 17 Sep 2026 09:43:35 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x76mN-003690-0B
	for lore@lore.pengutronix.de;
	Thu, 17 Sep 2026 09:43:35 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xqm6kqEN;
	dkim=pass header.d=waldekranz-com.20251104.gappssmtp.com header.s=20251104 header.b=k1LofSxO;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 55CB820004A
	for <lore@pengutronix.de>; Thu, 17 Sep 2026 09:43:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EP8rwAF8ehCIKtl8fpa/pujDnvSaLsk4WnktK8YgLnc=; b=xqm6kqENFcwvATFXhEdqdkMf1D
	Q8hFihkE+f/Ai9oBjrDkwMliykCvhKBrQl3pVPMZtPDOk1jm/m6eRtPAJCBsN54NNHrtkOzRiGrtt
	LBejaxbcDt7tYgadF0mae0Tz7uxYl7OCUVCmqPBrIpiJzSI+6cBiQrLPm5iUoJ6R2phGg6VxQUayO
	cAfAYNouVXKHT3do604z7Rm15ieXTZ9xMu2Epftlb6QKw1ZvIGkTirHZ/zBRshDqkZohybF2X+Avc
	l+uFZ4W8qLAJinbwRaw2a8QrFw94wCowd+gIhkRHdPCDKccxfJNHuMy5ppVeKAHszVdx4ldDoeUMv
	JgiqQkow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x76l7-0000000AnEq-1Kb9;
	Thu, 17 Sep 2026 07:42:17 +0000
Received: from mail-ej2-x10.google.com ([2a00:1450:4864:34::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x76l2-0000000AnCa-3sEl
	for barebox@lists.infradead.org;
	Thu, 17 Sep 2026 07:42:15 +0000
Received: by mail-ej2-x10.google.com with SMTP id a640c23a62f3a-c254fa65080so75934966b.3
        for <barebox@lists.infradead.org>; Thu, 17 Sep 2026 00:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20251104.gappssmtp.com; s=20251104; t=1789630931; x=1790235731; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=EP8rwAF8ehCIKtl8fpa/pujDnvSaLsk4WnktK8YgLnc=;
        b=k1LofSxOHfdL3EHqpLSqxRCnPfmo83VO/OZjYSEZldwzDCxF/PavZUJkt7zVrmnfDn
         mBCey9I5GJVTvCoxMrq73vISOG1MZ7CrI37blxDYZJENbf+UjosRX97V9wO6TKXmOk01
         XtAivBPS9aH2gud5I1vBxjkzvx2gP0cZfGOYdmSzKSNSLTADXdttKg7CYiDX/aTypYzc
         qXPSg8gNosTp+loS3dLMPOwhHZ1HFzOKunK4SCYfahunLD9Cqo4x2dFEyOTArStW15gv
         N3mBLmg9jWocqVEZbQ90mjqLH8E7L1vvX2ZdmpboWLpEyJiAQepdUPfhr+ACANrItu2G
         3ZkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789630931; x=1790235731;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=EP8rwAF8ehCIKtl8fpa/pujDnvSaLsk4WnktK8YgLnc=;
        b=m6cMFGdlVzu973r7FlxZdE1aqvMoMp1AyocHXVKbW35CmJYeRQG2IiZC972OraQHte
         O3I80kHDQph+49g7u17Q6mZ7IuT4dzkFS3xLqbr6x2FmmZx4cQw09zaOVjNNGJAHCPBM
         Cy0sMluLZ9g5uAU9z7CC924LhW4zZ/X2uXRu7IYCyPHPZ0MfsKRptDW63TOdne7/YViL
         shZkUyABtSibmDHCSNeCXmTO1eG/GPX+OhfrQoiuVQibkMTRswkw3bTA5vLmqoykaG/Z
         +Ka5X6NdLhYqEcsqhGhyINssnWrpUIifsqUFyhJIdOK3XypOp0l41820qlR/5mTTt5AP
         QWaw==
X-Gm-Message-State: AFuF++maq+KzRxr81Qfbazy7cYK2+BqA1WVzyT9xL90HnQAHEgUJCPOV
	R567pyEFHxeZAy68gQWwyEpQuDfztQ9MKW9Au5RYzTFR6/W8drbLPJHMyfqrtQ86AFbIKItGrv9
	q0ew9
X-Gm-Gg: AYBFou00H5/JAMAByIsn/6tAv3HcNO6GmA5m9039bXrC4xwhe6DL335HXU5MCvVofST
	3P/Vgh39e9vjAJKSydibTPxwZyXHqXXlyW7qL3xX/WoW8UA90Gulmu8F5Jx8ou1nDFGpmhHFdys
	BnHQZ2Sx39na0OJIDmJLu1wQlB8wJRTK1BuWF9XyaW7QV/g5wb/EVprsdEUFh7SufEjUKfBNhoc
	I619Lyuv8xPefFXWPzRcD/LXhuYYGaeKKmO87MEifSKuKbhqNFcf2Op9Swp1QrLF2JJbkSXVOAc
	6RGVsoaR+PjH/fDIBFfo3jDuwdGaeE/29xGmtE5kt1ghS2HdYlZufXs/S5Lcnhvjpz/qriTncrO
	KmffxQgyeyd1/f1j7PnyymQfRzcB+cJbRHRJfdkeo/n976BqxNNTSJK9odZggaytU+7KyRIDy0I
	rvhu4yUBylc24hfiDbcfdinTkMMGgNjQ4NS09QleZED/e58Vfkk1IQIN+czb5LztooEDpduAmkR
	2OI5WKHfopEuRgyFZbj90JURt7JLQYptvbuMJEhN8OybJu0MPe/L+KknDMDYu0XgsXGYtGBu3II
	B2QcG4TCoRH0BM2ljFtUbQ==
X-Received: by 2002:a17:907:7242:b0:c29:3d59:7072 with SMTP id a640c23a62f3a-c29e5236cbdmr381520666b.16.1789630930017;
        Thu, 17 Sep 2026 00:42:10 -0700 (PDT)
Received: from spa.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c29de5e4ca9sm238865966b.42.2026.09.17.00.42.09
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 00:42:09 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Subject: [PATCH remotes/origin/next 1/5] dm: lvm: Initial Logical Volume Management support
Date: Thu, 17 Sep 2026 07:40:37 +0000
Message-ID: <20260917074202.3851071-2-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260917074202.3851071-1-tobias@waldekranz.com>
References: <20260917074202.3851071-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_004213_272080_ACB7D989 
X-CRM114-Status: GOOD (  28.45  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Add support for creating device mappings (previously added
    in the original device mapper series) based on information stored in LVM2
    metadata blocks. Initially, only linear mappings are supported. I.e., no
   RAID arrays or thin provisioning LVs, etc. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:34:0:0:0:10 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Stat-Signature: aemk1pawmro7rsic1ju5nhd97ao8po8w
X-Rspamd-Queue-Id: 55CB820004A
X-Spamd-Result: default: False [-5.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,waldekranz-com.20251104.gappssmtp.com:s=20251104];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[waldekranz.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:34::10:received];
	MIME_TRACE(0.00)[0:+];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tobias@waldekranz.com,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+,waldekranz-com.20251104.gappssmtp.com:+]
X-Rspamd-Action: no action

Add support for creating device mappings (previously added in the
original device mapper series) based on information stored in LVM2
metadata blocks.

Initially, only linear mappings are supported. I.e., no RAID arrays or
thin provisioning LVs, etc.

This means that Barebox can then access the filesystems (typically, or
whatever data) stored on these logical volumes.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 drivers/block/dm/Kconfig        |  10 +
 drivers/block/dm/Makefile       |   1 +
 drivers/block/dm/lvm/Makefile   |   2 +
 drivers/block/dm/lvm/lvm-core.c | 714 ++++++++++++++++++++++++++++++++
 drivers/block/dm/lvm/lvm-md.c   | 423 +++++++++++++++++++
 drivers/block/dm/lvm/lvm-md.h   | 109 +++++
 drivers/block/dm/lvm/lvm2.h     |  79 ++++
 include/lvm.h                   | 100 +++++
 8 files changed, 1438 insertions(+)
 create mode 100644 drivers/block/dm/lvm/Makefile
 create mode 100644 drivers/block/dm/lvm/lvm-core.c
 create mode 100644 drivers/block/dm/lvm/lvm-md.c
 create mode 100644 drivers/block/dm/lvm/lvm-md.h
 create mode 100644 drivers/block/dm/lvm/lvm2.h
 create mode 100644 include/lvm.h

diff --git a/drivers/block/dm/Kconfig b/drivers/block/dm/Kconfig
index 93f29c84a1..35f1cbcf99 100644
--- a/drivers/block/dm/Kconfig
+++ b/drivers/block/dm/Kconfig
@@ -18,3 +18,13 @@ config DM_BLK_VERITY
 	help
 	  Transparent integrity checking of underlying device using a
 	  pre-computed Merkle tree.
+
+config DM_LVM
+	bool "LVM2 support"
+	depends on DM_BLK_LINEAR
+	select QSORT
+	help
+	  Support for the Logical Volume Manager (LVM2) on-disk format.
+	  Parses the metadata of physical volumes to assemble volume
+	  groups and lets logical volumes be activated as device mapper
+	  devices. Only linear logical volumes are currently supported.
diff --git a/drivers/block/dm/Makefile b/drivers/block/dm/Makefile
index 3650f4c856..d3d8a87d05 100644
--- a/drivers/block/dm/Makefile
+++ b/drivers/block/dm/Makefile
@@ -2,3 +2,4 @@
 obj-$(CONFIG_DM_BLK) += dm-core.o
 obj-$(CONFIG_DM_BLK_LINEAR) += dm-linear.o
 obj-$(CONFIG_DM_BLK_VERITY) += dm-verity.o
+obj-$(CONFIG_DM_LVM) += lvm/
diff --git a/drivers/block/dm/lvm/Makefile b/drivers/block/dm/lvm/Makefile
new file mode 100644
index 0000000000..b85f2714d1
--- /dev/null
+++ b/drivers/block/dm/lvm/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-y += lvm-core.o lvm-md.o
diff --git a/drivers/block/dm/lvm/lvm-core.c b/drivers/block/dm/lvm/lvm-core.c
new file mode 100644
index 0000000000..befa534815
--- /dev/null
+++ b/drivers/block/dm/lvm/lvm-core.c
@@ -0,0 +1,714 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2026 Tobias Waldekranz <tobias@waldekranz.com>
+
+#include <block.h>
+#include <disks.h>
+#include <driver.h>
+#include <lvm.h>
+#include <qsort.h>
+#include <stdio.h>
+#include <string.h>
+#include <xfuncs.h>
+
+#include <asm/unaligned.h>
+
+#include <linux/ctype.h>
+#include <linux/err.h>
+#include <linux/kernel.h>
+#include <linux/sprintf.h>
+#include <linux/types.h>
+
+#include "lvm2.h"
+#include "lvm-md.h"
+
+struct lvm_pv_priv {
+	struct lvm_pv pv;
+
+	struct cdev *cdev;
+
+	/* Only populated for a standalone PV returned by lvm_pv_alloc();
+	 * the PVs hanging off a VG share the originating PV's metadata.
+	 */
+	char *text;
+	struct lvm_md *md;
+};
+#define to_pv_priv(_pv)	container_of((_pv), struct lvm_pv_priv, pv)
+
+struct lvm_seg {
+	struct lvm_pv *pv;
+
+	sector_t start;		/* logical start, in sectors */
+	blkcnt_t len;		/* in sectors */
+	sector_t phys;		/* physical start on the PV, in sectors */
+};
+
+struct lvm_lv_priv {
+	struct lvm_lv lv;
+
+	struct lvm_seg *segs;
+	size_t num_segs;
+};
+#define to_lv_priv(_lv)	container_of((_lv), struct lvm_lv_priv, lv)
+
+static void lvm_uuid_strcpy(char dst[LVM_UUID_LEN + 1], const char *src, size_t len)
+{
+	size_t i = 0;
+
+	while (len-- && i < LVM_UUID_LEN) {
+		if (isalnum(*src))
+			dst[i++] = *src;
+		src++;
+	}
+	dst[i] = '\0';
+}
+
+/* Look for a valid LVM2 label in any of the first 4 sectors of cdev,
+ * return the first one found along with the offset to the PV header.
+ */
+static int lvm_read_label(struct cdev *cdev, u8 *sector, u32 *pv_offset)
+{
+	struct lvm2_label *label = (void *)sector;
+	int s;
+
+	for (s = 0; s < LVM2_LABEL_SCAN_SECTORS; s++) {
+		if (cdev_read(cdev, sector, SECTOR_SIZE,
+			      (loff_t)s << SECTOR_SHIFT, 0) != SECTOR_SIZE)
+			return -EIO;
+
+		if (memcmp(label->id, LVM2_LABEL_ID, sizeof(label->id)))
+			continue;
+
+		/* A label that was copied or relocated says it lives
+		 * somewhere else, and must not be used.
+		 */
+		if (get_unaligned_le64(&label->sector) != (u64)s)
+			continue;
+
+		/* The CRC covers everything after the crc field itself. */
+		if (lvm2_crc(&label->pv_offset,
+			     SECTOR_SIZE - offsetof(struct lvm2_label, pv_offset))
+		    != get_unaligned_le32(&label->crc))
+			continue;
+
+		if (memcmp(label->type, LVM2_LABEL_TYPE, sizeof(label->type)))
+			continue;
+
+		*pv_offset = get_unaligned_le32(&label->pv_offset);
+		if (*pv_offset >= SECTOR_SIZE - sizeof(struct lvm2_pv_header))
+			continue;
+
+		return 0;
+	}
+
+	return -ENOENT;
+}
+
+/* Read the committed text metadata document from one metadata area,
+ * validating its checksum. Returns a NUL-terminated, freshly allocated
+ * buffer and its length, or an error.
+ */
+static int lvm_read_mda(struct cdev *cdev, u64 mda_offset, u64 mda_size,
+			char **textp, size_t *lenp)
+{
+	struct lvm2_md_header *hdr;
+	struct lvm2_md_area *area;
+	u8 hbuf[SECTOR_SIZE];
+	u64 off, size, wrap;
+	char *text;
+	u32 flags;
+
+	if (cdev_read(cdev, hbuf, sizeof(hbuf), mda_offset, 0) != sizeof(hbuf))
+		return -EIO;
+
+	hdr = (void *)hbuf;
+	if (memcmp(hdr->magic, LVM2_MDA_MAGIC, sizeof(hdr->magic)))
+		return -EILSEQ;
+
+	/* The checksum covers the whole header, i.e. the raw location
+	 * descriptors as well, but not the checksum itself.
+	 */
+	if (lvm2_crc(hdr->magic, SECTOR_SIZE - offsetof(struct lvm2_md_header, magic))
+	    != get_unaligned_le32(&hdr->checksum))
+		return -EILSEQ;
+
+	if (get_unaligned_le32(&hdr->version) != LVM2_MDA_VERSION)
+		return -ENOTSUPP;
+
+	/* The first descriptor points at the committed metadata. Any
+	 * further ones describe a document that LVM was in the middle
+	 * of committing, which we have no business activating.
+	 */
+	area = &hdr->area[0];
+	off = get_unaligned_le64(&area->offset);
+	size = get_unaligned_le64(&area->size);
+	flags = get_unaligned_le32(&area->flags);
+
+	if (!size || (flags & LVM2_RAW_LOCN_IGNORED))
+		return -ENOENT;
+
+	/* The metadata lives in a ring buffer that starts right after
+	 * the header, and a document may wrap around the end of it.
+	 */
+	if (off < SECTOR_SIZE || off >= mda_size || size > mda_size)
+		return -EILSEQ;
+
+	text = malloc(size + 1);
+	if (!text)
+		return -ENOMEM;
+
+	if (off + size > mda_size) {
+		wrap = mda_size - off;
+		if (cdev_read(cdev, text, wrap, mda_offset + off, 0) != (ssize_t)wrap)
+			goto err_free_text;
+		if (cdev_read(cdev, text + wrap, size - wrap, mda_offset + SECTOR_SIZE, 0)
+		    != (ssize_t)(size - wrap))
+			goto err_free_text;
+	} else {
+		if (cdev_read(cdev, text, size, mda_offset + off, 0) != (ssize_t)size)
+			goto err_free_text;
+	}
+
+	if (lvm2_crc(text, size) != get_unaligned_le32(&area->checksum))
+		goto err_free_text;
+
+	text[size] = '\0';
+	*textp = text;
+	*lenp = size;
+	return 0;
+
+err_free_text:
+	free(text);
+	return -EILSEQ;
+}
+
+/* Read label + pv_header + committed metadata from cdev. On success
+ * the raw 32-byte PV uuid is returned in uuid[] along with the parsed
+ * metadata document.
+ */
+static int lvm_pv_probe(struct cdev *cdev, char uuid[LVM_UUID_LEN + 1],
+			char **textp, struct lvm_md **mdp)
+{
+	u64 mda_off[8], mda_size[8];
+	struct lvm2_pv_header *pvh;
+	int err, i, num_mda = 0;
+	struct lvm2_area *area;
+	u8 sector[SECTOR_SIZE];
+	u32 pv_offset;
+	char *text;
+	size_t len;
+
+	err = lvm_read_label(cdev, sector, &pv_offset);
+	if (err)
+		return err;
+
+	pvh = (void *)(sector + pv_offset);
+	lvm_uuid_strcpy(uuid, (char *)pvh->uuid, sizeof(pvh->uuid));
+
+	/* Layout is:
+	 *
+	 * [DATA-AREA-0]
+	 * ...
+	 * [DATA-AREA-N]
+	 * [ZERO-AREA  ]
+	 * [META-AREA-0]
+	 * ...
+	 * [META-AREA-N]
+	 * [ZERO-AREA  ]
+	 *
+	 * Start by seeking past the data-areas list...
+	 */
+	for (area = pvh->area;
+	     (u8 *)(area + 1) <= sector + SECTOR_SIZE
+		     && get_unaligned_le64(&area->offset);
+	     area++)
+		;
+
+	/*  ...and then the zero separator, to find the meta-areas. */
+	for (area++;
+	     (u8 *)(area + 1) <= sector + SECTOR_SIZE
+		     && num_mda < (int)ARRAY_SIZE(mda_off);
+	     area++) {
+		mda_off[num_mda] = get_unaligned_le64(&area->offset);
+		mda_size[num_mda] = get_unaligned_le64(&area->size);
+		if (!mda_off[num_mda])
+			break;
+
+		num_mda++;
+	}
+
+	if (!num_mda)
+		return -ENOENT;
+
+	for (i = 0; i < num_mda; i++) {
+		err = lvm_read_mda(cdev, mda_off[i], mda_size[i], &text, &len);
+		if (err)
+			continue;
+
+		err = lvm_md_parse_alloc(text, len, mdp);
+		if (err) {
+			free(text);
+			continue;
+		}
+
+		*textp = text;
+		return 0;
+	}
+
+	return -EILSEQ;
+}
+
+static int lvm_pv_alloc(struct cdev *cdev, struct lvm_pv **pvptr)
+{
+	struct lvm_pv_priv *pvp;
+	int err;
+
+	pvp = xzalloc(sizeof(*pvp));
+	pvp->cdev = cdev;
+
+	err = lvm_pv_probe(cdev, pvp->pv.uuid, &pvp->text, &pvp->md);
+	if (err) {
+		free(pvp);
+		return err;
+	}
+
+	*pvptr = &pvp->pv;
+	return 0;
+}
+
+static void lvm_pv_free(struct lvm_pv *pv)
+{
+	struct lvm_pv_priv *pvp;
+
+	if (!pv)
+		return;
+
+	pvp = to_pv_priv(pv);
+	lvm_md_free(pvp->md);
+	free(pvp->text);
+	free(pvp->pv.name);
+	free(pvp);
+}
+
+static struct cdev *lvm_cdev_by_uuid(const char *uuid)
+{
+	char found[LVM_UUID_LEN + 1];
+	struct lvm2_pv_header *pvh;
+	u8 sector[SECTOR_SIZE];
+	struct cdev *cdev;
+	u32 pv_offset;
+
+	for_each_cdev(cdev) {
+		if (!cdev_is_block_device(cdev))
+			continue;
+
+		if (lvm_read_label(cdev, sector, &pv_offset))
+			continue;
+
+		pvh = (void *)(sector + pv_offset);
+		lvm_uuid_strcpy(found, (char *)pvh->uuid, sizeof(pvh->uuid));
+
+		if (!strcmp(found, uuid))
+			return cdev;
+	}
+
+	return NULL;
+}
+
+static struct lvm_pv *lvm_vg_add_pv(struct lvm_vg *vg, const struct lvm_md *md,
+				    const lvm_tok_t *pvkey, struct lvm_pv *origin)
+{
+	const lvm_tok_t *id, *pvsect = lvm_md_val(md, pvkey);
+	struct lvm_pv_priv *pvp;
+	struct lvm_pv *pv;
+	u64 v;
+
+	if (!pvsect || pvsect->type != LVM_TOK_SECTION)
+		return NULL;
+
+	pvp = xzalloc(sizeof(*pvp));
+	pv = &pvp->pv;
+	pv->vg = vg;
+	pv->name = lvm_md_tok_xstrdup(md, pvkey);
+
+	id = lvm_md_find(md, pvsect, "id");
+	if (id && id->type == LVM_TOK_STRING)
+		lvm_uuid_strcpy(pv->uuid, md->text + id->start, id->end - id->start);
+
+	if (!lvm_md_u64(md, pvsect, "dev_size", &v))
+		pv->dev_size = v;
+	if (!lvm_md_u64(md, pvsect, "pe_start", &v))
+		pv->pe_start = v;
+	if (!lvm_md_u64(md, pvsect, "pe_count", &v))
+		pv->pe_count = v;
+
+	/* The originating PV's device is known for free. Any other
+	 * PVs are resolved later via lvm_pv_cdev().
+	 */
+	if (origin && !strcmp(pv->uuid, origin->uuid))
+		pvp->cdev = to_pv_priv(origin)->cdev;
+
+	vg->pvs = xrealloc(vg->pvs, (vg->num_pvs + 1) * sizeof(*vg->pvs));
+	vg->pvs[vg->num_pvs++] = pv;
+	return pv;
+}
+
+static struct lvm_pv *lvm_vg_pv_by_name(struct lvm_vg *vg, const char *name,
+					size_t len)
+{
+	size_t i;
+
+	for (i = 0; i < vg->num_pvs; i++) {
+		if (!strncmp(vg->pvs[i]->name, name, len) &&
+		    vg->pvs[i]->name[len] == '\0')
+			return vg->pvs[i];
+	}
+
+	return NULL;
+}
+
+/* Parse one segment of an LV. Returns 0 on a supported (linear)
+ * segment, or a negative error for anything we cannot map.
+ */
+static int lvm_lv_add_seg(struct lvm_lv_priv *lpriv, struct lvm_vg *vg,
+			  const struct lvm_md *md, const lvm_tok_t *segsect)
+{
+	u64 pe_count, pe_start, pe_offset, stripe_count;
+	const lvm_tok_t *stripes, *pvtok, *offtok;
+	struct lvm_seg *seg;
+	struct lvm_pv *pv;
+	char *type;
+	int err;
+
+	type = lvm_md_strdup(md, segsect, "type");
+	if (!type)
+		return -EINVAL;
+
+	if (lvm_md_u64(md, segsect, "start_extent", &pe_start) ||
+	    lvm_md_u64(md, segsect, "extent_count", &pe_count)) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	err = -ENOTSUPP;
+
+	if (strcmp(type, "striped") ||
+	    lvm_md_u64(md, segsect, "stripe_count", &stripe_count) ||
+	    stripe_count != 1)
+		goto out;
+
+	stripes = lvm_md_find(md, segsect, "stripes");
+	if (!stripes || stripes->type != LVM_TOK_ARRAY)
+		goto out;
+
+	pvtok = lvm_md_first(md, stripes);
+	offtok = pvtok ? lvm_md_next(md, stripes, pvtok) : NULL;
+	if (!pvtok || !offtok || lvm_md_tok_u64(md, offtok, &pe_offset))
+		goto out;
+
+	pv = lvm_vg_pv_by_name(vg, md->text + pvtok->start,
+			       pvtok->end - pvtok->start);
+	if (!pv)
+		goto out;
+
+	seg = &lpriv->segs[lpriv->num_segs++];
+	seg->pv = pv;
+	seg->start = pe_start * vg->pe_size;
+	seg->len = pe_count * vg->pe_size;
+	seg->phys = pv->pe_start + pe_offset * vg->pe_size;
+	lpriv->lv.size += seg->len;
+	err = 0;
+out:
+	free(type);
+	return err;
+}
+
+static int lvm_seg_cmp(const void *_sega, const void *_segb)
+{
+	const struct lvm_seg *sega = _sega, *segb = _segb;
+
+	if (sega->start < segb->start)
+		return -1;
+	if (sega->start > segb->start)
+		return 1;
+	return 0;
+}
+
+static void lvm_vg_add_lv(struct lvm_vg *vg, const struct lvm_md *md,
+			  const lvm_tok_t *lvkey)
+{
+	const lvm_tok_t *id, *lvsect = lvm_md_val(md, lvkey);
+	struct lvm_lv_priv *lvp;
+	const lvm_tok_t *seg;
+	struct lvm_lv *lv;
+	u64 num_segs = 0;
+	int i;
+
+	if (!lvsect || lvsect->type != LVM_TOK_SECTION)
+		return;
+
+	lvp = xzalloc(sizeof(*lvp));
+	lv = &lvp->lv;
+	lv->vg = vg;
+	lv->type = LVM_LV_LINEAR;
+	lv->name = lvm_md_tok_xstrdup(md, lvkey);
+
+	id = lvm_md_find(md, lvsect, "id");
+	if (id && id->type == LVM_TOK_STRING)
+		lvm_uuid_strcpy(lv->uuid, md->text + id->start, id->end - id->start);
+
+	lvm_md_u64(md, lvsect, "segment_count", &num_segs);
+	if (num_segs)
+		lvp->segs = xzalloc(num_segs * sizeof(*lvp->segs));
+
+	for (i = 1; i <= (int)num_segs; i++) {
+		seg = lvm_md_findf(md, lvsect, "segment%d", i);
+		if (!seg || seg->type != LVM_TOK_SECTION ||
+		    lvm_lv_add_seg(lvp, vg, md, seg)) {
+			/* Unsupported mapping: keep the LV visible but
+			 * mark it so that activation is refused.
+			 */
+			lv->type = LVM_LV_UNKNOWN;
+			break;
+		}
+	}
+
+	if (lv->type == LVM_LV_LINEAR && lvp->num_segs)
+		qsort(lvp->segs, lvp->num_segs, sizeof(*lvp->segs),
+		      lvm_seg_cmp);
+
+	vg->lvs = xrealloc(vg->lvs, (vg->num_lvs + 1) * sizeof(*vg->lvs));
+	vg->lvs[vg->num_lvs++] = lv;
+}
+
+static int lvm_vg_alloc(struct lvm_pv *pv, struct lvm_vg **vgp)
+{
+	const lvm_tok_t *vgsect, *vgkey, *pvs, *lvs, *key;
+	struct lvm_pv_priv *priv = to_pv_priv(pv);
+	const struct lvm_md *md = priv->md;
+	struct lvm_vg *vg;
+	char *id;
+	u64 v;
+
+	if (!md)
+		return -EINVAL;
+
+	vgsect = lvm_md_vgsect(md, &vgkey);
+	if (!vgsect)
+		return -EINVAL;
+
+	vg = xzalloc(sizeof(*vg));
+	vg->name = lvm_md_tok_xstrdup(md, vgkey);
+
+	if (!lvm_md_u64(md, vgsect, "seqno", &v))
+		vg->seqno = v;
+	if (!lvm_md_u64(md, vgsect, "extent_size", &v))
+		vg->pe_size = v;
+
+	id = lvm_md_strdup(md, vgsect, "id");
+	if (id) {
+		lvm_uuid_strcpy(vg->uuid, id, strlen(id));
+		free(id);
+	}
+
+	pvs = lvm_md_find(md, vgsect, "physical_volumes");
+	if (pvs && pvs->type == LVM_TOK_SECTION) {
+		lvm_md_for_each(md, key, pvs)
+			lvm_vg_add_pv(vg, md, key, pv);
+	}
+
+	lvs = lvm_md_find(md, vgsect, "logical_volumes");
+	if (lvs && lvs->type == LVM_TOK_SECTION) {
+		lvm_md_for_each(md, key, lvs)
+			lvm_vg_add_lv(vg, md, key);
+	}
+
+	*vgp = vg;
+	return 0;
+}
+
+void lvm_vg_free(struct lvm_vg *vg)
+{
+	size_t i;
+
+	if (!vg)
+		return;
+
+	for (i = 0; i < vg->num_lvs; i++) {
+		struct lvm_lv_priv *lvp = to_lv_priv(vg->lvs[i]);
+
+		free((char *)lvp->lv.name);
+		free(lvp->segs);
+		free(lvp);
+	}
+	free(vg->lvs);
+
+	for (i = 0; i < vg->num_pvs; i++) {
+		struct lvm_pv_priv *ppriv = to_pv_priv(vg->pvs[i]);
+
+		free(ppriv->pv.name);
+		free(ppriv);
+	}
+	free(vg->pvs);
+
+	free((char *)vg->name);
+	free(vg);
+}
+
+struct cdev *lvm_pv_cdev(struct lvm_pv *pv)
+{
+	struct lvm_pv_priv *pvp = to_pv_priv(pv);
+
+	/* Resolve and cache the backing device on first use. */
+	if (!pvp->cdev)
+		pvp->cdev = lvm_cdev_by_uuid(pv->uuid);
+
+	return pvp->cdev;
+}
+
+struct lvm_lv *lvm_vg_lv_by_name(struct lvm_vg *vg, const char *name)
+{
+	size_t i;
+
+	for (i = 0; i < vg->num_lvs; i++) {
+		if (!strcmp(vg->lvs[i]->name, name))
+			return vg->lvs[i];
+	}
+
+	return NULL;
+}
+
+char *lvm_lv_dm_ctable(struct lvm_lv *lv)
+{
+	struct lvm_lv_priv *lvp = to_lv_priv(lv);
+	char *table = NULL;
+	struct lvm_seg *s;
+	struct cdev *cdev;
+	size_t i;
+
+	if (lv->type != LVM_LV_LINEAR)
+		return ERR_PTR(-ENOTSUPP);
+
+	for (i = 0, s = lvp->segs; i < lvp->num_segs; i++, s++) {
+		cdev = s->pv ? lvm_pv_cdev(s->pv) : NULL;
+		if (!cdev) {
+			free(table);
+			return ERR_PTR(-ENODEV);
+		}
+
+		table = xrasprintf(table, "%llu %llu linear /dev/%s %llu\n",
+				   (u64)s->start, (u64)s->len,
+				   cdev_name(cdev), (u64)s->phys);
+	}
+
+	if (!table)
+		return ERR_PTR(-EINVAL);
+
+	return table;
+}
+
+struct lvm_vg_iter {
+	struct lvm_vg **vgs;
+	int num, cur;
+};
+
+void lvm_vg_iter_free(struct lvm_vg_iter *iter)
+{
+	for (; iter->cur < iter->num; iter->cur++)
+		lvm_vg_free(iter->vgs[iter->cur]);
+
+	free(iter->vgs);
+	free(iter);
+}
+
+struct lvm_vg *lvm_vg_iter_next(struct lvm_vg_iter *iter)
+{
+	if (iter->cur >= iter->num)
+		return NULL;
+
+	return iter->vgs[iter->cur++];
+}
+
+struct lvm_vg_iter *lvm_vg_iter_new(void)
+{
+	struct lvm_vg_iter *iter;
+	struct cdev *cdev;
+	struct lvm_pv *pv;
+	struct lvm_vg *vg;
+	int err, i;
+
+	iter = xzalloc(sizeof(*iter));
+
+	for_each_cdev(cdev) {
+		if (!cdev_is_block_device(cdev))
+			continue;
+
+		if (lvm_pv_alloc(cdev, &pv))
+			continue;
+
+		err = lvm_vg_alloc(pv, &vg);
+		lvm_pv_free(pv);
+		if (err)
+			continue;
+
+		for (i = 0; i < iter->num; i++) {
+			/* Use the most recently updated VG metadata
+			 * when multiple versions are available.
+			 */
+			if (strcmp(vg->uuid, iter->vgs[i]->uuid))
+				continue;
+
+			if (vg->seqno > iter->vgs[i]->seqno) {
+				lvm_vg_free(iter->vgs[i]);
+				iter->vgs[i] = vg;
+			}
+
+			goto next;
+		}
+
+		iter->vgs = xrealloc(iter->vgs, (iter->num + 1) * sizeof(*iter->vgs));
+		iter->vgs[iter->num++] = vg;
+next:
+	}
+
+	return iter;
+}
+
+int lvm_vg_alloc_by_name(const char *name, struct lvm_vg **vgp)
+{
+	struct lvm_vg_iter *iter;
+	struct lvm_vg *vg;
+
+	iter = lvm_vg_iter_new();
+	while ((vg = lvm_vg_iter_next(iter))) {
+		if (!strcmp(vg->name, name)) {
+			lvm_vg_iter_free(iter);
+			*vgp = vg;
+			return 0;
+		}
+	}
+
+	lvm_vg_iter_free(iter);
+	return -ENOENT;
+}
+
+int lvm_vg_alloc_by_cdev(struct cdev *cdev, struct lvm_vg **vgp)
+{
+	struct lvm_pv *pv;
+	struct lvm_vg *vg;
+	int err;
+
+	if (!cdev_is_block_device(cdev))
+		return -EINVAL;
+
+	err = lvm_pv_alloc(cdev, &pv);
+	if (err)
+		return err;
+
+	err = lvm_vg_alloc(pv, &vg);
+	lvm_pv_free(pv);
+	if (err)
+		return err;
+
+	*vgp = vg;
+	return 0;
+}
diff --git a/drivers/block/dm/lvm/lvm-md.c b/drivers/block/dm/lvm/lvm-md.c
new file mode 100644
index 0000000000..6b183193e0
--- /dev/null
+++ b/drivers/block/dm/lvm/lvm-md.c
@@ -0,0 +1,423 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2026 Tobias Waldekranz <tobias@waldekranz.com>
+
+#include <stdio.h>
+#include <string.h>
+#include <xfuncs.h>
+
+#include <linux/kstrtox.h>
+
+#include "lvm-md.h"
+
+struct lvm_md_parser {
+	const char *text;
+	size_t len;
+	size_t pos;
+
+	lvm_tok_t *toks;
+	int next;
+
+	int super;	/* Index of the current container (section/array) */
+	int key;	/* Index of the most recent key in the current section */
+	bool value;	/* An '=' was seen; the next scalar/array is its value */
+};
+
+static int lvm_md_tok_new(struct lvm_md_parser *p, enum lvm_tok_type type, int start)
+{
+	lvm_tok_t *t;
+
+	p->toks = xrealloc(p->toks, (p->next + 1) * sizeof(*p->toks));
+
+	t = &p->toks[p->next];
+	t->type = type;
+	t->start = start;
+	t->end = -1;
+	t->size = 0;
+	t->parent = -1;
+	return p->next++;
+}
+
+static void lvm_md_link(struct lvm_md_parser *p, int idx)
+{
+	lvm_tok_t *t = &p->toks[idx];
+
+	if (p->super >= 0 && p->toks[p->super].type == LVM_TOK_ARRAY) {
+		t->parent = p->super;
+		p->toks[p->super].size++;
+	} else if (p->value) {
+		t->parent = p->key;
+		p->value = false;
+		p->key = -1;
+	} else {
+		t->parent = p->super;
+		if (p->super >= 0)
+			p->toks[p->super].size++;
+		p->key = idx;
+	}
+}
+
+static int lvm_md_parse_string(struct lvm_md_parser *p)
+{
+	int idx, start;
+
+	/* Skip opening quote */
+	start = p->pos + 1;
+
+	for (p->pos++; p->pos < p->len; p->pos++) {
+		char c = p->text[p->pos];
+
+		if (c == '\\' && p->pos + 1 < p->len) {
+			p->pos++;
+			continue;
+		}
+		if (c == '"') {
+			idx = lvm_md_tok_new(p, LVM_TOK_STRING, start);
+			p->toks[idx].end = p->pos;
+			lvm_md_link(p, idx);
+			return 0;
+		}
+	}
+
+	/* Unterminated string */
+	return -EINVAL;
+}
+
+static bool lvm_md_is_primchar(char c)
+{
+	switch (c) {
+	case '0'...'9':
+	case 'a'...'z':
+	case 'A'...'Z':
+	case '.':
+	case '_':
+	case '-':
+	case '+':
+		return true;
+	}
+
+	return false;
+}
+
+static int lvm_md_parse_primitive(struct lvm_md_parser *p)
+{
+	int start = p->pos;
+	int idx;
+
+	while (p->pos < p->len && lvm_md_is_primchar(p->text[p->pos]))
+		p->pos++;
+
+	idx = lvm_md_tok_new(p, LVM_TOK_PRIMITIVE, start);
+	p->toks[idx].end = p->pos;
+	lvm_md_link(p, idx);
+
+	/* Reexamine the delimiter in the main loop */
+	p->pos--;
+	return 0;
+}
+
+static int lvm_md_parse(struct lvm_md_parser *p)
+{
+	int idx, s, par;
+	int err;
+
+	/* Implicit anonymous root section. */
+	idx = lvm_md_tok_new(p, LVM_TOK_SECTION, 0);
+	p->toks[idx].end = p->len;
+	p->super = idx;
+	p->key = -1;
+	p->value = false;
+
+	for (; p->pos < p->len; p->pos++) {
+		char c = p->text[p->pos];
+
+		switch (c) {
+		case ' ':
+		case '\t':
+		case '\r':
+		case '\n':
+		case ',':
+			break;
+		case '#':
+			while (p->pos < p->len && p->text[p->pos] != '\n')
+				p->pos++;
+			break;
+		case '\0':
+			/* A NUL terminates the document */
+			p->pos = p->len;
+			break;
+		case '"':
+			err = lvm_md_parse_string(p);
+			if (err)
+				return err;
+			break;
+		case '=':
+			if (p->key < 0)
+				return -EINVAL;
+			p->value = true;
+			break;
+		case '{':
+			/* The preceding key names this section. */
+			if (p->key < 0)
+				return -EINVAL;
+			idx = lvm_md_tok_new(p, LVM_TOK_SECTION, p->pos);
+			p->toks[idx].parent = p->key;
+			p->super = idx;
+			p->key = -1;
+			p->value = false;
+			break;
+		case '[':
+			idx = lvm_md_tok_new(p, LVM_TOK_ARRAY, p->pos);
+			lvm_md_link(p, idx);
+			p->super = idx;
+			p->key = -1;
+			p->value = false;
+			break;
+		case '}':
+		case ']':
+			s = p->super;
+			if (s < 0 || p->value)
+				return -EINVAL;
+			if (p->toks[s].type !=
+			    (c == '}' ? LVM_TOK_SECTION : LVM_TOK_ARRAY))
+				return -EINVAL;
+			p->toks[s].end = p->pos + 1;
+
+			/* Pop back to the enclosing container. The token
+			 * just closed hangs off either a key (the common
+			 * case) or directly off an enclosing array.
+			 */
+			par = p->toks[s].parent;
+			if (par >= 0 && p->toks[par].type == LVM_TOK_ARRAY)
+				p->super = par;
+			else
+				p->super = (par >= 0) ? p->toks[par].parent : -1;
+			p->key = -1;
+			p->value = false;
+			break;
+		default:
+			if (!lvm_md_is_primchar(c))
+				return -EINVAL;
+
+			err = lvm_md_parse_primitive(p);
+			if (err)
+				return err;
+			break;
+		}
+	}
+
+	if (p->super != 0 || p->value)
+		return -EINVAL;	/* Unbalanced braces or dangling '=' */
+
+	return p->next;
+}
+
+int lvm_md_parse_alloc(const char *text, size_t len, struct lvm_md **mdp)
+{
+	struct lvm_md_parser p = {
+		.text = text,
+		.len = len,
+	};
+	struct lvm_md *md;
+	int ret;
+
+	ret = lvm_md_parse(&p);
+	if (ret < 0) {
+		free(p.toks);
+		return ret;
+	}
+
+	md = xzalloc(sizeof(*md));
+	md->text = text;
+	md->tokens = p.toks;
+	md->num_tokens = p.next;
+
+	*mdp = md;
+	return 0;
+}
+
+void lvm_md_free(struct lvm_md *md)
+{
+	if (!md)
+		return;
+
+	free(md->tokens);
+	free(md);
+}
+
+const lvm_tok_t *lvm_md_vgsect(const struct lvm_md *md, const lvm_tok_t **keyp)
+{
+	const lvm_tok_t *key, *val;
+
+	lvm_md_for_each(md, key, &md->tokens[0]) {
+		val = lvm_md_val(md, key);
+		if (val && val->type == LVM_TOK_SECTION) {
+			if (keyp)
+				*keyp = key;
+			return val;
+		}
+	}
+
+	return NULL;
+}
+
+static bool lvm_md_tok_eq(const struct lvm_md *md, const lvm_tok_t *tok, const char *str)
+{
+	size_t len = tok->end - tok->start;
+
+	return strlen(str) == len && !strncmp(md->text + tok->start, str, len);
+}
+
+static const lvm_tok_t *lvm_md_skip(const struct lvm_md *md, const lvm_tok_t *tok)
+{
+	const lvm_tok_t *end = md->tokens + md->num_tokens;
+	int max = tok->end;
+
+	do {
+		tok++;
+	} while (tok < end && tok->start < max);
+
+	return (tok < end) ? tok : NULL;
+}
+
+const lvm_tok_t *lvm_md_first(const struct lvm_md *md, const lvm_tok_t *parent)
+{
+	if (!parent)
+		return NULL;
+	if (parent->type != LVM_TOK_SECTION && parent->type != LVM_TOK_ARRAY)
+		return NULL;
+	if (parent->size == 0)
+		return NULL;
+	if (parent + 1 >= md->tokens + md->num_tokens)
+		return NULL;
+
+	return parent + 1;
+}
+
+const lvm_tok_t *lvm_md_next(const struct lvm_md *md, const lvm_tok_t *parent,
+			     const lvm_tok_t *child)
+{
+	const lvm_tok_t *value, *next;
+
+	if (!parent || !child)
+		return NULL;
+
+	/* In a section a key is followed by its value subtree; in an
+	 * array the element is itself the value.
+	 */
+	value = (parent->type == LVM_TOK_SECTION) ? child + 1 : child;
+	if (value >= md->tokens + md->num_tokens)
+		return NULL;
+
+	next = lvm_md_skip(md, value);
+	if (!next || next->start >= parent->end)
+		return NULL;
+
+	return next;
+}
+
+const lvm_tok_t *lvm_md_val(const struct lvm_md *md, const lvm_tok_t *key)
+{
+	if (!key || key + 1 >= md->tokens + md->num_tokens)
+		return NULL;
+
+	return key + 1;
+}
+
+const lvm_tok_t *lvm_md_find(const struct lvm_md *md, const lvm_tok_t *sec,
+			     const char *key)
+{
+	const lvm_tok_t *k;
+
+	if (!sec || sec->type != LVM_TOK_SECTION)
+		return NULL;
+
+	lvm_md_for_each(md, k, sec) {
+		if (lvm_md_tok_eq(md, k, key))
+			return lvm_md_val(md, k);
+	}
+
+	return NULL;
+}
+
+const lvm_tok_t *lvm_md_findf(const struct lvm_md *md, const lvm_tok_t *sec,
+			      const char *keyfmt, ...)
+{
+	const lvm_tok_t *k;
+	va_list ap;
+	char *key;
+
+	va_start(ap, keyfmt);
+	key = xvasprintf(keyfmt, ap);
+	va_end(ap);
+
+	k = lvm_md_find(md, sec, key);
+	free(key);
+	return k;
+}
+
+static bool lvm_md_tok_is_str(const lvm_tok_t *tok)
+{
+	return tok && (tok->type == LVM_TOK_STRING ||
+		       tok->type == LVM_TOK_PRIMITIVE);
+}
+
+static char *lvm_md_tok_strdup(const struct lvm_md *md, const lvm_tok_t *tok)
+{
+	int len;
+	char *s;
+
+	if (!lvm_md_tok_is_str(tok))
+		return NULL;
+
+	len = tok->end - tok->start;
+	s = malloc(len + 1);
+	if (!s)
+		return NULL;
+
+	memcpy(s, md->text + tok->start, len);
+	s[len] = '\0';
+	return s;
+}
+
+char *lvm_md_tok_xstrdup(const struct lvm_md *md, const lvm_tok_t *tok)
+{
+	char *cpy;
+
+	if (!lvm_md_tok_is_str(tok))
+		return NULL;
+
+	cpy = lvm_md_tok_strdup(md, tok);
+	if (!cpy)
+		panic("lvm: out of memory");
+
+	return cpy;
+}
+
+int lvm_md_tok_u64(const struct lvm_md *md, const lvm_tok_t *tok, u64 *out)
+{
+	char buf[32];
+	int len;
+
+	if (!lvm_md_tok_is_str(tok))
+		return -EINVAL;
+
+	len = tok->end - tok->start;
+	if (len <= 0 || len >= (int)sizeof(buf))
+		return -EINVAL;
+
+	memcpy(buf, md->text + tok->start, len);
+	buf[len] = '\0';
+	return kstrtou64(buf, 0, out);
+}
+
+char *lvm_md_strdup(const struct lvm_md *md, const lvm_tok_t *sec,
+		    const char *key)
+{
+	return lvm_md_tok_strdup(md, lvm_md_find(md, sec, key));
+}
+
+int lvm_md_u64(const struct lvm_md *md, const lvm_tok_t *sec,
+	       const char *key, u64 *out)
+{
+	return lvm_md_tok_u64(md, lvm_md_find(md, sec, key), out);
+}
diff --git a/drivers/block/dm/lvm/lvm-md.h b/drivers/block/dm/lvm/lvm-md.h
new file mode 100644
index 0000000000..3dd5ebaf2a
--- /dev/null
+++ b/drivers/block/dm/lvm/lvm-md.h
@@ -0,0 +1,109 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* SPDX-FileCopyrightText: 2026 Tobias Waldekranz <tobias@waldekranz.com> */
+
+#ifndef _LVM_MD_H
+#define _LVM_MD_H
+
+/*
+ * LVM metadata parser, modeled on the jsmn JSON tokenizer.
+ *
+ * The text metadata is a sequence of statements. A statement is
+ * either an assignment:
+ *
+ *	key = value
+ *
+ * where the value is a string ("..."), a primitive (a bare integer or
+ * identifier) or an array ([v0, v1, ...]); or a named section:
+ *
+ *	key { ... }
+ *
+ * whose body is itself a sequence of statements. Sections nest. The
+ * document as a whole is treated as the body of an implicit,
+ * anonymous root section, which is always tokens[0].
+ */
+enum lvm_tok_type {
+	LVM_TOK_UNDEFINED = 0,
+	LVM_TOK_SECTION,
+	LVM_TOK_ARRAY,
+	LVM_TOK_STRING,
+	LVM_TOK_PRIMITIVE,
+};
+
+typedef struct lvm_tok {
+	enum lvm_tok_type type;
+	int start;		/* Offset of first byte in text */
+	int end;		/* Offset one past the last byte in text */
+	int size;		/* # of child keys (section) or elements (array) */
+	int parent;		/* Index of parent token, -1 for the root */
+} lvm_tok_t;
+
+struct lvm_md {
+	const char *text;
+	lvm_tok_t *tokens;
+	size_t num_tokens;
+};
+
+/* Tokenize text into a dynamically allocated context. As tokens are
+ * represented as spans, text must remain valid for the lifetime of
+ * the returned context.
+ */
+int lvm_md_parse_alloc(const char *text, size_t len, struct lvm_md **md);
+void lvm_md_free(struct lvm_md *md);
+
+/* Return the only named section in the root, which describes the
+ * VG. The key token, holding the VG name, is returned in keyp.
+ */
+const lvm_tok_t *lvm_md_vgsect(const struct lvm_md *md, const lvm_tok_t **keyp);
+
+/* Return the value token belonging to key. */
+const lvm_tok_t *lvm_md_val(const struct lvm_md *md, const lvm_tok_t *key);
+
+/* Look up key in the section sec and return its value token, or
+ * NULL.
+ */
+const lvm_tok_t *lvm_md_find(const struct lvm_md *md, const lvm_tok_t *sec,
+			     const char *key);
+const lvm_tok_t *lvm_md_findf(const struct lvm_md *md, const lvm_tok_t *sec,
+			      const char *keyfmt, ...) __printf(3, 4);
+
+/* The first child of a section (its first key) or array (its first
+ * element), or NULL if empty.
+ */
+const lvm_tok_t *lvm_md_first(const struct lvm_md *md, const lvm_tok_t *parent);
+
+/* The child following child within parent, or NULL once exhausted.
+ * For a section, children are the keys; for an array, the elements.
+ */
+const lvm_tok_t *lvm_md_next(const struct lvm_md *md, const lvm_tok_t *parent,
+			     const lvm_tok_t *child);
+
+/* Iterate the keys of a section or the elements of an array. */
+#define lvm_md_for_each(_md, _child, _parent)				\
+	for ((_child) = lvm_md_first((_md), (_parent));			\
+	     (_child);							\
+	     (_child) = lvm_md_next((_md), (_parent), (_child)))
+
+/* Retrurn a copy of the text of a string/primitive value token, or
+ * NULL on error.
+ */
+char *lvm_md_tok_xstrdup(const struct lvm_md *md, const lvm_tok_t *tok);
+
+/* Parse a primitive (or string) value token as an unsigned
+ * integer.
+ */
+int lvm_md_tok_u64(const struct lvm_md *md, const lvm_tok_t *tok, u64 *out);
+
+/* Return a copy of key's value from sec, if available, otherwize
+ * NULL.
+ */
+char *lvm_md_strdup(const struct lvm_md *md, const lvm_tok_t *sec,
+		    const char *key);
+
+/* Return key's numerical value from sec in out, if available and
+ * properly formatted. Returns 0 on success, negative error code on
+ * error.
+ */
+int lvm_md_u64(const struct lvm_md *md, const lvm_tok_t *sec,
+	       const char *key, u64 *out);
+
+#endif	/* _LVM_MD_H */
diff --git a/drivers/block/dm/lvm/lvm2.h b/drivers/block/dm/lvm/lvm2.h
new file mode 100644
index 0000000000..313aa71b8e
--- /dev/null
+++ b/drivers/block/dm/lvm/lvm2.h
@@ -0,0 +1,79 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* SPDX-FileCopyrightText: 2026 Tobias Waldekranz <tobias@waldekranz.com> */
+
+#ifndef _LVM2_H
+#define _LVM2_H
+
+#include <linux/types.h>
+
+#define LVM2_LABEL_ID		"LABELONE"
+#define LVM2_LABEL_TYPE		"LVM2 001"
+#define LVM2_MDA_MAGIC		" LVM2 x[5A%r0N*>"
+#define LVM2_MDA_VERSION	1
+#define LVM2_LABEL_SCAN_SECTORS	4
+#define LVM2_RAW_LOCN_IGNORED	0x00000001
+
+struct lvm2_label {
+	u8     id[8];		/* LVM2_LABEL_ID */
+	__le64 sector;		/* Sector number of this label */
+	__le32 crc;
+	__le32 pv_offset;	/* Byte offset to pv_header within sector */
+	u8     type[8];		/* LVM2_LABEL_TYPE */
+} __packed;
+
+struct lvm2_area {
+	__le64 offset;
+	__le64 size;
+} __packed;
+
+struct lvm2_pv_header {
+	u8     uuid[32];
+	__le64 size;
+
+	/* Zero terminated list of data areas, followed by zero
+	 * terminated list of metadata areas.
+	 */
+	struct lvm2_area area[0];
+} __packed;
+
+struct lvm2_md_area {
+	__le64 offset;		/* Byte offset from start of MDA area */
+	__le64 size;		/* Includes trailing NUL */
+	__le32 checksum;
+	__le32 flags;
+} __packed;
+
+/* The CRC32 variant used to protect the label and the metadata, see
+ * lib/misc/crc.c in lvm2. Note the nonstandard initial value.
+ */
+static inline u32 lvm2_crc(const void *buf, size_t len)
+{
+	static const u32 tab[16] = {
+		0x00000000, 0x1db71064, 0x3b6e20c8, 0x26d930ac,
+		0x76dc4190, 0x6b6b51f4, 0x4db26158, 0x5005713c,
+		0xedb88320, 0xf00f9344, 0xd6d6a3e8, 0xcb61b38c,
+		0x9b64c2b0, 0x86d3d2d4, 0xa00ae278, 0xbdbdf21c,
+	};
+	u32 crc = 0xf597a6cf;
+	const u8 *p = buf;
+
+	while (len--) {
+		crc ^= *p++;
+		crc = (crc >> 4) ^ tab[crc & 0xf];
+		crc = (crc >> 4) ^ tab[crc & 0xf];
+	}
+
+	return crc;
+}
+
+struct lvm2_md_header {
+	__le32 checksum;
+	u8     magic[16];	/* LVM2_MDA_MAGIC */
+	__le32 version;		/* LVM2_MDA_VERSION */
+	__le64 start;		/* Byte offset of MDA area on device */
+	__le64 size;		/* Size of MDA area */
+
+	struct lvm2_md_area area[0];
+} __packed;
+
+#endif	/* _LVM2_H */
diff --git a/include/lvm.h b/include/lvm.h
new file mode 100644
index 0000000000..d1d4144254
--- /dev/null
+++ b/include/lvm.h
@@ -0,0 +1,100 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* SPDX-FileCopyrightText: 2026 Tobias Waldekranz <tobias@waldekranz.com> */
+
+#ifndef _LVM_H
+#define _LVM_H
+
+#include <linux/types.h>
+
+#include <disks.h>
+
+struct cdev;
+
+struct lvm_pv;
+struct lvm_lv;
+
+#define LVM_UUID_LEN 32
+
+/* Delinearized representation of a Volume Group (VG) with references
+ * to associated Physical (PVs) and Locical (LVs) Volumes
+ */
+struct lvm_vg {
+	char *name;
+	char uuid[LVM_UUID_LEN + 1];
+
+	u64 seqno;
+
+	/* Sectors per physical extent */
+	blkcnt_t pe_size;
+
+	struct lvm_pv **pvs;
+	size_t num_pvs;
+
+	struct lvm_lv **lvs;
+	size_t num_lvs;
+};
+
+struct lvm_lv *lvm_vg_lv_by_name(struct lvm_vg *vg, const char *name);
+
+/* Iterator over all available VGs, constructed by scanning all block
+ * devices known to the system. If multiple PVs contain metadata for
+ * the same VG, only the most recently updated version is returned to
+ * the caller of lvm_vg_iter_next(). Callers must ensure that any
+ * returned VGs are freed by calling lvm_vg_free().
+ */
+struct lvm_vg_iter;
+
+struct lvm_vg *lvm_vg_iter_next(struct lvm_vg_iter *iter);
+struct lvm_vg_iter *lvm_vg_iter_new(void);
+void lvm_vg_iter_free(struct lvm_vg_iter *iter);
+
+/* Return a VG based on its name. Internally this uses a VG iterator
+ * and is thus more expensive than lvm_vg_alloc_by_cdev(), with the
+ * upside that it is based on the most up-to-date metadata available.
+ */
+int lvm_vg_alloc_by_name(const char *name, struct lvm_vg **vgp);
+
+/* Return the VG described by the metadata on the PV backed by
+ * cdev.
+ */
+int lvm_vg_alloc_by_cdev(struct cdev *cdev, struct lvm_vg **vgp);
+
+void lvm_vg_free(struct lvm_vg *vg);
+
+struct lvm_pv {
+	struct lvm_vg *vg;
+
+	char *name;
+	char uuid[LVM_UUID_LEN + 1];
+
+	blkcnt_t dev_size;
+	blkcnt_t pe_start;
+	u32 pe_count;
+};
+
+/* Return the backing device for pv */
+struct cdev *lvm_pv_cdev(struct lvm_pv *pv);
+
+enum lvm_lv_type {
+	LVM_LV_UNKNOWN,
+	LVM_LV_LINEAR,
+};
+
+struct lvm_lv {
+	struct lvm_vg *vg;
+	enum lvm_lv_type type;
+	char *name;
+	char uuid[LVM_UUID_LEN + 1];
+
+	blkcnt_t size;
+};
+
+/* Create a device mapper configuration table for the specified LV,
+ * suitable for consumption by dm_create(). The caller takes ownership
+ * of the returned string. Returns an ERR_PTR() on failure, e.g. if
+ * the LV uses an unsupported mapping or references a PV that is not
+ * present.
+ */
+char *lvm_lv_dm_ctable(struct lvm_lv *lv);
+
+#endif	/* _LVM_H */
-- 
2.43.0



