Delivery-date: Mon, 11 Jul 2022 11:10:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oApRL-002Jui-Hs
	for lore@lore.pengutronix.de; Mon, 11 Jul 2022 11:10:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oApRI-00062T-VP
	for lore@pengutronix.de; Mon, 11 Jul 2022 11:10:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MhWPrfHICigQeTnSs1OztDzgZFLAhaqgGAU+tXEx/uM=; b=H/efFLM3+frkUxIswsGWh1x76D
	jgwSe0ZoBT5rZQ6ThyXwtH2PG0OwGiqw6OgW+L9PHbKX95K0mv6Z78GHJMl9IUdre0pe5+xzbqBwP
	tC19oEVlE+5mh4xnik0oPYpEwr6GLpWLZuvOEwZAUKLm+i6sCOWhdTs+hhmAK/UM544oqpw8KtZqN
	gic2rzpn6iCgBFwa0HfsjLHAGTuubrr45jnWyZ4/16DcHb0nNNQqV1O4pYt59AEw5OYb/74duDtvo
	pxp0C0SeLnJEr8MFnrwqMia6hKtcRPnOCPfMtXiOcAxtHp/0h8HLNVb+msUVebjSUtk9xMDFznGsn
	Nt7+8PMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oApPz-00HW2v-73; Mon, 11 Jul 2022 09:09:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oApPu-00HW1C-EO
	for barebox@lists.infradead.org; Mon, 11 Jul 2022 09:09:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1oApPt-0005oq-1p; Mon, 11 Jul 2022 11:09:21 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oApPs-000HQj-87; Mon, 11 Jul 2022 11:09:20 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oApPr-004UKC-Dx; Mon, 11 Jul 2022 11:09:19 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 11 Jul 2022 11:09:14 +0200
Message-Id: <20220711090915.1487105-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220711083128.kwazqb2wbmqqvdub@pengutronix.de>
References: <20220711083128.kwazqb2wbmqqvdub@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1681; h=from:subject; bh=6pRSwxRGUfcD5lhz4qWBQ/K0Ues+yjHRO6U2jjqGEJQ=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBiy+izuke8FlwXW3ctvWC0IbTm9Bl5bRR8ftEL9VoU v8O6kySJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYsvoswAKCRDB/BR4rcrsCcv1CA CVVbGYXqkxI77T47K/jTXx7IJUbuQ2pxvzus2wmrJtVo4cELlpV/uMLmHlD2MGy9hxcCJ4ANyX9G/J b4J58lrqyPGHXFtPXFcmFoSrZ3YRXxij8Ejl4S8D8/vkxhUtf0xPBAlvO3YtvrnII146HuKtIs00zn mhBDBFJ8QQ3N3kgxHbW0516z/rx99xcFdx3MpPmoyZ7/dattVvEaNTZTAT761lwYenXkrTJCvQPqsy W7cu0QDbK1OAaRzHvAhV9Fppq+z391AqRluUsD0wox23MD9fDoDniYWGwXIUWM25JsMKEGICiTN0mb Q5VsEDxdIYkaPsPJBOLxd3benypLRC
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_020922_513068_4CB9E3B9 
X-CRM114-Status: GOOD (  13.76  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] devfs: take into account for the partitions check that mtd is different
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

mtd partitions are separate devices. Their partition info is relative to
these subdevices and so offset is 0 for them. This needs to be taken
into account for the overlap check.

Fixes: 7f9f45b9bfef ("devfs: Do not create overlapping partitions")
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 fs/devfs-core.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 38423e5d1e07..dca5e10191d4 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -395,9 +395,20 @@ static bool region_overlap(loff_t starta, loff_t lena,
 static int check_overlap(struct cdev *cdev, const char *name, loff_t offset, loff_t size)
 {
 	struct cdev *cpart;
+	loff_t cpart_offset;
 
 	list_for_each_entry(cpart, &cdev->partitions, partition_entry) {
-		if (region_overlap(cpart->offset, cpart->size,
+		cpart_offset = cpart->offset;
+
+		/*
+		 * An mtd partition is represented by a separate cdev and its
+		 * cpart is relative to this one. So its .offset is 0 and we
+		 * have to consult .master_offset to get its offset.
+		 */
+		if (cpart->mtd)
+			cpart_offset = cpart->mtd->master_offset;
+
+		if (region_overlap(cpart_offset, cpart->size,
 				   offset, size))
 			goto conflict;
 	}
@@ -408,7 +419,7 @@ conflict:
 	pr_err("New partition %s (0x%08llx-0x%08llx) on %s "
 		"overlaps with partition %s (0x%08llx-0x%08llx), not creating it\n",
 		name, offset, offset + size - 1, cpart->name,
-		cpart->name, cpart->offset, cpart->offset + cpart->size - 1);
+		cpart->name, cpart_offset, cpart_offset + cpart->size - 1);
 
 	return -EINVAL;
 }
-- 
2.36.1



