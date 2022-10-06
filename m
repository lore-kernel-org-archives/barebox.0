Delivery-date: Thu, 06 Oct 2022 10:44:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ogMV0-007ll3-5t
	for lore@lore.pengutronix.de; Thu, 06 Oct 2022 10:44:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ogMUy-0005td-RY
	for lore@pengutronix.de; Thu, 06 Oct 2022 10:44:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lj8pRnsKGRMRUcQSLagjZOcBJA46AhWF/7A48676M3M=; b=mw8J6ccO80zawRx7ZMR2h5fo6a
	2JvG8fsPtIb2caF2VaEacWDllUwZXFYPr/DpsVitOtlVbtTNM/F9JetlJ7cJXZPUWsV7afJ62F/01
	q3J+BB5vIomfgFiwalhSPBBE2QR5q+SAEey1FEumzlnQoFdMMwPRtq2vDV+hbzyovoMn5biKcPPHd
	vnnaIdTMd9MJdrYDbFMFB8WGWmiHzblbwKVTlAjkZn1gNuaNvIqg5yj3fvE+uPJxkUolz10XAoJ36
	GnFFFzjJqXAEuYuaIGMkFgz0ATSBI/v9aY0sw0Tc4FUj0qRSQzx1dkFBl48ikkvCYCNCh4/T1AkSZ
	F1aRxaCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogMT8-000mv3-S0; Thu, 06 Oct 2022 08:43:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogMT3-000mr7-5R
	for barebox@lists.infradead.org; Thu, 06 Oct 2022 08:42:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ogMSy-0005mo-3I; Thu, 06 Oct 2022 10:42:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ogMSx-0006S8-S3; Thu, 06 Oct 2022 10:42:51 +0200
Date: Thu, 6 Oct 2022 10:42:51 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Johannes Zink <j.zink@pengutronix.de>
Message-ID: <20221006084251.GV986@pengutronix.de>
References: <20221005194108.3380781-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221005194108.3380781-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221006_014257_236525_48BB9E74 
X-CRM114-Status: GOOD (  32.12  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master v2] clks: imx7: fix initial clock setup with deep
 probe enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 05, 2022 at 09:41:08PM +0200, Ahmad Fatoum wrote:
> We register the i.MX7 clock controller driver at core_initcall level and
> then do some initial clock setup/reparenting at postcore_initcall level.
> This doesn't work as expected when deep probe is enabled, because while
> the driver is registered at core_initcall level, it's only probed
> later on, currently at postcore_initcall level because it's a dependency
> of the timer for which of_ensure_device_probed is called.
> 
> As the initial clock setup is also at postcore_initcall level, it's no
> longer guaranteed that the code executes in the same order. Fix this by
> directly doing the setup at the end of the probe function for the deep
> probe case. In non-deep-probe systems, we maintain the existing initcall
> ordering to avoid regressions.
> 
> Co-developed-by: Johannes Zink <j.zink@pengutronix.de>
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - maintain initcall ordering for non-deep-probe systems (Sascha)
> ---
>  drivers/clk/imx/clk-imx7.c | 29 +++++++++++++++++++++++++----
>  1 file changed, 25 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/clk/imx/clk-imx7.c b/drivers/clk/imx/clk-imx7.c
> index ffa39d17b0eb..588e9cbe5ce4 100644
> --- a/drivers/clk/imx/clk-imx7.c
> +++ b/drivers/clk/imx/clk-imx7.c
> @@ -6,6 +6,7 @@
>  #include <common.h>
>  #include <init.h>
>  #include <driver.h>
> +#include <deep-probe.h>
>  #include <linux/clk.h>
>  #include <io.h>
>  #include <of.h>
> @@ -358,7 +359,9 @@ static int const clks_init_on[] __initconst = {
>  
>  static struct clk_onecell_data clk_data;
>  
> -static int imx7_clk_initialized;
> +static struct device_node *ccm_np;
> +
> +static int imx7_clk_setup(void);
>  
>  static int imx7_ccm_probe(struct device_d *dev)
>  {
> @@ -806,19 +809,35 @@ static int imx7_ccm_probe(struct device_d *dev)
>  	clk_data.clk_num = ARRAY_SIZE(clks);
>  	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
>  
> -	imx7_clk_initialized = 1;
> +	ccm_np = dev->device_node;
> +
> +	/*
> +	 * imx7_clk_setup() requires both the CCM and fixed-clock osc devices
> +	 * to be available.
> +	 * With deep probe enabled, we can instead just directly call
> +	 * imx7_clk_setup because the osc fixed-clock will just be probed
> +	 * on demand if not yet available. Otherwise, the imx7_clk_setup
> +	 * will run at postcore_initcall level.
> +	 */
> +	if (deep_probe_is_supported())
> +		return imx7_clk_setup();
>  
>  	return 0;
>  }
>  
>  static int imx7_clk_setup(void)
>  {
> +	struct clk *clk;
>  	int i;
>  
> -	if (!imx7_clk_initialized)
> +	if (!ccm_np)
>  		return 0;
>  
> -	clks[IMX7D_OSC_24M_CLK] = clk_lookup("osc");
> +	clk = of_clk_get_by_name(ccm_np, "osc");
> +	if (IS_ERR(clk))
> +		return PTR_ERR(clk);
> +
> +	clks[IMX7D_OSC_24M_CLK] = clk;
>  
>  	for (i = 0; i < ARRAY_SIZE(clks_init_on); i++)
>  		clk_enable(clks[clks_init_on[i]]);
> @@ -840,6 +859,8 @@ static int imx7_clk_setup(void)
>  	clk_set_rate(clks[IMX7D_ENET1_TIME_ROOT_CLK], 25000000);
>  	clk_set_rate(clks[IMX7D_ENET2_TIME_ROOT_CLK], 25000000);
>  
> +	ccm_np = NULL;
> +
>  	return 0;
>  }
>  postcore_initcall(imx7_clk_setup);
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


