Delivery-date: Thu, 04 Jan 2024 15:19:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOZ1-003cVS-31
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 15:19:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOZ0-0005KD-Jv
	for lore@pengutronix.de; Thu, 04 Jan 2024 15:19:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qQzOSmHTsxiyPd0xAxl77JhVVSr7+UcCQF9sYc8c3HM=; b=uH+tI+h1h198jz9azSMvbw3jVU
	sMfMrQTpMSdW15CvyBYVbdRNOgKs/hQbSBegt8bntITcPHwjuOSSzb3wTLp6NmmWZ/9n+iTDijGDg
	0c7aNMgOGmnybQl+6i46wBywj/MY3cxuRPPSrH4JstQrXJxnQasEV905sygm1mGbGFBmXTYqVTjcC
	ovo/Rc+TwzrNP3Ie21R7efT8HUx1iNipNu+dRJVNN2XFjb5IUGaOrvg+GLN6CcdHricOReAIUDGgt
	Uu7wwYa2B/y3p9bBYdos9YeROubiUzVArp34IoT04APZTiPS3vscq6xUlSpLvtOmtz+MYFhhn0KuR
	baVUImeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOY2-00EJLG-1A;
	Thu, 04 Jan 2024 14:18:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXt-00EJ9r-2x
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 14:18:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXc-0004HV-Ka; Thu, 04 Jan 2024 15:17:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-000MyE-Mn; Thu, 04 Jan 2024 15:17:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-0017yJ-24;
	Thu, 04 Jan 2024 15:17:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Jan 2024 15:17:34 +0100
Message-Id: <20240104141746.165014-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104141746.165014-1-s.hauer@pengutronix.de>
References: <20240104141746.165014-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_061805_979091_70D075E1 
X-CRM114-Status: GOOD (  10.35  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 07/19] ARM: layerscape: drop wrong errata workaround
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

set_usb_txvreftune() works on the USB Parameter 1 Control Register.
USB Parameter 2 Control Register has a different register layout and
calling set_usb_txvreftune() on it is wrong. Drop the bogus errata
workaround.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/errata.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm/mach-layerscape/errata.c b/arch/arm/mach-layerscape/errata.c
index c03c092755..a193c061bc 100644
--- a/arch/arm/mach-layerscape/errata.c
+++ b/arch/arm/mach-layerscape/errata.c
@@ -71,13 +71,6 @@ static void erratum_a009008_ls1046a(void)
 	set_usb_txvreftune(scfg, SCFG_USB3PRM1CR_USB3);
 }
 
-static void erratum_a009008_ls1021a(void)
-{
-	u32 __iomem *scfg = IOMEM(LSCH2_SCFG_ADDR);
-
-	set_usb_txvreftune(scfg, SCFG_USB3PRM2CR_USB1);
-}
-
 static inline void set_usb_sqrxtune(u32 __iomem *scfg, u32 offset)
 {
 	scfg_clrbits32(scfg + offset / 4, SCFG_USB_SQRXTUNE_MASK << 23);
@@ -139,7 +132,6 @@ void ls1021a_errata(void)
 	erratum_a009798_ls1021a();
 	erratum_a008997_ls1021a();
 	erratum_a009007_ls1021a();
-	erratum_a009008_ls1021a();
 }
 
 static void erratum_a008850_post(void)
-- 
2.39.2



