Delivery-date: Mon, 10 Oct 2022 08:39:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohmSE-0034nY-JF
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:39:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohmSC-0004tW-PJ
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:39:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Yr4DuT3d7PB0pCTe4kZisP0hgdil/L+8oY5RD8YL8Ec=; b=VNdfR+TBKM7j2LN9bueyuj5rtC
	QzFxXIOkDqxKaN9BBbYS3Ude8vQfRAs2fqhmRHJ9pygr3dzeUqgofYdgtolqx3+XVXyBW+O/lGpW8
	KPVzzIPRew3WKT1v/fzVu9XFDOogaLkKIL9VRffBlKsEYuROwDeRpFvuJ7tt4zslJdKkT6Spzt3z1
	1X7gOGhzgYpbfOwO65fKok/EoeTiut5iRAiOO+fwDmYeyKWPIZ92G1uURoOEZglCinB5BhRCvB2r0
	jWpI3bYbmCVumczVQQQVqOSuIFdXrNb/quBIrx26Igb4bPKMaEuuLAP1H1dKlrlgrkdrsWN8+ZQu2
	n4eaGcJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohmR1-00HFYP-9l; Mon, 10 Oct 2022 06:38:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohmQw-00HFXe-S3
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:38:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohmQu-0004nI-W3; Mon, 10 Oct 2022 08:38:37 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohmQu-000dc8-9j; Mon, 10 Oct 2022 08:38:36 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohmQt-008r1e-Im; Mon, 10 Oct 2022 08:38:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:38:34 +0200
Message-Id: <20221010063834.2110400-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_233838_925713_314B972B 
X-CRM114-Status: GOOD (  11.11  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] block: fix calling cdev_get_block_device with partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For partitions, cdev->priv references the parent block device.
Doing the pointer arithmetic in container_of will result in an
out-of-bounds access. Do what the rest of the code does
and access cdev->priv instead.

Fixes: 84173bf3d0cc ("block: set S_IFBLK for block devices instead of S_IFCHR")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/block.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/block.c b/common/block.c
index 19bb81df2c3d..a4cfd6e22771 100644
--- a/common/block.c
+++ b/common/block.c
@@ -366,7 +366,7 @@ struct block_device *cdev_get_block_device(struct cdev *cdev)
 	if (!cdev || cdev->ops != &block_ops)
 		return NULL;
 
-	return container_of(cdev, struct block_device, cdev);
+	return cdev->priv;
 }
 
 int blockdevice_register(struct block_device *blk)
-- 
2.30.2



