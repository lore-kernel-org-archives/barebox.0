Delivery-date: Tue, 04 Jul 2023 12:42:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGdU8-00EgTb-Bb
	for lore@lore.pengutronix.de; Tue, 04 Jul 2023 12:42:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGdU5-0002mw-Nt
	for lore@pengutronix.de; Tue, 04 Jul 2023 12:42:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KaMNxPnt9tLiW8md78UM67FzYCGiYq+0eaDFmasn6A0=; b=fQ7p5gC82oFkXUKP4G7J5Qf1OL
	GCzJJsyrlNbSWYBwgTnQSS/k0iX+It+aP6cVxxMIWxJYnF820VD+UNehfB6+anJ0QIEaUaoheM9tq
	Cw0XWe+vT7HU63OQYSHH2C4WvKOsKrVqyo8AQEuGOH99D+qvyTJ0x6MD3EAWR63D+kLCWF9CmDcq9
	HJm2kIEkbZHtXg0Exf7/kQKI4NMDsT5GA5pMDzoEDkGWgnRS+3AncpW63+IKKZES5na8sIonJiPdu
	iRVDnqy2BZ5f1Evt2BqjfRf0GCMLJNyLFqenay/gkonwCTIL+l5VsnZHWFvjtch01+aA9tqXfVkt6
	IMF/bshg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGdSp-00Cu9N-0o;
	Tue, 04 Jul 2023 10:40:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGdSm-00Cu86-01
	for barebox@lists.infradead.org;
	Tue, 04 Jul 2023 10:40:53 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qGdSj-0002Tt-Ut
	for barebox@lists.infradead.org; Tue, 04 Jul 2023 12:40:50 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue,  4 Jul 2023 12:40:47 +0200
Message-Id: <20230704104048.652650-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_034052_079695_2DF46302 
X-CRM114-Status: UNSURE (   8.53  )
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
Subject: [PATCH 1/2] fixup! ARM: i.MX8MP: Add DEBIX SOM A and SOM A I/O Board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

---
 arch/arm/mach-imx/Kconfig | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 4c93c1244a..4af281d238 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -664,7 +664,7 @@ config MACH_PHYTEC_SOM_IMX8MQ
 	select MCI_IMX_ESDHC_PBL
 
 config MACH_POLYHEX_DEBIX
-	bool "Polyhex DEBIX Model-A/B (i.MX8MP) Board"
+	bool "Polyhex DEBIX i.MX8MP Boards"
 	select ARCH_IMX8MP
 	depends on HAVE_FIRMWARE_IMX_LPDDR4_PMU_TRAIN
 	depends on HAVE_FIRMWARE_IMX8MP_ATF
@@ -674,6 +674,8 @@ config MACH_POLYHEX_DEBIX
 	select MCI_IMX_ESDHC_PBL
 	select IMX8M_DRAM
 	select I2C_IMX_EARLY
+	help
+	  Support for DEBIX Model-A/B and SOM A + SOM A I/O board
 
 config MACH_PROTONIC_IMX8M
 	bool "Protonic-Holland i.MX8Mx based boards"
-- 
2.39.2



