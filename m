Delivery-date: Mon, 10 May 2021 12:30:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lg3BQ-0002tD-Iw
	for lore@lore.pengutronix.de; Mon, 10 May 2021 12:30:40 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lg3BP-0005h6-Ns
	for lore@pengutronix.de; Mon, 10 May 2021 12:30:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qG4o5+YcY7glRNDwkxB1IJiqJwijMddOKjm6m0zNdkA=; b=Tz5QhAYTqi30FrxxZxRgLGph/
	s/d9AEO+soGTK9z/VuJfRp1TrDOkk/xH92ASMvzioh0ykE3IlD/jxWYNdgzGRDpbRYVzziTnNtJeL
	/1ilEmCSUcUPKI6R3iRhA7HjgHVTyt0TLzSZdMjssPj/8TeIdjTu7BIbEp1Vhu8Zs0x8yenicClu9
	nauovB+pzSRaSnIyNiiRSOCXXQEZN0eILe0iZhoEiH2tS++gM8mgqKSqTqSBpe7iNzdiWRwG3zDgC
	5aXqTUe067URZK8ZaQez8X+oDZee5FwaZTAXJrxFmOSfIukknUdcaO1X4MYhCQpOx6fZQ5QoIEcNe
	q9yLilsRA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lg3AM-00DwEH-WA; Mon, 10 May 2021 10:29:35 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg36S-00DvZ4-IW
 for barebox@desiato.infradead.org; Mon, 10 May 2021 10:25:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Type:Content-ID:Content-Description;
 bh=2L8S3vvqDM611pmC6DIy1vGGlM9os2xry9XrfIVgIVk=; b=TuwD5pzbsXSJWkjFygNMLVr4JY
 xSOvjFnIRBPBYmX3FSOEj1Sprt0tIMhZu1zx+LH0jk86NSm4M7VfVIgwfQwqBHSxRTG+y7apbYXs+
 ulkjjmo5xjfnsygt3xuUWHhqTPrWnf6/TDsD4QHQh7oWmdw/rDYPaTqBgzawW0vB2uIO1ZAoh1j7Y
 O+iGh4tkOhcIxqkrt4wHL6IrIZx3PtASLENzxQ8zUC4joSFne0553bT2kLk9K5qjQ5woFVkxtW8ZF
 zeJFqbb0Zc2jtpP3v0fluPameowU2uW47308rnk2JUjSmSoaD1fLQVIAe5KjPhysTqlte6rA0MwAv
 0L4m+haA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg36P-008Wgc-OR
 for barebox@lists.infradead.org; Mon, 10 May 2021 10:25:31 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lg36L-0004nT-G5
 for barebox@lists.infradead.org; Mon, 10 May 2021 12:25:25 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lg36L-0003eE-40
 for barebox@lists.infradead.org; Mon, 10 May 2021 12:25:25 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 10 May 2021 12:25:22 +0200
Message-Id: <20210510102523.7147-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210510102523.7147-1-m.felsch@pengutronix.de>
References: <20210510102523.7147-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_032529_827584_5655D355 
X-CRM114-Status: GOOD (  12.28  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/3] mci: mci-core: set the DEVFS_IS_MCI_MAIN_PART_DEV flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Set the new introduced flag to be able to check if the cdev is an
mmc/mci device.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v3:
- no changes

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

