Delivery-date: Fri, 14 Jan 2022 06:25:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8F5a-001kvQ-CR
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 06:25:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8F5Z-00061Q-1f
	for lore@pengutronix.de; Fri, 14 Jan 2022 06:25:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oS34DhMB4PkFtw65f1wM39aaVFZycaouzrzigPv6InY=; b=zenQsnh2Q5icil+hkGCGQDl02N
	0ui9d/k5eHzkoSfU0JsLt3FjGB71ScNo+SELLJsLk6uOpXc1VYsOVEywgWLKg3RWQIg1wXWVBFDSZ
	w8iGCZY+pkWrl8A1oLUiVIYo3pryNZcmmjYBMS1m9+Fi3BL/A0lU/lEcApSGYPBRmTyNzq0D0orW6
	rttmtutC17VvJ8kfNCnZiaa1xaygnfljkHlAAFvbd/L2LP8w0du3f9QoHAiPRgMl+fTeF+FEsG1SD
	+E4JGqr6WQ2lgE7HvJq8odaXOc74LL56DXbi4yYOLOdVMkgh/SiTxlcOpOXmMzycmjTdMMhP02qMK
	avF41gVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8F4J-007mFe-He; Fri, 14 Jan 2022 05:24:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8F4E-007mF8-K4
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 05:24:04 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1n8F4D-0005nW-BR; Fri, 14 Jan 2022 06:24:01 +0100
To: Michael Riesch <michael.riesch@wolfvision.net>,
 barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
References: <20211111140316.1646962-1-michael.riesch@wolfvision.net>
 <20211111140316.1646962-3-michael.riesch@wolfvision.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <603ef8b9-0103-5b53-b9bb-3db329961b04@pengutronix.de>
Date: Fri, 14 Jan 2022 06:24:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211111140316.1646962-3-michael.riesch@wolfvision.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220113_212402_700920_31418579 
X-CRM114-Status: GOOD (  21.69  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] net: designware: rockchip: remove unnecessary clock
 pclk_xpcs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 11.11.21 15:03, Michael Riesch wrote:
> The pclk_xpcs clock is not used in the mainline Linux driver and
> only rarely specified in the mainline dts files. Drop it in order
> to avoid errors when the mainline dts files are used.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>

Can you cherry-pick this one patch? I have code depending on it.

> ---
>  drivers/net/designware_rockchip.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/net/designware_rockchip.c b/drivers/net/designware_rockchip.c
> index e4f74f646..7acbd723b 100644
> --- a/drivers/net/designware_rockchip.c
> +++ b/drivers/net/designware_rockchip.c
> @@ -44,7 +44,6 @@ enum {
>  	CLK_MAC_PCLK,
>  	CLK_MAC_SPEED,
>  	CLK_PTP_REF,
> -	CLK_XPCS_PCLK,
>  };
>  
>  static const struct clk_bulk_data rk_gmac_clks[] = {
> @@ -56,7 +55,6 @@ static const struct clk_bulk_data rk_gmac_clks[] = {
>  	[CLK_MAC_PCLK]    = { .id = "pclk_mac" },
>  	[CLK_MAC_SPEED]   = { .id = "clk_mac_speed" },
>  	[CLK_PTP_REF]     = { .id = "ptp_ref" },
> -	[CLK_XPCS_PCLK]   = { .id = "pclk_xpcs" },
>  };
>  
>  static inline struct eqos_rk_gmac *to_rk_gmac(struct eqos *eqos)
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

