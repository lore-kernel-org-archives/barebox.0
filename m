Delivery-date: Wed, 14 Dec 2022 12:00:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5PUa-003YKg-4R
	for lore@lore.pengutronix.de; Wed, 14 Dec 2022 12:00:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5PUX-0005pd-UB
	for lore@pengutronix.de; Wed, 14 Dec 2022 12:00:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rM2CsnH1cuZaqfZvL9fQn9z58WOAjaNFCvxtZhIqTig=; b=LJrkeys2TZlh6zztqS+Cff7CAe
	+FOxWh7AGzBy4sKIjTQs1xLpMIO6/zOBkTuQgTm3LpOSFuKUvJaDunzFHLKR4KKQEIibCRsHdJpMF
	5aHAXP1hgqOFjCdCyAyaiCCzU3IT3JfyHxZj8RtNiw8Y4cws8Uhhdpeozg9St6DET3bl7plOIQsot
	3CkB9ckS76FbFNdhyNmMLRl4WV9oeViUDKX6R2A13X1PHnp+HMq41XymVBMySeDb1CitpxwmfaTea
	R/G8+EON+lSObQj0YjzJn6m0ZFEybMaKPr+/mKREIlndwyA5MWwL60Esrr3gPYBD3zpqIedVICe8h
	mndyQSow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5PTQ-00FlZ3-LV; Wed, 14 Dec 2022 10:58:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5PTA-00FlPk-50
	for barebox@lists.infradead.org; Wed, 14 Dec 2022 10:58:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p5PT8-0005D4-OW; Wed, 14 Dec 2022 11:58:34 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p5PT7-004Run-8h; Wed, 14 Dec 2022 11:58:34 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p5PT6-003Xh8-EZ; Wed, 14 Dec 2022 11:58:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Dec 2022 11:58:23 +0100
Message-Id: <20221214105831.844421-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221214105831.844421-1-a.fatoum@pengutronix.de>
References: <20221214105831.844421-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_025836_332760_88BCBDB5 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/11] ARM: at91: sama5d4: enable for DT use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The sama5d4[devices].c files are for non-OF instantiation of platform
devices. We don't need anything out of these two files, so don't build
them when compiling for CONFIG_OFDEVICE.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 390d49d03dee..b9fda00b2e1a 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -30,6 +30,7 @@ obj-$(CONFIG_SOC_AT91SAM9G10) += at91sam9261.o at91sam9261_devices.o
 ifeq ($(CONFIG_OFDEVICE),)
 obj-$(CONFIG_SOC_AT91SAM9263) += at91sam9263.o at91sam9263_devices.o
 obj-$(CONFIG_SOC_SAMA5D3)	+= sama5d3.o sama5d3_devices.o
+obj-$(CONFIG_SOC_SAMA5D4)	+= sama5d4.o sama5d4_devices.o
 endif
 lwl-$(CONFIG_SOC_AT91SAM9263)	+= sam9263_ll.o
 lwl-$(CONFIG_SOC_SAMA5D2)	+= sama5d2_ll.o
@@ -39,4 +40,3 @@ obj-$(CONFIG_SOC_AT91SAM9G20) += at91sam9260.o at91sam9260_devices.o
 obj-$(CONFIG_SOC_AT91SAM9G45) += at91sam9g45.o at91sam9g45_devices.o
 obj-$(CONFIG_SOC_AT91SAM9X5)	+= at91sam9x5.o at91sam9x5_devices.o
 obj-$(CONFIG_SOC_AT91SAM9N12)	+= at91sam9n12.o at91sam9n12_devices.o
-obj-$(CONFIG_SOC_SAMA5D4)	+= sama5d4.o sama5d4_devices.o
-- 
2.30.2



