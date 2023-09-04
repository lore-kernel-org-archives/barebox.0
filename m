Delivery-date: Mon, 04 Sep 2023 12:50:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qd79x-003cCX-MF
	for lore@lore.pengutronix.de; Mon, 04 Sep 2023 12:50:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qd79v-000060-Me
	for lore@pengutronix.de; Mon, 04 Sep 2023 12:50:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XghXA4d4oFJezREeZjFa9TGCuC/Wbl+bseXCIj2VdmM=; b=QCVKbPivevJw0uhTxvu27FJsOF
	d/H4rwBeMX93BOx693gjzgWVFYS9qwLxH66uzg0fLVGQvKMek3AoWCLgRW5Zjo7KO9l5aTOOWUyVs
	oHM+A0PVUV6QaH2vjNmICXpTzE06Q5Jfor8vq4jhTnvmFstdsfNIOAjibgss8wM3pi5wBwuUuvxvM
	nV3/jEqAjxGcsf7PZbZXU0sx5a3JBzzYItChzl8+ax3DVOR8M26J+00vzRflYoO9ALwmw3lj3mzba
	Ftlj4wSyoY/Lv6aMvD1TU6nfS04aJvDr9ce8BwVjQpREtycBx73Lo2/ovP4y6x46nZhoSW16k8WQv
	v7JbzJcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qd78q-003wzR-0s;
	Mon, 04 Sep 2023 10:49:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qd78n-003wys-0x
	for barebox@lists.infradead.org;
	Mon, 04 Sep 2023 10:49:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qd78l-0006f4-WA; Mon, 04 Sep 2023 12:49:08 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qd78l-003rCI-D8; Mon, 04 Sep 2023 12:49:07 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qd78l-000zpX-2y; Mon, 04 Sep 2023 12:49:07 +0200
Date: Mon, 4 Sep 2023 12:49:07 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230904104907.GG189379@pengutronix.de>
References: <20230824153933.817192-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230824153933.817192-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_034909_331747_A549A1DD 
X-CRM114-Status: GOOD (  19.16  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] imx: Fix Kconfig dependency
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Aug 24, 2023 at 06:39:32PM +0300, Alexander Shiyan wrote:
> WARNING: unmet direct dependencies detected for IMX_OCOTP
> Depends on [n]: NVMEM [=n] && (ARCH_IMX6 [=n] || ARCH_VF610 [=n] || ARCH_IMX8M[=y] || ARCH_IMX7 [=n]) && OFDEVICE [=y]
> Selected by [y]:
> - IMX8M_FEATCTRL [=y] && ARCH_IMX8M [=y]
> 
> WARNING: unmet direct dependencies detected for IMX_OCOTP
> Depends on [n]: NVMEM [=n] && (ARCH_IMX6 [=n] || ARCH_VF610 [=n] || ARCH_IMX8M[=y] || ARCH_IMX7 [=n]) && OFDEVICE [=y]
> Selected by [y]:
> - IMX8M_FEATCTRL [=y] && ARCH_IMX8M [=y]
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/soc/imx/Kconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
> index 71f72eb480..57f5577ace 100644
> --- a/drivers/soc/imx/Kconfig
> +++ b/drivers/soc/imx/Kconfig
> @@ -12,6 +12,7 @@ config IMX8M_FEATCTRL
>  	depends on ARCH_IMX8M
>  	select FEATURE_CONTROLLER
>  	select IMX_OCOTP
> +	select NVMEM
>  	default y
>  	help
>  	  This driver disables device tree nodes that are not applicable
> -- 
> 2.38.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


