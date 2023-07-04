Delivery-date: Tue, 04 Jul 2023 13:46:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGeUG-00Ek6a-JU
	for lore@lore.pengutronix.de; Tue, 04 Jul 2023 13:46:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGeUE-0002oM-8x
	for lore@pengutronix.de; Tue, 04 Jul 2023 13:46:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eolZdGo6Pdg+2SvcahBkWpepdWzWNoTHb7TxGW95dTM=; b=nl/1fDZluRHc2xZo+Oqi19LHek
	uznVBHM5BS5Msny2JdylTskZCujxQK/uhPewxO96lHdPQPjG9QfuNMkpjmWSaE05sQIbOuDkxwmDP
	mRUbZg0UBRpLHqCEE2FhaEEsKgmhLKOQFL0twrlaZs4GhckM4gJfpp4YBQdyzmWlgqUc7xyMC8twT
	a6MvAKBPMMJZr69UZmVHLysPAcntKAezyvJD7FCEMv3VoRlvzQXqJAPBHTlOPOlT5xQLeCmXP8H2T
	IOMQaAF6zQ7qZlMRGQpWHaTR0Jhb9SiGIEFGiri/fnlvRAeizF74cjrQh3Q4Qvl0L3mfnkEJDDVhi
	Q7OaiENQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGeT3-00D9tm-1q;
	Tue, 04 Jul 2023 11:45:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGeT0-00D9t6-0k
	for barebox@lists.infradead.org;
	Tue, 04 Jul 2023 11:45:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGeSy-0002RE-AH; Tue, 04 Jul 2023 13:45:08 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGeSy-0007sd-47; Tue, 04 Jul 2023 13:45:08 +0200
Date: Tue, 4 Jul 2023 13:45:08 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230704114508.GC18491@pengutronix.de>
References: <20230704104048.652650-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230704104048.652650-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_044510_294101_AE3B5C68 
X-CRM114-Status: GOOD (  18.60  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] fixup! ARM: i.MX8MP: Add DEBIX SOM A and SOM A I/O
 Board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jul 04, 2023 at 12:40:47PM +0200, Marco Felsch wrote:
> ---
>  arch/arm/mach-imx/Kconfig | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 4c93c1244a..4af281d238 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -664,7 +664,7 @@ config MACH_PHYTEC_SOM_IMX8MQ
>  	select MCI_IMX_ESDHC_PBL
>  
>  config MACH_POLYHEX_DEBIX
> -	bool "Polyhex DEBIX Model-A/B (i.MX8MP) Board"
> +	bool "Polyhex DEBIX i.MX8MP Boards"
>  	select ARCH_IMX8MP
>  	depends on HAVE_FIRMWARE_IMX_LPDDR4_PMU_TRAIN
>  	depends on HAVE_FIRMWARE_IMX8MP_ATF
> @@ -674,6 +674,8 @@ config MACH_POLYHEX_DEBIX
>  	select MCI_IMX_ESDHC_PBL
>  	select IMX8M_DRAM
>  	select I2C_IMX_EARLY
> +	help
> +	  Support for DEBIX Model-A/B and SOM A + SOM A I/O board
>  
>  config MACH_PROTONIC_IMX8M
>  	bool "Protonic-Holland i.MX8Mx based boards"
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


