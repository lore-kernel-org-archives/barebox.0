Delivery-date: Thu, 18 Sep 2025 09:45:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9Kx-004Nx1-0v
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 09:45:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9Kw-0001kc-DD
	for lore@pengutronix.de; Thu, 18 Sep 2025 09:45:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mp1CY0dEflEn7oUu6wdvhtq7jAIJ4eq6zzL3GNGcUJQ=; b=x39uuktHqRmzcWPGJ6I8m9KQc5
	YDDzhQBNcgsjJVJ4F3hiSGZNgiKGTWg8yYxs5xE7Xy0kpNNtQqBIQO/UdPbMR7ebnGbmT7P+KhiQy
	kYgBO11/ghPkC4TYJ0Z6sDuKJRbk6a24KHPTm4VBppyWAtaRRcWjwWzUjgmBXH4Wk/VExue/8P01R
	U9lwsr+pxSqqg4EQuLIYRpicFNqspHdtaJFyTTO7UCsANK7bjuTPsm4jltK2+O4F+jhbw1GgI+jBn
	aW18WcVWpKSDnr2zq3z3StfYadYUZvi4PO+JZS0U3axJkEWvcNwbizkVcXJ9bsajymap7Q3lq0c7g
	vMoEREcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KP-0000000GaQu-0Q7X;
	Thu, 18 Sep 2025 07:45:17 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KJ-0000000GaLX-1ZuR
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 07:45:13 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-b0411b83aafso98506466b.1
        for <barebox@lists.infradead.org>; Thu, 18 Sep 2025 00:45:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1758181509; x=1758786309; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mp1CY0dEflEn7oUu6wdvhtq7jAIJ4eq6zzL3GNGcUJQ=;
        b=isK/fa1qND+qyUnV3M4iqTc3JU7BHX5Sdd6b7uOqhJ0wOpogAHV8wnettX/MYn10GN
         dpDJ9kNbQNAqXaOyG9YjC1vKM9HkP1b/Z8IC/LAjL7JT9bUa9EUUB55zPYJijKGsHlZf
         7+T8CFFsmodMWV23fdgcO7bFpcw0lXGjBUPLM1kZobvaS+E1fQQpmVNwzYbtSBBZFyZP
         Gs0lg2wsh+NmC85zBYK2ZzRP3Cb+8MZZBRWL4CPYOqU1z8yXKt6gxes5P7Qe3TZuIfrR
         hY8W3m0MsktlC1AldcNFig+BiiaCOm3pNapneNwwO6we1L0aGYvWAnYVAjJfD9Uy27hJ
         Ettw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758181509; x=1758786309;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Mp1CY0dEflEn7oUu6wdvhtq7jAIJ4eq6zzL3GNGcUJQ=;
        b=I/7BmEWYc1c+3JBruohGB0t82THbNYtaQ0lMeBnd4N9It+gACNURTpbD3DHJmixUP4
         TvHM3kb53MtvdyfqKZLsm2gchgBDSzMmxj9kH4YQnXCzWguvc0YhWKFNFZbubTl0jJoR
         X2uS8n2XZgMZMe3pMSsXpFcLOC81Aw8INko5PXsctmb/T6WiJTlFcmjfW28iu+LgAEcH
         UCS0nXaix5Im9UEjyOboiDl1A15U8Zt8xYRKnP2WX2AN6W7YBTI16RIAafMDSe4YPM12
         WrfbIUYrUk74NruSZXumql058n4RZwUacIpLE0lb/4WaWiuwdVFH34HaSnrAmE1gh0Pd
         9G3g==
X-Gm-Message-State: AOJu0YzTa2l/lnbiELAVqXInKKc+jM9FfPvq6O5vH1l5bQ3fJTbXtQfW
	he6xF+Jt12lpSi/7noPkfaNroGUHoqDVDTKb+Uow6Xn5dv2b24bkQgxLnc1Z6WJNCpTXxD4LsU3
	bKIYD
X-Gm-Gg: ASbGncshgsZ4UJ9ZQVdms154GYdI9/Aaif3jPi8InW3AIHMWxR3uKeVF1uaR7HaVWGt
	pJsVB0Ladv3E6WZLQckiq06Q0i6+GhvRIALQAxIxz6Lp1Lc3IkHALu2v7fE2RW3pwIuRkhqkSuB
	kzgpOVpx1jB9rhtZwG9wCElk1E6qZjWg2bqwXu1zg0MsV8eGCYVclu+20Lvd+wSgYR/oqwu90So
	UcnF+zvP0BLW1QkOBQZjuytYa7ZVDnpalTlPVhHJXkbNHPS9OdGV6FD4QU4vjTYE7Yf+W921Dow
	eX5w1oPiswkHgUyZAEoSl7Z4SQCLlMM/cWBrzJId3GA9vya/hL4O0Upmj0iFSWKvlRT914opVfF
	sMTqDqWZfnyL34/b/1pktO5SwRgsZB0hHxo81Mqu6EwYIu7Tmb/D+O9XnthTHJqpFRxDlsa2aRl
	Fo3k7LliMnSVdIzrsCjSg=
X-Google-Smtp-Source: AGHT+IEyqwsAVAhjWcx2NU4SIB37mxkvfIadroLqs8TjM11X2EASWxsTN+3SiXMw7q+DDw2pQFYD6A==
X-Received: by 2002:a17:906:d555:b0:afe:ef8a:ac69 with SMTP id a640c23a62f3a-b1bb7d419ddmr563403666b.43.1758181509026;
        Thu, 18 Sep 2025 00:45:09 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fcfe888bcsm140703166b.71.2025.09.18.00.45.08
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 00:45:08 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Thu, 18 Sep 2025 09:43:12 +0200
Message-ID: <20250918074455.891780-3-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250918074455.891780-1-tobias@waldekranz.com>
References: <20250918074455.891780-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_004511_433706_AFF1FDA1 
X-CRM114-Status: GOOD (  14.57  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 02/11] dm: linear: Refactor to make use of the generalized cdev management
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Rely on the dm_cdev operations to do most of the heavy lifting of
managing the lower device. In addition this also adds support for
creating a linear target from a regular file (via a loop device).

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 drivers/block/dm/dm-linear.c | 64 +++++++++++-------------------------
 1 file changed, 19 insertions(+), 45 deletions(-)

diff --git a/drivers/block/dm/dm-linear.c b/drivers/block/dm/dm-linear.c
index 797d761f63..38e340af3a 100644
--- a/drivers/block/dm/dm-linear.c
+++ b/drivers/block/dm/dm-linear.c
@@ -11,45 +11,30 @@
 #include "dm-target.h"
 
 struct dm_linear {
-	struct cdev *cdev;
-	loff_t offset;
+	struct dm_cdev dmcdev;
 };
 
 static int dm_linear_read(struct dm_target *ti, void *buf,
 			  sector_t block, blkcnt_t num_blocks)
 {
 	struct dm_linear *l = ti->private;
-	ssize_t ret;
-
-	block <<= SECTOR_SHIFT;
-	num_blocks <<= SECTOR_SHIFT;
 
-	ret = cdev_read(l->cdev, buf, num_blocks, l->offset + block, 0);
-	if (ret < num_blocks)
-		return (ret < 0) ? ret : -EIO;
-
-	return 0;
+	return dm_cdev_read(&l->dmcdev, buf, block, num_blocks);
 }
 
 static int dm_linear_write(struct dm_target *ti, const void *buf,
 			   sector_t block, blkcnt_t num_blocks)
 {
 	struct dm_linear *l = ti->private;
-	ssize_t ret;
 
-	block <<= SECTOR_SHIFT;
-	num_blocks <<= SECTOR_SHIFT;
-
-	ret = cdev_write(l->cdev, buf, num_blocks, l->offset + block, 0);
-	if (ret < num_blocks)
-		return (ret < 0) ? ret : -EIO;
-
-	return 0;
+	return dm_cdev_write(&l->dmcdev, buf, block, num_blocks);
 }
 
 static int dm_linear_create(struct dm_target *ti, unsigned int argc, char **argv)
 {
-	struct dm_linear *l;
+	struct dm_linear *l = NULL;
+	loff_t offset;
+	char *errmsg;
 	int err;
 
 	if (argc != 2) {
@@ -62,37 +47,26 @@ static int dm_linear_create(struct dm_target *ti, unsigned int argc, char **argv
 	l = xzalloc(sizeof(*l));
 	ti->private = l;
 
-	if (kstrtoull(argv[1], 0, &l->offset)) {
+	if (kstrtoull(argv[1], 0, &offset)) {
 		dm_target_err(ti, "Invalid offset: \"%s\"\n", argv[1]);
 		err = -EINVAL;
-		goto err_free;
-	}
-	l->offset <<= SECTOR_SHIFT;
-
-	l->cdev = cdev_open_by_path_name(argv[0], O_RDWR);
-	if (!l->cdev) {
-		dm_target_err(ti, "Cannot open device %s: %m\n", argv[0]);
-		err = -ENODEV;
-		goto err_free;
+		goto err;
 	}
 
-	l->cdev = cdev_readlink(l->cdev);
-
-	if ((ti->size << SECTOR_SHIFT) > (l->cdev->size - l->offset)) {
-		dm_target_err(ti, "%s is too small to map %llu blocks at %llu, %llu available\n",
-			      argv[0], ti->size, l->offset >> SECTOR_SHIFT,
-			      (l->cdev->size - l->offset) >> SECTOR_SHIFT);
-		err = -ENOSPC;
-		goto err_close;
+	err = dm_cdev_open(&l->dmcdev, argv[0], O_RDWR, offset,
+			   ti->size, SECTOR_SIZE, &errmsg);
+	if (err) {
+		dm_target_err(ti, "Cannot open device %s: %s\n", argv[0], errmsg);
+		free(errmsg);
+		goto err;
 	}
 
 	return 0;
 
-err_close:
-	cdev_close(l->cdev);
-err_free:
-	free(l);
 err:
+	if (l)
+		free(l);
+
 	return err;
 }
 
@@ -100,7 +74,7 @@ static int dm_linear_destroy(struct dm_target *ti)
 {
 	struct dm_linear *l = ti->private;
 
-	cdev_close(l->cdev);
+	dm_cdev_close(&l->dmcdev);
 	free(l);
 	return 0;
 }
@@ -110,7 +84,7 @@ static char *dm_linear_asprint(struct dm_target *ti)
 	struct dm_linear *l = ti->private;
 
 	return xasprintf("dev:%s offset:%llu",
-			 cdev_name(l->cdev), l->offset >> SECTOR_SHIFT);
+			 cdev_name(l->dmcdev.cdev), l->dmcdev.blk.start);
 }
 
 static struct dm_target_ops dm_linear_ops = {
-- 
2.43.0



