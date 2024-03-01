Delivery-date: Fri, 01 Mar 2024 08:48:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfxd1-001FnT-0T
	for lore@lore.pengutronix.de;
	Fri, 01 Mar 2024 08:48:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfxd0-0003ln-Id
	for lore@pengutronix.de; Fri, 01 Mar 2024 08:48:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/ds9l/SRA2pInXO5vou2fwuOGwtnpxuZc3tDhTvRK9s=; b=a5LOHd4KS1dVaf4JFTZzsgxCx3
	1W/Hq5aoZ6hOwctEw0Ni0AbmQB2gtP4ceDi2s6gOgYoTzkQhEPJ+EVnBDaNmblTZflyUGCta2ItXQ
	RJE1V3H4QQeMr8dhk11PXLHv+n9axps4ZYmeVbpF1hNt5JTdGTPzLibomxwhIat4ptJf2SJa4R+e/
	wJvHSX4ftA1G1EQlKa8vRrSVDoN7cdfC1eQP0wHM9uIQa4nZDGPt8MgCi6p88fwNe81GEIT7WsnlG
	CvA4voGbBxuGwV/Zmv/WIspu0UX0sBRckRVUk2RIBskzbn4d+ogsLCYidI78NP5Mc5YUIgis1t+JV
	CMdZlSPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfxcb-0000000GmBJ-0YWF;
	Fri, 01 Mar 2024 07:47:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfxcY-0000000GmAl-1Axh
	for barebox@lists.infradead.org;
	Fri, 01 Mar 2024 07:47:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfxcX-0003fx-4W; Fri, 01 Mar 2024 08:47:53 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfxcW-003jlt-OG; Fri, 01 Mar 2024 08:47:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfxcW-006mxg-0U;
	Fri, 01 Mar 2024 08:47:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  1 Mar 2024 08:47:52 +0100
Message-Id: <20240301074752.1618164-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_234754_336068_B03A268C 
X-CRM114-Status: GOOD (  12.39  )
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
Subject: [PATCH master] firmware: arm_scmi: pmdomain: restrict default y for driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

default y is inappropriate for drivers that depend on CONFIG_COMPILE_TEST,
because it enables the driver as soon as CONFIG_COMPILE_TEST is enabled.

While the driver can be built in that case, without
CONFIG_ARM_SCMI_PROTOCOL, it just prints a red error message on init:

  ERROR: initcall scmi_power_domain_driver_register+0x0/0x10 failed: Invalid argument

Therefore, allow building, but don't enable it by default unless
CONFIG_ARM_SCMI_PROTOCOL=y.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/firmware/arm_scmi/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/arm_scmi/Kconfig b/drivers/firmware/arm_scmi/Kconfig
index e14c1ede3619..29b0152901ad 100644
--- a/drivers/firmware/arm_scmi/Kconfig
+++ b/drivers/firmware/arm_scmi/Kconfig
@@ -73,7 +73,7 @@ endif #ARM_SCMI_PROTOCOL
 config ARM_SCMI_POWER_DOMAIN
 	tristate "SCMI power domain driver"
 	depends on ARM_SCMI_PROTOCOL || (COMPILE_TEST && OF)
-	default y
+	default ARM_SCMI_PROTOCOL
 	select PM_GENERIC_DOMAINS
 	help
 	  This enables support for the SCMI power domains which can be
-- 
2.39.2



