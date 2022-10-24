Delivery-date: Mon, 24 Oct 2022 16:13:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omyDG-000nOi-Ha
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 16:13:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omyDF-0004VW-FU
	for lore@pengutronix.de; Mon, 24 Oct 2022 16:13:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0yr2Evay1TETtK6qgcT84Ro1NK14f2dWpEM77BIL5Jo=; b=strdyeRsKZmsYKp1TYm3oAO0Of
	jpReV9o0yk9RGp+A/6gWJvMyOZOOSiRYnNO+3VyMSSX0Mp4xNeHf0aPskd4q1z0ZGK5mgYTHmweEC
	cJ5XbPzE2A2hNBHKQ3vcYDc4gpCilQkf35FyoMdyibSg1Is6seAVSexGYwyeTmXyChDFsAtyUFBIa
	FMsFEuxJ25Wx9swKYJ3i2DLx51afwrSyid0BrwBPZk7bJmynJyHXV1Fl7THVqekGNplC5/SwAyP1K
	mrRDzbBvB5NqSRADpMNJv/5MdMy7/A17/ar427GPE9Y5vt8GAwQvfafyoAc/jXwPrdEMIyUyaqSfC
	cFk9EfyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omyBZ-001qeY-1g; Mon, 24 Oct 2022 14:12:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omyBU-001qcz-4l
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 14:12:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1omyBS-0004IH-M9; Mon, 24 Oct 2022 16:12:06 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1omyBS-0008Cw-TK; Mon, 24 Oct 2022 16:12:05 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1omyBR-00ANWC-AI; Mon, 24 Oct 2022 16:12:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 24 Oct 2022 16:12:03 +0200
Message-Id: <20221024141203.2473619-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_071208_205456_AF912933 
X-CRM114-Status: GOOD (  10.12  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX8MM: innocom-wb15: imply AT803X_PHY for EVK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

EVK has Atheros 8035 Ethernet PHY and DHCP times out when using the
generic PHY driver instead of the at803x driver. Link is detected with
both though. Make user lives easier by adding an imply to the PHY driver
when the board is selected. This is chosen instead of a select to allow
users to disable the driver if they use a different base board for the
SoM.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index c9e4c9a00ba4..da71480887ad 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -371,6 +371,7 @@ config MACH_INNOCOMM_WB15
 	select IMX8M_DRAM
 	select I2C_IMX_EARLY
 	select USB_GADGET_DRIVER_ARC_PBL
+	imply AT803X_PHY
 
 config MACH_BEO_ASE2
 	bool "Bang & Olufsen (i.MX7D) ASE2"
-- 
2.30.2



