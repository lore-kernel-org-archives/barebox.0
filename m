Delivery-date: Fri, 16 Jan 2026 09:19:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgf38-001taZ-08
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 09:19:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgf37-0005Vx-3V
	for lore@pengutronix.de; Fri, 16 Jan 2026 09:19:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TeIZdfA6/QKPoHbiFel4iaBFT+gbV4utUkF5UehaLb4=; b=qzQNYdFHvFgJDCWVJ1iM4mqFe1
	A4hsglcDUyfm8RPNdTLlQLYCAsdcaPBwEiopyDQmVSjxO3+Uqj5SW06zFIiNteRPorC3tXXWV18rG
	Q0DxyUKa1Ec1qC1z0YlGssd0sp9vH+Jannw5+kwT0YnpJXv7DHInA+ADfXWU2rc1icJTiGQ7kSo3F
	hcRc968vvZO2p7PMATLTCnTLGZte7Oui38KfENOeSMsotaRBiPNbjpHZZI5ckySEJuTQaw5qHOXck
	2d3dbc3itgXSjFyOeedfx7P96L1lldsjXk7jBWMN/ljXgCPmiT15ojTYP6+A4UZF5wDj1Qq/F+4lI
	Pp4bk3kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgf2Y-0000000DkWZ-3mDX;
	Fri, 16 Jan 2026 08:18:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgf2T-0000000DkVl-2fGT
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 08:18:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgf2R-0005Nr-Ti; Fri, 16 Jan 2026 09:18:35 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgf2S-000t6d-1I;
	Fri, 16 Jan 2026 09:18:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgf2R-00000005hly-2pbl;
	Fri, 16 Jan 2026 09:18:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20260114100923.1164051-1-eagle.alexander923@gmail.com>
References: <20260114100923.1164051-1-eagle.alexander923@gmail.com>
Message-Id: <176855151567.1359893.2456690516490550619.b4-ty@pengutronix.de>
Date: Fri, 16 Jan 2026 09:18:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_001837_674763_4C851A98 
X-CRM114-Status: GOOD (  11.92  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mtd: nand: mxc_nand: use clk_get_optional for clock
 handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 14 Jan 2026 13:09:23 +0300, Alexander Shiyan wrote:
> On some platforms like i.MX51, the clock driver does not support GATE clocks,
> and the clocks are always on. The current driver uses clk_get which fails
> when the clock is not found, preventing the driver from probing.
> 
> This patch changes clk_get to clk_get_optional, allowing the driver to
> continue probing even if the clock is not provided, assuming it is always
> enabled.
> 
> [...]

Applied, thanks!

[1/1] mtd: nand: mxc_nand: use clk_get_optional for clock handling
      https://git.pengutronix.de/cgit/barebox/commit/?id=092a3f95537b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



