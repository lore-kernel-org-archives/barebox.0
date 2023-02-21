Delivery-date: Tue, 21 Feb 2023 09:07:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNfy-00Dea8-Nk
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 09:07:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNfx-0006pp-Gq
	for lore@pengutronix.de; Tue, 21 Feb 2023 09:07:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YGl3dpF70Oorjx0a0uNOIwJlgj+9oYHoYd9L0Y2BSXY=; b=YyoLU3ZUjhfONCJONKT97ET7+V
	MQ0PSMHJ+V8zFx5io3dT3O8bgJ+v8DmA/jfwkzJMtHKsR22bPcN3z3YA/owLeTwh77TxRBQgtxJuP
	akT3P613cEwYsgjDbgRIulmx2p7d5msHKd8q5Rhw4i6H20sXGDPnEzuMu6i3IboAfJkgY+IWlXrVa
	izut5Gzhn/YRuXyxZhDMaH3rIS1SkUN0Ugw5PKHsPeObdJpIj944jbV+HJHqSQut+FqMyPixoJ1lB
	tWjNa38OlMImBFJ+9OURv09Q99opD3Z/f0DA165869DUjEXOcVYMELSEI4gyQbxkdlsV2NolkXl9g
	i3Ia+sTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNeg-006yPh-1G; Tue, 21 Feb 2023 08:05:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNeV-006yIv-MU
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 08:05:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeS-00062c-NU; Tue, 21 Feb 2023 09:05:28 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeQ-006RjW-Sq; Tue, 21 Feb 2023 09:05:28 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeP-002YHL-QM; Tue, 21 Feb 2023 09:05:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 21 Feb 2023 09:05:19 +0100
Message-Id: <20230221080524.607241-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230221080524.607241-1-a.fatoum@pengutronix.de>
References: <20230221080524.607241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_000531_890668_34C76A69 
X-CRM114-Status: UNSURE (   9.80  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RFC 07/12] dma: define CONFIG_OF_DMA_COHERENCY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some architectures are either exclusively cache-coherent or not, but
some others can have only some devices that snoop the bus, while the
rest doesn't. Provide a new CONFIG_OF_DMA_COHERENCY symbol for selection
on such platforms.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/dma/Kconfig | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/dma/Kconfig b/drivers/dma/Kconfig
index 46b9b90d8231..d96fcd0f845a 100644
--- a/drivers/dma/Kconfig
+++ b/drivers/dma/Kconfig
@@ -7,4 +7,14 @@ config MXS_APBH_DMA
 	select STMP_DEVICE
 	help
 	  Experimental!
+
+config OF_DMA_COHERENCY
+	bool "Respect device tree DMA coherency settings" if COMPILE_TEST
+	depends on HAS_DMA
+	help
+	  For most platforms supported, either all DMA is coherent or it isn't.
+	  Platforms that have DMA masters of mixed coherency or that differ
+	  from the architecture default will select this option to parse
+	  DMA coherency out of the DT.
+
 endmenu
-- 
2.30.2



