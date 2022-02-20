Delivery-date: Sun, 20 Feb 2022 13:49:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlej-004wsl-Eu
	for lore@lore.pengutronix.de; Sun, 20 Feb 2022 13:49:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLleh-0001Lo-TH
	for lore@pengutronix.de; Sun, 20 Feb 2022 13:49:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4CIay3U+rmFaQI81QPmkXhd/Islod69lxkMcDUi40f0=; b=dFaxNomkTh00R3
	YByGNXBx6vhmy2M2sKisHVWkuDeROfyQ4e8r37bK5Kr486P1CDZFoum0qIHr/Hq7yYs1VlaORS99K
	DRi2LJ2iNLyWI6Alf6dgrgwk/xFJsB8zJWr8cXJdw8L6tgAafP8Ikea81Co0/Eh+vSpyZn81ydgV7
	qX4zXN2gKqnQGFfkgm/mj4cYRXInLA93e4R2JKjc4fa94dsawtid63dtKt26W3CGxabwUVR32YxB7
	lMlR7gNyfBZo1MCY6rzfSkyM1/7IqfXyzBg22KF615+yMyZEvAIJHDSorMClwXNOoe/rMUGm8SJwG
	hcGnZRU3ZL7Qbm3lQh5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLldA-001I7E-Iq; Sun, 20 Feb 2022 12:48:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLlcw-001I1C-Jh
 for barebox@lists.infradead.org; Sun, 20 Feb 2022 12:47:49 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcs-0000aH-RD; Sun, 20 Feb 2022 13:47:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcr-00CoQO-Ks; Sun, 20 Feb 2022 13:47:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 20 Feb 2022 13:47:35 +0100
Message-Id: <20220220124736.3052502-24-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
References: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_044746_708427_A8F03B01 
X-CRM114-Status: UNSURE (   8.50  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 23/24] ARM: dts: stm32mp: remove regulator-name override in
 stm32mp151.dtsi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox regulator core will now just take node name in absence of the
property, so no need for this fixup any longer.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp151.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/dts/stm32mp151.dtsi b/arch/arm/dts/stm32mp151.dtsi
index aac2907bc6b5..eac997dfceaa 100644
--- a/arch/arm/dts/stm32mp151.dtsi
+++ b/arch/arm/dts/stm32mp151.dtsi
@@ -51,10 +51,6 @@
 	barebox,provide-mac-address = <&ethernet0 0x39>;
 };
 
-&vrefbuf {
-	regulator-name = "vref";
-};
-
 &usbphyc {
 	vdda1v1-supply = <&reg11>;
 	vdda1v8-supply = <&reg18>;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

