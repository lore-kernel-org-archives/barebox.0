Delivery-date: Tue, 09 Sep 2025 18:03:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw0o9-0017gJ-1q
	for lore@lore.pengutronix.de;
	Tue, 09 Sep 2025 18:03:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw0o8-0007qw-EH
	for lore@pengutronix.de; Tue, 09 Sep 2025 18:03:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z0kW7dKFzBvZ3WX0fyhPm0GRYLThNyqG3D/XlqVtQL4=; b=UEfbVqt39WxN71kD1T5eQkBHVP
	iMPK+ozHExFKQe5XQqslMB1wLEulWv0o8m+qcPy2rJ8AXdqz8bdhtieUOma91qTJjCt4vv89iEkSL
	TUzNS9nDV2FTfspaM/Dqbn0AaTWgIQ1aRcJwwp4ardeKKm1JnMS8VsijuXUHBBDljFwXU3e1KKLHO
	l8f+JtR/7OtwWzppEUNe7i7CFNweka1pLwVDRek0Pv+Sm+TC5POiDgpA4ymKVUMyTw9ZXz833gonI
	i/5yzow3NfuYkMuEtS/WqBloHCYDCNauIdtQfVRB7ze2Byi0/DZsjNW+Mj/nmORhjlYfNE/EokRAG
	zB6uMHzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw0ne-00000008NnU-38nK;
	Tue, 09 Sep 2025 16:02:30 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvyFd-00000007KJi-3Oea
	for barebox@lists.infradead.org;
	Tue, 09 Sep 2025 13:19:14 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-6188b5b113eso2557189a12.0
        for <barebox@lists.infradead.org>; Tue, 09 Sep 2025 06:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1757423951; x=1758028751; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z0kW7dKFzBvZ3WX0fyhPm0GRYLThNyqG3D/XlqVtQL4=;
        b=pTz4Rdn40FSahdvcDl7lqZMeQsMO5IPbMHvXej4rrkLejJg9nFqCMd34QynrzTm+7R
         YZS8zdEpyOqgrf+3TcygGwgY6z1waj3gaR4Qg1/WSTQP0j3SN+LU891ZH7bfw88km1sI
         1SKJGNbeayy8MOwG+EyCj12fd47Y8YP+Nefgvs6M8hGEHj4eJdSgbumwCVE0zQskUXvQ
         +V4WwChq1Tpn/Un5t/NhgK/o5rWjfMnfc/FvYp7zYz9wUl2teKS5wF4IXPBpXKHt2cz4
         N4hHLzY8430tnCqVHivOXU1MMEgFDdoIegiEVxFzFGJUfzxkW9/jyMCAwf2S+EqePy64
         +6Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757423951; x=1758028751;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=z0kW7dKFzBvZ3WX0fyhPm0GRYLThNyqG3D/XlqVtQL4=;
        b=wi/APK6z3Uop1wi0wTDntSWuvohkuCvy8Z2X486jqQkQZ03Nugw4Sdn0VprwL0q16R
         MH5qrLJWY9KlGzHQKmSPzXbDqZ7U7/0+KyAOY7mpZVV6YWSBNZx6rUC8QiTHwq0aqVmo
         YtS6unqDa9GebhCFOD6+z3k3UZb0DPetoyiQApghw+rXCk4pHVaX/8L4176aBpgqtOI8
         Jw5vb7wV73tDKf1PNliiqfoeet7zIkl+8pv/Ea+QjsdKD9FMoMx7jAcerqOFOoZoUGKE
         pfuAaE8+F6YjPIjyoKjS+m+cu8n6mi9qBf2NACU5gQkFVR4JK2gJ71p0YjC+TvzLNtxl
         9WiQ==
X-Gm-Message-State: AOJu0Yz0BZaR1dEgIRsIobUe+s4bAB2ZUWgZsZo678kAOJSMf6u6ej95
	iGZo0D0SWSTO46dTPBnd+e1NJa9POMtKX523BGsO5wb0JVPEzyg6bUibquLTFO8ae6CmSmN9THL
	r526J
X-Gm-Gg: ASbGncv573trd2CkSKjmQut6MVHC1vaETVdo3SFFNK7Ny4uKAlzC97mDw4hEXIfvjqN
	17iY6epMhmbrlGypu2ma+ve9pX8cLee8y8jCdlDT3NkPmEhwvEXbA1O1L7SuX+Vs9sjrmlx5Wnw
	lmpu9pb1moGy9fq1KOj0P7A06hI1C48flPKFJl5b0oFFpY/JTrg3UCsx7kcz72zqL65cLQ2I58K
	kiMe4xgKJ3KCdam5dMHv3xkx4mOckLOxBYDgBsfAgMRJDrIJc6oSJc/NcehbAn6rzYu4ILYiwu+
	Wb4MFvefDk3OMVk+dcJdousOLgIJYC95OTnmKmcWAnnL1QOJtQ63HrGRP5OULbHzn73Xl3lldWP
	kxtXF0zPA2tlm8Amxrl4v82ooh6mPxybLkBvuVmi0qUaJkRSJj+enOUYFWof/mcQRDw==
X-Google-Smtp-Source: AGHT+IG3nOERw7wxLxuOxlZ6grze95OtNECVZ3S3YVJUiU+8ybjDVcYTtJwoTR/HZJ1umWN5iK+bvA==
X-Received: by 2002:a17:906:c156:b0:aff:a36:e6e with SMTP id a640c23a62f3a-b04b171453cmr1221269166b.57.1757423951404;
        Tue, 09 Sep 2025 06:19:11 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b04279a59ffsm2131074366b.60.2025.09.09.06.19.10
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 06:19:10 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Tue,  9 Sep 2025 15:18:37 +0200
Message-ID: <20250909131843.2260573-5-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250909131843.2260573-1-tobias@waldekranz.com>
References: <20250909131843.2260573-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_061913_849911_562266E8 
X-CRM114-Status: GOOD (  18.67  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/7] dm: linear: Add linear target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This target allows you to map in a region of another device as a
contiguous range of blocks of a dm device.

This is the basic building block used by LVM to stitch together
logical volumes from one or more ranges of blocks from one or more
physical disks.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---

Notes:
    v1 -> v2:
    - Propagate errors from lower devices
    - Whitespace

 drivers/block/dm/Kconfig     |   6 ++
 drivers/block/dm/Makefile    |   1 +
 drivers/block/dm/dm-linear.c | 129 +++++++++++++++++++++++++++++++++++
 3 files changed, 136 insertions(+)
 create mode 100644 drivers/block/dm/dm-linear.c

diff --git a/drivers/block/dm/Kconfig b/drivers/block/dm/Kconfig
index 3316386d0c..03a0876eda 100644
--- a/drivers/block/dm/Kconfig
+++ b/drivers/block/dm/Kconfig
@@ -5,3 +5,9 @@ menuconfig DM_BLK
 	  other data sources. Modeled after, and intended to be
 	  compatible with, the Linux kernel's device mapper subsystem.
 
+config DM_BLK_LINEAR
+	bool "Linear target"
+	depends on DM_BLK
+	help
+	  Maps a contiguous region of an existing device into a dm
+	  device.
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
index 0000000000..797d761f63
--- /dev/null
+++ b/drivers/block/dm/dm-linear.c
@@ -0,0 +1,129 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: © 2025 Tobias Waldekranz <tobias@waldekranz.com>, Wires
+
+#include <block.h>
+#include <disks.h>
+#include <fcntl.h>
+#include <xfuncs.h>
+
+#include <linux/kstrtox.h>
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
+	ssize_t ret;
+
+	block <<= SECTOR_SHIFT;
+	num_blocks <<= SECTOR_SHIFT;
+
+	ret = cdev_read(l->cdev, buf, num_blocks, l->offset + block, 0);
+	if (ret < num_blocks)
+		return (ret < 0) ? ret : -EIO;
+
+	return 0;
+}
+
+static int dm_linear_write(struct dm_target *ti, const void *buf,
+			   sector_t block, blkcnt_t num_blocks)
+{
+	struct dm_linear *l = ti->private;
+	ssize_t ret;
+
+	block <<= SECTOR_SHIFT;
+	num_blocks <<= SECTOR_SHIFT;
+
+	ret = cdev_write(l->cdev, buf, num_blocks, l->offset + block, 0);
+	if (ret < num_blocks)
+		return (ret < 0) ? ret : -EIO;
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



