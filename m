Delivery-date: Fri, 08 Mar 2024 10:16:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riWKe-00DVW1-1R
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 10:16:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riWKd-0008CC-QH
	for lore@pengutronix.de; Fri, 08 Mar 2024 10:16:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XiwDv5yc2sI9Ulll+y7xhGkrUazEncqgqI6O7ZYQZFg=; b=BJu/w5XlmUIklg3Rwj4SAwg82Z
	i6VxHo73oxQlt67gdpV0CcoYh638bNiH45BocAStWxJSuifW63oy6tcQwSIsqhFTTm3wTHCbvrM/n
	3Dw8JpuQyt775pQrtCF2gZ7+jSKxItqqKmjbD4vGYR0JdJjSQDU3mGm8C+UyGuzLyo0esOtkcnPHB
	EdFtEftyzLx/j/bQHAqcedlRxKtDk/UqhCKsoJTJs0MC2hawTOaMnrg9dYNf6JsEJ8XgMH6jcXT/E
	qMsLjuWo2lwIOB/vdoDuF62GAC381YJA1jk4ucHkSQR6p5LE3mvgOThVs2W4YfPxgNTctd1TuPPiC
	BtubclxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riWJy-00000008Wa2-30qq;
	Fri, 08 Mar 2024 09:15:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riWJt-00000008WZ2-3zbJ
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 09:15:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1riWJs-0007dJ-BQ; Fri, 08 Mar 2024 10:15:12 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1riWJr-0056mL-UY; Fri, 08 Mar 2024 10:15:11 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1riWJr-0025Rk-2n;
	Fri, 08 Mar 2024 10:15:11 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri,  8 Mar 2024 10:15:09 +0100
Message-ID: <20240308091507.249009-4-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240308091507.249009-3-uwe@kleine-koenig.org>
References: <20240308091507.249009-3-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2092; i=uwe@kleine-koenig.org; h=from:subject; bh=4aosDnfVA6Rn1AOQqSuWOO4gzMqEWuhcl/DhTemMIYU=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl6tccbSduRzAtHCYaG4fweD7vkl9VVisax1Zyi BOjU7Z8hWGJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZerXHAAKCRCPgPtYfRL+ TpCpB/0fnwD9GCryD3GPyPcFvMshchaunTsVkIV4Kr7xnjzBnJt65LOEfl9VFpOZg6mLklxp958 bsKcqo+cZxLMJL0RdaBsnMiH9CVQW6a6GPaJu4WJwnns0DJqpoVeluObBUyvQIzLSQQCjdTWXbn hElx2hsQULDVhCJJ+ZnKDDTLTjhlQ2JezIbd4IdGNECtJuRlKSyCnb1egGf2pHjhJo0zBEz0SwR lvEN6ruOZmHGloerZ5n9BA8nPju4THMQPb8c1pLmTHAIPFL8TVTtTPPJyw5QMxfmFIlGEpC5wYN g05MElNt1co35nmQQmKqvJjfBSvbmoualIJC1XpzfOfM76Qb
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_011514_021874_88BE4626 
X-CRM114-Status: GOOD (  12.73  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] of: partition: Use mtd partitioning for of_fixup instead of the cdev variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>

It was already noticed in commit 9d42c77f126e ("devfs: take into account
for the partitions check that mtd is different") that the partitioning
info is stored differently for mtd devices. Instead of only getting the
partion size from the right spot, use the right data completely.

Fixes: 9d42c77f126e ("devfs: take into account for the partitions check that mtd is different")
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/of/partition.c | 30 ++++++++++++++++++++++--------
 1 file changed, 22 insertions(+), 8 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index d11e1d1690f9..598ac5240d79 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -267,18 +267,32 @@ int of_fixup_partitions(struct device_node *np, struct cdev *cdev)
 	if (ret)
 		return ret;
 
-	list_for_each_entry(partcdev, &cdev->partitions, partition_entry) {
-		loff_t partoffset;
+	if (cdev->mtd) {
+		struct mtd_info *mtdpart;
 
+		list_for_each_entry(mtdpart, &cdev->mtd->partitions, partitions_entry) {
+			const char *name = mtdpart->name;
+
+			if (mtdpart->parent) {
+				const char *parentname = dev_name(&mtdpart->parent->dev);
+				size_t parentnamelen = strlen(parentname);
+
+				if (!strncmp(parentname, name, parentnamelen) && name[parentnamelen] == '.')
+					name += parentnamelen + 1;
+			}
+
+			ret = of_fixup_one_partition(partnode, mtdpart->master_offset, mtdpart->size, name, partcdev->flags);
+			if (ret)
+				return ret;
+		}
+		return 0;
+	}
+
+	list_for_each_entry(partcdev, &cdev->partitions, partition_entry) {
 		if (!(partcdev->flags & DEVFS_PARTITION_FROM_OF))
 			continue;
 
-		if (partcdev->mtd)
-			partoffset = partcdev->mtd->master_offset;
-		else
-			partoffset = partcdev->offset;
-
-		ret = of_fixup_one_partition(partnode, partoffset, partcdev->size, partcdev->partname, partcdev->flags);
+		ret = of_fixup_one_partition(partnode, partcdev->offset, partcdev->size, partcdev->partname, partcdev->flags);
 		if (ret)
 			return ret;
 	}
-- 
2.43.0



