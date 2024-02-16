Delivery-date: Fri, 16 Feb 2024 23:07:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rb6Mc-0094Uh-0m
	for lore@lore.pengutronix.de;
	Fri, 16 Feb 2024 23:07:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rb6Mb-0006cU-MR
	for lore@pengutronix.de; Fri, 16 Feb 2024 23:07:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NFfKwkOQoI5T0rJBPaf2rnIqCpmOtw1n1OCS/RZ5wyw=; b=U9w49XpUmKFxl/uu77ozVLF1NK
	ybjEDuhhqmNRn6NQUDsnhScDJqo7yUASydo+F1viXVEzEElFbGHkTYr0lW1cIZStszSGSHakEi6Il
	Vq4rx3V0PeVisLaBMhscgyw9gZOao8Gqk16ezmPHEYg7QWTNovKTiKl07M/RBdry1biJaFFTF8B25
	xEe8MoKIud/twYcovghrSsyX0/NcIsG6Kb+ZwBtMQlniZsXBt8alFMRhgjxhKTuJV2WSBAvKjb8h7
	XKiVW8dfwbyK/dJ0WymGDkTmA0OhXyAHY/At6BAm29CZKmTHONAxHkJVY+2rkXjA6IahUmfV4b+u+
	D7zHyeqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb6MB-00000003sdj-1x6z;
	Fri, 16 Feb 2024 22:06:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb6M8-00000003scn-1tQL
	for barebox@lists.infradead.org;
	Fri, 16 Feb 2024 22:06:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rb6M7-0006V4-Aw; Fri, 16 Feb 2024 23:06:51 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rb6M6-0019bZ-Ul; Fri, 16 Feb 2024 23:06:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rb6M6-009liJ-2n;
	Fri, 16 Feb 2024 23:06:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 16 Feb 2024 23:06:49 +0100
Message-Id: <20240216220649.2328345-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240216220649.2328345-1-a.fatoum@pengutronix.de>
References: <20240216220649.2328345-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_140652_515960_63BEE34B 
X-CRM114-Status: GOOD (  11.50  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] phy: freescale: imx8mq-usb: make i.MX8MP support more explicit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The driver was originally written for use with the i.MX8MQ's DWC3, but
has been extended to also cover the i.MX8MP's DWC3.

While we won't change the config symbol name, because that could break
existing users, we can and should change the symbol prompt and help
text as well as the dependency to reflect that the driver also targets
the i.MX8MP.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/phy/freescale/Kconfig | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
index 4eb1f9a55c3b..04e8bcf18833 100644
--- a/drivers/phy/freescale/Kconfig
+++ b/drivers/phy/freescale/Kconfig
@@ -1,5 +1,9 @@
 # SPDX-License-Identifier: GPL-2.0-only
-config PHY_FSL_IMX8MQ_USB
-	bool "Freescale i.MX8M USB3 PHY"
-	default ARCH_IMX8MQ
+
+config PHY_FSL_IMX8MQ_USB
+	bool "Freescale i.MX8MQ/P USB3 PHY"
+	default ARCH_IMX8MQ || ARCH_IMX8MP
+	help
+	  Enable this to add support for the USB PHY found on
+	  the i.MX8M Quad and Plus.
 
-- 
2.39.2



