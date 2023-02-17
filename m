Delivery-date: Fri, 17 Feb 2023 10:37:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSxBM-00A1gF-G4
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 10:37:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSxBL-0006vx-63
	for lore@pengutronix.de; Fri, 17 Feb 2023 10:37:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UwC2uamhrQd0Af6Q8Z8OnFeSdQf1mIO/80RCx8OyO4c=; b=3gNVaO0XitdIk7nFyEQNFmmtLR
	wzu4FP+P75BUMbOOvx+IspY3TvsLJMjtd5psNdkRQ8LuQvaUzV26HB20ZXb5h9/CN63Q+xOgUGBTY
	Gp2zngB2ZNxp2RmQ3tTB0DnvtycDyV43G3dKQWRxLLrLdhLzJxNpXegYqtTLcr3agKznID73BKfW6
	XOKjI7Iotr3gCVMuT2G5yGTJjmqllL1TU5jZlppr2v3OsTy30vfUQ2zllxN60w0SZrgQNksCdwrls
	UMOD9l9Vj6RDCZJFNicQs9vPB4eYPtuqQEK74izmX+QwcT/pcEtjQAcrRM6q+Ch0sHopGLHpvCx93
	hWD++W2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSxAK-00DVVq-58; Fri, 17 Feb 2023 09:36:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSxAE-00DVUh-D6
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 09:36:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pSxAC-0006dj-DK; Fri, 17 Feb 2023 10:36:20 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pSxAB-0001Ol-9A; Fri, 17 Feb 2023 10:36:19 +0100
Date: Fri, 17 Feb 2023 10:36:19 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Renaud Barbier <Renaud.Barbier@ametek.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230217093619.GP10447@pengutronix.de>
References: <BL0PR07MB5665C75B684154A56F54D498ECD89@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230210122306.GX10447@pengutronix.de>
 <BL0PR07MB5665285FB23BBC620897BABEECA09@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230216125434.GN10447@pengutronix.de>
 <BL0PR07MB56657046F95666F3464A4BB8ECA09@BL0PR07MB5665.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BL0PR07MB56657046F95666F3464A4BB8ECA09@BL0PR07MB5665.namprd07.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_013622_459966_1530234D 
X-CRM114-Status: GOOD (  34.97  )
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
Subject: Re: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 16, 2023 at 01:56:49PM +0000, Renaud Barbier wrote:
> 
> 
> > -----Original Message-----
> > From: Sascha Hauer <sha@pengutronix.de>
> > Sent: 16 February 2023 12:55
> > To: Renaud Barbier <Renaud.Barbier@ametek.com>
> > Cc: Barebox List <barebox@lists.infradead.org>
> > Subject: Re: [PATCH 2/2] ARM: Layerscape: Add LS1021A IOT board support
> > 
> > ***NOTICE*** This came from an external source. Use caution when
> > replying, clicking links, or opening attachments.
> > 
> > On Thu, Feb 16, 2023 at 11:54:14AM +0000, Renaud Barbier wrote:
> > >
> > >
> > > > > +
> > > > > +/* Currently 1000FD is not working. Below is a bit of guess work
> > > > > + * from reading MMD3/MMD7 of the AR8033  */ static int
> > > > > +phy_fixup(struct phy_device *phydev) {
> > > > > +     unsigned short val;
> > > > > +     int advertise = SUPPORTED_1000baseT_Full |
> > > > > +SUPPORTED_1000baseT_Half;
> > > > > +
> > > > > +     phydev->advertising &= ~advertise;
> > > > > +
> > > > > +     /* Ar8031 phy SmartEEE feature cause link status generates glitch,
> > > > > +      * which cause ethernet link down/up issue, so disable SmartEEE
> > > > > +      */
> > > > > +     phy_write(phydev, 0xd, 0x3);
> > > > > +     phy_write(phydev, 0xe, 0x805d);
> > > > > +     phy_write(phydev, 0xd, 0x4003);
> > > > > +     val = phy_read(phydev, 0xe);
> > > > > +     val &= ~(0x1 << 8);
> > > > > +     phy_write(phydev, 0xe, val);
> > > > > +
> > > > > +     /* Use XTAL */
> > > > > +     phy_write(phydev, 0xd, 0x7);
> > > > > +     phy_write(phydev, 0xe, 0x8016);
> > > > > +     phy_write(phydev, 0xd, 0x4007);
> > > > > +     val = phy_read(phydev, 0xe);
> > > > > +     val &= 0xffe3;
> > > > > +     phy_write(phydev, 0xe, val);
> > > > > +
> > > > > +     return 0;
> > > > > +}
> > > >
> > > > We have a phy driver for the AR8033. Can you use it instead of
> > > > putting this into board code?
> > >
> > > Hello I have enabled the at803x driver to support the AR8031. However,
> > only the generic PHY driver config_init get called.
> > > phy_driver_register: 00000000
> > > register generic for: Generic PHY, 0xffffffff
> > > phy_driver_register: bbe15d54
> > > register specific for: Atheros 8035 ethernet, 0x4dd072
> > > phy_driver_register: bbe15d54
> > > register specific for: Atheros 8030 ethernet, 0x4dd076
> > > phy_driver_register: bbe15d54
> > > register specific for: Atheros 8031 ethernet, 0x4dd074
> > >
> > > call phy_init_hw
> > > call config_init for: Generic PHY, 0xffffffff
> > >
> > > I do not understand how to connect the AR802x phy driver to the device.
> > Do I need to add something to the device tree?
> > >
> > > barebox@LS1021A-IOT Board:/ md -w -s /dev/mdio0-phy03
> > 
> > Is this the only phy or are there others? What does "devinfo mdio0-phy03"
> > say?
> > miitool -v output might be interesting as well.
> [Barbier, Renaud] 
> Indeed,
> barebox@LS1021A-IOT Board:/ miitool -v
> mdio0-phy00: 2d24000.mdio@2d24000.of: no link
>   product info: Generic PHY (vendor 00:00:00, model 0 rev 0)
>   basic mode:   autonegotiation enabled
>   basic status: no link
>   capabilities:
>   advertising:
> mdio0-phy01: 2d24000.mdio@2d24000.of: negotiated 100baseTx-FD, link ok
>   product info: Generic PHY (vendor 00:13:74, model 7 rev 4)
>   basic mode:   autonegotiation enabled
>   basic status: autonegotiation complete, link ok
>   capabilities: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
>   advertising:  100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
>   link partner: 1000baseT-FD 1000baseT-HD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
> mdio0-phy03: 2d24000.mdio@2d24000.of: negotiated 100baseTx-FD, link ok
>   product info: Generic PHY (vendor 00:13:74, model 7 rev 4)
>   basic mode:   autonegotiation enabled
>   basic status: autonegotiation complete, link ok
>   capabilities: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
>   advertising:  100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
>   link partner: 1000baseT-FD 1000baseT-HD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control

I have no idea what goes wrong here.

Some things to dig further:

A phy is registered in phy_register_device(). The call to register_device()
in that function will end up in mdio_bus_match(). You could add some
debugging there to see which phy ids are matched against each other.

An idea is that the at803x driver is not yet registered by the time
phy_device_connect() is called, but I don't see how this could happen.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


