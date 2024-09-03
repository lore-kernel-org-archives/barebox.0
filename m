Delivery-date: Tue, 03 Sep 2024 13:35:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1slRof-000r1u-2C
	for lore@lore.pengutronix.de;
	Tue, 03 Sep 2024 13:35:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1slRoe-0004is-Jr
	for lore@pengutronix.de; Tue, 03 Sep 2024 13:35:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tnvRwoiqUTI2R56INV4sq9etPs1hi68NU2747AYp+0Y=; b=xuycJ5vCg61LaE
	l4F2sS8/vFhMXFdIx51iSllP8Kf/fZmCWiGKGl76dtoPJ4L3ApxJeTHMwA9em17TeDCkDIc/MOpaD
	69tWbzhgmDOFQlyEhp1y5VJHTwe3Lo88wJ8jt6cQhetRfdiK2nqlWz656WwG55Z4Aj4EBUY3iJz2B
	40ZgmZJxPi2feKYeuXqBjYbZcXgqAVhGi9o/L5JIR5cbtlJ//vxJy+GeVQ23fjM0BvYLOBwwK10H+
	Cicw9SfGHhhSlJtyxPl/U6Cgf8CN14kLfFLJ6dGJ14n0DZk5GAxW8ekXGgLFqyqk72OEV7hQp+hpz
	PeI2CnJHJ5oLVVjd0DiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRo4-0000000HYH5-1E3U;
	Tue, 03 Sep 2024 11:34:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRo1-0000000HYEl-26Mh
	for barebox@lists.infradead.org;
	Tue, 03 Sep 2024 11:34:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1slRnx-0004IX-RX; Tue, 03 Sep 2024 13:34:37 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1slRnu-005Bal-Op; Tue, 03 Sep 2024 13:34:34 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1slRnu-00Ejfk-25;
	Tue, 03 Sep 2024 13:34:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  3 Sep 2024 13:34:33 +0200
Message-Id: <20240903113433.3512146-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_043441_557796_B3BF8ABA 
X-CRM114-Status: GOOD (  11.23  )
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
Cc: Florian Otte <fotte@uni-osnabrueck.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] mci: avoid out of bounds partition access
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The mci->part array has MMC_NUM_PHY_PARTITION. Avoid creating more
partitions than we have entries in the array and print an error
message instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reported-by: Florian Otte <fotte@uni-osnabrueck.de>
---
 drivers/mci/mci-core.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 0261f36d89..ec4a5c0749 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -651,7 +651,15 @@ static void mci_part_add(struct mci *mci, uint64_t size,
                         unsigned int part_cfg, char *name, char *partname, int idx, bool ro,
                         int area_type)
 {
-	struct mci_part *part = &mci->part[mci->nr_parts];
+	struct mci_part *part;
+
+	if (mci->nr_parts == MMC_NUM_PHY_PARTITION) {
+		dev_err(&mci->dev, "Out of physical partitions, cannot create partition %s\n",
+			name);
+		return;
+	}
+
+	part = &mci->part[mci->nr_parts];
 
 	part->mci = mci;
 	part->size = size;
-- 
2.39.2



