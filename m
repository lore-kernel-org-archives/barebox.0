Delivery-date: Fri, 17 Jun 2022 09:50:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o26jw-004xqv-MR
	for lore@lore.pengutronix.de; Fri, 17 Jun 2022 09:50:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o26jv-0001Q8-NR
	for lore@pengutronix.de; Fri, 17 Jun 2022 09:50:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P0uGRi1OI2zwj5PY/VLeQt/Gzt9un1a4KH8npGzkOSM=; b=Dp4wiXIlYKyaDW3YAJw7wBD8sO
	RNTsJt1Lb8owVE8T/l4JrSQYSuBJK4uZSrnsnILNOtx3Pa3QSpbe7ViHlXIO5y+ihSncuV1p7U3rq
	50klVo+cRg8B1Jxsix91Y5mE/9pjjfZTYiUWZdxciZJhgfGFMttj49N1oEWUdDaqLsi7UWqj9AnCV
	nvpuhGfgHzjh3WmyREK7aFrjjTIzDBfemM5cK4nF6aw9b2dy5rR1q4fY68t8byfay7wDUas2+/L0r
	j0DBlaf6bjDBmleWsVNUudW5A6jg2PdWOtHZ8IGfIYI2q/WVfc0pFosyhoaSbiZW/PkClzLFr6QsJ
	NMm4w2MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o26iV-0065tJ-IX; Fri, 17 Jun 2022 07:48:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o26S3-005yc1-Ej
	for barebox@lists.infradead.org; Fri, 17 Jun 2022 07:31:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o26S2-0007IB-1k; Fri, 17 Jun 2022 09:31:30 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o26S1-0005t9-OP; Fri, 17 Jun 2022 09:31:29 +0200
Date: Fri, 17 Jun 2022 09:31:29 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220617073129.GI1615@pengutronix.de>
References: <20220615080305.954879-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220615080305.954879-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_003131_556338_1A6939AD 
X-CRM114-Status: GOOD (  24.49  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] net: designware: rockchip: future-proof driver for more
 SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 15, 2022 at 10:03:05AM +0200, Ahmad Fatoum wrote:
> Linux driver has a struct rk_gmac_ops::regs_valid member to mark
> whether regs is populated or not. Population happens via a GCC
> extension that allows static initialization of flexible array
> members. Replace that with a pointer that is checked, so future
> SoC support just initializes it to NULL by default and avoid
> the OOB access.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/net/designware_rockchip.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/designware_rockchip.c b/drivers/net/designware_rockchip.c
> index dcf65c9ad4cc..a3859dce0c62 100644
> --- a/drivers/net/designware_rockchip.c
> +++ b/drivers/net/designware_rockchip.c
> @@ -21,7 +21,7 @@ struct rk_gmac_ops {
>  	void (*set_rmii_speed)(struct eqos *eqos, int speed);
>  	void (*set_rgmii_speed)(struct eqos *eqos, int speed);
>  	void (*integrated_phy_powerup)(struct eqos *eqos);
> -	u32 regs[];
> +	const u32 *regs;
>  };
>  
>  struct eqos_rk_gmac {
> @@ -175,7 +175,7 @@ static const struct rk_gmac_ops rk3568_ops = {
>  	.set_to_rmii = rk3568_set_to_rmii,
>  	.set_rmii_speed = rk3568_set_gmac_speed,
>  	.set_rgmii_speed = rk3568_set_gmac_speed,
> -	.regs = {
> +	.regs = (u32 []) {
>  		0xfe2a0000, /* gmac0 */
>  		0xfe010000, /* gmac1 */
>  		0x0, /* sentinel */
> @@ -253,7 +253,7 @@ static int eqos_init_rk_gmac(struct device_d *dev, struct eqos *eqos)
>  
>  	priv->ops = device_get_match_data(dev);
>  
> -	if (dev->num_resources > 0) {
> +	if (dev->num_resources > 0 && priv->ops->regs) {
>  		while (priv->ops->regs[i]) {
>  			if (priv->ops->regs[i] == dev->resource[0].start) {
>  				priv->bus_id = i;
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


