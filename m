Delivery-date: Wed, 29 May 2024 12:09:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCGF9-00190B-31
	for lore@lore.pengutronix.de;
	Wed, 29 May 2024 12:09:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCGF9-0002Qf-BP
	for lore@pengutronix.de; Wed, 29 May 2024 12:09:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Mt0Mu/yE9ea8pg6Ti/zOzouEgIpcLQOj21LdLU8MFk4=; b=cya5FcqCZkmIS/WC5Y8dv3JKCj
	KE5yggCUWKHeWAU4SXpbcAZGh6MBNqifa0eDlGFbRX/LhSG+BkN4+LhRb3tvujXR3nnlPTeN4h6RD
	i5VhyjLL1NOV5LYlQZIA6i8G70836fYJeb+nL36sI9kb7vX5yitZM+j0nkSqq0KDGhYhbsCC+/12r
	jxg6z0LG9RCsK5pW96cV//xl2vfygAfUL2jXGVtjLWmPxmAoxPrDL0ZuVu6SK5Sz06uvbGKMHr4Sa
	636b5ZsJZcn82Qyn5ygYSOTAmj8RUw9GlT6cvgxnrQUk3IWIp5KmWDOp+ZgWA6ZqZ2+s4T4dT6fWO
	tukQFvpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCGEd-00000003k2r-2PA2;
	Wed, 29 May 2024 10:08:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCGEa-00000003k2T-3i5S
	for barebox@lists.infradead.org;
	Wed, 29 May 2024 10:08:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sCGEZ-0002JP-H4; Wed, 29 May 2024 12:08:39 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sCGEZ-003Rv8-0D; Wed, 29 May 2024 12:08:39 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sCGEY-002JYr-34;
	Wed, 29 May 2024 12:08:38 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: David Jander <david@protonic.nl>,
	Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 29 May 2024 12:08:38 +0200
Message-Id: <20240529100838.551840-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_030840_949966_B10C40DE 
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1] spi: stm32: avoid enabling SPI in setup to allow register configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: David Jander <david@protonic.nl>

The stm32_spi_setup function configures the STM32 SPI engine by setting
the SPI mode and speed. However, enabling the SPI peripheral during this
process blocks all changes to configuration registers, causing the
configuration writes to be ignored.

Remove stm32_spi_enable calls from stm32_spi_setup to ensure proper
configuration of the SPI registers before enabling the peripheral.

This fix addresses the following error on some platforms with an SJA1105
switch attached over SPI to an STM32MP151 SoC:
ERROR: sja1105 switch@00: Device tree specifies chip 2919236366/39557
       but found 3607101831/0, please fix it!
ERROR: sja1105 switch@00: Device ID check failed: -19

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/spi/stm32_spi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/spi/stm32_spi.c b/drivers/spi/stm32_spi.c
index 9ef405a788..df48264d24 100644
--- a/drivers/spi/stm32_spi.c
+++ b/drivers/spi/stm32_spi.c
@@ -330,7 +330,6 @@ static int stm32_spi_setup(struct spi_device *spi)
 	int ret;
 
 	stm32_spi_set_cs(spi, false);
-	stm32_spi_enable(priv);
 
 	stm32_spi_set_mode(priv, spi->mode);
 
@@ -346,7 +345,6 @@ static int stm32_spi_setup(struct spi_device *spi)
 		__func__, spi->mode, spi->bits_per_word,
 		spi->max_speed_hz);
 out:
-	stm32_spi_disable(priv);
 	return ret;
 }
 
-- 
2.39.2



