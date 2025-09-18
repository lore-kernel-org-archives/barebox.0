Delivery-date: Thu, 18 Sep 2025 09:45:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9L2-004Nz9-0L
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 09:45:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9L0-0001nD-8Z
	for lore@pengutronix.de; Thu, 18 Sep 2025 09:45:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p34f+oyH+IgjOQk0Bro/yx6zceS55ck0LoN9ca2Amc8=; b=U3xTSyka2qcBzbV5bdi/qxWWkU
	XRqMcnw3Q47RRLh+C88MSW1mWFsZVLBVcHNqzuXrW2S2Ju3SGwZ1UMkw6QpjX5mvyFLoU3D8EFCTH
	d+9CIjjRiviMtGZnHlhkXYZ7xMT+B9MXMGRKi81R3vtzsyVLtlOLSUfoowMHkvJNfVEw4wt5R0Vwe
	8/xJbBeP4J6Afo2PJzgSJcFaZQp7SWrYgQwUqzsxsrr+6Q2VYT+mGgmgGAAIXr8QWvHPSuH+gIT00
	ooTiNLBuqr5zakLm/Jalzv9fmbu9wPNMmuXiake9fmC71hKUgDBxX2wJ+ecXVm9Ohnlnlh+s589vo
	b3Qg4Seg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KM-0000000GaOY-10pP;
	Thu, 18 Sep 2025 07:45:14 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KI-0000000GaLK-2yrP
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 07:45:12 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-b04ba3de760so81081366b.0
        for <barebox@lists.infradead.org>; Thu, 18 Sep 2025 00:45:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1758181509; x=1758786309; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p34f+oyH+IgjOQk0Bro/yx6zceS55ck0LoN9ca2Amc8=;
        b=zYNpKWqq1xglHZrJjtIONVPcy47c27uqNE+JtNABStYxVTuhiBw3+4SZ6thXDdcThv
         bsItOSKE1aqDfBBHHNiXf2VKYequWSiXfAOlkcIF2hQpz9SSXMSzyil2W2WXTj9zbZYN
         hqYZ8EW6ELtyfMubEFsCIbAU2hENSt2E3BONZPPETUYBE+dsKCC+izXcwj4z/qg/JJzU
         11Fs0PAZaBDzoqTDOTGUUubm1TskKFJUmP7FN9Iv7OJ/X3TWhP8MxVezD6uz9W1Iyxtc
         HFsN3NN2XGqUtUGaqCQbOlnVq2pfL3fiA5BgwwgZN2rHKk3wmdt4ipzMukgVWScyrZvT
         kDSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758181509; x=1758786309;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=p34f+oyH+IgjOQk0Bro/yx6zceS55ck0LoN9ca2Amc8=;
        b=bgjtnWDAVQaNvoNVReQLg8UC0rbb1w0mgcLY508oCeFCcXhaUQsKbvIhIxSwzVWY5o
         oGDmF7YKf4tKxCKteVmY4v1BSv+be00N2FZmh1ANblbZLjzOuviSz9b1fNNvLCSNBJ9x
         H/Kp8deT9hBA9v3Pmx5KScCRu+Eg9nPouU1xEjI6cs2S6Q7/M1fflzuTcHRh8ubW139h
         FUE7o02QNiza5WCJPq6AHmxI6KlSRdyRwjiiOcwrmI8UZ/ckqT7NbfAZ19H/BKPz3V3j
         gpp77kvKHurMJwDh9GT8ZtS2AEoU2hSPdZ8xcYmiX86uk1ZIHr+FaC/cwt8HgGUJ4gMm
         ymuQ==
X-Gm-Message-State: AOJu0YyUFtiJ1BNkj6Z7nBOXSDmq7Q1TKs7s+ZGwUk60cYZDDhM8dNmz
	w6o3ajrnY170Vn9N00YttemX2zqrcb1k38EbFreMks08OCMgdHp8gcgFObAQ37hOY2PDj74FlNQ
	+bVcc
X-Gm-Gg: ASbGncu/BusGIwH/xH6V66AFSAAJ7qBPaBf6NqAsZ3CXo64D/jSDPjWDVK5G988dhGH
	6f6Uxmgdo7fMF5l68e7qPRw78YGQkZWkf8HtvZpL84d/adM7ECcSWW9D9MhVu2jzKZ8s1OllcM8
	V6MDMNpPo+dEvR3qUCcQnO8MvdUViKUmp5cwSciy56NVrwU+YPv1j2PKsw6fBjPTrqp3TRk0e9q
	SxGRZc/SzPed6kf9e3VeoWwZfzc0Ewn288uDP8ZbHn5b6aUJ2zHjVW90NFGKJxW+jQoSIqnStFa
	V7ZKEbfvQt+MZnLfcwVO4sDpcrBw/41Jyk5YRwSaIl5adBGnTTPbs4pmSgNeqwJbIBHHGR+urzU
	QPdfeRYoh+AI/Dx446nlmteB3A/OOrJ/+ISyHzdrdK9Ewt39rRRSst0uYhGFUfG9slt4VZapGgt
	T5NqPMRjOe
X-Google-Smtp-Source: AGHT+IFXG72bnsQ6eE/86OwuGGpGNpebbU5ssQNMcEIMZHL+NtbnYEbxS3wgGsX1XL3WPo9KwVPC6g==
X-Received: by 2002:a17:907:d89:b0:afe:8037:bc7d with SMTP id a640c23a62f3a-b1bb0a58dafmr551130966b.2.1758181508502;
        Thu, 18 Sep 2025 00:45:08 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fcfe888bcsm140703166b.71.2025.09.18.00.45.08
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 00:45:08 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Thu, 18 Sep 2025 09:43:11 +0200
Message-ID: <20250918074455.891780-2-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250918074455.891780-1-tobias@waldekranz.com>
References: <20250918074455.891780-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_004511_013644_51C523B0 
X-CRM114-Status: GOOD (  15.78  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 01/11] dm: Add helper to manage a lower device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With the upcoming support for dm-verity, some patterns started to emerge
about commonalities between target types when it comes to dealing with
lower devices:

- Transparently creating/removing loop devices when a regular file is
  passed in place of a device special
- Validation of offsets and sizes
- Reading in chunks of block sizes (possibly different from 512B)

Therefore, add a generic way of dealing with this that all targets can
hook into.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 drivers/block/dm/dm-core.c   | 118 +++++++++++++++++++++++++++++++++++
 drivers/block/dm/dm-target.h |  20 ++++++
 2 files changed, 138 insertions(+)

diff --git a/drivers/block/dm/dm-core.c b/drivers/block/dm/dm-core.c
index 953673073b..1bc3446cb0 100644
--- a/drivers/block/dm/dm-core.c
+++ b/drivers/block/dm/dm-core.c
@@ -7,11 +7,129 @@
 #include <stdio.h>
 #include <string.h>
 #include <xfuncs.h>
+#include <unistd.h>
 
 #include <linux/kstrtox.h>
+#include <linux/stat.h>
 
 #include "dm-target.h"
 
+int dm_cdev_read(struct dm_cdev *dmcdev, void *buf, sector_t block,
+		 blkcnt_t num_blocks)
+{
+	ssize_t n;
+
+	n = cdev_read(dmcdev->cdev, buf, num_blocks << dmcdev->blk.bits,
+		      (dmcdev->blk.start + block) << dmcdev->blk.bits, 0);
+	if (n < 0)
+		return n;
+
+	if (n < (num_blocks << dmcdev->blk.bits))
+		return -EIO;
+
+	return 0;
+}
+
+int dm_cdev_write(struct dm_cdev *dmcdev, const void *buf, sector_t block,
+		  blkcnt_t num_blocks)
+{
+	ssize_t n;
+
+	n = cdev_write(dmcdev->cdev, buf, num_blocks << dmcdev->blk.bits,
+		       (dmcdev->blk.start + block) << dmcdev->blk.bits, 0);
+	if (n < 0)
+		return n;
+
+	if (n < (num_blocks << dmcdev->blk.bits))
+		return -EIO;
+
+	return 0;
+}
+
+int dm_cdev_open(struct dm_cdev *dmcdev, const char *path, ulong flags,
+		 sector_t start, blkcnt_t num_blocks, size_t blocksize, char **errmsg)
+{
+	struct stat st;
+	int err;
+
+	memset(dmcdev, 0, sizeof(*dmcdev));
+
+	err = stat(path, &st);
+	if (err) {
+		*errmsg = xasprintf("Cannot determine type: %m");
+		return err;
+	}
+
+	switch (st.st_mode & S_IFMT) {
+	case S_IFREG:
+		dmcdev->cdev = cdev_create_loop(path, flags, 0);
+		if (!dmcdev->cdev) {
+			*errmsg = xstrdup("Cannot create loop device");
+			return -ENODEV;
+		}
+		dmcdev->loop = true;
+		break;
+	case S_IFBLK:
+	case S_IFCHR:
+		dmcdev->cdev = cdev_open_by_path_name(path, flags);
+		if (!dmcdev->cdev) {
+			*errmsg = xstrdup("Cannot open device");
+			return -ENODEV;
+		}
+
+		dmcdev->cdev = cdev_readlink(dmcdev->cdev);
+		break;
+	default:
+		*errmsg = xstrdup("Only regular files and device specials are supported");
+		return -EINVAL;
+	}
+
+	if (blocksize == 0 || (blocksize & (blocksize - 1))) {
+		*errmsg = xasprintf("Invalid block size: %zu is not a power of 2",
+				    blocksize);
+		goto err;
+	}
+
+	dmcdev->blk.bits = ffs(blocksize) - 1;
+	if (dmcdev->blk.bits < SECTOR_SHIFT) {
+		*errmsg = xasprintf("Invalid block size: %zu, must be at least %u",
+				    blocksize, SECTOR_SIZE);
+		goto err;
+	}
+
+	dmcdev->blk.mask = (1 << (dmcdev->blk.bits - SECTOR_SHIFT)) - 1;
+
+	if (((start + num_blocks) << dmcdev->blk.bits) > dmcdev->cdev->size) {
+		*errmsg = xstrdup("# of blocks is larger than device");
+		err = -E2BIG;
+		goto err;
+	}
+
+	dmcdev->blk.start = start;
+	dmcdev->blk.num = num_blocks;
+	return 0;
+err:
+	if (dmcdev->cdev) {
+		if (dmcdev->loop)
+			cdev_remove_loop(dmcdev->cdev);
+		else
+			cdev_close(dmcdev->cdev);
+
+		memset(dmcdev, 0, sizeof(*dmcdev));
+	}
+	return err;
+}
+
+void dm_cdev_close(struct dm_cdev *dmcdev)
+{
+	if (dmcdev->loop)
+		cdev_remove_loop(dmcdev->cdev);
+	else
+		cdev_close(dmcdev->cdev);
+
+	memset(dmcdev, 0, sizeof(*dmcdev));
+}
+
 static LIST_HEAD(dm_target_ops_list);
 
 static struct dm_target_ops *dm_target_ops_find(const char *name)
diff --git a/drivers/block/dm/dm-target.h b/drivers/block/dm/dm-target.h
index 506e808b79..bd25208889 100644
--- a/drivers/block/dm/dm-target.h
+++ b/drivers/block/dm/dm-target.h
@@ -4,6 +4,26 @@
 #ifndef __DM_TARGET_H
 #define __DM_TARGET_H
 
+struct dm_cdev {
+	struct cdev *cdev;
+	bool loop;
+
+	struct {
+		sector_t start;
+		blkcnt_t num;
+		u32 mask;
+		u8 bits;
+	} blk;
+};
+
+int dm_cdev_read(struct dm_cdev *dmc, void *buf, sector_t block,
+		 blkcnt_t num_blocks);
+int dm_cdev_write(struct dm_cdev *dmc, const void *buf, sector_t block,
+		  blkcnt_t num_blocks);
+int dm_cdev_open(struct dm_cdev *dmcdev, const char *path, ulong flags,
+		 sector_t start, blkcnt_t num_blocks, size_t blocksize, char **errmsg);
+void dm_cdev_close(struct dm_cdev *dmcdev);
+
 struct dm_device;
 struct dm_target_ops;
 
-- 
2.43.0



