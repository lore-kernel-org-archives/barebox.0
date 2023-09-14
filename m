Delivery-date: Thu, 14 Sep 2023 09:31:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qggpR-00EkPa-2D
	for lore@lore.pengutronix.de; Thu, 14 Sep 2023 09:31:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qggpP-00089s-2W
	for lore@pengutronix.de; Thu, 14 Sep 2023 09:31:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oSvBMr2ZcN9JVGLAmrjcaJaou1uHljjzVkk8rCCS9uw=; b=mKOaBgkMGdZYemQzVvZHjzudQI
	Y+1ehhyOAopGSfrCZffNQ/epvcVUfsOWOwtUL8wp+hYi2yUX+sWpJGsqE6NB7WCHXAzI/tcl3jrJz
	0kavICWdSz3gxIkDAdmUuZ2xId2nNYa+SA8iAWr4HRa87JODD5/0uH+krD3qGAHOfpJchF/tHDzaa
	2SQmOT7UGk/J+fMFdbz78FGf4yCzeHwzoAfuDGeA64zL5m8z9ZdKCCvImaDwe35oQfswEBPDSrNWd
	KZ4Vjzlvs5WzaM449WaNIdl9q0ntPtx/fDkqMErlWdvxo8tPbhkfjHakfneoYTeSBbXb1V9QtE308
	aPHzMbmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qggny-007bOu-11;
	Thu, 14 Sep 2023 07:30:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qggnu-007bOR-1v
	for barebox@lists.infradead.org;
	Thu, 14 Sep 2023 07:30:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qggns-0007KE-0h; Thu, 14 Sep 2023 09:30:20 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qggnr-006FY3-Ix; Thu, 14 Sep 2023 09:30:19 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qggnr-00EWnT-1k;
	Thu, 14 Sep 2023 09:30:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Sep 2023 09:30:18 +0200
Message-Id: <20230914073018.3462650-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_003022_630364_4C00A8BF 
X-CRM114-Status: GOOD (  10.98  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] of: platform: don't fail of_find_device_by_node() if no driver bound
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_find_device_by_node() may be called by a driver following
of_platform_populate in order to bind the children to drivers.
It's thus wrong to return NULL when a device has been found, but no
driver was registered. That also aligns the function with the
expectation resulting from its name: A device is found and devices may
be bound or not.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/platform.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index bd5f2ad82c6b..1f79a539f541 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -23,11 +23,9 @@
 struct device *of_find_device_by_node(struct device_node *np)
 {
 	struct device *dev;
-	int ret;
 
-	ret = of_device_ensure_probed(np);
-	if (ret)
-		return NULL;
+	/* Not having a driver is not an error here */
+	(void)of_device_ensure_probed(np);
 
 	if (deep_probe_is_supported())
 		return np->dev;
-- 
2.39.2



