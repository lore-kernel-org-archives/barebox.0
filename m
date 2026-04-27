Delivery-date: Mon, 27 Apr 2026 09:24:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHGKJ-00GrDk-1r
	for lore@lore.pengutronix.de;
	Mon, 27 Apr 2026 09:24:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHGKJ-00012b-0x
	for lore@pengutronix.de; Mon, 27 Apr 2026 09:24:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VgPmWsmGi8g8KcbVmbX1U32Uap2VTqQoui5vFkUlFOY=; b=Cj1L4/SA1hFGHXUiVIpJSNYJM9
	/7794KfeIZq8oJva8Pa85dy9HPHzutRb14M39XMurRGM8qCwFIsIbuRI52l2c1r2PtRU1yH4WXnPO
	Rvpy9UDGPlSFSwpdn+RC9t/L8ZzTr+Masq9oQTcURytMog+Zp73Qr4CeyYBOxnFx4RoxumXc5I+DS
	HWXD60TIDfxV63YKV53BRo44t8Wyx3iOPMQj+lSsLWktWH9su933ul3OG8qbQuErcP1f3S8cTLArq
	5/FdQpkpyUmVgok54qCf4HFCSkyxW4D7ZVrYQF2UCHodcr+wrfuoPGDJzuyvc2dy0F7NIRF1czazf
	GANA4/Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHGJs-0000000GMlB-0Mpw;
	Mon, 27 Apr 2026 07:23:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHGJp-0000000GMkQ-2YBs
	for barebox@lists.infradead.org;
	Mon, 27 Apr 2026 07:23:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wHGJo-0000ug-2T; Mon, 27 Apr 2026 09:23:48 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wHGJn-007RtB-2q;
	Mon, 27 Apr 2026 09:23:47 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wHGJn-00000001FQn-3IAf;
	Mon, 27 Apr 2026 09:23:47 +0200
Date: Mon, 27 Apr 2026 09:23:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <ae8PA6xM1ms_e4Sm@pengutronix.de>
References: <20260423-socfpga-agilex5-dwmac-binding-v1-0-19b4b0cddbee@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260423-socfpga-agilex5-dwmac-binding-v1-0-19b4b0cddbee@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_002349_646942_07CBD4FA 
X-CRM114-Status: GOOD (  21.25  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] ARM: socfpga: xgmac: switch to upstream device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Apr 23, 2026 at 08:58:10AM +0200, Michael Tretter wrote:
> The compatible used by the xgmac driver in barebox doesn't use the
> existing binding for the xgmac, but uses a custom compatible string.
> Therefore, the Ethernet nodes that are already defined by the imported
> Linux device tree are not used.
> 
> Update the driver to use the same compatible as Linux and remove the now
> obsolete downstream device tree nodes.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
> Michael Tretter (2):
>       net: xgmac: switch to upstream compatible
>       ARM: socfpga: remove obsolete gmac device tree nodes

Should we merge these patches to avoid intermediate breakage?

Sascha

> 
>  arch/arm/dts/socfpga_agilex5.dtsi           | 51 -----------------------------
>  arch/arm/dts/socfpga_agilex5_axe5_eagle.dts |  1 -
>  drivers/net/designware_xgmac_socfpga.c      |  6 ++--
>  3 files changed, 3 insertions(+), 55 deletions(-)
> ---
> base-commit: 7b492daea9347fd55bf29560c2ec494ca1040f95
> change-id: 20260423-socfpga-agilex5-dwmac-binding-756bb1aab255
> 
> Best regards,
> -- 
> Michael Tretter <m.tretter@pengutronix.de>
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


