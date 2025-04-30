Delivery-date: Wed, 30 Apr 2025 14:11:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uA6Hv-000ofB-1Y
	for lore@lore.pengutronix.de;
	Wed, 30 Apr 2025 14:11:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uA6Hu-0008EV-Uy
	for lore@pengutronix.de; Wed, 30 Apr 2025 14:11:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+SrxBYXmLflX5Zux0TWAktkLgwC5WKuXZlkv62O0N8Y=; b=kV0T8wdYox/LQUqQAdjFg2YWj0
	gVfPSOT0Hmt2sp/wu4Bfz6o/U+f0OnmNufcnRtqZ86LikknvcaCGcjx5wtnRdWMP9ji3c22NqoSdG
	WyDGdww+E4YR98Z9huX+zy5nu5ToI/UN4ZWsXARwGd3JDyONSTB94RKTfZd3tfSF6kSq9OQq3QC8h
	5ukXkFWrj8n1U04rs7U8jtyt5/XxEcKyHH+xXMqvVOM+xGanwspE771STFSvpSkZLT7ZuNQSuYd4k
	Xo0JpFK87ZzRvxy2n2SNc1hkzR7dubUWC9DyreFkC8FbwriZA9C/7e+l3aTIshEqAjzzJDXxIvNZT
	2WAlzNDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA6H8-0000000Cmzq-3t4Y;
	Wed, 30 Apr 2025 12:10:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA6H5-0000000Cmxz-1Dg8
	for barebox@lists.infradead.org;
	Wed, 30 Apr 2025 12:10:53 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uA6H1-0007gQ-WD; Wed, 30 Apr 2025 14:10:48 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 30 Apr 2025 14:10:47 +0200
Message-Id: <20250430121047.2899648-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250430_051051_324475_4D95D9AD 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: only count partitions from partition table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux is only aware of partitions in the partition table, but the list
of partitions in barebox may contain additional partitions, e.g., for
state or the environment.

Ignore partitions that are not in the partition table when calculating
the index of the partition in Linux.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/mci/mci-core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index c4830a47a5f4..592543faa7b8 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2550,7 +2550,8 @@ static char *mci_get_linux_mmcblkdev(struct block_device *blk,
 		 */
 		if (cdev_partname_equal(partcdev, cdev))
 			return basprintf("root=/dev/mmcblk%dp%d", id, partnum);
-		partnum++;
+		if (cdev->flags & DEVFS_PARTITION_FROM_TABLE)
+			partnum++;
 	}
 
 	return NULL;
-- 
2.39.5



