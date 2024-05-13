Delivery-date: Mon, 13 May 2024 11:59:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6SSy-00CQRC-07
	for lore@lore.pengutronix.de;
	Mon, 13 May 2024 11:59:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6SSw-0004KM-Rb
	for lore@pengutronix.de; Mon, 13 May 2024 11:59:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sFuZOXQnytzTKfz8+nIiiRFUrfNcpaPWN4CngAmmBMg=; b=CsHQJtaDcGmFiUJfMGt05ZQ1X+
	ODJHace98f/UuSUcuo1MD2lZW8q4wANDaqsNokm78zmtbagB0e6oz/cVv7Fnb48S9K2SFsZoqDJUQ
	3mFhrAnaKGTyZqXE5sBA4FwESn+Cnbnnp8Y8wrqgvmBuGA6bGVoKFv2Vta6il5cE20BSdOalXxzvc
	W9jsiX5MBvONPtGAxGbuzONYl58wIGDz4LxssGJv0CBLH+ewcdZ+zyiyftnhucZ8uaUfzbnrmJJLG
	KFpw1PU8arM7C8y6hJoJduk3gkQEG0uuP053vp+10WaYrKEcutGb5zxpAtVsYfKy68c/AJbpGZXuP
	1go9iM9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6SSP-0000000CSwR-1Rxs;
	Mon, 13 May 2024 09:58:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6SSK-0000000CSuE-2zEV
	for barebox@lists.infradead.org;
	Mon, 13 May 2024 09:58:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s6SSH-00047m-Ba; Mon, 13 May 2024 11:58:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s6SSG-00191G-V9; Mon, 13 May 2024 11:58:48 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s6SSG-00AAQ6-2n;
	Mon, 13 May 2024 11:58:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 May 2024 11:58:45 +0200
Message-Id: <20240513095847.2420044-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_025852_775312_857D0ADB 
X-CRM114-Status: UNSURE (   9.23  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/3] mci: core: reset number of parttions on card probe failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

mci_part_add records information about MMC hardware partitions and
increments mci->nr_parts by one afterwards.
If starting up the card succeeds, this information is then used to
call mci_register_partition for each added partition.

If card start up fails, registration will be skipped, but mci->nr_parts
is not reset. This means that repeatedly calling device_detect will
overflow the mci->part buffer and overwrite subsequent memory.

Fix this by setting mci->nr_parts to zero on error. We don't need to
touch mci->part as it will be overwritten by subsequent detect attempts.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index f6565b2b64dd..66ca98a414ce 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2363,6 +2363,7 @@ static int mci_card_probe(struct mci *mci)
 		host->clock = 0;	/* disable the MCI clock */
 		mci_set_ios(mci);
 		regulator_disable(host->supply);
+		mci->nr_parts = 0;
 	}
 
 	return rc;
-- 
2.39.2



