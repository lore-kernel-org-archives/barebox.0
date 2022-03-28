Delivery-date: Mon, 28 Mar 2022 14:24:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYoQY-008zB6-S3
	for lore@lore.pengutronix.de; Mon, 28 Mar 2022 14:24:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYoQb-0002SE-5j
	for lore@pengutronix.de; Mon, 28 Mar 2022 14:24:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PYVcenRx4WjsdbwKJDJEIaEwGWXtVX5FTbbjAaERQkw=; b=BIdKnuP9CMPLMp
	0cBTn6fjvlm6VkC56VdnrZly3H4gVlD2S8Eg6xZ2rNsnHTutCj+lUtECJd6hIAq83m3JaxVHnmd5a
	5EdO0N6UzmLlE00Sbe12BnAptobOxfoQ1Px1sSeZPivhr/Pqu24t/f55uqSBmfTC6PIQg0Bwg9tZT
	LA1VETnY8zXo0BQ/hl11jwOgdw1gPWos0QCJSLWd2tBCTMBzTusANw5oe4TTzrywEa1hKSuJKEgYs
	jr9VYdNPeXG0kOpC/KecrnU/GEqsqA2Jh5ZgvwKrz8BPS8aolI2MRUPfW/DQ+JbmnJnobmIq/zEyY
	iSGM1gnpUBBJTsZcoEPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYoPH-008XCo-P2; Mon, 28 Mar 2022 12:23:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYoPC-008XCO-V3
 for barebox@lists.infradead.org; Mon, 28 Mar 2022 12:23:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nYoPB-0002PS-Ef; Mon, 28 Mar 2022 14:23:29 +0200
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nYoPB-00047Z-5Y; Mon, 28 Mar 2022 14:23:29 +0200
Date: Mon, 28 Mar 2022 14:23:29 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220328122329.GC23999@pengutronix.de>
References: <20220321092606.1459834-1-o.rempel@pengutronix.de>
 <20220321092606.1459834-4-o.rempel@pengutronix.de>
 <20220328103139.GT12181@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220328103139.GT12181@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:15:08 up 107 days, 21:00, 90 users,  load average: 0.09, 0.19,
 0.23
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_052331_051484_1FA15C81 
X-CRM114-Status: GOOD (  30.10  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 3/9] net: add DSA framework to support basic switch
 functionality
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 28, 2022 at 12:31:39PM +0200, Sascha Hauer wrote:
> On Mon, Mar 21, 2022 at 10:26:00AM +0100, Oleksij Rempel wrote:
 > +static void dsa_port_set_ethaddr(struct eth_device *edev)
> > +{
> > +	struct dsa_port *dp = edev->priv;
> > +	struct dsa_switch *ds = dp->ds;
> > +
> > +	if (is_valid_ether_addr(edev->ethaddr))
> > +		return;
> > +
> > +	if (!is_valid_ether_addr(ds->edev_master->ethaddr))
> > +		return;
> > +
> > +	eth_set_ethaddr(edev, ds->edev_master->ethaddr);
> 
> You are setting a ports MAC address here. Shouldn't this be different
> from the master MAC address?

Potentially it can be different, but this functionality will need more
work without notable advantage. We will need promisc support for master
MAC and filters to pass own MACs only.

I assume, for current step this is not needed.

> > +}
> > +
> > +static int dsa_port_start(struct eth_device *edev)
> > +{
> > +	struct dsa_port *dp = edev->priv;
> > +	struct dsa_switch *ds = dp->ds;
> > +	const struct dsa_ops *ops = ds->ops;
> > +	int ret;
> > +
> > +	if (!dp->edev.phydev)
> > +		return -ENODEV;
> > +
....
> > +
> > +	}
> > +
> > +	if (!ds->cpu_port_active) {
> > +		struct dsa_port *dpc = ds->dp[ds->cpu_port];
> > +		ret = ops->port_enable(dpc, ds->cpu_port,
> > +				       ds->cpu_port_fixed_phy);
> 
> Is ops->port_enable optional or not?

ack

> 
> > +		if (ret)
> > +			return ret;
> > +		eth_open(ds->edev_master);
> > +		ds->cpu_port_active = true;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +/* Stop the desired port, the CPU port and the master Eth interface */
> > +static void dsa_port_stop(struct eth_device *edev)
> > +{
> > +	struct dsa_port *dp = edev->priv;
> > +	struct dsa_switch *ds = dp->ds;
> > +	const struct dsa_ops *ops = ds->ops;
> > +
> > +	if (ops->port_disable)
> > +		ops->port_disable(dp, dp->index, dp->edev.phydev);
> 
> This suggests ops->port_disable is optional...
> 
> > +
> > +
> > +	if (ds->cpu_port_active) {
> > +		struct dsa_port *dpc = ds->dp[ds->cpu_port];
> > +		ops->port_disable(dpc, ds->cpu_port, ds->cpu_port_fixed_phy);
> 
> ... but it's called unconditionally here.

ack

> > +		eth_close(ds->edev_master);
> 
> This function stops a single port. Is it correct to call eth_close on
> the master device here? What if other ports are still active?

ack, i'll need to implement refcount support or something like this.

> > +	if (of_property_read_u32(phy_node, "speed", &phydev->speed))
> > +		return -ENODEV;
> > +
> > +	phydev->duplex = of_property_read_bool(phy_node,"full-duplex");
> > +	phydev->pause = of_property_read_bool(phy_node, "pause");
> > +	phydev->asym_pause = of_property_read_bool(phy_node, "asym-pause");
> 
> We already have a function parsing these properties. Could we
> consolidate that?

ok, i'll do it

> > +	for_each_available_child_of_node(ports, port) {
> > +		struct device_node *master;
> > +
> > +		ret = of_property_read_u32(port, "reg", &reg);
> > +		if (ret) {
> > +			dev_err(ds->dev, "No or too many ports are configured\n");
> > +			goto out_put_node;
> > +		}
> 
> You won't hit this case here, it is already caught above.
> 
> > +
> > +		if (reg >= ds->num_ports) {
> > +			dev_err(ds->dev, "port %pOF index %u exceeds num_ports (%u)\n",
> > +				port, reg, ds->num_ports);
> > +			ret = -EINVAL;
> > +			goto out_put_node;
> > +		}
> 
> ditto

good point.

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

