Delivery-date: Thu, 12 Oct 2023 13:12:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqtcB-005ipY-EB
	for lore@lore.pengutronix.de; Thu, 12 Oct 2023 13:12:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqtc9-0002Wh-DV
	for lore@pengutronix.de; Thu, 12 Oct 2023 13:12:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GzyPjkHNhA92+NSOKM8HsT9+ekKc3vurbQ533+MeJjM=; b=NIWKnEHhbOfYh5
	w2VeJmxi+MSdiBWlaAzckDxgrlOnSqCsZ9MPVvzg5XKUY6L53uWyXGKqd43tGERQuY7NO+isGeZ/L
	WFWiEr7B79xmeefPedbW/u90Kfxp9+QKjj5dt2v6KBKdRP71k7QkMuL8Yw6INI+CIveMM7vXsS8rg
	X4PWhbzzHh5X8LOVSFutNUNegaEXukSgPNH+ePyn/c4a7BajSzpha9zS+AhYN5o7fNeMsdk8JnP1/
	xSxsavKWtgTHuKWrwJK6A9/sJLJ7F5R2fRYvklTD8gGCgsimFJLemawhhlRg1fJpkfi0Dh6rK76nY
	V9JYa8A3ui/LSBmJgr0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqtak-000kJ1-1l;
	Thu, 12 Oct 2023 11:10:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqtaf-000kHq-23
	for barebox@lists.infradead.org;
	Thu, 12 Oct 2023 11:10:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qqtaa-0002H2-Nb; Thu, 12 Oct 2023 13:10:48 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qqtaa-0018LB-Aj; Thu, 12 Oct 2023 13:10:48 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1qqtaa-001ht4-0t;
	Thu, 12 Oct 2023 13:10:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 12 Oct 2023 13:10:43 +0200
Message-Id: <20231012111044.406987-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231012111044.406987-1-s.hauer@pengutronix.de>
References: <20231012111044.406987-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231012_041053_693076_1D155252 
X-CRM114-Status: GOOD (  10.61  )
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
Cc: Steffen Trumtrar <str@pengutronix.de>
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
Subject: [PATCH 2/3] bootstrap: Fix partition creation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

bootstrap_read_devfs() registers a partition with DEVFS_PARTITION_FIXED.
The purpose of this flag is that the partition can't be removed later.
Removing the partition is exactly what bootstrap_read_devfs() does when
finished, so remove the DEVFS_PARTITION_FIXED flag which doesn't make
sense here.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/bootstrap/devfs.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/lib/bootstrap/devfs.c b/lib/bootstrap/devfs.c
index 603e6744f2..3d5b1278fb 100644
--- a/lib/bootstrap/devfs.c
+++ b/lib/bootstrap/devfs.c
@@ -88,8 +88,7 @@ void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
 	struct cdev *cdev, *partition;
 	char *partname = "x";
 
-	partition = devfs_add_partition(devname, offset, max_size,
-					DEVFS_PARTITION_FIXED, partname);
+	partition = devfs_add_partition(devname, offset, max_size, partname);
 	if (IS_ERR(partition)) {
 		bootstrap_err("%s: failed to add partition (%ld)\n",
 			      devname, PTR_ERR(partition));
-- 
2.39.2



