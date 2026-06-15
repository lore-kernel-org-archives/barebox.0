Delivery-date: Mon, 15 Jun 2026 11:17:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ3Ra-0065RX-0e
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 11:17:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ3RZ-0002z5-IO
	for lore@pengutronix.de; Mon, 15 Jun 2026 11:17:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nGnV/TA4xO9s5TM8bB+2DOYekwnCHblFdxQ57tNiWN0=; b=i8Wb72/gJM2bVjP+kfcAcNQ1Lp
	dWxok9N7SZLE5vzwfY8BECSu0rXKE2bCIt92TWntyodBxWdqJJJGHCV9lC6W0XCsUbxKc/YpgP2Oy
	l+DCrkkMjoh4TbVUEeZkzHb3Uouqmm1sO9RlWCOEGTYfGmSkz/QJlh1UKkWNw+00rzbMrZE5lRC75
	nGPtee3KneGEetdFHs1aeRlOBttksQVQW7ZVOBgmgjXmDcL/AiMaH+JSGVivcLQiC3sGafdasO3c5
	cjX/Uv5fSlhcHc3/TJ2ZVbJzpc96hePf+XotMB96L9Wk/l9XvNBeYnM2yeySRAnCL5DfEmaC9RoRc
	//iDgDjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ3Qb-0000000Dxap-1Tir;
	Mon, 15 Jun 2026 09:16:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ3QX-0000000DxZT-3Buc
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 09:16:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ3QW-0002ef-9Y; Mon, 15 Jun 2026 11:16:16 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ3QW-002q9W-0l;
	Mon, 15 Jun 2026 11:16:16 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ3QW-00000002XlA-0Z7H;
	Mon, 15 Jun 2026 11:16:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, a.fatoum@pengutronix.de, mgr@kernel.org, 
 l.stach@pengutronix.de, 
 Johannes Schneider <johannes.schneider@leica-geosystems.com>
Cc: thomas.haemmerle@leica-geosystems.com
In-Reply-To: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
References: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
Message-Id: <178151497612.606089.2959097154543923691.b4-ty@pengutronix.de>
Date: Mon, 15 Jun 2026 11:16:16 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_021617_847050_B0604E89 
X-CRM114-Status: UNSURE (   7.19  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH v2 00/11] video: enable boot splash on i.MX8MP
 with LVDS panel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 04 Jun 2026 06:49:55 +0000, Johannes Schneider wrote:
> v1: https://lists.infradead.org/pipermail/barebox/2026-June/056588.html
> 
> This is v2 of the i.MX8MP boot-splash series.  Review on v1 pointed out
> that barebox already has in-tree drivers covering work v1 was
> duplicating, plus several detail issues; v2 replaces the two new
> drivers with extensions to the existing ones and addresses the
> remaining review feedback.
> 
> [...]

Applied, thanks!

[01/11] clk: imx8mp: add 700 MHz rate entry for VIDEO_PLL1
        https://git.pengutronix.de/cgit/barebox/commit/?id=ee4544427db3 (link may not be stable)
[02/11] clk: imx8mp: add 1039.5 MHz and 519.75 MHz rate entries for VIDEO_PLL1
        https://git.pengutronix.de/cgit/barebox/commit/?id=d1e3d7428d36 (link may not be stable)
[03/11] pmdomain: imx8mp-blk-ctrl: add media blk-ctrl power domain support
        https://git.pengutronix.de/cgit/barebox/commit/?id=1e70f6a9c50b (link may not be stable)
[04/11] video: backlight-pwm: make power-supply and enable-gpio optional
        https://git.pengutronix.de/cgit/barebox/commit/?id=0000ca7773d8 (link may not be stable)
[05/11] video: lcdif: make functional on i.MX8MP
        https://git.pengutronix.de/cgit/barebox/commit/?id=bc230e5de7dc (link may not be stable)
[06/11] video: lcdif: use 128B AXI bursts to avoid right-edge gap
        https://git.pengutronix.de/cgit/barebox/commit/?id=d9ebc7ad0291 (link may not be stable)
[07/11] video: lcdif: default to RGB888_1X24 on VPL_GET_BUS_FORMAT failure
        https://git.pengutronix.de/cgit/barebox/commit/?id=f199338252b2 (link may not be stable)
[09/11] video: lcdif: drain write-combine framebuffer in fb_damage
        https://git.pengutronix.de/cgit/barebox/commit/?id=926f668278ce (link may not be stable)
[10/11] video: simple-panel: support panel-lvds DT bindings
        https://git.pengutronix.de/cgit/barebox/commit/?id=96d8ef4489c3 (link may not be stable)
[11/11] video: simple-panel: lazily resolve backlight without failing
        https://git.pengutronix.de/cgit/barebox/commit/?id=0cdc420e05c6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



