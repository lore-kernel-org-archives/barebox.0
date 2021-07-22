Delivery-date: Thu, 22 Jul 2021 15:31:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m6YnL-0002N9-8W
	for lore@lore.pengutronix.de; Thu, 22 Jul 2021 15:31:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m6YnK-0006bG-17
	for lore@pengutronix.de; Thu, 22 Jul 2021 15:31:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OoNXnc3cJ1m4xJJUw7IimICBisHYIoow5psSihn4XJE=; b=WBzdW0pd2LhZe0
	HUXUmnnJUswOycjVvqI8P2Z4Embg6KTWjnn0WZix+tcw65jK6NS4VeMFAGcHSMFTJImCI8WLO8ZuR
	4xORNUr6xaf6HOYtOT/jZr8SHAVg8by6KH3Ssw8Y7sngENX/zyYXA1Ll9It320+i7neSIBrZgvcsF
	2GfN9S35fFc+8BYJgELTCmU3fdCAsF1uo0pJL3XjZN+uzy15mV/kShhxU/rOXWz9SxQ4gstIecgQa
	FNaMWo3U/vbU8Uzg3F9tvn7dYCg18LIi2gFfbmpcbmBOHoKEX1VIUnnP0McBdUJ/EFSB8/EgMzSSy
	nf82GPKBFt0M5X4y7exQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6YlN-001fE6-72; Thu, 22 Jul 2021 13:29:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6Y1E-001WC1-Nl
 for barebox@lists.infradead.org; Thu, 22 Jul 2021 12:41:42 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1m6Y1C-0000ad-Nn; Thu, 22 Jul 2021 14:41:38 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1m6Y1C-0003gS-C5; Thu, 22 Jul 2021 14:41:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Jul 2021 14:41:37 +0200
Message-Id: <20210722124137.7431-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210722_054140_835177_6EB49528 
X-CRM114-Status: UNSURE (   9.34  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM: at91: fix building samad2 images without sama5d3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Addition of first stage support for SAMA5D3 added a dependency
between sama5d2 and sama5d3 first stages: They both needed to be
enabled to generate images for either. Break up this dependency
to fix build failures for configs that e.g. only build one SoC.

Fixes: e30fb46597d3 ("ARM: at91: xload-mmc: add sama5d3_atmci_start_image() helper")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/Kconfig | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 28a82c1a9351..290178706a40 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -44,10 +44,7 @@ config HAVE_AT91_DDRAMC
 	bool
 
 config AT91_MCI_PBL
-	bool
-	depends on MCI_ATMEL_PBL
-	depends on MCI_ATMEL_SDHCI_PBL
-	default y
+	def_bool MCI_ATMEL_PBL || MCI_ATMEL_SDHCI_PBL
 
 # Select if board uses the common at91sam926x_board_init
 config AT91SAM926X_BOARD_INIT
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

