Delivery-date: Tue, 18 Mar 2025 09:25:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuSGG-000xoN-31
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 09:25:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuSGF-0004Uc-PF
	for lore@pengutronix.de; Tue, 18 Mar 2025 09:25:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=92rI/FG0crMNEVUmuerarUOCdIJSo+JAoh2b23Fj5Bc=; b=dXVgrFzRkbuZKptSO0Im2SjMgT
	NtnNApQCkOrojJ4k0DHRPmZ86uREtPxAAhqnGVg5IdqbFAYlrXbLgGjK4XAoD2NbS4CbQtNcvYY8H
	jAV9nPGpxjNjyFzbQ2SrB6O825gWkehnTBaKLaCUODSnMKlb4js7O+ibrNCQ3ECQVB2d9pqaVzkFp
	8QyRnazt7Ybe0DGdKwdjmKHOR127qGTjLRcWRYW5Y0gt0JU+gn/nhai5b9/kFiFDo4ZEG26sQyhj+
	cur+SCRuv8DKzAMI5XwiViM2QZcJeEYUFL+P76xDkkrX27m6x3vTxT15594kHwWAXKRPMXB9wO7Ul
	dwpqtxMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuSFf-000000059re-0Lch;
	Tue, 18 Mar 2025 08:24:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuSFb-000000059rA-48p3
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 08:24:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuSFZ-0004L9-6n; Tue, 18 Mar 2025 09:24:37 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuSFY-000OTN-1v;
	Tue, 18 Mar 2025 09:24:37 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuSFY-001l6V-30;
	Tue, 18 Mar 2025 09:24:36 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Mar 2025 09:24:35 +0100
Message-Id: <20250318082435.419053-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_012440_021505_99F6F104 
X-CRM114-Status: GOOD (  12.58  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] partition: fix reference to wrong cdev in warning message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For MBR and GPT, barebox creates links to the partitions, so they can be
referenced both by index and partition label.

Failing to create a link is not an error, but results in a warning
message. The current message claims that the link was pointing at the
parent block device's cdev, but it actually was pointing at the child
partition. Fix that.

Reported-by: Uwe Kleine-König <uwe@kleine-koenig.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/partitions.c b/common/partitions.c
index 7562536cf9b8..bc90f51f6112 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -63,7 +63,7 @@ static int register_one_partition(struct block_device *blk, struct partition *pa
 	ret = devfs_create_link(cdev, partition_name);
 	if (ret)
 		dev_warn(blk->dev, "Failed to create link from %s to %s\n",
-			 partition_name, blk->cdev.name);
+			 partition_name, cdev->name);
 	free(partition_name);
 
 	return 0;
-- 
2.39.5



