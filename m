Delivery-date: Mon, 04 Oct 2021 13:35:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXMFZ-0006LC-9J
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 13:35:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXMFX-0002ro-TQ
	for lore@pengutronix.de; Mon, 04 Oct 2021 13:35:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6rz3JjJzoUREcvREjvdqtHHMc5qcbEyuAeThPNgb/oQ=; b=2/iCaX3oxKYkiu4xtUXWpF/Tx/
	kO+QO+Dp8Bykd3oL6UPo7iBqfDG0Ca02sYPO/WsDkEY4ixdMhShQaVt+u1Eu49GU7CuA3WjSzISnz
	moFcTk7tlLVX6a4Ptkg3p3gpRj+P/rHv3XA+ijvFxwG20IoJB9zqTK/i1FglkOlk1KgTcFDyr/DPH
	arbhgYlvoPrB5BkpYuhP46HQQ5E2D4IbynI4ACxC61PFltIHYBXOrDavgeiteEjj1nsTchQ3kaLb9
	mrrMgJX6FNWfyG93dyDEt6Ehrb2pjtiekfW9SDsaN3Buwfdqsn34f9U1LvUDjVza3tvyrSnAOMAVe
	kVDQZBLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXME6-006DDm-PW; Mon, 04 Oct 2021 11:33:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXM6j-006A4v-DI
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 11:26:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXM6i-0001l6-3f; Mon, 04 Oct 2021 13:26:08 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXM6h-0003cw-QY; Mon, 04 Oct 2021 13:26:07 +0200
Date: Mon, 4 Oct 2021 13:26:07 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211004112607.GX28453@pengutronix.de>
References: <20210831153214.31047-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210831153214.31047-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:24:45 up 228 days, 14:48, 141 users,  load average: 0.08, 0.23,
 0.27
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_042609_492113_C9CD5961 
X-CRM114-Status: GOOD (  25.16  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] net: designware: eqos: fix MDIO regression for
 STM32MP1 boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 31, 2021 at 05:32:14PM +0200, Ahmad Fatoum wrote:
> The STM32MP1 boards call their mdio subnode mdio0, which is now skipped
> since ed8c7bdf8592 ("net: designware: eqos: set mdio bus device node").
> 
> Fix networking for them by only falling back to the mdio node name when a
> child node with the correct compatible could not be found.
> 
> Fixes: ed8c7bdf8592 ("net: designware: eqos: set mdio bus device node")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/net/designware_eqos.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
> index f83ec127143c..5eee844e289a 100644
> --- a/drivers/net/designware_eqos.c
> +++ b/drivers/net/designware_eqos.c
> @@ -824,6 +824,7 @@ static void eqos_probe_dt(struct device_d *dev, struct eqos *eqos)
>  
>  int eqos_probe(struct device_d *dev, const struct eqos_ops *ops, void *priv)
>  {
> +	struct device_node *np = dev->device_node;
>  	struct mii_bus *miibus;
>  	struct resource *iores;
>  	struct eqos *eqos;
> @@ -862,7 +863,10 @@ int eqos_probe(struct device_d *dev, const struct eqos_ops *ops, void *priv)
>  	miibus->read = eqos_mdio_read;
>  	miibus->write = eqos_mdio_write;
>  	miibus->priv = eqos;
> -	miibus->dev.device_node = of_get_child_by_name(dev->device_node, "mdio");
> +
> +	miibus->dev.device_node = of_get_compatible_child(np, "snps,dwmac-mdio");
> +	if (!miibus->dev.device_node)
> +		miibus->dev.device_node = of_get_child_by_name(np, "mdio");

Do we need this fallback? I think I introduced ed8c7bdf8592 for the
rk3568, which also should work without the fallback.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

