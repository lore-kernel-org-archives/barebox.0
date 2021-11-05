Delivery-date: Fri, 05 Nov 2021 10:22:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mivQa-0002zg-Kv
	for lore@lore.pengutronix.de; Fri, 05 Nov 2021 10:22:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mivQZ-0006EM-Nn
	for lore@pengutronix.de; Fri, 05 Nov 2021 10:22:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=syOsfftfbtptlzCDeySXHwabKQ2p+sBe4vhZDCP5DXg=; b=YPgGnMCgmkDR5U
	DBPj/u7LfJyXH0cdHfaZx45VDA9m3DYfJANYSles4kGIV+IZP3rQL3H/KjhsaJEVzv081SgD2+XV1
	msNXfhifseEbl1I1ZIhe5ZyZE2C9UnIBAFdcqJF0YJ/MwQZ1QT01LNhkNEwTRDdXeKxQquF/3Ahsn
	5mpbKagmERC7RmeM8l16UAaDlztiKTpJAolD8pPtX8Yk/6Ska4LYl84HnDyktccAp3BhOVdkos+5N
	kvq0RRv+Gb03mQpgQYlLsEErbZLgsyPmfvPzMgM6KRebvSexkT3cy4HUYUxuCeQV7gZlRBuJaTXQ6
	yNvO03EJTXXwO+Fl4daA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mivP6-00AwrR-Uf; Fri, 05 Nov 2021 09:20:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mivOx-00Awoz-OS
 for barebox@lists.infradead.org; Fri, 05 Nov 2021 09:20:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mivOu-0005uK-Q9; Fri, 05 Nov 2021 10:20:44 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mivOu-0003EF-GV; Fri, 05 Nov 2021 10:20:44 +0100
Date: Fri, 5 Nov 2021 10:20:44 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211105092044.GF25698@pengutronix.de>
References: <20210831153214.31047-1-a.fatoum@pengutronix.de>
 <20211004112607.GX28453@pengutronix.de>
 <1df357da-eff8-ea6e-59be-e63d694f8286@pengutronix.de>
 <85d72153-f4fd-2893-3bb3-393005239177@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <85d72153-f4fd-2893-3bb3-393005239177@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:20:32 up 260 days, 12:44, 137 users,  load average: 0.14, 0.15,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211105_022047_836627_90DB9C94 
X-CRM114-Status: GOOD (  28.00  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] net: designware: eqos: fix MDIO regression for
 STM32MP1 boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Nov 05, 2021 at 08:51:01AM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 04.10.21 13:39, Ahmad Fatoum wrote:
> > Hello Sascha,
> > 
> > On 04.10.21 13:26, Sascha Hauer wrote:
> >> On Tue, Aug 31, 2021 at 05:32:14PM +0200, Ahmad Fatoum wrote:
> >>> The STM32MP1 boards call their mdio subnode mdio0, which is now skipped
> >>> since ed8c7bdf8592 ("net: designware: eqos: set mdio bus device node").
> >>>
> >>> Fix networking for them by only falling back to the mdio node name when a
> >>> child node with the correct compatible could not be found.
> >>>
> >>> Fixes: ed8c7bdf8592 ("net: designware: eqos: set mdio bus device node")
> >>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >>> ---
> >>>  drivers/net/designware_eqos.c | 6 +++++-
> >>>  1 file changed, 5 insertions(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
> >>> index f83ec127143c..5eee844e289a 100644
> >>> --- a/drivers/net/designware_eqos.c
> >>> +++ b/drivers/net/designware_eqos.c
> >>> @@ -824,6 +824,7 @@ static void eqos_probe_dt(struct device_d *dev, struct eqos *eqos)
> >>>  
> >>>  int eqos_probe(struct device_d *dev, const struct eqos_ops *ops, void *priv)
> >>>  {
> >>> +	struct device_node *np = dev->device_node;
> >>>  	struct mii_bus *miibus;
> >>>  	struct resource *iores;
> >>>  	struct eqos *eqos;
> >>> @@ -862,7 +863,10 @@ int eqos_probe(struct device_d *dev, const struct eqos_ops *ops, void *priv)
> >>>  	miibus->read = eqos_mdio_read;
> >>>  	miibus->write = eqos_mdio_write;
> >>>  	miibus->priv = eqos;
> >>> -	miibus->dev.device_node = of_get_child_by_name(dev->device_node, "mdio");
> >>> +
> >>> +	miibus->dev.device_node = of_get_compatible_child(np, "snps,dwmac-mdio");
> >>> +	if (!miibus->dev.device_node)
> >>> +		miibus->dev.device_node = of_get_child_by_name(np, "mdio");
> >>
> >> Do we need this fallback? I think I introduced ed8c7bdf8592 for the
> >> rk3568, which also should work without the fallback.
> > 
> > Linux driver uses "mdio" node name for snps,dwc-qos-ethernet-4.10 and looks
> > at compatible otherwise. That's why I chose to keep support for both.
> 
> STM32MP1 support in master is broken. Can this be cherry picked?

Just did that.

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

