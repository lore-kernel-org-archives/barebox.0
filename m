Delivery-date: Wed, 28 Feb 2024 17:03:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfMPS-00DfIq-22
	for lore@lore.pengutronix.de;
	Wed, 28 Feb 2024 17:03:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfMPS-0007fi-2L
	for lore@pengutronix.de; Wed, 28 Feb 2024 17:03:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rOqF8zOdqOvfirnL2X2DmF2NWcqc1mKQVrXF0/eo6NU=; b=fo+VLpFXGHPyVh8b5dIDZNXPjD
	EAYuy+f88+H/zznUq6I8wfHMjSACkBOtMStgx55WyaenTzQxFUFjVvSxBaAASLci05iO1KCY/z0RM
	4qhP7Bg6cAN14dHTaxc9pOZ69zDCsdzBIQx6CcxVur0eP1KuilgjtWu/1VEGyOoX4vxX5Q3C+j1TC
	tTRvVPL8UrO2NJNs6cJWGqz8CpYEPV1mz3XfJyFGlJHaLB5u2CjLxkonVmQFiU741W20etRCFtEGw
	+SEuUn+kQHL616CjeuTfrJwn3T+3QDVQpkBfJmU8YUpAtEU28ge9T0CC4lHYzct37eLy7IIkR+vyv
	oiGAripQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfMOl-0000000A1LK-1Tzs;
	Wed, 28 Feb 2024 16:03:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfMOi-0000000A1KE-2DNX
	for barebox@lists.infradead.org;
	Wed, 28 Feb 2024 16:03:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfMOg-0007V3-C8; Wed, 28 Feb 2024 17:03:06 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfMOf-003QJl-Va; Wed, 28 Feb 2024 17:03:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfMOf-006fJR-1E;
	Wed, 28 Feb 2024 17:03:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 Feb 2024 17:03:04 +0100
Message-Id: <20240228160304.1588645-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_080308_590721_B826768F 
X-CRM114-Status: GOOD (  11.39  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] mtd: don't try to detect UBI in too small flash partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The detect callback will try to detect an UBI volume inside a partition.
If that partition happens to be smaller than 512 bytes, detect will fail
with -EINVAL.

Avoid this confusing error by early exiting in this case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/core.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 97a7996cf68e..34f919b96ea4 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -599,6 +599,10 @@ static int mtd_detect(struct device *dev)
 	enum filetype filetype;
 	int npebs = mtd_div_by_eb(mtd->size, mtd);
 
+	/* No point in looking for UBI on a partition that's smaller than an erase block */
+	if (!npebs)
+		return 0;
+
 	npebs = max(npebs, 64);
 
 	/*
-- 
2.39.2



