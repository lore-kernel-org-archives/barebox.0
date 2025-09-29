Delivery-date: Mon, 29 Sep 2025 09:33:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38OS-002LCF-07
	for lore@lore.pengutronix.de;
	Mon, 29 Sep 2025 09:33:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38OR-0007Lk-Hj
	for lore@pengutronix.de; Mon, 29 Sep 2025 09:33:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nGTnjtzBoSK9zSGgAE7a32Mb8ximpLvQRwnNjO7IFzo=; b=ssypH1J+xgJTjk7aCtc4SpjrSj
	Cl8DDIw8++rbnN62tEX75G6rC6NZwmjPm2qkRX4B8Fk0LWxbsIuidNAWSFtihvplNFrjA0hkzuKhp
	UQ0OGcY/3xZXKDi434F+QIK+N1696njx6USbQl3vLyWtrXkcTE7Y5d1ixQbi/eziODfb63zayYVNo
	oXSSAqfwnBiWlTiTXl2gUFBnkcCV7W3VHpUZbbLydUqJMtCjSbx5vA724UzVP+nAwHVsKSxvJxLDO
	HcUV6i9QE499K6ddFQO9RZk/6j0bAJyea8TX+no4/Zc7zmMOHgHLICI8GWHkVY63dxrXvSrmuY+H/
	w75iLdxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38Nu-00000001cQ5-0HV9;
	Mon, 29 Sep 2025 07:33:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38Nr-00000001cPb-45Fq
	for barebox@lists.infradead.org;
	Mon, 29 Sep 2025 07:33:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v38Nq-0007B8-EW; Mon, 29 Sep 2025 09:33:18 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v38Nq-0012Ou-0n;
	Mon, 29 Sep 2025 09:33:18 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v38Nq-00000001ar1-0nl9;
	Mon, 29 Sep 2025 09:33:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250924150246.381179-1-eagle.alexander923@gmail.com>
References: <20250924150246.381179-1-eagle.alexander923@gmail.com>
Message-Id: <175913119818.379896.13762490521753574655.b4-ty@pengutronix.de>
Date: Mon, 29 Sep 2025 09:33:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_003320_014168_A0281C27 
X-CRM114-Status: UNSURE (   8.06  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: rockchip: Drop empty init callback for rk3588 PLL
 type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 24 Sep 2025 18:02:46 +0300, Alexander Shiyan wrote:
> Unlike PLLs in previous geneation of SoCs, PLLs in RK3588 type don't
> require any platform-specific initialization. Drop callback
> rockchip_rk3588_pll_init() that does nothing in fact to clean the
> driver up.
> This change is taken from the mainline Linux kernel.
> 
> 
> [...]

Applied, thanks!

[1/1] clk: rockchip: Drop empty init callback for rk3588 PLL type
      https://git.pengutronix.de/cgit/barebox/commit/?id=428b62495a2b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



