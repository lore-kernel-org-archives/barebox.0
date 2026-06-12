Delivery-date: Fri, 12 Jun 2026 08:00:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXuwn-004xti-1x
	for lore@lore.pengutronix.de;
	Fri, 12 Jun 2026 08:00:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXuwm-0005aa-R1
	for lore@pengutronix.de; Fri, 12 Jun 2026 08:00:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DkXQAB+Dxu9cftHuMMQz3soX5PssAy8ISCOFmB1BnL4=; b=p14dC57i9p7q+hrHK1Y7f+EHjZ
	rpVqinQUpvSbVgasxwWyAkYo7fPpr145YcoEOT+pKRgwN8DYvDSSw3867JTWYjYF2XAbELSI1LnfQ
	Pzho465S2PXqCz+cC7hPgvHLiq19aTg6ib8SnDjL2MPcfM4JBRhu6LCfDEUPaCdBxgfFr57uRArCH
	2Ed/Ww0AP5WOuBgasBQBh7M7p2sZ5Y9yj8mwp1s456Y0+pNejUpVueFDuOP6UN1yl9dyf/V4EmQh0
	akxYx5IkDQPCf59lmMl7x25a4QJJoDf623/+8MxZ9mAfNxqaSBpyM5dNhq6pz9H3B+6lob/ypZ70x
	VQUnemrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXuvc-0000000AOSO-3Haw;
	Fri, 12 Jun 2026 05:59:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXuvZ-0000000AOPa-1tFn
	for barebox@lists.infradead.org;
	Fri, 12 Jun 2026 05:59:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1wXuvW-0004mP-5n; Fri, 12 Jun 2026 07:59:34 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1wXuvW-002Kes-05;
	Fri, 12 Jun 2026 07:59:34 +0200
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1wXuvV-00000002fPu-44Nc;
	Fri, 12 Jun 2026 07:59:33 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 12 Jun 2026 07:59:18 +0200
Message-ID: <20260612055930.635833-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260612055930.635833-1-o.rempel@pengutronix.de>
References: <20260612055930.635833-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_225937_516426_A59D805D 
X-CRM114-Status: GOOD (  12.34  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 02/10] serial: atmel: add lan9696 (Microchip LAN969X) support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Allow building the Atmel USART driver on Microchip LAN969X (ARCH_MICROCHIP)
in addition to ARCH_AT91, and match the new "microchip,lan9691-usart"
compatible alongside the existing AT91 variants.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/serial/Kconfig | 10 +++++++---
 drivers/serial/atmel.c |  3 ++-
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 6ac1d94526c2..15cbdafcffcc 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -90,9 +90,13 @@ config DRIVER_SERIAL_NS16550_OMAP_TTYS
 	  used.
 
 config DRIVER_SERIAL_ATMEL
-	depends on ARCH_AT91
-	default y
-	bool "Atmel serial driver"
+	bool "Atmel USART support"
+	depends on ARCH_AT91 || ARCH_MICROCHIP
+	default y if ARCH_AT91
+	help
+	  This enables the driver for the on-chip UARTs of Atmel/Microchip
+	  AT91, SAMA5, and LAN969X SoC families. The driver supports device
+	  tree configuration and clock framework integration.
 
 config DRIVER_SERIAL_NS16550_PCI
 	depends on DRIVER_SERIAL_NS16550
diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index 2dcb458fbd30..13747ef8201b 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -442,8 +442,9 @@ static int atmel_serial_probe(struct device *dev)
 }
 
 static const struct of_device_id __maybe_unused atmel_serial_dt_ids[] = {
-	{ .compatible = "atmel,at91rm9200-usart" },
+	{ .compatible = "microchip,lan9691-usart" },
 	{ .compatible = "atmel,at91sam9260-usart" },
+	{ .compatible = "atmel,at91rm9200-usart" },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, atmel_serial_dt_ids);
-- 
2.47.3



