Delivery-date: Thu, 15 Jul 2021 14:36:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m40bB-0006sO-9Q
	for lore@lore.pengutronix.de; Thu, 15 Jul 2021 14:36:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m40bA-00040l-DI
	for lore@pengutronix.de; Thu, 15 Jul 2021 14:36:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3SCSKF0KtiabnzR1gyU3q0nbHfR+Z5oYP8TSg7AyRog=; b=qDMfadV/ETLd8r
	asxlASyo46IR6yZt/WkGtLbXG6NkZGlSjpwAoLHFSYq4gV3TQqNIVd1E2rUzioEvV+6Y9Jnx4zLWK
	RDUAUoOKpcONRXbb/Y29tbnEVrk0x3yDVEXTAi0cxychx3mcYicJaPvOtrzoquSzp21VcL4iNOMAN
	nDw4X4OdC5Cu5RasrODVXgWIHySl0wqRFS+tbzN48KPO4xJOZcY4yZR0HkGHMOdAgKJPIVxlnWuPE
	4nQ5rj9SnYwGQc7c99XL3OE37QPdzavdO7h/a65OC2Vu8s5o9+NlMOIxrRi7zBKfMHHbzujYr2xPR
	Gg7j4otVOiEcUl4dqJeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m40ZV-000q3c-BS; Thu, 15 Jul 2021 12:34:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m40ZM-000q1i-Lb
 for barebox@lists.infradead.org; Thu, 15 Jul 2021 12:34:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1m40ZJ-0003Z0-Nx; Thu, 15 Jul 2021 14:34:21 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1m40ZJ-0006rd-47; Thu, 15 Jul 2021 14:34:21 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org,
	david@protonic.nl
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 15 Jul 2021 14:34:18 +0200
Message-Id: <20210715123418.26339-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_053424_758341_7B71E28B 
X-CRM114-Status: GOOD (  11.51  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1] ARM: protonic-imx6: do not expose RFID not to the kernel
 dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RFID not is not used and should not be used by kernel, so remove the
fixup.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index a718d54df4..6eb31a4bc4 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -794,12 +794,6 @@ static int prt_imx6_probe(struct device_d *dev)
 	if (ret)
 		goto free_priv;
 
-	ret = of_register_fixup(prt_imx6_of_fixup, priv);
-	if (ret) {
-		dev_err(dev, "Failed to register fixup\n");
-		goto free_priv;
-	}
-
 	prt_priv = priv;
 
 	return 0;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

