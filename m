Delivery-date: Thu, 28 Aug 2025 19:29:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urgRW-005WTL-0c
	for lore@lore.pengutronix.de;
	Thu, 28 Aug 2025 19:29:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urgRU-0005tX-Hx
	for lore@pengutronix.de; Thu, 28 Aug 2025 19:29:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uzPouHG9oSrEq8y/r16uATRHouSnOPqWI40bmIgOzug=; b=DQJIqdAR57Qxbr3q3zuUvVm+A7
	ot2TrOtGYZpTYjzyKD+L+LoSRml+RdFNn6w6BUmw00td6aY2BLXVfIXu6x8BZ5c3A8qF/poGnmInP
	uUBNoE87w2qHnme+P5NmB9CwbVd9lKnWmIfVb2Mb4INRipS7lr+cYp4KV72Nrode+CL8H7KaHtfkL
	y8oel/x6YyHa0vYfTLNMMNVHEWffnq2hI41f3A1XGVyNjoz4etjQZ8kzpf1bzUVHlwd0VBHHDREeY
	OmkFg+VpFIKJkYeo2OUu9vsQ2ffWClcYEWy4O40K3OQVCqDRpBRuC3lvlMy1z3PwHSScOqLxnO3bE
	EvyD/YSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urgQz-00000002Wf2-185y;
	Thu, 28 Aug 2025 17:29:13 +0000
Received: from mail-ed1-f46.google.com ([209.85.208.46])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ureDM-000000022hS-1mAY
	for barebox@lists.infradead.org;
	Thu, 28 Aug 2025 15:07:01 +0000
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-6188b5ae1e8so1107152a12.0
        for <barebox@lists.infradead.org>; Thu, 28 Aug 2025 08:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1756393618; x=1756998418; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uzPouHG9oSrEq8y/r16uATRHouSnOPqWI40bmIgOzug=;
        b=hq823Eg22ihgQEEOMTH99rrjuQDoeOMhAV+sJ8iyYnLxB3m9DY4ysDK6SXrvkArfYK
         lLJaHmSzF5eUzwmSAgM1VV2kUFyiX2D2DLD/LuMw+jjzi5VQbUoftWEqG91SKwVWuXjH
         TOxPmSBtCrX/pEGhqkqmyv9S6HNKO3Khq7b2J+6sZltKKlOl/oN7lYvlQHPnotmk8csw
         gfoeBJ03C3VS6aSW2A9xu2eQq7DUsIEsgEHmqXizS88oZg/D6qdEnLyrlkEr+DLtSeIf
         dZnsYr8JUdz/v9CMcC51cfQgdbVqlvLcYwiq9JMRsWZUXi618Ah00zAJZOisuQsHxgn5
         CZcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756393618; x=1756998418;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uzPouHG9oSrEq8y/r16uATRHouSnOPqWI40bmIgOzug=;
        b=sKkN1KIXGy2+C4DtY2vyURcKOmDhsLJ4E0dy2aIryxnWfXhYxTM7qX9h3fFqZzzkf9
         rg41ci5Um8g0urDwH4YVAT4wbjjaUnUfwUqLXShzFETRh2FGvCIbENPfz7h7wU0h4Z7H
         mXjxoyqClX+f/5XVvZzoXI9CeITNNki8arKPkzXCo85XLUrc65T8qoMVv4pFsF3IEBuO
         w2ajM88U4fxkiy7Cg5zuMIYL0aPIiTvpIu0NN7DVv3AO1UslsGrvc3qCEzthkKyfMn7C
         wR02SPd/XZAiGq2zixrl9jT8OjjfSdiWdpoVolUE7eyoOxkx5YZ3l7ti9uGuA8pJ0DcB
         nqww==
X-Gm-Message-State: AOJu0YzR+0byGLQFrB6WxPstw7FKtJnkBrp0S7W84eNixDmS9bSIQQaa
	U89B6lSCAZJCzhwSE7b2i85Ui6y9B0ZfV4rPT8kggNblv3Pj2hwx8Bq91fLWKO3yT6MfTdc+kvV
	GqpSv
X-Gm-Gg: ASbGncvmwckD93ZpgIhpEvGdC0VHaAwEwEyHoY41KMSglOADLBBqsVH1FxAVSEYtPin
	HFH6YXuMBqh4KmtE8+MzSOsUCZ9xWW4LSmRw9hI+rLxVASpj8OHjI3nK9lj5KvgwZB/gTjzK+q1
	TKdfkQ5fjaVKF7JOA7e8mqOm9XVQXpvARDa6RPsf81etSHjYKa9UyXh3ts3r7b1+LaeRL3cJQcm
	DUCqBMuOGLCxlZs2LE0ioQwDav3UqZ6PXsCsQvMVXEpiP66PbT/DitDkkqymVyeZyCROfiwyOBI
	+ODXdlOcEObaY7OwMnvIXMag/HXbTgfu8Su51yyYqoGl75mPEMNpfC844fWWEJvIsekbBrG0x9/
	qaiRBJpDs/Mb0DXRgwhi1I4eHLzVhyMGJBgs57D34YfXdpZknBNRSZ1RqOXxpdahd1VFQGULgcE
	Eb
X-Google-Smtp-Source: AGHT+IF7yi8LJF+GZuSrRVFb06HQ7uMTf0FfTEVnsTp4aSlF2pTQLkzzL+iGaQTZGHGxWUpbVWuZ8A==
X-Received: by 2002:a05:6402:a0c1:b0:61c:30cf:885c with SMTP id 4fb4d7f45d1cf-61c30cf8ca9mr17250971a12.32.1756393618004;
        Thu, 28 Aug 2025 08:06:58 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61c78e49c90sm7371038a12.45.2025.08.28.08.06.57
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 08:06:57 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Thu, 28 Aug 2025 17:05:28 +0200
Message-ID: <20250828150637.2222474-4-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250828150637.2222474-1-tobias@waldekranz.com>
References: <20250828150637.2222474-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_080700_480477_32D45F07 
X-CRM114-Status: GOOD (  18.11  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] dm: linear: Add linear target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This target allows you to map in a region of another device as a
contiguous range of blocks of a dm device.

This is the basic building block used by LVM to stitch together
logical volumes from one or more ranges of blocks from one or more
physical disks.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 drivers/block/dm/Kconfig     |   7 ++
 drivers/block/dm/Makefile    |   1 +
 drivers/block/dm/dm-linear.c | 123 +++++++++++++++++++++++++++++++++++
 3 files changed, 131 insertions(+)
 create mode 100644 drivers/block/dm/dm-linear.c

diff --git a/drivers/block/dm/Kconfig b/drivers/block/dm/Kconfig
index f64c69e03d..e763e530d3 100644
--- a/drivers/block/dm/Kconfig
+++ b/drivers/block/dm/Kconfig
@@ -5,3 +5,10 @@ menuconfig DM_BLK
 	  other data sources. Modeled after, and intended to be
 	  compatible with, the Linux kernel's device mapper subsystem.
 
+config DM_BLK_LINEAR
+        bool "Linear target"
+	depends on DM_BLK
+        help
+	  Maps a contiguous region of an existing device into a dm
+	  device.
+
diff --git a/drivers/block/dm/Makefile b/drivers/block/dm/Makefile
index 9c045087c0..f52d19f9c4 100644
--- a/drivers/block/dm/Makefile
+++ b/drivers/block/dm/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_DM_BLK) += dm-core.o
+obj-$(CONFIG_DM_BLK_LINEAR) += dm-linear.o
diff --git a/drivers/block/dm/dm-linear.c b/drivers/block/dm/dm-linear.c
new file mode 100644
index 0000000000..d3415814cb
--- /dev/null
+++ b/drivers/block/dm/dm-linear.c
@@ -0,0 +1,123 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: © 2025 Tobias Waldekranz <tobias@waldekranz.com>, Wires
+
+#include <block.h>
+#include <common.h>
+#include <disks.h>
+#include <fcntl.h>
+
+#include "dm-target.h"
+
+struct dm_linear {
+	struct cdev *cdev;
+	loff_t offset;
+};
+
+static int dm_linear_read(struct dm_target *ti, void *buf,
+			  sector_t block, blkcnt_t num_blocks)
+{
+	struct dm_linear *l = ti->private;
+
+	block <<= SECTOR_SHIFT;
+	num_blocks <<= SECTOR_SHIFT;
+
+	if (cdev_read(l->cdev, buf, num_blocks, l->offset + block, 0) < num_blocks)
+		return -EIO;
+
+	return 0;
+}
+
+static int dm_linear_write(struct dm_target *ti, const void *buf,
+			   sector_t block, blkcnt_t num_blocks)
+{
+	struct dm_linear *l = ti->private;
+
+	block <<= SECTOR_SHIFT;
+	num_blocks <<= SECTOR_SHIFT;
+
+	if (cdev_write(l->cdev, buf, num_blocks, l->offset + block, 0) < num_blocks)
+		return -EIO;
+
+	return 0;
+}
+
+static int dm_linear_create(struct dm_target *ti, unsigned int argc, char **argv)
+{
+	struct dm_linear *l;
+	int err;
+
+	if (argc != 2) {
+		dm_target_err(ti, "Expected 2 arguments (\"<dev> <offset>\"), got %u\n",
+			      argc);
+		err = -EINVAL;
+		goto err;
+	}
+
+	l = xzalloc(sizeof(*l));
+	ti->private = l;
+
+	if (kstrtoull(argv[1], 0, &l->offset)) {
+		dm_target_err(ti, "Invalid offset: \"%s\"\n", argv[1]);
+		err = -EINVAL;
+		goto err_free;
+	}
+	l->offset <<= SECTOR_SHIFT;
+
+	l->cdev = cdev_open_by_path_name(argv[0], O_RDWR);
+	if (!l->cdev) {
+		dm_target_err(ti, "Cannot open device %s: %m\n", argv[0]);
+		err = -ENODEV;
+		goto err_free;
+	}
+
+	l->cdev = cdev_readlink(l->cdev);
+
+	if ((ti->size << SECTOR_SHIFT) > (l->cdev->size - l->offset)) {
+		dm_target_err(ti, "%s is too small to map %llu blocks at %llu, %llu available\n",
+			      argv[0], ti->size, l->offset >> SECTOR_SHIFT,
+			      (l->cdev->size - l->offset) >> SECTOR_SHIFT);
+		err = -ENOSPC;
+		goto err_close;
+	}
+
+	return 0;
+
+err_close:
+	cdev_close(l->cdev);
+err_free:
+	free(l);
+err:
+	return err;
+}
+
+static int dm_linear_destroy(struct dm_target *ti)
+{
+	struct dm_linear *l = ti->private;
+
+	cdev_close(l->cdev);
+	free(l);
+	return 0;
+}
+
+static char *dm_linear_asprint(struct dm_target *ti)
+{
+	struct dm_linear *l = ti->private;
+
+	return xasprintf("dev:%s offset:%llu",
+			 cdev_name(l->cdev), l->offset >> SECTOR_SHIFT);
+}
+
+static struct dm_target_ops dm_linear_ops = {
+	.name = "linear",
+	.asprint = dm_linear_asprint,
+	.create = dm_linear_create,
+	.destroy = dm_linear_destroy,
+	.read = dm_linear_read,
+	.write = dm_linear_write,
+};
+
+static int __init dm_linear_init(void)
+{
+	return dm_target_register(&dm_linear_ops);
+}
+device_initcall(dm_linear_init);
-- 
2.43.0



