Delivery-date: Fri, 30 Jan 2026 09:01:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vljRh-006uVc-2v
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 09:01:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vljRg-0005Nx-PG
	for lore@pengutronix.de; Fri, 30 Jan 2026 09:01:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rmcn/rwWhi75Bn68SBBxv9Kbf4OVv3TSTvSY5gAbuxg=; b=IeYy4jDyg6nCPb0xFIP+YZ3Kdw
	CeWvxn+UZxle7qppPr48AWgvPOiOfnLRKtH/NbuIbX11Ml55TPBVlbm1H6hqvToVViaxApw47NWOa
	DMzPkEBQuU1XJuR4rxEC13l0vqI/Lfsoy+PKQdQKaarzrc2gFCunrB31VVEklMLLZXcS0k73mp4+e
	YuObcirieDu3MOcmv68Z8zZ2zkPyLMcwYQZ2Fi8kpjdMuLs5UtvnQYQlKeXlh4xI41/Bq+wYGGWMi
	tueseSUZ8gfD3QplWKrNagbH30sIxaD9cH9yCXrl1Ac1KIUkrHxeYzmzuW7yBpVfc3yLGW2TvXEpp
	aKvWs8Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vljR0-00000001Au6-2CCN;
	Fri, 30 Jan 2026 08:00:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vljQv-00000001Ath-2m8q
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 08:00:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vljQs-0005Fa-6Y; Fri, 30 Jan 2026 09:00:46 +0100
Message-ID: <5296ce91-7dc3-4971-afac-a2ff0ba684f5@pengutronix.de>
Date: Fri, 30 Jan 2026 09:00:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sohaib Mohamed <sohaib.amhmd@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
 <20260130-barebox-kickpi-v2-7-d27cf94a39b6@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260130-barebox-kickpi-v2-7-d27cf94a39b6@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260130_000049_710497_750BEED2 
X-CRM114-Status: GOOD (  19.12  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 07/14] pmdomain: rockchip: Add RK3562 power domain
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 1/30/26 06:16, Sohaib Mohamed wrote:
> Add basic power domain controller support for RK3562 SoC including
> GPU, NPU, VDPU, VEPU, RGA, VI, VO, and PHP domains with clock gating
> configurations.
> 
> Note: This implementation does not handle nested power domain
> hierarchies if present on this SoC.
> 
> Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/pmdomain/rockchip/pm-domains.c | 47 ++++++++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
> 
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> index a30ff8fb22..4916515f27 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -32,6 +32,7 @@
>  #include <dt-bindings/power/rk3399-power.h>
>  #include <dt-bindings/power/rk3568-power.h>
>  #include <dt-bindings/power/rockchip,rk3576-power.h>
> +#include <dt-bindings/power/rockchip,rk3562-power.h>
>  #include <dt-bindings/power/rk3588-power.h>
>  
>  #define readx_poll_timeout_atomic(op, addr, val, cond, poll_time, timeout_us) \
> @@ -133,6 +134,21 @@ struct rockchip_pmu {
>  	.active_wakeup = wakeup,			\
>  }
>  
> +#define DOMAIN_M_G_SD(_name, pwr, status, req, idle, ack, g_mask, mem, wakeup, keepon)	\
> +{							\
> +	.name = _name,					\
> +	.pwr_w_mask = (pwr) << 16,			\
> +	.pwr_mask = (pwr),				\
> +	.status_mask = (status),			\
> +	.req_w_mask = (req) << 16,			\
> +	.req_mask = (req),				\
> +	.idle_mask = (idle),				\
> +	.ack_mask = (ack),				\
> +	.clk_ungate_mask = (g_mask),			\
> +	.active_wakeup = wakeup,			\
> +}
> +
> +
>  #define DOMAIN_M_O_R(_name, p_offset, pwr, status, m_offset, m_status, r_status, r_offset, req, idle, ack, wakeup, regulator)	\
>  {							\
>  	.name = _name,					\
> @@ -202,6 +218,9 @@ struct rockchip_pmu {
>  #define DOMAIN_RK3568(name, pwr, req, wakeup)		\
>  	DOMAIN_M(name, pwr, pwr, req, req, req, wakeup)
>  
> +#define DOMAIN_RK3562(name, pwr, req, g_mask, mem, wakeup)		\
> +	DOMAIN_M_G_SD(name, pwr, pwr, req, req, req, g_mask, mem, wakeup, false)
> +
>  #define DOMAIN_RK3576(name, p_offset, pwr, status, r_status, r_offset, req, idle, g_mask, wakeup)	\
>  	DOMAIN_M_O_R_G(name, p_offset, pwr, status, 0, r_status, r_status, r_offset, req, idle, idle, g_mask, wakeup)
>  
> @@ -1099,6 +1118,18 @@ static const struct rockchip_domain_info rk3399_pm_domains[] = {
>  	[RK3399_PD_SDIOAUDIO]	= DOMAIN_RK3399("sdioaudio", BIT(31), BIT(31), BIT(29), true),
>  };
>  
> +static const struct rockchip_domain_info rk3562_pm_domains[] = {
> +					     /* name           pwr     req     g_mask  mem wakeup */
> +	[RK3562_PD_GPU]		= DOMAIN_RK3562("gpu",         BIT(0), BIT(1), BIT(1), 0, false),
> +	[RK3562_PD_NPU]		= DOMAIN_RK3562("npu",         BIT(1), BIT(2), BIT(2), 0, false),
> +	[RK3562_PD_VDPU]	= DOMAIN_RK3562("vdpu",        BIT(2), BIT(6), BIT(6), 0, false),
> +	[RK3562_PD_VEPU]	= DOMAIN_RK3562("vepu",        BIT(3), BIT(7), BIT(7) | BIT(3), 0, false),
> +	[RK3562_PD_RGA]		= DOMAIN_RK3562("rga",         BIT(4), BIT(5), BIT(5) | BIT(4), 0, false),
> +	[RK3562_PD_VI]		= DOMAIN_RK3562("vi",          BIT(5), BIT(3), BIT(3), 0, false),
> +	[RK3562_PD_VO]		= DOMAIN_RK3562("vo",  BIT(6), BIT(4), BIT(4), 16, false),
> +	[RK3562_PD_PHP]		= DOMAIN_RK3562("php",         BIT(7), BIT(8), BIT(8), 0, false),
> +};
> +
>  static const struct rockchip_domain_info rk3568_pm_domains[] = {
>  	[RK3568_PD_NPU]		= DOMAIN_RK3568("npu",  BIT(1), BIT(2),  false),
>  	[RK3568_PD_GPU]		= DOMAIN_RK3568("gpu",  BIT(0), BIT(1),  false),
> @@ -1300,6 +1331,18 @@ static const struct rockchip_pmu_info rk3399_pmu = {
>  	.domain_info = rk3399_pm_domains,
>  };
>  
> +static const struct rockchip_pmu_info rk3562_pmu = {
> +	.pwr_offset = 0x210,
> +	.status_offset = 0x230,
> +	.req_offset = 0x110,
> +	.idle_offset = 0x128,
> +	.ack_offset = 0x120,
> +	.clk_ungate_offset = 0x140,
> +
> +	.num_domains = ARRAY_SIZE(rk3562_pm_domains),
> +	.domain_info = rk3562_pm_domains,
> +};
> +
>  static const struct rockchip_pmu_info rk3568_pmu = {
>  	.pwr_offset = 0xa0,
>  	.status_offset = 0x98,
> @@ -1390,6 +1433,10 @@ static const struct of_device_id rockchip_pm_domain_dt_match[] = {
>  		.compatible = "rockchip,rk3366-power-controller",
>  		.data = (void *)&rk3366_pmu,
>  	},
> +	{
> +		.compatible = "rockchip,rk3562-power-controller",
> +		.data = (void *)&rk3562_pmu,
> +	},
>  	{
>  		.compatible = "rockchip,rk3368-power-controller",
>  		.data = (void *)&rk3368_pmu,
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


