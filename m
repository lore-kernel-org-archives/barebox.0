Delivery-date: Thu, 16 Feb 2023 13:55:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSdne-009KpI-6m
	for lore@lore.pengutronix.de; Thu, 16 Feb 2023 13:55:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSdnb-0000h6-EN
	for lore@pengutronix.de; Thu, 16 Feb 2023 13:55:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zF2pniuUj9ehZ+qb6HMli8breb3QYMMadOISIm/4Nak=; b=omm8TPlN4bnTlS4v4tTQwOZTra
	go2Z7TRHuCtxTyrcdKuBGoiJRk3o563t0wuE6XAni8bh6H/zhXH57bXPh7iwxkZJyqL0zECz7321H
	ivNJhQ8/mhbLyTMBUciLnTVtLMh1rMkumZPlyRrfSCgE/oNGNYvcO5ZalTYbqIOWU4LO20l3oCQrg
	9OkUq7TKQgUm7xMlkTU9TiiVy+zCYQ0khq9xfK29ConXgM6jDZ/L+WacI6djoqGPTM+m/vj5yRWpP
	YzOnKnZ90tFBckAHbHUkJxO2vzJDQ3mEDAVrM5/UtDSK9fVye4r6AAhP1m1I21Dxnap4eg7SGVTAQ
	zKOaekOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSdme-00ADIq-FS; Thu, 16 Feb 2023 12:54:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSdma-00ADHK-6c
	for barebox@lists.infradead.org; Thu, 16 Feb 2023 12:54:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pSdmV-0000P2-Us; Thu, 16 Feb 2023 13:54:35 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pSdmU-0004U2-Tk; Thu, 16 Feb 2023 13:54:34 +0100
Date: Thu, 16 Feb 2023 13:54:34 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Renaud Barbier <Renaud.Barbier@ametek.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230216125434.GN10447@pengutronix.de>
References: <BL0PR07MB5665C75B684154A56F54D498ECD89@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230210122306.GX10447@pengutronix.de>
 <BL0PR07MB5665285FB23BBC620897BABEECA09@BL0PR07MB5665.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BL0PR07MB5665285FB23BBC620897BABEECA09@BL0PR07MB5665.namprd07.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230216_045440_261100_3BC38A91 
X-CRM114-Status: GOOD (  30.18  )
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
Subject: Re: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 16, 2023 at 11:54:14AM +0000, Renaud Barbier wrote:
> 
> 
> > > +
> > > +/* Currently 1000FD is not working. Below is a bit of guess work
> > > + * from reading MMD3/MMD7 of the AR8033  */ static int
> > > +phy_fixup(struct phy_device *phydev) {
> > > +     unsigned short val;
> > > +     int advertise = SUPPORTED_1000baseT_Full |
> > > +SUPPORTED_1000baseT_Half;
> > > +
> > > +     phydev->advertising &= ~advertise;
> > > +
> > > +     /* Ar8031 phy SmartEEE feature cause link status generates glitch,
> > > +      * which cause ethernet link down/up issue, so disable SmartEEE
> > > +      */
> > > +     phy_write(phydev, 0xd, 0x3);
> > > +     phy_write(phydev, 0xe, 0x805d);
> > > +     phy_write(phydev, 0xd, 0x4003);
> > > +     val = phy_read(phydev, 0xe);
> > > +     val &= ~(0x1 << 8);
> > > +     phy_write(phydev, 0xe, val);
> > > +
> > > +     /* Use XTAL */
> > > +     phy_write(phydev, 0xd, 0x7);
> > > +     phy_write(phydev, 0xe, 0x8016);
> > > +     phy_write(phydev, 0xd, 0x4007);
> > > +     val = phy_read(phydev, 0xe);
> > > +     val &= 0xffe3;
> > > +     phy_write(phydev, 0xe, val);
> > > +
> > > +     return 0;
> > > +}
> > 
> > We have a phy driver for the AR8033. Can you use it instead of putting this
> > into board code?
> 
> Hello I have enabled the at803x driver to support the AR8031. However, only the generic PHY driver config_init get called.
> phy_driver_register: 00000000
> register generic for: Generic PHY, 0xffffffff
> phy_driver_register: bbe15d54
> register specific for: Atheros 8035 ethernet, 0x4dd072
> phy_driver_register: bbe15d54
> register specific for: Atheros 8030 ethernet, 0x4dd076
> phy_driver_register: bbe15d54
> register specific for: Atheros 8031 ethernet, 0x4dd074
> 
> call phy_init_hw
> call config_init for: Generic PHY, 0xffffffff
> 
> I do not understand how to connect the AR802x phy driver to the device. Do I need to add something to the device tree?
>
> barebox@LS1021A-IOT Board:/ md -w -s /dev/mdio0-phy03

Is this the only phy or are there others? What does "devinfo mdio0-phy03" say?
miitool -v output might be interesting as well.

I had a short look at your changes to the gianfar driver. You added
this:

+       priv->phyaddr = -1;
+       np = of_parse_phandle_from(dev->device_node, NULL, "phy-handle", 0);
+       if (np) {
+               struct device_node *parent;
+               uint32_t reg = 0;
+
+               /* Get mdio parent */
+               parent = of_get_parent(np);
+               if (!parent)  {
+                       pr_err("No parent node for phy-handle\n");
+                       return PTR_ERR(parent);
+               }
+               priv->gfar_mdio = parent->dev->priv;
+               if (!of_property_read_u32(np, "reg", &reg))
+                       priv->phyaddr = reg;
+       }

This is not necessary when your phy is described in the device tree. You
neither need the mdiobus in the ethernet driver nor the phy address.
Instead, just call:

ret = phy_device_connect(edev, NULL, -1, gfar_adjust_link, 0, interface);

phy_device_connect() will parse the phy-handle property then and connect
the ethernet device to the correct phy.

I am not sure though if that's part of your problem, because correctly
open coding what phy_device_connect() does should have the same effect.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


