Delivery-date: Tue, 05 Dec 2023 08:43:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQ5j-003uh0-0A
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 08:43:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQ5j-0008PM-3e
	for lore@pengutronix.de; Tue, 05 Dec 2023 08:43:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5fxJs6lHCMTsobcGXK6nkRPuPFO0+HffZaHpPpl0oic=; b=IxZ8g3nDf9VgWrowH8Pyu4uEzZ
	vVM4DcdKDDdM5PQ5SdZc5xDYWTGrM4SHFKUvgr2OIDxde7LpS8YObOjf4wZAMkGJ7U4Pi1Qw6hVTM
	FnNzDcn1D1vmPZwhXJWpyLJMfpf0Y8h7GNvvGmThjUWOpqymDk0+rqlL7RMIH8/1e9aJO7g/JitPK
	bjqU+Dr/57MRy9PY/+k51kvM1NL6BJQbikomLnWZgwnYv0wUBjqHBOWfzzML+jPdq0IFPTSKmP2Pv
	WUpYye7PIxaXVcwbum0RhK3JXHEXBp4pclXtc9CCGSYfRVCa/5hyqg48ChPB60fszByqHf11CJcW1
	W67DYA+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQ4X-006XEp-0H;
	Tue, 05 Dec 2023 07:42:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQ4S-006XEK-36
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 07:42:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQ4R-0008Al-IE; Tue, 05 Dec 2023 08:42:19 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQ4R-00Dh2g-5x; Tue, 05 Dec 2023 08:42:19 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQ4R-005Lit-3i; Tue, 05 Dec 2023 08:42:19 +0100
Date: Tue, 5 Dec 2023 08:42:19 +0100
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231205074219.GF1057032@pengutronix.de>
References: <20231127214818.3751722-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231127214818.3751722-1-rhi@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_234221_004299_4B09FEF6 
X-CRM114-Status: GOOD (  18.61  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] drivers: regulator: make pfuze available on i.MX7 too
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 27, 2023 at 10:48:16PM +0100, Roland Hieber wrote:
> It can also not hurt to build it for compile-tests.
> 
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  drivers/regulator/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
> index 56abe3896e3b..17e217f0bba7 100644
> --- a/drivers/regulator/Kconfig
> +++ b/drivers/regulator/Kconfig
> @@ -20,7 +20,7 @@ config REGULATOR_BCM283X
>  config REGULATOR_PFUZE
>  	bool "Freescale PFUZE100/200/3000 regulator driver"
>  	depends on I2C
> -	depends on ARCH_IMX6 || ARCH_IMX8MQ
> +	depends on ARCH_IMX || COMPILE_TEST
>  
>  config REGULATOR_STM32_PWR
>  	bool "STMicroelectronics STM32 PWR"
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


