Delivery-date: Mon, 07 Mar 2022 08:57:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nR8FN-003ChC-BM
	for lore@lore.pengutronix.de; Mon, 07 Mar 2022 08:57:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nR8FL-0004wb-T1
	for lore@pengutronix.de; Mon, 07 Mar 2022 08:57:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=znonK6/qWuyKx0Ay+wC35SVjtUzgXEmDTPn2VDTkG9A=; b=mAB78HTQRwxt4PKAaq9W0unQ6D
	qQ2ElPZcqpqscupv6Fp+kWshAFnhVLtEopzSOS4r9K5769AXfmsbZY/swt0xonhC2WB2zX+1yxm08
	ETRVy2vSJV5t8T0SfrJmCqDLwws/8WkxV/mnPrZ5QZp3nWyiotzWQZkesPSRzQC6fp75gSz+M9Otl
	Hn2ngofHgoMxhhH2uKPL/57LnGOeV6L43oSUrWxAqCCGLBnFFfYiRxKa92uSG3NZ0WzoArvrGPtxh
	xkLZC31hAtDfknA+jVFWAlNk8V86grvjaKgFF/fEAGHL59jt0jtTaSZY47d5pNXmFgi32sCJjFqEJ
	4GKYseFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nR8EA-00GLyR-8l; Mon, 07 Mar 2022 07:56:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nR8E5-00GLxW-7t
 for barebox@lists.infradead.org; Mon, 07 Mar 2022 07:56:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nR8E4-0004pR-26; Mon, 07 Mar 2022 08:56:16 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nR8E3-0006r4-LD; Mon, 07 Mar 2022 08:56:15 +0100
Date: Mon, 7 Mar 2022 08:56:15 +0100
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20220307075615.GC405@pengutronix.de>
References: <20220307071627.346527-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220307071627.346527-1-michael.riesch@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:56:07 up 86 days, 16:41, 72 users,  load average: 0.30, 0.22, 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220306_235617_325565_1E4F69AA 
X-CRM114-Status: GOOD (  29.02  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] net: designware: rockchip: improve support for multiple
 gmac instances
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 07, 2022 at 08:16:27AM +0100, Michael Riesch wrote:
> Do not rely on (board-specific) aliases to distinguish between multiple
> (SoC-specific) GMAC instances. Instead, use the base address of the
> controllers as is done in the Linux kernel.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  drivers/net/designware_rockchip.c | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/designware_rockchip.c b/drivers/net/designware_rockchip.c
> index da57ed171..dcf65c9ad 100644
> --- a/drivers/net/designware_rockchip.c
> +++ b/drivers/net/designware_rockchip.c
> @@ -21,6 +21,7 @@ struct rk_gmac_ops {
>  	void (*set_rmii_speed)(struct eqos *eqos, int speed);
>  	void (*set_rgmii_speed)(struct eqos *eqos, int speed);
>  	void (*integrated_phy_powerup)(struct eqos *eqos);
> +	u32 regs[];
>  };
>  
>  struct eqos_rk_gmac {
> @@ -174,6 +175,11 @@ static const struct rk_gmac_ops rk3568_ops = {
>  	.set_to_rmii = rk3568_set_to_rmii,
>  	.set_rmii_speed = rk3568_set_gmac_speed,
>  	.set_rgmii_speed = rk3568_set_gmac_speed,
> +	.regs = {
> +		0xfe2a0000, /* gmac0 */
> +		0xfe010000, /* gmac1 */
> +		0x0, /* sentinel */
> +	},
>  };
>  
>  static int rk_gmac_powerup(struct eqos *eqos)
> @@ -228,7 +234,7 @@ static int eqos_init_rk_gmac(struct device_d *dev, struct eqos *eqos)
>  {
>  	struct device_node *np = dev->device_node;
>  	struct eqos_rk_gmac *priv = to_rk_gmac(eqos);
> -	int ret;
> +	int i = 0, ret;
>  	const char *strings;
>  
>  	priv->dev = dev;
> @@ -247,7 +253,15 @@ static int eqos_init_rk_gmac(struct device_d *dev, struct eqos *eqos)
>  
>  	priv->ops = device_get_match_data(dev);
>  
> -	priv->bus_id = of_alias_get_id(np, "ethernet");
> +	if (dev->num_resources > 0) {
> +		while (priv->ops->regs[i]) {
> +			if (priv->ops->regs[i] == dev->resource[0].start) {
> +				priv->bus_id = i;
> +				break;
> +			}
> +			i++;
> +		}
> +	}
>  
>  	priv->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
>  	if (IS_ERR(priv->grf)) {
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

