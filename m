Delivery-date: Wed, 13 Mar 2024 12:12:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMWi-004IkY-2I
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 12:12:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMWh-0006Rw-Ti
	for lore@pengutronix.de; Wed, 13 Mar 2024 12:12:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TFEeiEadBQcWJFZLSZnbnW+5iL7iffkMjeJdygCXi1o=; b=rgz7yMy+kMGpUc+Mhmgb6OdS7e
	TjWjMdjCSmnspPLzcstymw5eFaw2k3jvsFpFlndWJZ2khc+8rD4nTJeJ9e8Pt1CRASKqNuHvx7jJO
	unnIEawAOnDJSlAbJvrwKCpT9HEEVMO78j52e4SV0+DDPJpZaB85xrRhf1mk7UoNvFT5k01XVbU8r
	GS39W7O1yGqGFNhDeZssBaQrQ8k2LzMYXK9h761x7JW2nQQ2dBbfgmm6fZgiwhz+xCjV6VIGfsEfh
	vyxYroo2Z60OPjJEZJ0S9WGUIymnpH+sYUhAts4NBdTknY4PbpfocUZax+4s8IGMOT9cwEiTiMVq4
	L/ClPACQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMW4-00000009rkY-1PRH;
	Wed, 13 Mar 2024 11:11:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMVx-00000009rfV-2qHU
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 11:11:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkMVr-0005jh-8Q; Wed, 13 Mar 2024 12:11:11 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkMVq-0066Pz-RA; Wed, 13 Mar 2024 12:11:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkMVq-007SHZ-2W;
	Wed, 13 Mar 2024 12:11:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20240311-karo-imx8mp-som-board-upstreaming-v2-0-6ecda693adb2@pengutronix.de>
References: <20240311-karo-imx8mp-som-board-upstreaming-v2-0-6ecda693adb2@pengutronix.de>
Message-Id: <171032827077.1776412.9584792911192399502.b4-ty@pengutronix.de>
Date: Wed, 13 Mar 2024 12:11:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_041118_089106_0F3E416B 
X-CRM114-Status: UNSURE (   8.74  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 0/6] arm: imx8mp: add karo electronics qsxp imx8mp
 som support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 11 Mar 2024 17:11:17 +0100, Stefan Kerkmann wrote:
> The Ka-Ro QSXP[1] is a i.MX8M Plus solder down system on module. This
> series adds support for the SOM itself on the QSBASE4 RDK. For ethernet
> support on the QSBASE4 RDK, the Micrel phy driver gains support for the
> KSZ9131 gigabit ethernet phy.
> 
> [1]: https://www.karo-electronics.de/qsxp
> 
> [...]

Applied, thanks!

[1/6] of: introduce of_property_read_s32
      https://git.pengutronix.de/cgit/barebox/commit/?id=465961255898 (link may not be stable)
[2/6] net: phy: micrel: update id table from Linux kernel
      https://git.pengutronix.de/cgit/barebox/commit/?id=2c63ec82210e (link may not be stable)
[3/6] net: phy: micrel: add support for ksz9131 phy
      https://git.pengutronix.de/cgit/barebox/commit/?id=d6c94455f849 (link may not be stable)
[4/6] arm: dts: karo: import dts for karo-qsxp-ml81
      https://git.pengutronix.de/cgit/barebox/commit/?id=25b665092122 (link may not be stable)
[5/6] arm: dts: karo: add karo imx8mp-karo-qsxp-ml81-qsbase4
      https://git.pengutronix.de/cgit/barebox/commit/?id=a2a79372059d (link may not be stable)
[6/6] arm: imx8mp: add karo electronics qsxp-ml81 som support
      https://git.pengutronix.de/cgit/barebox/commit/?id=e706d9f8de65 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



