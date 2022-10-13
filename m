Delivery-date: Thu, 13 Oct 2022 09:33:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oisix-0075Ig-8V
	for lore@lore.pengutronix.de; Thu, 13 Oct 2022 09:33:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oisiv-00077u-1c
	for lore@pengutronix.de; Thu, 13 Oct 2022 09:33:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TtaldtXs0UmcWmmEsUi56cCwLQg33/Ke80mJhd7/lnQ=; b=ybsiNRsZk5S2imoKbXF6XOTDU+
	D+YH+QbTUXcDD3A9OtGBDOtwlmPjLTBgzWNDEUpoKA2LJchiVz8C93B3WOIAjfRbxh0PuOr6cFGhp
	+qE9TvQeS8bycYtq/vWbkxIJb2uJKasosvfwfb/1WOC6NSBBVGF0z4TZelliRltUJ6HWgOejt8WKk
	V3pIvg7vDxn6siskD6s99hqxB7VMAgz7+USIwntZyZ8X5+neyIOfuywewPO4crdMBaVwBlr9nl3AS
	dOJPNrGUoHZ8IKY7ao8VWrnNBhrtanR93/yVJ99NOsCrvyWCv9h8qW4LUkiWbETjKoSvPWDL/Yi7U
	k7a2J/qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oishQ-00Az3A-UM; Thu, 13 Oct 2022 07:32:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oishL-00Az2T-RM
	for barebox@lists.infradead.org; Thu, 13 Oct 2022 07:32:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oishJ-00073L-6E; Thu, 13 Oct 2022 09:32:05 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oishI-0005JU-Qu; Thu, 13 Oct 2022 09:32:04 +0200
Date: Thu, 13 Oct 2022 09:32:04 +0200
To: BAUER Bernd <bernd.bauer@ses-imagotag.com>
Cc: Barebox Mailingliste <barebox@lists.infradead.org>
Message-ID: <20221013073204.GE6702@pengutronix.de>
References: <PR0P264MB328928CED65F8A4275814502D2259@PR0P264MB3289.FRAP264.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PR0P264MB328928CED65F8A4275814502D2259@PR0P264MB3289.FRAP264.PROD.OUTLOOK.COM>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_003207_924360_1367397F 
X-CRM114-Status: GOOD (  24.87  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: HAB/SecureBoot on IMX8MN
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Bernd,

On Thu, Oct 13, 2022 at 05:20:06AM +0000, BAUER Bernd wrote:
> Hi!
> 
> I have a question regarding SecureBoot/HAB and IMX8MN.
> In barebox I can only enable HAB if the architecture is set to IMX8MQ.
> My project is based on an IMX8MN.
> 
> Can I just extend the definition to IMX8MN and enable SecureBoot for the IMX8MN?
> Does this work? Or are there differences in the registers that have to be implemented first?

>From a quick glance at the corresponding U-Boot code I'd say that
HAB support is identical between the different i.MX8M variants, so
the following might indeed be a good start exploring it. I have no idea
though if there are any subtle differences between the SoCs.

Sascha

--------------------------------8<--------------------------

>From 0daeceb70f0dfe0d2fdb65c986a613fe2d3d6203 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Oct 2022 09:30:23 +0200
Subject: [PATCH] Enable HAB on i.MX8M

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index dcb70c8c1a..8d3f75e3d1 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -902,7 +902,7 @@ config HABV4
 	select HAB
 	select NVMEM
 	select IMX_OCOTP
-	depends on ARCH_IMX6 || ARCH_IMX8MQ
+	depends on ARCH_IMX6 || ARCH_IMX8M
 	depends on OFDEVICE
 	help
 	  High Assurance Boot, as found on i.MX28/i.MX6/i.MX8MQ.
-- 
2.30.2


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


