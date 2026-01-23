Delivery-date: Fri, 23 Jan 2026 08:45:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjBra-004POm-1W
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 08:45:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjBrZ-0006Of-HJ
	for lore@pengutronix.de; Fri, 23 Jan 2026 08:45:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U4NEh77r7zvgwV7KGRF6Z5jbXOlsCKndzRuyFzgjnAk=; b=xmW7QzN1y1l3+tc7hbfgXoofC6
	WTG7eQvOQEEswWulL28UBNDV7Col5IuW60YRvCjOlzwZvB5XARIQ6L2jbNWlJ713jm1Q3x+TVo1J9
	Ozo8tYfqsKn3Qbo2fozCVNrioaQucF/8vfoCLO8a66Q3BToFXVdSLTKvRFB2LwgCfZdO9ksb9+nbX
	LnJDoTQai2F3Uc48u5e98gQzAUS+el2S3dKkVNbcNP9B1rgI0LnZnQbr9tvFirakc5soz2e+wZker
	MB2OE4XCxyi3UPUABkcw6SYEMRmbOUqIxCB1GTDiHF08vyujc7IjEOIz2cnfcf2YuzmmXSnLyWa8e
	J2GA62Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjBr7-00000008OKN-1Axf;
	Fri, 23 Jan 2026 07:45:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjBr4-00000008OJV-1opg
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 07:45:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjBr2-0006Hp-Nv; Fri, 23 Jan 2026 08:45:16 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjBr3-0023YG-0i;
	Fri, 23 Jan 2026 08:45:16 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjBr2-0000000GDog-24gl;
	Fri, 23 Jan 2026 08:45:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260121075623.3906595-1-a.fatoum@pengutronix.de>
References: <20260121075623.3906595-1-a.fatoum@pengutronix.de>
Message-Id: <176915431648.3866187.17205383591944604205.b4-ty@pengutronix.de>
Date: Fri, 23 Jan 2026 08:45:16 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_234518_479372_185F4D5A 
X-CRM114-Status: UNSURE (   7.78  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: phy: realtek: sync with Linux v6.19 state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 21 Jan 2026 08:56:22 +0100, Ahmad Fatoum wrote:
> The BeaglePlay has a RTL8211F-VD Gigabit Ethernet PHY at mdio0-phy00,
> which detects link up, but fails to communicate when used with the
> barebox generic PHY driver.
> 
> The Linux Realtek PHY driver already matches the RTL8211F-VD PHY's
> ID, so bring the barebox driver up to date.
> 
> [...]

Applied, thanks!

[1/1] net: phy: realtek: sync with Linux v6.19 state
      https://git.pengutronix.de/cgit/barebox/commit/?id=fe901c5f1287 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



