Delivery-date: Tue, 30 Jun 2026 14:41:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1weXmF-00BSyn-2p
	for lore@lore.pengutronix.de;
	Tue, 30 Jun 2026 14:41:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1weXmF-000130-4y
	for lore@pengutronix.de; Tue, 30 Jun 2026 14:41:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qCy/h9jk4vLYfQDeu3Jr75mkc/F2YcEOko55aHkjhrE=; b=2Drt17kur3d2usc0gAONkv1AXO
	Xzm6SZem/CcESwQ9ewa3m8e45wnFiSilq9jOjUl4cjgnN9NbWVcUwGnbk35UmhrQhXPeM1kCDDSmS
	SPjOWWJfv/FKuEVMoXywtEUu3XAHpESgFsJ6ozLeTIieB5NttkpKuDdWdeu1Uz2traVzRzfrm4Fcz
	F0363i7iBa/QbArGR8gv8VnzGuL5l+zmmsFNlVSROiN47Mm1eqpWJBual3A1Osl+GausNAC132Xpb
	V4myMwTO5CM8fBOs0TtXsoGyo7sXZH1uh3Kg7BIBL1qXIxDUy7yaJAIK0Kv1DzskG/oAsV0E0YQ+I
	w1YFL4XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weXl0-0000000H0pM-2iZW;
	Tue, 30 Jun 2026 12:40:06 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weXkv-0000000H0mC-3NNB
	for barebox@lists.infradead.org;
	Tue, 30 Jun 2026 12:40:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id EC7F120045F;
	Tue, 30 Jun 2026 14:39:57 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1weXkr-005PmW-2o;
	Tue, 30 Jun 2026 14:39:57 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1weXkr-000000032ZD-3KYc;
	Tue, 30 Jun 2026 14:39:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Jun 2026 14:39:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260630-usb-disk-alias-v1-1-d23318bcb684@pengutronix.de>
References: <20260630-usb-disk-alias-v1-0-d23318bcb684@pengutronix.de>
In-Reply-To: <20260630-usb-disk-alias-v1-0-d23318bcb684@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782823197; l=3250;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=oqC2Az6KdwVyrlDx/X589R7boEBA5DvTsbYJ3DpLg9c=;
 b=ZG0Srp4Mrd9u3ILHbFz/3m2YorugzvzTitzDkZZqpkiV/qVhpQbOpcAK+ksa2KbJW67QnJwvC
 8ojMDMpHZmwCqHRckkHsEldmi5ezxvZcN+y15Kmvdfdd6PudcO9Iidz
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_054002_006745_A08AD59F 
X-CRM114-Status: GOOD (  16.41  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] fs: devfs: make cdev_find_free_index() return 0
 instead of an error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We should never run out of free indexes in realistic scenarios. When we
do, returning 0 ensures that the caller's cdev registration just fails
with -EEXIST, which is a normal error path. Add an error message so the
user realizes that something is wrong here and not in the devfs
registration itself.

With this the callers no longer need to handle a negative return value,
so drop their (incomplete) error handling.

Assisted-by: Claude Opus 4.8
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/disk_ata_drive.c |  2 --
 drivers/hw_random/core.c     | 13 +++----------
 drivers/usb/storage/usb.c    |  2 --
 fs/devfs-core.c              | 10 +++++++++-
 4 files changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index c5bf17d863..0509b7dc78 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -238,8 +238,6 @@ static int ata_port_init(struct ata_port *port)
 		port->blk.cdev.name = xstrdup(port->devname);
 	} else {
 		rc = cdev_find_free_index("ata");
-		if (rc == -1)
-			pr_err("Cannot find a free index for the disk node\n");
 		port->blk.cdev.name = basprintf("ata%d", rc);
 	}
 
diff --git a/drivers/hw_random/core.c b/drivers/hw_random/core.c
index 9f73aa45bc..ef960b787c 100644
--- a/drivers/hw_random/core.c
+++ b/drivers/hw_random/core.c
@@ -67,19 +67,12 @@ static int hwrng_register_cdev(struct hwrng *rng)
 	struct device *dev = rng->dev;
 	const char *alias;
 	char *devname;
-	int err;
 
 	alias = of_alias_get(dev->of_node);
-	if (alias) {
+	if (alias)
 		devname = xstrdup(alias);
-	} else {
-		err = cdev_find_free_index("hwrng");
-		if (err < 0) {
-			dev_err(dev, "no index found to name device\n");
-			return err;
-		}
-		devname = xasprintf("hwrng%d", err);
-	}
+	else
+		devname = xasprintf("hwrng%d", cdev_find_free_index("hwrng"));
 
 	rng->cdev.name = devname;
 	rng->cdev.flags = DEVFS_IS_CHARACTER_DEV;
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index b3116dc6e6..2ad08183f6 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -415,8 +415,6 @@ static int usb_stor_add_blkdev(struct us_data *us, unsigned char lun)
 		goto BadDevice;
 
 	result = cdev_find_free_index("disk");
-	if (result == -1)
-		pr_err("Cannot find a free number for the disk node\n");
 	dev_info(dev, "registering as disk%d\n", result);
 
 	pblk_dev->blk.cdev.name = basprintf("disk%d", result);
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 67ce678517..522d883e1c 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -223,7 +223,15 @@ int cdev_find_free_index(const char *basename)
 			return i;
 	}
 
-	return -EBUSY;	/* all indexes are used */
+	/*
+	 * We should never run out of free indexes in realistic scenarios.
+	 * Return 0 so that the caller's cdev registration fails with -EEXIST,
+	 * which is a normal error path. The message tells the user that
+	 * something is wrong here and not in the devfs registration itself.
+	 */
+	pr_err("Cannot find a free index for '%s'\n", basename);
+
+	return 0;
 }
 
 static struct cdev *cdev_get_master(struct cdev *cdev)

-- 
2.47.3



