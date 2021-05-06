Delivery-date: Thu, 06 May 2021 18:27:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1legqg-0002ik-2y
	for lore@lore.pengutronix.de; Thu, 06 May 2021 18:27:38 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1legqf-00054q-9i
	for lore@pengutronix.de; Thu, 06 May 2021 18:27:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5OzmdESeRXIcIDm8ACKaTPaNeoIxC8YRPZDHn9YWnG4=; b=bqFD9fs2SGUG8DiYdZO7ZlPz3
	q6oLBCtS56PlWYdKwyRxgeBtNd+IM9F9w7pKGDLQwd0SORM7nV5F7tDfbplEyXizjdI9MI+uAY+X8
	Hd2fwQHAvXCJVmzLdSh5ejGftm9+CK8gaKscKpS/nFDPVaoG4/jCBhPeMxNV2BQUQSb486bnn3O8T
	M9RmuOqRSaZFSDZbMHTuz+yxgMhsc9eAV05gWXPs4MwrYAwqX+faVrGZ3eDmw1aW6hJSMMWea/mzr
	sp059LmJ/Mo2x/WrtgvczeDkL9f3+3aSRrwbMdvU3agomc+xYgxDC+wnQA1I+kJh1tUkypUMPblHn
	gUkpTgHKw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1legpX-004nYy-0i; Thu, 06 May 2021 16:26:27 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1legpU-004nYb-KZ
 for barebox@desiato.infradead.org; Thu, 06 May 2021 16:26:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Type:Content-ID:Content-Description;
 bh=URd+8fSJv81siu87WcKSb/wdxj2X6LM9tm9LD/mfKdA=; b=ifY1XPnA9h65hFEhcxKt1KF+YE
 Gg3wztul9337z8y/QDYD/odY4ezIZbp1klYYAyBkGFx/YTjYMx8hQvKksr/nRJf1nuyA/cWlGnPiV
 6FMWglWoBLyS88PdmRArP2t5Utq8MX873+1E+hRfmWZkfMQ+bcUXR4OAMMgEwaZRoa7o/SeGGL+c/
 7J6+V9+r1TTGDvQBAZyYoQ9uN0iWan8atpl3NJvzDwuIUO9ipbfGlhko5TrkYZHjDxSWHoafhmMZe
 cP11IzxoI5GYu72+ap6s7be8JHCBQvdQ6jFei+jTMW0aKEaVY7w8RdRq+PN7u+MMwlfrX7X2uox02
 6aME8n/A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1legpQ-006DJn-BQ
 for barebox@lists.infradead.org; Thu, 06 May 2021 16:26:21 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1legpO-0004oh-S9
 for barebox@lists.infradead.org; Thu, 06 May 2021 18:26:18 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1legpO-0003I3-Jj
 for barebox@lists.infradead.org; Thu, 06 May 2021 18:26:18 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  6 May 2021 18:26:15 +0200
Message-Id: <20210506162616.11593-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210506162616.11593-1-m.felsch@pengutronix.de>
References: <20210506162616.11593-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_092620_439627_8A5C8AC8 
X-CRM114-Status: GOOD (  11.59  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/3] mci: mci-core: set the DEVFS_IS_MCI_MAIN_PART_DEV flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Set the new introduced flag to be able to check if the cdev is an
mmc/mci device.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- only set the flag for MMC_BLK_DATA_AREA_MAIN

 drivers/mci/mci-core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 017f25d35f..a160b98894 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -426,8 +426,10 @@ static void mci_part_add(struct mci *mci, uint64_t size,
 	part->part_cfg = part_cfg;
 	part->idx = idx;
 
-	if (area_type == MMC_BLK_DATA_AREA_MAIN)
+	if (area_type == MMC_BLK_DATA_AREA_MAIN) {
 		part->blk.cdev.device_node = mci->host->hw_dev->device_node;
+		part->blk.cdev.flags |= DEVFS_IS_MCI_MAIN_PART_DEV;
+	}
 
 	mci->nr_parts++;
 }
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

