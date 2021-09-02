Delivery-date: Thu, 02 Sep 2021 09:02:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mLgkT-0000cZ-KX
	for lore@lore.pengutronix.de; Thu, 02 Sep 2021 09:02:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mLgkQ-00071G-Bl
	for lore@pengutronix.de; Thu, 02 Sep 2021 09:02:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RktUXGIbIpfL8rQ1rNpmYMiNQF7W006Z3omqRHuvv6c=; b=NTXWh7/2E62ihY
	4O2dH+o4UjvJ0vXuJbvwMA6oi2DPvK7anNiKd35y2gqYaSoIAwD5+lY3/SpmR78D4vu51D6mbEYIR
	ACzxbDkQg5A/vy5i6pMFPNydwwqoJhtTBi7Kw8K/Fp9TU1gJROAbJAFzamUEtKpB8gvlHmk77Tcmx
	l006hZm7htIl/VrgUmAGsuYbQSfSOyRqNHv7G02aFtpZRJeHU07dMOTluM2R6r6PHS5i0vFn1jVac
	hiahtZ1YehJjbVPSuErMm+Jnf6htwjDW9kVCaVyOnlqMVDyENRfjgzwFeerSQD0Wn4opVBqis4Emx
	yTgNNKOrQhZ5xC+sHFIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mLgi8-008lJw-NR; Thu, 02 Sep 2021 07:00:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mLgi3-008lJ0-8w
 for barebox@lists.infradead.org; Thu, 02 Sep 2021 07:00:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 helo=[IPv6:::1]) by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <r.czerwinski@pengutronix.de>)
 id 1mLghy-0006m1-Pk; Thu, 02 Sep 2021 09:00:22 +0200
Message-ID: <d16712b5c668cf598663dbcbfb5c428e726055d6.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Thu, 02 Sep 2021 09:00:22 +0200
In-Reply-To: <20210831153214.31047-1-a.fatoum@pengutronix.de>
References: <20210831153214.31047-1-a.fatoum@pengutronix.de>
Organization: Pengutronix e.K.
User-Agent: Evolution 3.40.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210902_000027_378932_DD3CFFA7 
X-CRM114-Status: GOOD (  16.80  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] net: designware: eqos: fix MDIO regression for
 STM32MP1 boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On Tue, 2021-08-31 at 17:32 +0200, Ahmad Fatoum wrote:
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
>  
>  	ret = eqos_init(dev, eqos);
>  	if (ret)

Reviewed-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Regards,
Rouven


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

