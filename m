Delivery-date: Fri, 20 Mar 2026 14:57:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3aMC-0032gv-0M
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 14:57:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3aMB-0005zc-Hv
	for lore@pengutronix.de; Fri, 20 Mar 2026 14:57:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YInkaHRQRlJPz0MC4otrBSVxqjV7KdvKQg4zgNzWYsc=; b=a2DRxP+kNyIDZwqmCs6oCcGKnr
	nTM5e2HkbAO/tJjXke/dl9S4Y4jKqmD3fXObErBtu+z0DwHvyXc3WQW1fUzdQO4SbQ5NuVmy+8ymA
	fzKXSH8wXg2JT5Ozdhs/5etpdbSKBypiqaHEfNBKkeRCvxgR69zpXuLKhn8WB/lK/2ogigFTC7JLo
	mL4Bajo9UJ7RONpnNvK6ThlUnTyDd/eAOYifYtXX2IVnK12o/5wk9ZKW0ADacODIX+7obEKpP/iNG
	9sh3ykdqeYYNg1o5Nuu8xVUlI06ebN7y688Q60JFnAs0bmc3nDTHyVZwFKREJqFffqt78+6aQW7Ef
	PlPw3FAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3aLS-0000000CtmQ-1chy;
	Fri, 20 Mar 2026 13:56:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3aLQ-0000000Ctlw-0yrN
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 13:56:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3aLO-0005pd-91; Fri, 20 Mar 2026 14:56:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3aLO-001Fac-0H;
	Fri, 20 Mar 2026 14:56:54 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3aLN-0000000F7Mq-41BL;
	Fri, 20 Mar 2026 14:56:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 20 Mar 2026 14:56:53 +0100
Message-ID: <20260320135653.3603064-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_065656_271568_C30B57E0 
X-CRM114-Status: GOOD (  10.33  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] mci: register class device before card detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

mci_card_probe() notifies OP-TEE about the presence of a RPMB device
which in turn tries to read from it. The OP-TEE request will end up
in mci_get_rpmb_dev() which iterates over MMC class devices in order
to find the correct one. Call class_add_device() earlier to make sure
the new device is available at that time.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index cdb20a5625..d3d7bd5e07 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -3111,6 +3111,8 @@ int mci_register(struct mci_host *host)
 	if (IS_ENABLED(CONFIG_MCI_INFO))
 		devinfo_add(&mci->dev, mci_info);
 
+	class_add_device(&mmc_class, &mci->dev);
+
 	/* if enabled, probe the attached card immediately */
 	if (IS_ENABLED(CONFIG_MCI_STARTUP) ||
 	   (IS_ENABLED(CONFIG_MCI_STARTUP_NONREMOVABLE) &&
@@ -3124,8 +3126,6 @@ int mci_register(struct mci_host *host)
 		of_register_fixup(of_broken_cd_fixup, host);
 	}
 
-	class_add_device(&mmc_class, &mci->dev);
-
 	return 0;
 
 err_free:
-- 
2.47.3



