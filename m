Delivery-date: Mon, 22 Apr 2024 14:12:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rysXM-00BTjb-0F
	for lore@lore.pengutronix.de;
	Mon, 22 Apr 2024 14:12:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rysXL-0002Nf-Fa
	for lore@pengutronix.de; Mon, 22 Apr 2024 14:12:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fxNBxJ5nfHBvHSk6p2JMGOjkfJdSKSfdcAPfVYVWQeQ=; b=NBpxFjGmCgoYMF3LxNdglW1wrI
	vO3euOV+IhEjX3H/hSLuRd/H+h4HgN+EPKPgkxvELp/LORvE4sxLRukQ9i5bnwzZkYP/78Rar6l9a
	LjQnzmK/qwnzVygCSfk7DXy+w+2U/Fq3Yu6/Dol9ohSjvSn/dHyS4U4ZIsKT9reVejlPrNHWMcaQL
	+q86nzP1r43zcMNLaNOCKGl8T1QIcIMG1dXQ39ps3KJZwOTanxBrnmmwsBkLhflP2IGjO7x6OUh+w
	Aj1QT2rsozUeOpP4JZneYxlTlXGX22CzVR999ZHd1zINo79p1aKA2BJgw8fCdBrGl+Rs0VdRIBWPp
	YoepYGsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rysWm-0000000DTBx-2yZk;
	Mon, 22 Apr 2024 12:12:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rysWj-0000000DT7d-0dNu
	for barebox@lists.infradead.org;
	Mon, 22 Apr 2024 12:12:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rysWe-0001lE-Ld; Mon, 22 Apr 2024 14:12:00 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rysWe-00DgQo-8k; Mon, 22 Apr 2024 14:12:00 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rysWe-0087rx-0Z;
	Mon, 22 Apr 2024 14:12:00 +0200
Date: Mon, 22 Apr 2024 14:12:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZiZUECGk10cVsnXn@pengutronix.de>
References: <20240417-v2024-03-0-topic-imx93-designware-imx-v1-0-c532c18f9ba5@pengutronix.de>
 <20240417-v2024-03-0-topic-imx93-designware-imx-v1-2-c532c18f9ba5@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240417-v2024-03-0-topic-imx93-designware-imx-v1-2-c532c18f9ba5@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_051205_212705_2457F1F2 
X-CRM114-Status: GOOD (  23.57  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] net: designware-imx: i.MX93: set TX_CLK in RMII mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Apr 17, 2024 at 11:11:26AM +0200, Steffen Trumtrar wrote:
> According to NXP AT14149 the TX_CLK direction must be set to output
> when the ENET is used in RMII mode.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/net/designware_imx.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/net/designware_imx.c b/drivers/net/designware_imx.c
> index ab60d98298..2cc707ecac 100644
> --- a/drivers/net/designware_imx.c
> +++ b/drivers/net/designware_imx.c
> @@ -26,6 +26,10 @@
>  
>  #define RMII_RESET_SPEED			(0x3 << 14)
>  
> +#define MX93_GPR_ENET_CLK_SEL_OFFSET		0x4
> +#define MX93_ENET_CLK_ENET_QOS_TX_CLK_SEL_MASK	GENMASK(0, 0)
> +#define MX93_ENET_CLK_ENET_QOS_TX_CLK_SEL	(0x1 << 0)

No need to define an extra _MASK for single bit fields. Just use
MX93_ENET_CLK_ENET_QOS_TX_CLK_SEL instead.

> +
>  struct eqos_imx_soc_data {
>  	int (*set_interface_mode)(struct eqos *eqos);
>  	void (*fix_soc_reset)(struct eqos *eqos, u32 *mac_regs);
> @@ -155,6 +159,14 @@ static int eqos_imx93_set_interface_mode(struct eqos *eqos)
>  		break;
>  	case PHY_INTERFACE_MODE_RMII:
>  		val = MX93_GPR_ENET_QOS_INTF_SEL_RMII;
> +
> +		/* According to NXP AN14149, the direction of the
> +		 * TX_CLK must be set to output in RMII mode.
> +		 */
> +		regmap_update_bits(priv->intf_regmap,
> +				   priv->intf_reg_off + MX93_GPR_ENET_CLK_SEL_OFFSET,
> +				   MX93_ENET_CLK_ENET_QOS_TX_CLK_SEL_MASK,
> +				   MX93_ENET_CLK_ENET_QOS_TX_CLK_SEL);

I think this is ok for now as all in tree boards need this set, but what
about this comment to the corresponding kernel patch?

https://lore.kernel.org/all/f01d49cf-5955-405c-9c2b-05b0c7bb982c@armadeus.com/

Also according to the reference manual this bit is default 1 already,
how comes you have to adjust it?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


