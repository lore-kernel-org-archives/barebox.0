Delivery-date: Thu, 09 Mar 2023 17:02:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paIjD-00F0kl-I9
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 17:02:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paIjC-0002um-Ge
	for lore@pengutronix.de; Thu, 09 Mar 2023 17:02:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A7zZ582hzEzRUznvlJDrVllz2lBOZuv1f4V93xWNO4w=; b=ijKc1BPIEIQlSNNAoDCGD7pmgT
	dODrI79P67jVrrqtSXsQROgR0QJOjKEDY6FxBGe7Gxdg+8VbJgc+uwAi5sbwsC3KTYiUPCCSwUTnG
	LPzV5FdvPRVy3gH+7bxl65v44zHbSntJM36eD9EiHe0HxARLAHgh3wv6B2srHQQB/apmEoXL6nvCE
	m2sVzqzIIE+Y63lwC9yVhuxLqHSGpBQ58LKWDUtZu4BWh/VJw0forBEW/g1h7jTc0e8CFCUIA5jSJ
	kvpLZCgRJyDOHRA2syraxQEmhkPY1kdMhRPeOx6OJjdriUNOcTbOsrIqyME5JpH/oJ2PNqvzR6az2
	vObCKSIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paIhj-00B7Jc-4C; Thu, 09 Mar 2023 16:01:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paIb1-00B49b-SW
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 15:54:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paIaz-0000oc-Ny; Thu, 09 Mar 2023 16:54:21 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paIaz-0004bs-Fm; Thu, 09 Mar 2023 16:54:21 +0100
Date: Thu, 9 Mar 2023 16:54:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230309155421.GA15008@pengutronix.de>
References: <20230309115208.973893-1-s.hauer@pengutronix.de>
 <20230309115208.973893-4-s.hauer@pengutronix.de>
 <6968fd72-b0e4-dc92-9053-404086315a83@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6968fd72-b0e4-dc92-9053-404086315a83@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_075423_962178_1A3AE8B5 
X-CRM114-Status: GOOD (  33.09  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/7] i2c: implement rescan
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Mar 09, 2023 at 02:02:09PM +0100, Ahmad Fatoum wrote:
> On 09.03.23 12:52, Sascha Hauer wrote:
> > struct device::rescan is called by the core to let the subsystem rescan
> > the controllers device node. Implement that for I2C. Ahmad recently
> > implemented the struct device::detect hook for the very same purpose.
> > The downside of that approach was that device_detect() had to be called
> > manually and that either needs knowledge which device actually has
> > updated device nodes, or all devices were detected, like unrelated USB
> > or MMC/SD devices. The rescan hook doesn't need that manual detect call,
> > so just drop the I2C detect implementation in favour for implementing
> > rescan.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/i2c/i2c.c | 20 +++++---------------
> >  1 file changed, 5 insertions(+), 15 deletions(-)
> > 
> > diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> > index efcad29342..df89b8fb65 100644
> > --- a/drivers/i2c/i2c.c
> > +++ b/drivers/i2c/i2c.c
> > @@ -471,15 +471,7 @@ int of_i2c_register_devices_by_node(struct device_node *node)
> >  	return 0;
> >  }
> >  
> > -static int i2c_bus_detect(struct device *dev)
> > -{
> > -	struct i2c_adapter *adap = container_of(dev, struct i2c_adapter, dev);
> > -
> > -	of_i2c_register_devices(adap);
> > -	return 0;
> > -}
> > -
> > -static int i2c_hw_detect(struct device *dev)
> > +static void i2c_hw_rescan(struct device *dev)
> >  {
> >  	struct i2c_adapter *adap;
> >  
> > @@ -489,8 +481,6 @@ static int i2c_hw_detect(struct device *dev)
> >  		of_i2c_register_devices(adap);
> >  		break;
> >  	}
> > -
> > -	return 0;
> >  }
> >  
> >  /**
> > @@ -720,7 +710,6 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
> >  	}
> >  
> >  	adapter->dev.id = adapter->nr;
> > -	adapter->dev.detect = i2c_bus_detect;
> >  	dev_set_name(&adapter->dev, "i2c");
> >  
> >  	ret = register_device(&adapter->dev);
> > @@ -732,11 +721,12 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
> >  	/* populate children from any i2c device tables */
> >  	scan_boardinfo(adapter);
> >  
> > +	of_i2c_register_devices(adapter);
> 
> I think this would fail for a non-OF I2C contoller on a CONFIG_OFTREE=y system,
> because the function doesn't guard against !CONFIG_OFTREE. Just move it into
> the if clause below.

This is not equivalent as of_i2c_register_devices() uses
adap->dev.of_node whereas the if clause below uses adapter->dev.parent->of_node.

Ideally this should be the same, but for now I think I'll just
revert to what has been done before the i2c_hw_detect patches
which adding a check in of_i2c_register_devices().

Sascha

> 
> > +
> >  	hw_dev = adapter->dev.parent;
> >  	if (hw_dev && dev_of_node(hw_dev)) {
> > -		if (!hw_dev->detect)
> > -			hw_dev->detect = i2c_hw_detect;
> > -		i2c_hw_detect(hw_dev);
> > +		if (!hw_dev->rescan)
> > +			hw_dev->rescan = i2c_hw_rescan;
> >  	}
> >  
> >  	return 0;
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


