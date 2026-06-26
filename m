Delivery-date: Fri, 26 Jun 2026 10:47:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DP-00A13z-0S
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:47:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DO-00063m-CK
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:47:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=23VTNzxsqD1YSO3O1ecv5FB5rQEFrjp8XJibyOaXnxM=; b=CEVOROgZO34lqHnu2NU7kHBaoe
	gXouHRUrhvb+8ybUZR/rr9iiqAPdyuojFl2Z5yyJCY919OnpuSXjCtjR4+Tfic2IKRTlPl26Qx/Sx
	kr/xVhw57M0x/jFN2hGicASfbKobKdMBFi5pS90mghtB9kXHF8UUNQhd2Y/GFGGxgP0lmNjPkpOmp
	1brl2SsKOPoF+6VaVhWV9HYnxiR4POQb0frUMIUPADJiKXlu6yps8qKBDxoUeWoJaLCDIjPpXQ0ky
	/qLprYPSCNdS6x11Pz4SbktqwuwotU6VH7vk58dRZqov83aqSxRckG5saXaXnunOE8VjgCrVsppXm
	P4dqYzaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cf-0000000AtJX-2wQN;
	Fri, 26 Jun 2026 08:46:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cd-0000000AtEw-0YBE
	for barebox@bombadil.infradead.org;
	Fri, 26 Jun 2026 08:46:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=23VTNzxsqD1YSO3O1ecv5FB5rQEFrjp8XJibyOaXnxM=; b=ZYdDHbHeO1epexQpiiqGbUS4JJ
	nxMhCEak9uxT4vSjIRIL1r+V2zZFvmJkcGYaEqDhTZ816I/gRhwUU0/tAPOZvEhVkP393eH1CCDza
	sLCkEoxlv6QEZ/OYS0Dv2vQXxWVf8GmEh2iu/XpVYL78GYImyLneB+btBGB+oyt/tUxqqbd3sHZHm
	dQsC4YgjjVUC3ttVEtCVj2oZOqOjaLCztsCY8lMuwgPYfVvh5+ghK5kl24+wOO8XMebC8h0eYPydF
	BxmYu6N9gQ8rHUec4CIOsM6dsKS0nyPRUQAmjIrhK3GS7abed2KQ00CpV5uQjQaNFHAGM6gzcWwkP
	GZxvOIXg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wd2CY-00000004clt-1Zqd
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CU-0003ZP-M7; Fri, 26 Jun 2026 10:46:14 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:25 +0200
Message-ID: <20260626084608.1388806-15-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_094618_592274_E5BD07F7 
X-CRM114-Status: GOOD (  12.68  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 14/26] ramdisk: validate exported sector size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ramdisk_init() currently accepts arbitrary sector sizes, including
sizes smaller than 512 bytes and non-power-of-two.

Make use of the new block_size_bits() to trigger an error message when
this occurs and while at it, also fix the memory leaks if the function
fails.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/block/ramdisk.c | 36 ++++++++++++++++++++++++++----------
 1 file changed, 26 insertions(+), 10 deletions(-)

diff --git a/drivers/block/ramdisk.c b/drivers/block/ramdisk.c
index 6f3c9348058a..f6f1c4cda963 100644
--- a/drivers/block/ramdisk.c
+++ b/drivers/block/ramdisk.c
@@ -3,12 +3,12 @@
 
 #include <ramdisk.h>
 #include <block.h>
+#include <disks.h>
 #include <driver.h>
 #include <fs.h>
 #include <string.h>
 #include <xfuncs.h>
 #include <linux/align.h>
-#include <linux/log2.h>
 
 struct ramdisk {
 	struct block_device blk;
@@ -101,39 +101,55 @@ static struct cdev_operations ramdisk_ops = {
 
 struct ramdisk *ramdisk_init(int sector_size)
 {
+	struct device *dev;
 	struct ramdisk *ramdisk;
 	struct block_device *blk;
-	int ret;
+	int blockbits, ret;
+
 
 	ramdisk = xzalloc(sizeof(*ramdisk));
+	dev = &ramdisk->dev;
 
-	dev_set_name(&ramdisk->dev, "ramdisk");
-	ramdisk->dev.id = DEVICE_ID_DYNAMIC;
+	dev_set_name(dev, "ramdisk");
+	dev->id = DEVICE_ID_DYNAMIC;
 
-	ret = register_device(&ramdisk->dev);
+	ret = register_device(dev);
 	if (ret)
-		return NULL;
+		goto free_ramdisk;
+
+	blockbits = block_size_bits(dev, sector_size);
+	if (blockbits < 0)
+		goto unregister_device;
 
 	blk = &ramdisk->blk;
-	blk->dev = &ramdisk->dev;
+	blk->dev = dev;
 	blk->type = BLK_TYPE_VIRTUAL;
 
 	blk->cdev.size = 0;
-	blk->cdev.name = xstrdup(dev_name(&ramdisk->dev));
+	blk->cdev.name = xstrdup(dev_name(dev));
 	blk->cdev.dev = blk->dev;
 	blk->cdev.ops = &ramdisk_ops;
 	blk->cdev.priv = ramdisk;
 	blk->cdev.flags |= DEVFS_IS_BLOCK_DEV;
-	blk->blockbits = ilog2(sector_size);
+	blk->blockbits = blockbits;
 
 	ret = devfs_create(&blk->cdev);
 	if (ret)
-		return NULL;
+		goto free_cdev_name;
 
 	INIT_LIST_HEAD(&blk->buffered_blocks);
 	INIT_LIST_HEAD(&blk->idle_blocks);
 
 	return ramdisk;
+
+free_cdev_name:
+	free(blk->cdev.name);
+unregister_device:
+	unregister_device(dev);
+free_ramdisk:
+	free(ramdisk);
+
+	return NULL;
 }
 
 struct block_device *ramdisk_get_block_device(struct ramdisk *ramdisk)
-- 
2.47.3



