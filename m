Delivery-date: Thu, 13 Aug 2026 10:16:00 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuQbY-002cOP-0H
	for lore@lore.pengutronix.de;
	Thu, 13 Aug 2026 10:16:00 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A7F30201EBE
	for <lore@pengutronix.de>; Thu, 13 Aug 2026 10:16:00 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=d2pJHM1e;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ufzik8798O8cp7SAFCA5j1LWO7TesMBX3+z8sBBlZa8=; b=d2pJHM1evb8JzDHnipDP1fbQ9F
	R8Em4BMXMzcuObXxaVcOpoCV7CojQjHjrocLQKkmOb8IScHHryJTxwqtuJUah1wqYA5v4V2NiYPpL
	CFtDt/bk5ILlaOPpLoXCiuiuIfM3TsVsba+KNWVeQbOEY7HJkxkcJ8YstDL43d08rUBmRmX4x79uz
	dhAvv+WYKTCbzqMmOoDNBB3OsTt2Tao6aTO9GDMYg6UkI1F/fm2VoYdFCPt7nX/R+2A7vpgcQ9CMj
	t9AGOzohjv0ULH2pxtT4rpJQSgzW2T9f20kJzFT/uiwJSxs/ZjAaH4xe3K+LR7SPaQ7NTG37zP3rY
	fxgTmsaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQaU-000000006Ei-2fB0;
	Thu, 13 Aug 2026 08:14:54 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQaP-000000006Be-146k
	for barebox@lists.infradead.org;
	Thu, 13 Aug 2026 08:14:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A8F01201D2B;
	Thu, 13 Aug 2026 10:14:45 +0200 (CEST)
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1wuQaL-001Fmh-1N;
	Thu, 13 Aug 2026 10:14:45 +0200
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1wuQaL-00000007sp8-1XE3;
	Thu, 13 Aug 2026 10:14:45 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: robert.marko@sartura.hr,
	Oleksij Rempel <o.rempel@pengutronix.de>
Subject: [PATCH v2 1/9] ARM: introduce ARCH_MICROCHIP for ARM64 Microchip SoCs
Date: Thu, 13 Aug 2026 10:14:31 +0200
Message-ID: <20260813081444.1879009-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260813081444.1879009-1-o.rempel@pengutronix.de>
References: <20260813081444.1879009-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_011449_452676_3AA0A8D3 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Add the ARCH_MICROCHIP top-level symbol so subsequent peripheral
    driver patches (atmel serial, atmel-quadspi, ...) can gain ARCH_MICROCHIP
    as a build dependency. This SoC architecture covers Microchip's ARM64 switch
    SoCs, starting with the LAN969X family. ARM32 Microchip/Atmel SoCs (AT91,
    SAMA5) continue to use ARCH_AT91. 
 
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
X-Stat-Signature: uu359hgpoie84reymytuoj6om3abjwzu
X-Spamd-Result: default: False [-6.01 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
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
X-Rspamd-Queue-Id: A7F30201EBE

Add the ARCH_MICROCHIP top-level symbol so subsequent peripheral
driver patches (atmel serial, atmel-quadspi, ...) can gain
ARCH_MICROCHIP as a build dependency.

This SoC architecture covers Microchip's ARM64 switch SoCs, starting
with the LAN969X family. ARM32 Microchip/Atmel SoCs (AT91, SAMA5)
continue to use ARCH_AT91.

Assisted-by: Claude-Code:claude-opus-5
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
Link to v1: https://lore.barebox.org/barebox/20260612055930.635833-1-o.rempel@pengutronix.de/

Changes v2:
- also select COMMON_CLK: the SoC clock controller driver added later
  in this series depends on it
---
 arch/arm/Kconfig | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index fe4fd3f47178..aed6084bef07 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -272,6 +272,21 @@ config ARCH_ZYNQMP
 	select GPIOLIB
 	select HAS_MACB
 
+config ARCH_MICROCHIP
+	bool "Microchip ARM64 SoC support"
+	depends on ARCH_MULTIARCH
+	depends on 64BIT
+	select OFDEVICE
+	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
+	select PINCTRL
+	select GPIOLIB
+	help
+	  This enables support for Microchip ARM64-based SoCs,
+	  including the LAN969X Ethernet switch family.
+
+	  For ARM32 Microchip/Atmel SoCs (AT91, SAMA5), use ARCH_AT91.
+
 source "arch/arm/cpu/Kconfig"
 source "arch/arm/mach-at91/Kconfig"
 source "arch/arm/mach-bcm283x/Kconfig"
-- 
2.47.3



