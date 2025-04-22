Delivery-date: Tue, 22 Apr 2025 13:25:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7BkT-00424r-1m
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 13:25:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7BkS-0004ZE-R7
	for lore@pengutronix.de; Tue, 22 Apr 2025 13:25:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ooslg8eJSlP3fK1zkMDcb2bV/ID2/f2iD0+VymNgeVg=; b=iq4DJsr4mAsy/0WmfmYOsQudCx
	+rBGu+2SwItpsdUP12DM1gAOH5P1N/FBv5wse2DCe5eKrDOQjcUe2jGdakUPJlZ8+2RetHrv+wkZy
	FCsReOR0T7uKKWwgll9xw+m4FNVbxQfllyskw4Mqmuyyr+4CDaqRBYQUxkQIAUdHPu5Lmm6ePdwWX
	brs3NEzOL008TKHDQEj4o2/ifN1Zi8kVxgQKOyxMXCVeJa8wbkq7Gg08tenE/WtSGnrdYzBKPQqca
	ayxxGhDZxialaTC/3lGKfYPdmf2+VMDV6+qie/4wu0iFuldzDvYhcwVvVVihvamfBB3DvyvAScsfc
	mL5eT4Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Bk1-00000006vpR-1bS2;
	Tue, 22 Apr 2025 11:24:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7BI6-00000006qZR-2IaP
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 10:55:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7BI5-00075O-2w; Tue, 22 Apr 2025 12:55:49 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7BI4-001XQB-2u;
	Tue, 22 Apr 2025 12:55:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7BI4-00EQqX-2c;
	Tue, 22 Apr 2025 12:55:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
References: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
Message-Id: <174531934880.3439734.8724474704948123920.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 12:55:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_035550_738732_CDA98A9B 
X-CRM114-Status: UNSURE (   9.66  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/9] ARM: OMAP: beaglebone: add PBL SD xload support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 22 Apr 2025 07:26:26 +0200, Ahmad Fatoum wrote:
> To allow for easier BSP integration, add support for generating a MLO
> capable of SD-Card boot in the same build as barebox proper
> 
> For raw flash boot, the route with the separate config needs to be used.
> 
> Ahmad Fatoum (9):
>   clocksource: make available in PBL
>   clocksource: ti-dm: make available in PBL
>   mci: move mci_setup_cmd definition into header
>   mci: add common PBL helper for chainloading after BootROM
>     initialization
>   mci: pbl: add autodetection of BootROM-initialized standard capacity
>     cards
>   mci: omap_hsmmc: split out common code
>   ARM: OMAP: add am33xx_hsmmc_start_image for PBL
>   mci: omap_hsmmc: add xload implementation for PBL
>   ARM: OMAP: beaglebone: add PBL SD xload support
> 
> [...]

Applied, thanks!

[1/9] clocksource: make available in PBL
      https://git.pengutronix.de/cgit/barebox/commit/?id=adfc76dd5cbc (link may not be stable)
[2/9] clocksource: ti-dm: make available in PBL
      https://git.pengutronix.de/cgit/barebox/commit/?id=74e2dadcd5e4 (link may not be stable)
[3/9] mci: move mci_setup_cmd definition into header
      https://git.pengutronix.de/cgit/barebox/commit/?id=c8d7bb92a1e8 (link may not be stable)
[4/9] mci: add common PBL helper for chainloading after BootROM initialization
      https://git.pengutronix.de/cgit/barebox/commit/?id=12bf28066aed (link may not be stable)
[5/9] mci: pbl: add autodetection of BootROM-initialized standard capacity cards
      https://git.pengutronix.de/cgit/barebox/commit/?id=0801b7e1612c (link may not be stable)
[6/9] mci: omap_hsmmc: split out common code
      https://git.pengutronix.de/cgit/barebox/commit/?id=7a67a40d2b10 (link may not be stable)
[7/9] ARM: OMAP: add am33xx_hsmmc_start_image for PBL
      https://git.pengutronix.de/cgit/barebox/commit/?id=407324f655b4 (link may not be stable)
[8/9] mci: omap_hsmmc: add xload implementation for PBL
      https://git.pengutronix.de/cgit/barebox/commit/?id=ccd09cb1980b (link may not be stable)
[9/9] ARM: OMAP: beaglebone: add PBL SD xload support
      https://git.pengutronix.de/cgit/barebox/commit/?id=69d6ac58f2cb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



