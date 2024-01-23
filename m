Delivery-date: Tue, 23 Jan 2024 11:06:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSDfW-00D6Dq-1S
	for lore@lore.pengutronix.de;
	Tue, 23 Jan 2024 11:06:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSDfX-00055j-3e
	for lore@pengutronix.de; Tue, 23 Jan 2024 11:06:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6yaZJxaBZo+BMc7YYNUNDccVa66PEEU882l47h51fWY=; b=bGglobHxmwKgBn8c+8hPy1c0k7
	LWk7SwBzAgxBcTaY6ic4gKHPEwpjWPkp1wGRy5ouiM/jz/L3clHK0zZHaJbKPFKZoHzCAKGqBP2vC
	dBsWErLiFp33Pm63dXl1UP54C9EGdq1E+2IUrk1ZHvQWPsXiTD4s51qprQthUuGCufWMcPVGsOqbQ
	4cCwbGkF/n6R9Xp07u8+xsMk9uFqOceIpS5rFsdrd7rmN+Cn9jzUSTnaiGhmLcF9m8hPJ4FExbDt5
	p6n60aIm+iSfccnhddKW9K8gknAdoaYb4AStvxqivEApjN31XTKYxrl2zaU9Eha6QIuMxpzhWUFIl
	l0fmN0lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSDe0-00FrrE-0T;
	Tue, 23 Jan 2024 10:04:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSDdx-00Frqp-1Z
	for barebox@lists.infradead.org;
	Tue, 23 Jan 2024 10:04:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rSDdw-0004xv-4q; Tue, 23 Jan 2024 11:04:32 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rSDdv-001nZf-OQ; Tue, 23 Jan 2024 11:04:31 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rSDdv-001LiY-M5; Tue, 23 Jan 2024 11:04:31 +0100
Date: Tue, 23 Jan 2024 11:04:31 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240123100431.njlq2kcobkgumvyh@pengutronix.de>
References: <20240122141331.3438235-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240122141331.3438235-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_020433_519353_DA53B908 
X-CRM114-Status: GOOD (  17.23  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ddr: imx8m: add missing DDR clock rates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-01-22, Ahmad Fatoum wrote:
> ddrphy_init_set_dfi_clk() is called to translate a scalar clock rate
> as specified by board code into PLL parameters, which are configured.
> 
> enum ddr_rate describes the possible DDR rates and so far
> ddrphy_init_set_dfi_clk() supported all of them, except for 2600 and
> 2376 MHz, rendering these two rates unusable.
> 
> Fix this by adding support for them into ddrphy_init_set_dfi_clk.

Do we need to support this in TF-A as well for dvfs?

> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

The barebox change itself lgtm, therefore:

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  drivers/ddr/imx/imx8m_ddr_init.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/ddr/imx/imx8m_ddr_init.c b/drivers/ddr/imx/imx8m_ddr_init.c
> index 8b829645c063..d9a5d589f27b 100644
> --- a/drivers/ddr/imx/imx8m_ddr_init.c
> +++ b/drivers/ddr/imx/imx8m_ddr_init.c
> @@ -219,9 +219,9 @@ enum ddr_rate {
>  	DDR_3720,
>  	DDR_3200,
>  	DDR_3000,
> -	DDR_2600, /* Unused */
> +	DDR_2600,
>  	DDR_2400,
> -	DDR_2376, /* Unused */
> +	DDR_2376,
>  	DDR_1600,
>  	DDR_1000, /* Unused */
>  	DDR_1066,
> @@ -450,7 +450,9 @@ static void ddrphy_init_set_dfi_clk(struct dram_controller *dram, unsigned int d
>  	case 3720: drate = DDR_3720; break;
>  	case 3200: drate = DDR_3200; break;
>  	case 3000: drate = DDR_3000; break;
> +	case 2600: drate = DDR_2600; break;
>  	case 2400: drate = DDR_2400; break;
> +	case 2376: drate = DDR_2376; break;
>  	case 1600: drate = DDR_1600; break;
>  	case 1066: drate = DDR_1066; break;
>  	case 667: drate = DDR_667; break;
> -- 
> 2.39.2
> 
> 
> 


