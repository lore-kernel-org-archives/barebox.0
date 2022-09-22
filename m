Delivery-date: Thu, 22 Sep 2022 11:55:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1obIvk-00C54e-2k
	for lore@lore.pengutronix.de; Thu, 22 Sep 2022 11:55:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1obIvi-0007Wk-Gk
	for lore@pengutronix.de; Thu, 22 Sep 2022 11:55:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yuMzQcsrgULJKzOjdKyulMPKDe6v1/2XZyDmccSq9EA=; b=2xQIRchWoYSCzCYHDl15+lLcs9
	BJ0T9wJj5KHelhFbWx3dtu6Qzow5yHmw1RrGyoqjdof7BFW5tJ7Lf1hTRgwM8gxDsMfYQzJbdCYmb
	mw0S2N7DDhESwrZkxsiHKU/Tlu9W041AAs3GsDFT2qazOXJ9v8Cz+vyLJ1CRsrilG45+D3DX2eHA7
	DBWQ/WvtG8YOBrM5Z5s/ro/SsdPoMlkvQZtH11iLGGo3+fU0rf/AyFnagbNgnikOMrb6u1SfAtS4L
	5f4qRhgW62QI3oQoe/+3UzuO0VcJ3DjULds2e35W/WvCk4JJX3jGtN4JfLMGmmaA8WMjP5w9q4t+0
	aodrqUlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obItr-00EaWu-FY; Thu, 22 Sep 2022 09:53:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obIW2-00ESQA-G8
	for barebox@lists.infradead.org; Thu, 22 Sep 2022 09:29:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1obIVy-0003xW-VC; Thu, 22 Sep 2022 11:29:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1obIVy-0005xZ-MT; Thu, 22 Sep 2022 11:29:02 +0200
Date: Thu, 22 Sep 2022 11:29:02 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220922092902.GJ986@pengutronix.de>
References: <20220920125533.2497108-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220920125533.2497108-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_022906_596405_565FC4D0 
X-CRM114-Status: GOOD (  33.59  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 1/3] net: port support for microchip SMI0 MDIO bus
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Sep 20, 2022 at 02:55:31PM +0200, Oleksij Rempel wrote:
> SMI0 is a mangled version of MDIO. The main low level difference is
> the MDIO C22 OP code is always 0, not 0x2 or 0x1 for Read/Write. The
> read/write information is instead encoded in the PHY address.
> 
> Extend the bit-bang code to allow the op code to be overridden, but
> default to normal C22 values. Add an extra compatible to the mdio-gpio
> driver, and when this compatible is present, set the op codes to 0.
> 
> A higher level driver, sitting on top of the basic MDIO bus driver can
> then implement the rest of the microchip SMI0 odderties.
> 
> This code was ported from the kernel v6.0-rc2.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/phy/mdio-bitbang.c | 8 ++++++--
>  drivers/net/phy/mdio-gpio.c    | 8 ++++++++
>  include/linux/mdio-bitbang.h   | 3 +++
>  3 files changed, 17 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/phy/mdio-bitbang.c b/drivers/net/phy/mdio-bitbang.c
> index 839a7d1eb8..656557589d 100644
> --- a/drivers/net/phy/mdio-bitbang.c
> +++ b/drivers/net/phy/mdio-bitbang.c
> @@ -158,7 +158,7 @@ static int mdiobb_read(struct mii_bus *bus, int phy, int reg)
>  		reg = mdiobb_cmd_addr(ctrl, phy, reg);
>  		mdiobb_cmd(ctrl, MDIO_C45_READ, phy, reg);
>  	} else
> -		mdiobb_cmd(ctrl, MDIO_READ, phy, reg);
> +		mdiobb_cmd(ctrl, ctrl->op_c22_read, phy, reg);
>  
>  	ctrl->ops->set_mdio_dir(ctrl, 0);
>  
> @@ -188,7 +188,7 @@ static int mdiobb_write(struct mii_bus *bus, int phy, int reg, u16 val)
>  		reg = mdiobb_cmd_addr(ctrl, phy, reg);
>  		mdiobb_cmd(ctrl, MDIO_C45_WRITE, phy, reg);
>  	} else
> -		mdiobb_cmd(ctrl, MDIO_WRITE, phy, reg);
> +		mdiobb_cmd(ctrl, ctrl->op_c22_write, phy, reg);
>  
>  	/* send the turnaround (10) */
>  	mdiobb_send_bit(ctrl, 1);
> @@ -219,6 +219,10 @@ struct mii_bus *alloc_mdio_bitbang(struct mdiobb_ctrl *ctrl)
>  	bus->write = mdiobb_write;
>  	bus->reset = mdiobb_reset;
>  	bus->priv = ctrl;
> +	if (!ctrl->override_op_c22) {
> +		ctrl->op_c22_read = MDIO_READ;
> +		ctrl->op_c22_write = MDIO_WRITE;
> +	}
>  
>  	return bus;
>  }
> diff --git a/drivers/net/phy/mdio-gpio.c b/drivers/net/phy/mdio-gpio.c
> index 80d2394f4b..c64f2b3925 100644
> --- a/drivers/net/phy/mdio-gpio.c
> +++ b/drivers/net/phy/mdio-gpio.c
> @@ -193,6 +193,13 @@ static int mdio_gpio_probe(struct device_d *dev)
>  		goto free_mdo;
>  	}
>  
> +	if (np &&
> +	    of_device_is_compatible(np, "microchip,mdio-smi0")) {
> +		info->ctrl.op_c22_read = 0;
> +		info->ctrl.op_c22_write = 0;
> +		info->ctrl.override_op_c22 = 1;
> +	}
> +
>  	bus = alloc_mdio_bitbang(&info->ctrl);
>  	bus->parent = dev;
>  	bus->dev.device_node = np;
> @@ -217,6 +224,7 @@ free_info:
>  
>  static const struct of_device_id gpio_mdio_dt_ids[] = {
>  	{ .compatible = "virtual,mdio-gpio", },
> +	{ .compatible = "microchip,mdio-smi0" },
>  	{ /* sentinel */ }
>  };
>  
> diff --git a/include/linux/mdio-bitbang.h b/include/linux/mdio-bitbang.h
> index a6e6057886..49fe435429 100644
> --- a/include/linux/mdio-bitbang.h
> +++ b/include/linux/mdio-bitbang.h
> @@ -36,6 +36,9 @@ struct mdiobb_ctrl {
>  	const struct mdiobb_ops *ops;
>  	/* reset callback */
>  	int (*reset)(struct mii_bus *bus);
> +	unsigned int override_op_c22;
> +	u8 op_c22_read;
> +	u8 op_c22_write;
>  };
>  
>  /* The returned bus is not yet registered with the phy layer. */
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


