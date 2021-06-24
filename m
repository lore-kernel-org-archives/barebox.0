Delivery-date: Thu, 24 Jun 2021 10:17:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwKYg-0006eX-2T
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 10:17:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwKYf-0004tg-4m
	for lore@pengutronix.de; Thu, 24 Jun 2021 10:17:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6DdF23UQyboAvn7Gbh4v5am69mp3k5y3UD0bRelNL/U=; b=1KQosqJ3h0VfgD
	8JYyQaP9UMLIhsXK1b2dZP7DxGTPkMqtFJ95yHI5e18D8dNWZYifSe+etDeOLt05EXgBQX7alBGpj
	N+sUlcU7OIC8fuD5JTW4MBVClXazR2E6QlLvZvwl3XeoeqEYZs4t348SBHO88AydjSIijLeFsVh23
	hCshUsliVv2IzIiTJXLiLltkrTDLD9rJg60CA4juuHFPk9aumynyErVpShekX2JfcmSTrUDpaeIEA
	FV3jaMBcRCNXgndPmZCh3cjJ8Ss1yPchWQbEH/3IeDmVyny183s2L7pPuxnNKmH9wSOqn35jgtVOi
	lzeG7MP+WWbMx5C3SK2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwKWw-00DOmp-2q; Thu, 24 Jun 2021 08:16:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwKWq-00DOkz-IS
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 08:16:06 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lwKWm-0004ga-Lo; Thu, 24 Jun 2021 10:16:00 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lwKWm-0007gz-DH; Thu, 24 Jun 2021 10:16:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 24 Jun 2021 10:15:58 +0200
Message-Id: <20210624081558.29488-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_011604_650810_AACA2DFF 
X-CRM114-Status: UNSURE (   9.94  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] spi: imx: enable use for i.MX8MM and i.MX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

All i.MX8M variants so far are compatible with the eCSPI peripheral of
the i.MX51, which corresponds to the CONFIG_DRIVER_SPI_IMX_2_3 symbol.
This symbol was so far only selected for the i.MX8MQ.

Enable it for the other i.MX8M variants as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/spi/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 323d93efeb1a..91083ee70982 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -71,7 +71,7 @@ config DRIVER_SPI_IMX_0_7
 
 config DRIVER_SPI_IMX_2_3
 	bool
-	depends on ARCH_IMX50 || ARCH_IMX51 || ARCH_IMX53 || ARCH_IMX6 || ARCH_IMX7 || ARCH_IMX8MQ
+	depends on ARCH_IMX50 || ARCH_IMX51 || ARCH_IMX53 || ARCH_IMX6 || ARCH_IMX7 || ARCH_IMX8M
 	default y
 
 config DRIVER_SPI_MXS
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

