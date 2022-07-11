Delivery-date: Mon, 11 Jul 2022 11:23:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oApdp-002L0G-Ko
	for lore@lore.pengutronix.de; Mon, 11 Jul 2022 11:23:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oApdn-0000I9-IP
	for lore@pengutronix.de; Mon, 11 Jul 2022 11:23:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=inSGCQ0XtcFt0viirq9vrVsEuNhBVw2qrs97HQrfxD0=; b=HOCZ0ts2GtbE/GBSWlLL42m+qc
	7SjHC+7NCWytsXVx06WcgXbu3Bay0okt6E3K/YGYg7MXGiFqfhMH0Jc/PZYAL7iAJA1tIjBwQD9UD
	P6263nVrkcGCXttdyhcOqlN5pSjfuOJZ/ArcF9j6LgdfeBa52r4AY31cnf8aT65U2wu+KOfTPhjtp
	NwlsXUo0A5oaKRx8mtB2P0aHoLwQm44y74jgTK+K+8Bqmtq0x1TF2+Ku/D5ooBGnwJmN4Wk3dskNa
	3CHhgz4xsmeYYuO51QJ7HLA+GcajRn4LkbHi5hwMDzvX5gVh1ynB/nWA3uMAQfwAluptQ8PapNSJ6
	reOM78mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oApcV-0001AQ-6O; Mon, 11 Jul 2022 09:22:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oApcO-00016d-8k
	for barebox@lists.infradead.org; Mon, 11 Jul 2022 09:22:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oApcL-0008NL-BN; Mon, 11 Jul 2022 11:22:13 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oApcL-0003rT-2d; Mon, 11 Jul 2022 11:22:13 +0200
Date: Mon, 11 Jul 2022 11:22:13 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220711092213.GN5208@pengutronix.de>
References: <20220706142105.2266956-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220706142105.2266956-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_022216_354434_10079E8D 
X-CRM114-Status: GOOD (  17.95  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/4] MX8MN-EVK DDR4 Support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jul 06, 2022 at 04:21:01PM +0200, Marco Felsch wrote:
> Hi,
> 
> this small series adds the correct DDR4 support for the imx8mn-evk since
> till now we misused the LPDDR4 DT for it.
> 
> Before applying Ahmads patch the preceding patches must be applied else
> the deep probe support will cause odd boot issues.
> 
> Regards,
>   Marco
> 
> Ahmad Fatoum (1):
>   ARM: i.MX8MN: pass along correct DT depending on variant
> 
> Marco Felsch (3):
>   phy: fix deep probe support
>   phy: propagate error in of_phy_get_by_phandle
>   usb: chipidea: imx: call enable_clk after all resources are requested

Applied, thanks

Sascha

> 
>  arch/arm/boards/nxp-imx8mn-evk/board.c    | 21 ++++--
>  arch/arm/boards/nxp-imx8mn-evk/lowlevel.c | 13 +++-
>  arch/arm/dts/Makefile                     |  2 +-
>  arch/arm/dts/imx8mn-ddr4-evk.dts          |  6 ++
>  arch/arm/dts/imx8mn-evk.dts               | 84 +----------------------
>  arch/arm/dts/imx8mn-evk.dtsi              | 83 ++++++++++++++++++++++
>  drivers/phy/phy-core.c                    | 11 +--
>  drivers/usb/imx/chipidea-imx.c            | 10 ++-
>  8 files changed, 131 insertions(+), 99 deletions(-)
>  create mode 100644 arch/arm/dts/imx8mn-ddr4-evk.dts
>  create mode 100644 arch/arm/dts/imx8mn-evk.dtsi
> 
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


