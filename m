Delivery-date: Wed, 25 Feb 2026 08:49:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vv9eY-005SEv-2G
	for lore@lore.pengutronix.de;
	Wed, 25 Feb 2026 08:49:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vv9eY-0002VR-W9
	for lore@pengutronix.de; Wed, 25 Feb 2026 08:49:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JuzyOJhi0CNaf17X2vS8UNur+aDLdCv2tYUJP3D0/nM=; b=SOvVjhDBS762v6KotZF/eBH6ij
	rVzu6oMR2A+F5I21nqEetHqRpZUWoLfA3BA5kuBXqxRXYyFxZjVaSd243NnpClljyTVj//JHb340s
	hivT2/eTHdtK0NlSoBJll1+wO7XTbggniLYdlLj6ccuwycYvi6f3Ixl22GnzbnOr50QTQ1RaSz+za
	YzVsx8u3Ze54eZ/xnYOw6Lhvp/LKZ/wXnwxmHzf+Twmbmd2jjZgBRsRxOCcrSVTwRI/tren9E1/Gv
	oLm5ET2ouFtgMiZn0jVyYBUEOpnXxrYKZ/xTIDDceCrlHxiyDjco6P8nGoDlyv6x2YOJDFOxu/4Z5
	aJVFlCdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv9eC-00000003RnU-1VGa;
	Wed, 25 Feb 2026 07:49:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv9e9-00000003RmP-3DIK
	for barebox@lists.infradead.org;
	Wed, 25 Feb 2026 07:49:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vv9e8-0002M8-51; Wed, 25 Feb 2026 08:49:24 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vv9e6-002Wpy-1z;
	Wed, 25 Feb 2026 08:49:23 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vv9e7-000000056uO-3mjU;
	Wed, 25 Feb 2026 08:49:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sohaib Mohamed <sohaib.amhmd@gmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
References: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
Message-Id: <177200576389.1217644.11034217612816386616.b4-ty@pengutronix.de>
Date: Wed, 25 Feb 2026 08:49:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_234925_808066_02B3FABC 
X-CRM114-Status: GOOD (  10.75  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/14] ARM: rockchip: Add initial RK3562 SoC support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 30 Jan 2026 06:16:52 +0100, Sohaib Mohamed wrote:
> All essential changes and additions required to boot the RK3562.
> Includes board support for the RK3562-EVB2 and KickPi K3.
> 
> The GMAC driver is still missing from the upstream Linux device tree
> and can be added in a future update. The rest is straightforward port from
> the mainline Linux kernel.
> 
> [...]

Applied, thanks!

[01/14] ARM: rockchip: Add initial RK3562 SoC support
        https://git.pengutronix.de/cgit/barebox/commit/?id=d5eb41dfb82a (link may not be stable)
[02/14] clk: rockchip: add RK3562 clock and reset driver support
        https://git.pengutronix.de/cgit/barebox/commit/?id=3d2eab69ade1 (link may not be stable)
[03/14] pinctrl: rockchip: sync driver with Linux
        https://git.pengutronix.de/cgit/barebox/commit/?id=3af1b639f22a (link may not be stable)
[04/14] ARM: boards: Rockchip: add RK3562-EVB2 support
        https://git.pengutronix.de/cgit/barebox/commit/?id=8b89a951e78a (link may not be stable)
[05/14] ARM: boards: Rockchip: Add device tree for kickpi k3 board
        https://git.pengutronix.de/cgit/barebox/commit/?id=2b4a2374ff44 (link may not be stable)
[06/14] ARM: rockchip: Add RK3562 KickPi K3 board support
        https://git.pengutronix.de/cgit/barebox/commit/?id=a1f66c6cbf6b (link may not be stable)
[07/14] pmdomain: rockchip: Add RK3562 power domain support
        https://git.pengutronix.de/cgit/barebox/commit/?id=b579890e2282 (link may not be stable)
[08/14] aiodev: rockchip_saradc: Add RK3562 support
        https://git.pengutronix.de/cgit/barebox/commit/?id=6e46ee2f2e44 (link may not be stable)
[09/14] phy: rockchip-inno-usb2: Add support for RK3562 PHY
        https://git.pengutronix.de/cgit/barebox/commit/?id=bb5295d56acf (link may not be stable)
[10/14] rockchip-rng: Add RK3562 support
        https://git.pengutronix.de/cgit/barebox/commit/?id=6fdf2c862dfd (link may not be stable)
[11/14] mci: sdhci: rockchip-dwcmshc: Add RK3562 support
        https://git.pengutronix.de/cgit/barebox/commit/?id=a7e9b225592e (link may not be stable)
[12/14] nvmem: rockchip-otp: Add RK3562 support
        https://git.pengutronix.de/cgit/barebox/commit/?id=3e4a23f7db6b (link may not be stable)
[13/14] phy: rockchip: inno-dsidphy: Add RK3562 support
        https://git.pengutronix.de/cgit/barebox/commit/?id=6482043b21fe (link may not be stable)
[14/14] phy: rockchip: naneng-combphy: Add RK3562 support
        https://git.pengutronix.de/cgit/barebox/commit/?id=2edcc72c9a7e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



