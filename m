Delivery-date: Thu, 14 Mar 2024 19:49:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkq8u-006QmU-1f
	for lore@lore.pengutronix.de;
	Thu, 14 Mar 2024 19:49:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkq8s-0004Pe-3G
	for lore@pengutronix.de; Thu, 14 Mar 2024 19:49:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=csIBt9wJLcOg6QTNPvyUFL+clMu5kUha0lG5YZhdNmc=; b=MGGremL6Y80ur6i9lc6JwayJYw
	X2If6tWq2uob63qbcX4UhVAsFbCrQI00ZL+Ka0rcPgJlL/cnCdnFyFZeJj/LZwsKHNSn428Vg+ird
	+eg+D1o52QgMliVZYJIoXBprK2sIsfKNjeXu39rtad2neeKhhxk7Gdt82ur9bZaJ/3f2NhaUUwJln
	lk0D/X8SUOBapfZngAe6PAAHPi4tmWga/wyDmhVVE2e7sOn6+lHcygRBNYVZqkNuGT3rQ3pnC7sky
	v+/9tNHEaKxDI4q5Uomq8wuQHRLSQneOuVbp0FlYOtBKWccrQOzaa20J+sUQ+PvXMMXKj9SoU+KlC
	pUzLaUqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkq8E-0000000FN0z-2SZA;
	Thu, 14 Mar 2024 18:48:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkq7z-0000000FMrY-1ztA
	for barebox@bombadil.infradead.org;
	Thu, 14 Mar 2024 18:48:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=csIBt9wJLcOg6QTNPvyUFL+clMu5kUha0lG5YZhdNmc=; b=OOLhirkLYJI67NY9IIkQlF4qPb
	PqIShaETr5+KOCSjjSUj6GPFmyBxpGdiIw0c6yR1Qbduy+5zR3oZzH7TzA34QFpKpFHfD2zZrQFpE
	VD5iiHUw7oFfHRLhPaxFE71LxH0ScBPF2p+1bSVMZlby+RfWVJNaLIxSYFAUZAfaC7eE5eYyX0+DI
	RuYCd9e0tL4CO5hyhU3m20xhenXvY39PO2lK0DbIMDHk+aOuf2aHDVyHYmvXHUt1zFh8K9/clR73m
	uEyfzkW4AKqVd/nyDAIgxxAVtWudI/Bo3cy7km8h5YZpg806R7C+4qTNnPiZOiJECaPTjnqq3vLuq
	FGAV6PXQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkq7v-0000000AcMQ-1cJv
	for barebox@lists.infradead.org;
	Thu, 14 Mar 2024 18:48:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rkq7r-0001yt-WC
	for barebox@lists.infradead.org; Thu, 14 Mar 2024 19:48:24 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 14 Mar 2024 19:47:34 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-11-0386c27fe653@pengutronix.de>
References: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-0-0386c27fe653@pengutronix.de>
In-Reply-To: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-0-0386c27fe653@pengutronix.de>
To: barebox@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=748;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=H3ZPu4RJ6lE57O9xEAyckljG/uhWTwhUTu3twDdHC2o=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFI/u6Wpu96dttrs38+8LY/sje7uLVhbFHvm2fv5/Vs72
 rKOiXeadpSyMIhxMciKKbJErj2ksVn4s86X4+cZYOawMoEMYeDiFICJWB9m+B85J2PxPbOen/pd
 6VKirunMcdteGxy5fud0RXmqo/gS5QaGv8KbHmWqrmJzbujatSv+gMJMptXL2Gza2p4qO9j8mnd
 fhgEA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240314_184827_585763_FAE2DC84 
X-CRM114-Status: UNSURE (   9.03  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 11/14] mci: mci-core: replace value with define
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use the newly introduced define for High Speed timing mode instead of
just '1'.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mci/mci-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index e825c91c80..ebfd3e9fb8 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -683,7 +683,7 @@ static int mmc_change_freq(struct mci *mci)
 
 	cardtype = mci->ext_csd[EXT_CSD_DEVICE_TYPE] & EXT_CSD_CARD_TYPE_MASK;
 
-	err = mci_switch(mci, EXT_CSD_HS_TIMING, 1);
+	err = mci_switch(mci, EXT_CSD_HS_TIMING, EXT_CSD_TIMING_HS);
 
 	if (err) {
 		dev_dbg(&mci->dev, "MMC frequency changing failed: %d\n", err);

-- 
2.40.1



