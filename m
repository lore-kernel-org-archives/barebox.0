Delivery-date: Thu, 13 Aug 2026 11:12:42 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuRUP-002dGG-1R
	for lore@lore.pengutronix.de;
	Thu, 13 Aug 2026 11:12:42 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0A293201BAA
	for <lore@pengutronix.de>; Thu, 13 Aug 2026 11:12:42 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=aFbp91To;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uk9cgQhU9QZhoRC57ErG9OCtXSWAGnuZq8iKLCSDXFI=; b=aFbp91ToMS/OmzrZzkbQiRVGED
	K4g5rI7/hSgt6DN4y7EU3Vy26A+c/se2EJMfxF5xj6OqFjjWEGqTUNiYyELTxS0d/Kw9JTDf31GDK
	gS1UhC88sYusMf4OU1A+lXNJP0YFcc0ySoSSQu1aE3mYTzqBEIe5GsW3sEiO2luJjPkriQpc1BJHi
	NdPieG6/veqC9+s+L4kqrNfROEn+1Kc+fxS11j6f088CmJuNjIN1LxrG9X4PwsJ5AwTGlNr10UPwU
	KAXzHauuzI1c1bHRndVmUWOEr68EEXsU4+fLxkAczwtoNqEgVrEBMiPPlJLCUib3a2PuBQh8qW1V7
	i40j0D1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQaT-000000006DH-0jJx;
	Thu, 13 Aug 2026 08:14:53 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQaP-000000006Bd-0nd3
	for barebox@lists.infradead.org;
	Thu, 13 Aug 2026 08:14:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id AE499201EBE;
	Thu, 13 Aug 2026 10:14:45 +0200 (CEST)
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1wuQaL-001Fmi-1R;
	Thu, 13 Aug 2026 10:14:45 +0200
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1wuQaL-00000007spC-1bXG;
	Thu, 13 Aug 2026 10:14:45 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: robert.marko@sartura.hr,
	Oleksij Rempel <o.rempel@pengutronix.de>
Subject: [PATCH v2 2/9] serial: atmel: add lan9696 (Microchip LAN969X) support
Date: Thu, 13 Aug 2026 10:14:32 +0200
Message-ID: <20260813081444.1879009-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260813081444.1879009-1-o.rempel@pengutronix.de>
References: <20260813081444.1879009-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_011449_379582_088E55A6 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Allow building the Atmel USART driver on Microchip LAN969X
    (ARCH_MICROCHIP) in addition to ARCH_AT91, and match the new "microchip,lan9691-usart"
    compatible alongside the existing AT91 variants. Assisted-by: Claude-Code:claude-opus-5
    Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de> --- Link to v1: https://lore.barebox.org/barebox/20260612055930.635833-2-o.rempel@pengutronix.de/
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: xy3d374pz7aqxac5m5d6zfcufzd1muij
X-Spamd-Result: default: False [-6.01 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 0A293201BAA

Allow building the Atmel USART driver on Microchip LAN969X (ARCH_MICROCHIP)
in addition to ARCH_AT91, and match the new "microchip,lan9691-usart"
compatible alongside the existing AT91 variants.

Assisted-by: Claude-Code:claude-opus-5
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
Link to v1: https://lore.barebox.org/barebox/20260612055930.635833-2-o.rempel@pengutronix.de/

Changes v2:
- Kconfig: keep plain "default y" instead of "default y if ARCH_AT91"
  (Marco Felsch)
---
 drivers/serial/Kconfig | 8 ++++++--
 drivers/serial/atmel.c | 3 ++-
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 6ac1d94526c2..e2e7cea55e70 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -90,9 +90,13 @@ config DRIVER_SERIAL_NS16550_OMAP_TTYS
 	  used.
 
 config DRIVER_SERIAL_ATMEL
-	depends on ARCH_AT91
+	bool "Atmel USART support"
+	depends on ARCH_AT91 || ARCH_MICROCHIP
 	default y
-	bool "Atmel serial driver"
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



