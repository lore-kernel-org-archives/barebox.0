Delivery-date: Mon, 27 Jun 2022 08:46:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5iWL-00G4UU-G7
	for lore@lore.pengutronix.de; Mon, 27 Jun 2022 08:46:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5iWN-0004JN-79
	for lore@pengutronix.de; Mon, 27 Jun 2022 08:46:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xgAExquGnMHv03dUtTHIfibuqQVJXnaM0ilvdhRYsSU=; b=ZHSKbSBIkXbdBuYxmSbMWZOFbU
	lOg96HicXMnW6+i5i4zl876zJQeskJC6IsNa0ittHNDlC923Ok47fd+Px05x/swUMS06nQvX++PU7
	hBaP6bxARIpEJlr+fcKI/GeHmq73TuUVHn8qXJ9QBk7lhssi3zBdk3AD/yPQW8Q22FvDcElPrMaHt
	ywVASTKg75oSv/nxiaoNDVQT61oMpM9vhMYATcNOPIc0D/3iB7/RiqC61rC523oWQ1AD3o5ExOpIc
	dB/TPC61QO6LVQhFBLDQ8aIECj8e5vodN0bby/4p1Qd/ITTbNPEw+FGIAZQeTSpkQDRVsDqoi63Ev
	1gbfXu6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5iUZ-00G9UF-M8; Mon, 27 Jun 2022 06:45:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5iUU-00G9Qp-5D
	for barebox@lists.infradead.org; Mon, 27 Jun 2022 06:45:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o5iUP-0003x5-4l; Mon, 27 Jun 2022 08:44:53 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o5iUL-0008L6-6m; Mon, 27 Jun 2022 08:44:49 +0200
Date: Mon, 27 Jun 2022 08:44:49 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Teresa Remmet <t.remmet@phytec.de>,
	lst@pengutronix.de,
	Joacim Zetterling <joacim.zetterling@westermo.com>,
	Andrey Smirnov <andrew.smirnov@gmail.com>
Message-ID: <20220627064449.GA19026@pengutronix.de>
References: <20220623130717.1447999-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220623130717.1447999-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220626_234458_237960_37F59ACD 
X-CRM114-Status: GOOD (  15.11  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 master 0/5] ARM: i.MX8M: fix various miscalculation of
 DRAM size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 23, 2022 at 03:07:12PM +0200, Ahmad Fatoum wrote:
> This fixes issues of wrong DRAM size calculation for imx8mq-evk,
> phytec-som-imx8mq, zii-imx8mq-dev, i.MX8MN-EVK with LPDDR4 as well
> as an out-of-tree i.MX8MM board I have.
> 
> Ahmad Fatoum (5):
>   ARM: i.MX8M: refactor to prepare i.MX8MN LPDDR4 support
>   ARM: i.MX8M: esdctl: fix LPDDR4 size calculation for nano
>   ARM: i.MX8M: esdctl: ignore ADDRMAP8 for non-DDR4
>   ARM: i.MX8MQ: initialize ADDRMAP7
>   ddr: imx8m: workaround old spreadsheets not initializing ADDRMAP7

Applied, thanks

Sascha

> 
>  arch/arm/boards/nxp-imx8mq-evk/ddr_init.c    |  3 +-
>  arch/arm/boards/phytec-som-imx8mq/ddr_init.c |  1 +
>  arch/arm/boards/zii-imx8mq-dev/ddr_init.c    |  3 +-
>  arch/arm/mach-imx/esdctl.c                   | 71 ++++++++++++++------
>  drivers/ddr/imx8m/ddr_init.c                 | 18 +++++
>  drivers/ddr/imx8m/helper.c                   |  6 ++
>  include/soc/imx8m/ddr.h                      |  1 +
>  7 files changed, 82 insertions(+), 21 deletions(-)
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


