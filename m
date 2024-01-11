Delivery-date: Thu, 11 Jan 2024 14:25:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNv4B-00D15G-14
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 14:25:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNv4A-0006cC-NI
	for lore@pengutronix.de; Thu, 11 Jan 2024 14:25:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pz1g3KQF3U53STMNLnOP7A8F1lW7K/EUbs1Wcc0pgtY=; b=CiMSn1S+tXzmx6mDo5en4Ngd4K
	a9FeceKIb1BIFC8h9RRzq5cwCVrNcRp3VYmpctASwhahGP7T2lptUY1WuneVSR/ryFwB42d0zZ7KZ
	QJOCg9XWZEviW41X/VEJAqbaBfFwJwgKKzy0UAYHe2dfrTu3t++mwXZ5eXmtIuhcGR2AtwePqz8xC
	Etl4lMXx2HWex+O+yMwrhPXWKceUjltXA0slzrrLWQCzIPFrvh0Lfd1EZys86pk4En20qO0zT8BuE
	gx+OaMo7zjphnCOizqTeP3ZXqAfk4dg0OXCnyg+kbNeyHCMh0lJQSOHI4GaXbJWp8arxUNAwm8gnK
	eYPUha1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNv32-000ACB-30;
	Thu, 11 Jan 2024 13:24:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNv2z-000AAl-0f
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 13:24:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rNv2x-0006Ky-SU
	for barebox@lists.infradead.org; Thu, 11 Jan 2024 14:24:35 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rNv2x-001wGc-Fx
	for barebox@lists.infradead.org; Thu, 11 Jan 2024 14:24:35 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rNv2x-00BMmK-Dq
	for barebox@lists.infradead.org; Thu, 11 Jan 2024 14:24:35 +0100
Date: Thu, 11 Jan 2024 14:24:35 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Message-ID: <20240111132435.ismq33kowbijvp3y@pengutronix.de>
References: <20240111114841.2676939-1-m.felsch@pengutronix.de>
 <20240111114841.2676939-8-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240111114841.2676939-8-m.felsch@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_052437_247200_CB5A7925 
X-CRM114-Status: GOOD (  20.72  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 07/18] common: add OPTEE_SHM_SIZE to configure optee
 shared memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-01-11, Marco Felsch wrote:
> An size of 4M seems quite large and upstream OP-TEE code mostly uses 2M
> for all i.MX platforms. However keep the 4M as default but make it
> configurable for integrators which want to use the autom. OF fixup
> logic.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx8m.c | 2 +-
>  common/Kconfig            | 9 +++++++++
>  2 files changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
> index c7c799c64bc4..90dc12ca18cc 100644
> --- a/arch/arm/mach-imx/imx8m.c
> +++ b/arch/arm/mach-imx/imx8m.c
> @@ -68,7 +68,7 @@ static int imx8m_init(const char *cputypestr)
>  	if (IS_ENABLED(CONFIG_PBL_OPTEE) && tzc380_is_enabled() &&
>  	    !of_find_node_by_path_from(NULL, "/firmware/optee")) {
>  		static struct of_optee_fixup_data optee_fixup_data = {
> -			.shm_size = SZ_4M,
> +			.shm_size = CONFIG_OPTEE_SHM_SIZE,

This fails if not defined via Kconfig. I prepare a v2 which uses the
same mechanism as we use for OPTEE_SIZE.

Regards,
  Marco

>  			.method = "smc",
>  		};
>  
> diff --git a/common/Kconfig b/common/Kconfig
> index 1de76651fddf..5b5da6224752 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1136,6 +1136,15 @@ config OPTEE_SIZE
>  	  Can be smaller than the actual size used by OP-TEE, this is used to prevent
>  	  barebox from allocating memory in this area.
>  
> +config OPTEE_SHM_SIZE
> +	hex
> +	default 0x400000
> +	prompt "OP-TEE Shared Memory Size"
> +	depends on HAVE_OPTEE
> +	help
> +	  Size to reserve in main memory for OP-TEE shared memory communication.
> +	  Can be used for fixing up the OP-TEE OF node.
> +
>  config BOOTM_OPTEE
>  	bool
>  	prompt "support booting OP-TEE"
> -- 
> 2.39.2
> 
> 
> 


