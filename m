Delivery-date: Wed, 03 May 2023 12:20:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pu9bF-0033Tr-5d
	for lore@lore.pengutronix.de; Wed, 03 May 2023 12:20:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pu9bD-0006ZX-FB
	for lore@pengutronix.de; Wed, 03 May 2023 12:20:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JXRS3paF5nlY56I5KMJ4mi13FZgccC08xQ3x+PjSJdU=; b=u3s8k8IwswemMb075fYTBa1xYD
	ZIia1R9RLaELNecCXYdvEO8Wji9qAGx4sYwh5s751R/SnYKTHOQe807/Yl33C0HrUoyHpXVs2t73V
	ILSFOOjL+P8nbUcF8pZhVnuaD/FSd0h2SIsXLjWlstk4pL2sV1UX4Gd37mesXQFaDMg+vFZtTVXi/
	RzWEDOuN2kchdV5YZpjRGQUzvZNz9H8yylPhjQIt+XIL0ZQs4jYag0JDUvx2F5Px3rWIJME8GzufW
	5iatHmbu/FLTjCQe9ioYP4Q7tje+qHkpjJNFhNpPUcpkjGQqaHB9TQpp2fQat3EssKBn89L2slLqw
	2ZjNyAvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pu9a7-0046ps-1e;
	Wed, 03 May 2023 10:19:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pu9a2-0046nc-32
	for barebox@lists.infradead.org;
	Wed, 03 May 2023 10:19:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1pu9Zz-00065A-EX; Wed, 03 May 2023 12:19:23 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pu9Zx-000nxH-Pa; Wed, 03 May 2023 12:19:21 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pu9Zw-007f5Q-Kp; Wed, 03 May 2023 12:19:20 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  3 May 2023 12:19:19 +0200
Message-Id: <20230503101919.1826193-5-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230503101919.1826193-1-o.rempel@pengutronix.de>
References: <20230503101919.1826193-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_031926_980305_D5F86C56 
X-CRM114-Status: UNSURE (   9.86  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 4/4] arm: dts: stm32mp151-prtt1l: Configure USB gadget FIFOs for multiple gadgets support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This patch configures the USB gadget FIFOs of PRTT1L boards to support
multiple gadgets at the same time. The configuration was tested with the
"usbgadget -S '/dev/mmc1(mmc1)' -s -A '' -b" command.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/stm32mp151-prtt1l.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/stm32mp151-prtt1l.dtsi b/arch/arm/dts/stm32mp151-prtt1l.dtsi
index 98a9c20d6d..fecd068fc0 100644
--- a/arch/arm/dts/stm32mp151-prtt1l.dtsi
+++ b/arch/arm/dts/stm32mp151-prtt1l.dtsi
@@ -56,6 +56,7 @@
 	phys = <&usbphyc_port1 0>;
 	phy-names = "usb2-phy";
 	status = "okay";
+	g-tx-fifo-size = <128 128 128 16>;
 };
 
 &usbphyc {
-- 
2.39.2



