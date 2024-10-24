Delivery-date: Thu, 24 Oct 2024 15:26:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3xrU-000DXE-37
	for lore@lore.pengutronix.de;
	Thu, 24 Oct 2024 15:26:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3xrV-0005f5-JA
	for lore@pengutronix.de; Thu, 24 Oct 2024 15:26:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BT6phYpOpzCa4l00FaRASHPYhfeEZFl/YVc8qA3/sOc=; b=yAN9ABCZ+4r8MNIU4GsbBzdvx2
	rdEaOEin3MdiAGFP2oacZH3CRwkQrVn0mrslIw2VJhDrK30vnhHNWyc/C8olP5Vl+AirrWeWevB3v
	CkmIFLv3deTfgx0DpXBB9nW4jLN50CKAAG3s5HCUaC2NIpjWzHL3ixO8fFTESKC/0QW0Tjywioawt
	1RcrbxEK0uDJ4yXPG2QajsXg2FNcMGTiDlmVQBwnwhyHQO6eyN1s+xRgC9iq6HPKiQXP3MGKyaic1
	DT7QA/Nb/oJdnM9aFXoRg/L9tmR/b0Aa+vbPu9sUQdgaGrPSIdxgORqbzE2KbWAUJIw1LGi605xmr
	KV/rnNEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3xqz-00000000V39-2Oeg;
	Thu, 24 Oct 2024 13:26:17 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3xo4-00000000Tyu-2KBt
	for barebox@bombadil.infradead.org;
	Thu, 24 Oct 2024 13:23:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=BT6phYpOpzCa4l00FaRASHPYhfeEZFl/YVc8qA3/sOc=; b=MR8K0gQfsROVp1QQpQAw2NQrkM
	ng15yLTAtNowdh3VNbMydI4SrE7WeZNw9xs3rE2wso2FjKklN6FGnA3Fx5doQKXPBhNiEHBS5UUNs
	e7Fqeg97klspgFDeH/MfMX/miP3LwOU0lxl5d7/zqDkgp9DG6BFrT1kPp22RlUiy5wzVYnFrOAPuN
	0xaUn8ydBZDGEMtDULM42ZI5dfOA8h5xPzZNH3NWr4uM6brVHszlzFMwkxI1LFy6HWkoI6e7lPpiK
	l9nKdD2dGxKS7QhBlXHdYU1VBPDFjY3bt1oB4mqRQw273ZYj6+9196INLRzLVDdGPuTLdWHyy+y9t
	L+UfaKew==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3xo0-00000004D0N-2UtH
	for barebox@lists.infradead.org;
	Thu, 24 Oct 2024 13:23:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t3xnx-0005Ke-8p; Thu, 24 Oct 2024 15:23:09 +0200
Message-ID: <dce931c5-0368-4804-924f-d43d8ca91cfa@pengutronix.de>
Date: Thu, 24 Oct 2024 15:23:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Julian Vetter <jvetter@kalrayinc.com>, barebox@lists.infradead.org
Cc: Yann Sionneau <ysionneau@kalrayinc.com>,
 Jules Maselbas <jmaselbas@kalray.eu>
References: <20241024130803.2208041-1-jvetter@kalrayinc.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241024130803.2208041-1-jvetter@kalrayinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_142313_302676_643F422A 
X-CRM114-Status: GOOD (  15.52  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] kvx: watchdog: Add early watchdog init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24.10.24 15:08, Julian Vetter wrote:
> From: Jules Maselbas <jmaselbas@kalray.eu>
> 
> Add support for a watchdog that starts as early as possible in barebox.
> So, if there is an issue the board is reset properly.
> 
> Signed-off-by: Julian Vetter <jvetter@kalrayinc.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

> ---
>  drivers/watchdog/Kconfig   | 11 +++++++++++
>  drivers/watchdog/kvx_wdt.c | 16 ++++++++++++++++
>  2 files changed, 27 insertions(+)
> 
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index 762e37c9c2..71bc7bf0ac 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -89,6 +89,17 @@ config WATCHDOG_KVX
>  	help
>  	  Add support for the KVX core watchdog.
>  
> +config WATCHDOG_KVX_EARLY_INIT
> +	bool "KVX Core watchdog early init"
> +	depends on WATCHDOG_KVX
> +	help
> +	  Activate the watchdog with early initcall
> +
> +config WATCHDOG_KVX_EARLY_TIMEOUT
> +	int "KVX Core watchdog early timeout in cycles"
> +	depends on WATCHDOG_KVX_EARLY_INIT
> +	default 100000000
> +
>  config WATCHDOG_BCM2835
>  	bool "Watchdog for BCM283x SoCs"
>  	depends on ARCH_BCM283X || COMPILE_TEST
> diff --git a/drivers/watchdog/kvx_wdt.c b/drivers/watchdog/kvx_wdt.c
> index be6b08b71c..3e66aa38ba 100644
> --- a/drivers/watchdog/kvx_wdt.c
> +++ b/drivers/watchdog/kvx_wdt.c
> @@ -91,3 +91,19 @@ static struct driver kvx_wdt_driver = {
>  	.of_compatible	= DRV_OF_COMPAT(kvx_wdt_of_match),
>  };
>  device_platform_driver(kvx_wdt_driver);
> +
> +#ifdef CONFIG_WATCHDOG_KVX_EARLY_INIT
> +static int kvx_wdt_early_init(void)
> +{
> +	/* Set Start watchdog counting */
> +	kvx_sfr_set(WDV, CONFIG_WATCHDOG_KVX_EARLY_TIMEOUT);
> +	kvx_sfr_set(WDR, 0);
> +
> +	/* Start watchdog counting */
> +	kvx_sfr_set_field(TCR, WUI, 1);
> +	kvx_sfr_set_field(TCR, WCE, 1);
> +
> +	return 0;
> +}
> +core_initcall(kvx_wdt_early_init);
> +#endif


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


