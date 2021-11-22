Delivery-date: Mon, 22 Nov 2021 09:49:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp50q-0003M5-Q2
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:49:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp50p-0008Qg-FL
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:49:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pqRVhOkEfCTs+vb3Qgw9PV8FWbqZJ5ZzhcwFZtzLGfk=; b=d7AiqaH2RCuR53
	cl4vQWwkCQG+DsPW70ThOnItKfwkzOLFPCBLI/BvYwzSo70sDi4ILa19839IxK8UOeiEqD8la0dSG
	pv4jwxEXnaxdNYrBNAUJOctNlAvq3BAfHZo1D3XYgRQJrV3E5sOTWFc2FaI2WkCqZodLALYffVs/N
	rvolW1rdUPct2e7rplUzOcw0l0MjBj0VVGWZfSIC/WfXT4dROZ/wh8sg7Nj2tGVCIetd23pSS5LOj
	ToY4vO46tG+en4Rk2CXgRQsU/f/PdHNSivnL2VKd6sgxsHUZHO6AY9bjE8DsSiHeUBVqfBGIBgEkN
	u8BEAWl3puFYihZqKR7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp4zN-00FL3f-7g; Mon, 22 Nov 2021 08:47:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zD-00FKyr-Dr
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:40 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zA-0007wD-2u; Mon, 22 Nov 2021 09:47:36 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00AteY-9K; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:04 +0100
Message-Id: <20211122084732.2597109-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004739_504437_D10D118E 
X-CRM114-Status: GOOD (  10.25  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/30] fs: remove unused struct node_d in struct dir
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This struct member is never used, so it can just be dropped.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/dirent.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/dirent.h b/include/dirent.h
index d7b5e78b2728..61a76c5b59b9 100644
--- a/include/dirent.h
+++ b/include/dirent.h
@@ -11,7 +11,6 @@ struct dirent {
 typedef struct dir {
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
-	struct node_d *node;
 	struct dirent d;
 	void *priv; /* private data for the fs driver */
 	struct list_head entries;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

