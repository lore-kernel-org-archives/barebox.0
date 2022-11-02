Delivery-date: Wed, 02 Nov 2022 12:19:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqBmc-00CG99-TH
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 12:19:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqBmb-0005L3-NS
	for lore@pengutronix.de; Wed, 02 Nov 2022 12:19:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yGaBuEJKCzC/VY3MWGi1ZshvOR06p1SWV2P2iQxsweg=; b=frd54Fwq5CGxoIxyM7uqXILhqR
	cXUXd/gnqRYYzrlP2RuZeDin+qjjcdAoy1rV8ZW7g8kUQpTGh7frcScZheGVpI0YMPB1fabkA++Ab
	rBjAPrjHesj63n72wjaLibsyJTO416fnGj5XpOTRcCh6uE1hOVqUKLw9c8p7fCMcBkOlrUZYRplPW
	ZPwJM3Zc964EwAfSmIHvKPgy2jgtl1Xee4ovXoSCWMiVkpK05kP53fcjbPRiok3GLzmvLse7x5+ve
	CvYqHVzni5wXnHp8SFY1xAJXW+mLAkTZZyqcFnmeBRiGlAdZ6CCcuCpPQah78MQTPkLdZtHuWsxzK
	0mXPcr8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqBlF-00AiQ5-FZ; Wed, 02 Nov 2022 11:18:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqBlA-00AiOe-1g
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 11:18:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oqBl8-0005Gj-4z; Wed, 02 Nov 2022 12:18:14 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oqBl7-00040O-Ta; Wed, 02 Nov 2022 12:18:13 +0100
Date: Wed, 2 Nov 2022 12:18:13 +0100
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221102111813.GM3143@pengutronix.de>
References: <20221102100744.1949741-1-o.rempel@pengutronix.de>
 <20221102100744.1949741-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221102100744.1949741-3-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_041816_105470_91DE0F9D 
X-CRM114-Status: GOOD (  33.24  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 3/4] ARM: boards: skov-imx6: assigned separate MAC
 address to LAN2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Nov 02, 2022 at 11:07:43AM +0100, Oleksij Rempel wrote:
> We have two external ports and different MAC addresses on each port. So,
> assign different MAC to the LAN2. The address on LAN1 is the
> system default address.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/boards/skov-imx6/board.c | 47 ++++++++++++++++++++++++++++++-
>  1 file changed, 46 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
> index 3c51b76735..ab8b229a69 100644
> --- a/arch/arm/boards/skov-imx6/board.c
> +++ b/arch/arm/boards/skov-imx6/board.c
> @@ -17,6 +17,12 @@
>  
>  #include "version.h"
>  
> +struct skov_imx6_priv {
> +	struct device_d *dev;
> +};
> +
> +static struct skov_imx6_priv *skov_priv;
> +
>  static int eth_of_fixup_node(struct device_node *root, const char *node_path,
>  			     const u8 *ethaddr)
>  {
> @@ -542,6 +548,34 @@ static void skov_init_board(const struct board_description *variant)
>  	}
>  }
>  
> +/* */

Did you want to write a comment here?

> +static int skov_set_switch_lan2_mac(struct skov_imx6_priv *priv)
> +{
> +	const char *state = "/state/ethaddr/eth2";
> +	struct device_node *lan2_np;
> +	u8 ethaddr[ETH_ALEN];
> +	int ret;
> +
> +	ret = get_mac_address_from_env_variable("state.ethaddr.eth2", ethaddr);
> +	if (ret || !is_valid_ether_addr(ethaddr)) {
> +		ret = get_default_mac_address_from_state_node(state, ethaddr);
> +		if (ret || !is_valid_ether_addr(ethaddr)) {
> +			dev_err(priv->dev, "can't get MAC for LAN2\n");
> +			return -ENODEV;
> +		}
> +	}
> +
> +	lan2_np = of_find_node_by_path("/mdio/switch@0/ports/ports@1");
> +	if (!lan2_np) {
> +		dev_err(priv->dev, "LAN2 node not found\n");
> +		return -ENODEV;
> +	}
> +
> +	of_eth_register_ethaddr(lan2_np, ethaddr);
> +
> +	return 0;
> +}
> +
>  static int skov_switch_test(void)
>  {
>  	struct device_d *sw_dev;
> @@ -561,8 +595,11 @@ static int skov_switch_test(void)
>  		goto no_switch;
>  	}
>  
> -	if (dev_is_probed(sw_dev))
> +	if (dev_is_probed(sw_dev)) {
> +		skov_set_switch_lan2_mac(skov_priv);
> +		/* even if we fail, continue to boot as good as possible */
>  		return 0;
> +	}

This introduction of skov_priv to have a struct device_d * around for
dev_err is good, but is not subject to this patch. Please either make an
extra patch from it and use dev_err consistently or just stick to the
currently used pr_err.

>  
>  no_switch:
>  	skov_have_switch = false;
> @@ -584,6 +621,7 @@ late_initcall(skov_switch_test);
>  
>  static int skov_imx6_probe(struct device_d *dev)
>  {
> +	struct skov_imx6_priv *priv;
>  	unsigned v = 0;
>  	const struct board_description *variant;
>  
> @@ -603,6 +641,13 @@ static int skov_imx6_probe(struct device_d *dev)
>  
>  	skov_board_no = v;
>  
> +	priv = xzalloc(sizeof(*priv));
> +	if (!priv)
> +		return -ENOMEM;

xzalloc does not return with an error.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


