Delivery-date: Fri, 02 Dec 2022 09:57:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p11rc-008L8f-Fl
	for lore@lore.pengutronix.de; Fri, 02 Dec 2022 09:57:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p11rb-0003h6-UW
	for lore@pengutronix.de; Fri, 02 Dec 2022 09:57:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Um88oyi4jJe5cJeFePSxO1H0tr/anwOeZ3aQQAgmqqo=; b=PfLB5b5rYIfNifltSQ5dA9nZ90
	m+deL+QE7gWaiKbV/RVLpnvDi4uv8PHWGVEAYlKqo4fcP2ut8Qux82vWV6h3fcJlFEntpwXgkIy+N
	bV4VWjSveQ0hqioNLQf5Gv88lO9UaKNjKhoei9bZhaYSabEUvQ21+kCdWuVxy4/tAMgdunctXe6I6
	DLnxgnEYT1mPPGy65l4FBEeXMrilz6bKcIrVQlxJVdSNmMjTrfJJ6u/3cvlHhXgVEBj2KLfs0vtUI
	qlh8hsqe50tH6ChVDa/GehyY1rywOz9wu2NlzJU/JJ7h8s1gi5kbioqG9urK1JgQXjiLqrNqoht8j
	vte3PK5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p11qJ-00EinX-HC; Fri, 02 Dec 2022 08:56:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p11qD-00Eilr-2b
	for barebox@lists.infradead.org; Fri, 02 Dec 2022 08:56:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p11qB-0003Y1-Qs; Fri, 02 Dec 2022 09:56:15 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p11qB-0006VJ-JJ; Fri, 02 Dec 2022 09:56:15 +0100
Date: Fri, 2 Dec 2022 09:56:15 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221202085615.GO29728@pengutronix.de>
References: <20221130115157.3858878-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221130115157.3858878-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221202_005617_135559_0B28C717 
X-CRM114-Status: GOOD (  25.72  )
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
Subject: Re: [PATCH master] net: bcmgenet: fix OF node of MII bus controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Nov 30, 2022 at 12:51:57PM +0100, Ahmad Fatoum wrote:
> The bcmgenet device tree binding describes the MDIO controller as a
> subnode of the Ethernet controller node. Linux handles this by having
> a driver for each of the MAC and MDIO controller, but in barebox we
> keep a single driver and largely ignore the subnode.
> 
> Since Commit 8abc2059298d ("net: add support for MDIO devices"), this
> leads to following error message:
> 
>   ERROR: miibus0: /scb/ethernet@7d580000/mdio@e14 PHY address 3604 is too
>   large
> 
> Give the MII bus the correct device tree node to fix this. We already do
> it this way in the designware_eqos driver.
> 
> This was tested on a Raspberry Pi 4b, where Link up and reading PHY ID
> of 600d 84a2 is sensible (matches PHY_ID_BCM54210E). DHCP though didn't
> work for me with or without this patch.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/net/bcmgenet.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/bcmgenet.c b/drivers/net/bcmgenet.c
> index 2098e73b5cea..03389db8749b 100644
> --- a/drivers/net/bcmgenet.c
> +++ b/drivers/net/bcmgenet.c
> @@ -577,6 +577,8 @@ static int bcmgenet_probe(struct device_d *dev)
>  
>  	priv->miibus.priv = priv;
>  	priv->miibus.parent = dev;
> +	priv->miibus.dev.device_node
> +		= of_get_compatible_child(dev->device_node, "brcm,genet-mdio-v5");
>  
>  	ret = mdiobus_register(&priv->miibus);
>  	if (ret)
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


