Delivery-date: Fri, 14 Feb 2025 11:32:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiszu-002EOy-1o
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 11:32:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiszt-0002Fo-Cc
	for lore@pengutronix.de; Fri, 14 Feb 2025 11:32:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NdN406d3fkHQBREAc+vbRdJyUyGDz2+8y4VBco5G2Ww=; b=OkoVS2dL/jTJvK2esnY41BoPDq
	WBhXXJsYsHm3+kca6VXCymxQLjpLEbXgyp7CG8jqGmTmpne8CcQF3E4bMycdP1T46Xpv1Bvgx0UD6
	HfJN1kBwtrSuCYBnNRdth5C2amL/I2Amf9J6CZSuqAnqIi9qf1Tx2boqqb/WZkhHPHx/6P9icHZEs
	3qozNmdr8b8tREvHBiX6TGWaRm+GCrgHcZ/wcbD3lZoHxLVlUe968KoYeGSoQToeq+AFHyY26vMsC
	grZ9Yc8NbKcXxfW3wfIjnhUvbdjmrFx3Y3XgyINF3d5qHKNQPFXFK0An9kt81hzLbpGmU1sXKqMJy
	zy4b3TiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiszQ-0000000EWBU-2gXB;
	Fri, 14 Feb 2025 10:32:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tisyN-0000000EW0W-2QpA
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 10:31:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tisyK-0001wS-Vn; Fri, 14 Feb 2025 11:31:00 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tisyK-000twK-2C;
	Fri, 14 Feb 2025 11:31:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tisyK-006TU7-1y;
	Fri, 14 Feb 2025 11:31:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@zdiv.net>
In-Reply-To: <20241107145722.5145-1-jmaselbas@zdiv.net>
References: <20241107145722.5145-1-jmaselbas@zdiv.net>
Message-Id: <173952906060.1543284.15217476443299658555.b4-ty@pengutronix.de>
Date: Fri, 14 Feb 2025 11:31:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_023103_629610_BF40F4D1 
X-CRM114-Status: UNSURE (   8.89  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH 0/6] Initial support for Allwinner A64 SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 07 Nov 2024 15:57:16 +0100, Jules Maselbas wrote:
> This series adds the initial support for Allwinner, currently only
> targetting the Pine64+ board, based on the A64 SoC.
> 
> This first series is intented as a second boot image only, that can
> be started from u-boot. This series provides the bare minimal so
> barebox can load the next OS from sd/mmc.
> 
> [...]

Applied, thanks!

[2/6] clk: divider: add error code propagation
      https://git.pengutronix.de/cgit/barebox/commit/?id=2faf9ac88f41 (link may not be stable)
[3/6] clk: Add clock driver for sun50i-a64
      https://git.pengutronix.de/cgit/barebox/commit/?id=8a8afdc9afe0 (link may not be stable)
[4/6] pinctrl: Add sun50i-a64 pinctrl driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=199f3e78b059 (link may not be stable)
[5/6] mci: Add sunxi-mmc driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=085180b15e4c (link may not be stable)
[6/6] ARM: sunxi: Introduce mach-sunxi
      https://git.pengutronix.de/cgit/barebox/commit/?id=da8c77923696 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



