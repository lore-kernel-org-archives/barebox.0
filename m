Delivery-date: Tue, 02 Jun 2026 09:05:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUJC8-001Uzp-03
	for lore@lore.pengutronix.de;
	Tue, 02 Jun 2026 09:05:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUJC7-0007x7-CE
	for lore@pengutronix.de; Tue, 02 Jun 2026 09:05:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jJgGqsS7eK8fSziYDooGNItXt6GzlcnACbvmAgnrAN0=; b=UvS1JIfn6SmhRAo29VFKCG2+aW
	pWmd85095+PCShsuqDP++WosrdHdnkM62qPqD35W+HCyMMLuDzLqTkZliWTjbL2j95WEJIlJb5Cn3
	QqF7GFATA84POboQEHtVpKgA2Ogex13xI01eODYX5N68DH6LFFrh8m1JYbqlC6GLsuTPeUA/hKdc6
	vunPMPGqOeg4vTfRzp0uXzRd+xujS72+9IoVDYFqtWbcLDUA7CVU+u9tnrHgZmzUbpntDroAzSbuB
	K/1awisXBD166n+4FsPX6iJF9733ejIaL/JyBL93NZ7KLxwbkeaP1I6W5xqGWVNOpef/lOicfs67i
	lFg5dnpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUJAy-0000000CQMo-0Q3U;
	Tue, 02 Jun 2026 07:04:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUJAv-0000000CQMF-1bfz
	for barebox@lists.infradead.org;
	Tue, 02 Jun 2026 07:04:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wUJAt-0007pZ-Iy; Tue, 02 Jun 2026 09:04:31 +0200
Message-ID: <9b1495fe-24db-440b-bee7-be86a00e8fb4@pengutronix.de>
Date: Tue, 2 Jun 2026 09:04:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
 barebox@lists.infradead.org
Cc: thomas.haemmerle@leica-geosystems.com
References: <20260602040953.1060278-1-johannes.schneider@leica-geosystems.com>
 <20260602040953.1060278-2-johannes.schneider@leica-geosystems.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260602040953.1060278-2-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_000433_487286_65FC3C2D 
X-CRM114-Status: GOOD (  16.28  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/6] clk: imx8mp: add 700 MHz rate entry for VIDEO_PLL1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 6/2/26 6:09 AM, Johannes Schneider wrote:
> From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
> 
> The LVDS serializer requires link_freq = pixel_clock × 7.  For a 25 MHz
> pixel clock the link frequency is 175 MHz.  VIDEO_PLL1 must be set to
> 700 MHz so the divider chain (VIDEO_PLL1 / 4 = 175 MHz) produces an
> exact match; without it clk_set_rate() rounds down to 650 MHz, yielding
> only 162.5 MHz and causing the LVDS transmitter to output ~743 pixels
> per line instead of 800 — visible as a black strip on the right edge.
> 
> PLL parameters: Fin=24 MHz, P=3, S=2, K=0 → 24 × 350 / (3 × 4) = 700 MHz.
> 
> Assisted-by: Claude:claude-sonnet-4-6
> Signed-of-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/clk/imx/clk-pll14xx.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
> index 6716a6f555..db7e744e87 100644
> --- a/drivers/clk/imx/clk-pll14xx.c
> +++ b/drivers/clk/imx/clk-pll14xx.c
> @@ -61,6 +61,7 @@ static const struct imx_pll14xx_rate_table imx_pll1416x_tbl[] = {
>  };
>  
>  static const struct imx_pll14xx_rate_table imx_pll1443x_tbl[] = {
> +	PLL_1443X_RATE(700000000U, 350, 3, 2, 0),
>  	PLL_1443X_RATE(650000000U, 325, 3, 2, 0),
>  	PLL_1443X_RATE(594000000U, 198, 2, 2, 0),
>  	PLL_1443X_RATE(393216000U, 262, 2, 3, 9437),
> 
> base-commit: 81fbe2e8d0d445032498a0bfecf9fd270f00985a

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



