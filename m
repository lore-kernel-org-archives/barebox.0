Delivery-date: Fri, 23 Dec 2022 10:15:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8e92-005uDM-DL
	for lore@lore.pengutronix.de; Fri, 23 Dec 2022 10:15:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8e90-0005iM-8B
	for lore@pengutronix.de; Fri, 23 Dec 2022 10:15:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=39GOguaj3YRlyRbVuEpERE8fuTOaJITmnbdX5K0gLYU=; b=KJajMw5YWy8CTyURcKQgIDHjo6
	jpuG7nwkhDHQk+vk6fIXQujoHfTLp04XZKrLW4nXbkLdmvQlb+E/+pnyqnOYUdeu2RZ6WQHzgT6D4
	CtFFLVu1HZv9hHA2YlylMM2xeSBBkt59GLaMRdCeFssa+3uP1vN+ucAsmKRKpsmkJFfGSq29tvEmx
	WZgUoDfzkxWH766GxcSOfstp4rG5z6TwJfZZnliwOJeESHYrXH5XGBgFq3cDXI65kESO3z7t4VPtV
	sT3SEoP/LZK0Q5zBx2YuY+jo/AiTyzozIf94IPu2LYaOstLAYt4ml7ALNRiPcrBtv/s5jCisdF5nw
	RlXecdqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8e7f-005aHf-Au; Fri, 23 Dec 2022 09:13:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8e5m-005ZQe-3r
	for barebox@lists.infradead.org; Fri, 23 Dec 2022 09:11:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1p8e5k-0005MU-5n; Fri, 23 Dec 2022 10:11:48 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1p8e5j-0001VH-KN; Fri, 23 Dec 2022 10:11:47 +0100
Date: Fri, 23 Dec 2022 10:11:47 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Leif Middelschulte <leif.middelschulte@klsmartin.com>,
	uol@pengutronix.de, ore@pengutronix.de,
	=?utf-8?B?U8O4cmVu?= Andersen <san@skov.dk>
Message-ID: <20221223091147.hxras67ydwhxp64y@pengutronix.de>
References: <20221222141201.3087192-1-a.fatoum@pengutronix.de>
 <20221222141201.3087192-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221222141201.3087192-2-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_011150_260267_0F487282 
X-CRM114-Status: GOOD (  13.98  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/6] clk: imx: set CLK_SET_RATE_NO_REPARENT for all muxes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22-12-22, Ahmad Fatoum wrote:
> The Linux i.MX clk drivers instantiate all muxes with
> CLK_SET_RATE_NO_REPARENT. Do likewise in barebox.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  drivers/clk/imx/clk.h | 30 +++++++++++++++++++-----------
>  1 file changed, 19 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
> index bc44d0c739e0..041592a06431 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -40,11 +40,19 @@ static inline struct clk *imx_clk_divider_table(const char *name,
>  				 width, table, 0);
>  }
>  
> +static inline struct clk *__imx_clk_mux(const char *name, void __iomem *reg,
> +					u8 shift, u8 width, const char * const *parents,
> +					u8 num_parents, unsigned flags, unsigned long clk_mux_flags)
> +{
> +	return clk_mux(name, CLK_SET_RATE_NO_REPARENT | flags, reg,
> +		       shift, width, parents, num_parents, clk_mux_flags);
> +}
> +
>  static inline struct clk *imx_clk_mux_ldb(const char *name, void __iomem *reg,
>  		u8 shift, u8 width, const char * const *parents, int num_parents)
>  {
> -	return clk_mux(name, CLK_SET_RATE_NO_REPARENT | CLK_SET_RATE_PARENT, reg,
> -		       shift, width, parents, num_parents, CLK_MUX_READ_ONLY);
> +	return __imx_clk_mux(name, reg, shift, width, parents, num_parents,
> +			     CLK_SET_RATE_PARENT, CLK_MUX_READ_ONLY);
>  }
>  
>  
> @@ -59,36 +67,36 @@ static inline struct clk *imx_clk_mux_flags(const char *name, void __iomem *reg,
>  					    const char * const *parents, u8 num_parents,
>  					    unsigned long clk_flags)
>  {
> -	return clk_mux(name, clk_flags, reg, shift, width, parents, num_parents,
> -		       0);
> +	return __imx_clk_mux(name, reg, shift, width, parents, num_parents,
> +			     clk_flags, 0);
>  }
>  
>  static inline struct clk *imx_clk_mux2_flags(const char *name,
>  		void __iomem *reg, u8 shift, u8 width, const char * const *parents,
>  		int num_parents, unsigned long clk_flags)
>  {
> -	return clk_mux(name, clk_flags | CLK_OPS_PARENT_ENABLE, reg, shift,
> -		       width, parents, num_parents, 0);
> +	return __imx_clk_mux(name,reg, shift, width, parents, num_parents,
> +			     clk_flags | CLK_OPS_PARENT_ENABLE, 0);
>  }
>  
>  static inline struct clk *imx_clk_mux(const char *name, void __iomem *reg,
>  		u8 shift, u8 width, const char * const *parents, u8 num_parents)
>  {
> -	return clk_mux(name, 0, reg, shift, width, parents, num_parents, 0);
> +	return __imx_clk_mux(name, reg, shift, width, parents, num_parents, 0, 0);
>  }
>  
>  static inline struct clk *imx_clk_mux2(const char *name, void __iomem *reg,
>  		u8 shift, u8 width, const char * const *parents, u8 num_parents)
>  {
> -	return clk_mux(name, CLK_OPS_PARENT_ENABLE, reg, shift, width, parents,
> -		       num_parents, 0);
> +	return __imx_clk_mux(name, reg, shift, width, parents,
> +			     num_parents, CLK_OPS_PARENT_ENABLE, 0);
>  }
>  
>  static inline struct clk *imx_clk_mux_p(const char *name, void __iomem *reg,
>  		u8 shift, u8 width, const char * const *parents, u8 num_parents)
>  {
> -	return clk_mux(name, CLK_SET_RATE_PARENT, reg, shift, width, parents,
> -		       num_parents, 0);
> +	return __imx_clk_mux(name, reg, shift, width, parents, num_parents,
> +			     CLK_SET_RATE_PARENT,  0);
>  }
>  
>  static inline struct clk *imx_clk_gate(const char *name, const char *parent,
> -- 
> 2.30.2
> 
> 
> 


