Delivery-date: Thu, 02 Feb 2023 18:35:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNdUn-00Bdis-BL
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 18:35:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNdUk-0004xI-Qi
	for lore@pengutronix.de; Thu, 02 Feb 2023 18:35:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vh/qs6TY77dNEJxX9amqw3Lbpki3PYQcF3ctMEeoJSc=; b=ftXUQc0EonafJr4A7ZtquXDCCR
	YtEKokDIQRPbiPNqs5kt31K/lyoL2TH/YfmNgqIx8lqdi6d8SchRxcteFOU3tIQj/xWMWeh1MOlRI
	rQYf5p0rxtMrHVD5pkjDwf0lu2CJ56S/W2ASfMfxQgouQ5GBeaFCp0Y8Fz+Oj+4r7dhMls4ZJ1AYu
	UAJ/USVN4nKHsCF0dt2rQjUUMrpDZHXfUyJ/sXxZmhiw8arWSz60/dIGfmstfQN3YWbYHrH9aVR/+
	PQ/v21nJ6uCSkT6n3Q50B3IdQAbKhNIIIjjgEieLrrf5KstzTJ8aMzZcS0YwnzMSrI/kVJAOfFx7+
	x53dPRLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNdTL-00Gogv-Ed; Thu, 02 Feb 2023 17:34:07 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNdT9-00GobZ-4e
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 17:33:59 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id 0DD6BE74013; Thu,  2 Feb 2023 18:33:22 +0100 (CET)
Received: from astat.fritz.box (a89-183-231-214.net-htp.de [89.183.231.214])
	by lynxeye.de (Postfix) with ESMTPA id D0E8DE74016
	for <barebox@lists.infradead.org>; Thu,  2 Feb 2023 18:33:18 +0100 (CET)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  2 Feb 2023 18:33:12 +0100
Message-Id: <20230202173312.504493-5-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230202173312.504493-1-l.stach@pengutronix.de>
References: <20230202173312.504493-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_093355_363554_6DAB13D7 
X-CRM114-Status: GOOD (  10.32  )
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
Subject: [PATCH 5/5] ARM: dts: i.MX8MP: drop OCOTP MAC address provider
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now that the MAC address can be read properly through the
NVMEM framework, there is no need for the custom Barebox
MAC address provider anymore. Both FEC and EQOS network
interfaces already reference the proper nvmem cells to fetch
their MAC address from OCOTP.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/dts/imx8mp-evk.dts                | 4 ----
 arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts | 4 ----
 2 files changed, 8 deletions(-)

diff --git a/arch/arm/dts/imx8mp-evk.dts b/arch/arm/dts/imx8mp-evk.dts
index d992b14882a3..28d8c5f9292e 100644
--- a/arch/arm/dts/imx8mp-evk.dts
+++ b/arch/arm/dts/imx8mp-evk.dts
@@ -68,7 +68,3 @@
 		reg = <0xe0000 0x20000>;
 	};
 };
-
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x640>;
-};
diff --git a/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
index c47e7285a703..6e81f58e2786 100644
--- a/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -53,7 +53,3 @@
 		reg = <0xe0000 0x20000>;
 	};
 };
-
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x640>;
-};
-- 
2.39.1



