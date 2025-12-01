Delivery-date: Mon, 01 Dec 2025 08:25:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPyIF-006jo5-22
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 08:25:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPyIE-0004Dx-Vm
	for lore@pengutronix.de; Mon, 01 Dec 2025 08:25:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vJXX2M8rGFN2NaZdRvyFyKDxb6ztvfni39JheY6Z+4Y=; b=uhvc6iRq7HdKI8IdCkixWBXYGm
	unFCSkq9KNmb+gxCgTObvWosObPUPkZwSppaEXEmW7wO5XobVNQEtjVTKhiAhigcdjYGFw7RKm3Dc
	dRSRDpK1GFkzBzXHthVXJ0TzZTd4OoDQTqYeYkADoLUsSq+YIBK9UCUqwKonvkushNY3C6XvhSJBo
	MhcxvMuQsid1tpHKkhPMR0chi4oIav5z6JkNsqWRkSdQEU+jJBPbM0kFcQtV4ULaKXh8AeQXzE1Vc
	VY1EdLvFXOdvT8i1FANl/oWbJzb8wgelp63mmXOnVWqMPoFuq8I+HOH5HdjKkFeCjRxaoDvZPQbmg
	cWMtbKRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPyHZ-0000000332E-3y4P;
	Mon, 01 Dec 2025 07:25:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPyHW-0000000330S-3vky
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 07:25:12 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vPyHS-0003y9-Hl; Mon, 01 Dec 2025 08:25:06 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Dec 2025 08:20:57 +0100
Message-ID: <20251201072452.1829564-2-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251201072452.1829564-1-f.pflug@pengutronix.de>
References: <20251128150434.3842713-1-f.pflug@pengutronix.de>
 <20251201072452.1829564-1-f.pflug@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251130_232510_970927_FF024F15 
X-CRM114-Status: GOOD (  12.10  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v5 1/4] block.h: renamed get_rootargs to get_root
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Don't return the full commandline-parameter, but instead just return the
root block/fs/etc. The functions downstream can add root= before.

This is the first commit in a series to make root= dynamic.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/block.c         | 10 ++++++++--
 drivers/mci/mci-core.c |  4 ++--
 include/block.h        |  2 +-
 3 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/common/block.c b/common/block.c
index ca2ed37dbd..07c4d5d504 100644
--- a/common/block.c
+++ b/common/block.c
@@ -598,8 +598,14 @@ char *cdev_get_linux_rootarg(const struct cdev *partcdev)
 	if (!blk)
 		return NULL;
 
-	if (blk->ops->get_rootarg)
-		rootarg = blk->ops->get_rootarg(blk, partcdev);
+	if (blk->ops->get_root) {
+		char *root = NULL;
+		root = blk->ops->get_root(blk, partcdev);
+		if (root) {
+			rootarg = basprintf("root=%s", root);
+			free(root);
+		}
+	}
 	if (!rootarg && partcdev->partuuid[0] != 0)
 		rootarg = basprintf("root=PARTUUID=%s", partcdev->partuuid);
 
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 57825bc849..206147cb93 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2691,7 +2691,7 @@ static char *mci_get_linux_mmcblkdev(struct block_device *blk,
 		 * skipping it.
 		 */
 		if (cdev_partname_equal(partcdev, cdev))
-			return basprintf("root=/dev/mmcblk%dp%d", id, partnum);
+			return basprintf("/dev/mmcblk%dp%d", id, partnum);
 		if (cdev->flags & DEVFS_PARTITION_FROM_TABLE)
 			partnum++;
 	}
@@ -2703,7 +2703,7 @@ static struct block_device_ops mci_ops = {
 	.read = mci_sd_read,
 	.write = IS_ENABLED(CONFIG_MCI_WRITE) ? mci_sd_write : NULL,
 	.erase = IS_ENABLED(CONFIG_MCI_ERASE) ? mci_sd_erase : NULL,
-	.get_rootarg = IS_ENABLED(CONFIG_MMCBLKDEV_ROOTARG) ?
+	.get_root = IS_ENABLED(CONFIG_MMCBLKDEV_ROOTARG) ?
 		mci_get_linux_mmcblkdev : NULL,
 };
 
diff --git a/include/block.h b/include/block.h
index fc7a0a32fb..b277f590e4 100644
--- a/include/block.h
+++ b/include/block.h
@@ -14,7 +14,7 @@ struct block_device_ops {
 	int (*write)(struct block_device *, const void *buf, sector_t block, blkcnt_t num_blocks);
 	int (*erase)(struct block_device *blk, sector_t block, blkcnt_t num_blocks);
 	int (*flush)(struct block_device *);
-	char *(*get_rootarg)(struct block_device *blk, const struct cdev *partcdev);
+	char *(*get_root)(struct block_device *blk, const struct cdev *partcdev);
 };
 
 struct chunk;
-- 
2.47.3



