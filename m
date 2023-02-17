Delivery-date: Fri, 17 Feb 2023 15:53:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT26o-00AC05-3m
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 15:53:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT26m-0001Dn-Do
	for lore@pengutronix.de; Fri, 17 Feb 2023 15:53:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+1WdzKFR2v/R4vsA4P0/ytcFvX/3EMjnA/YJOZZxwPs=; b=HoQhgnAAwmnGDtncOBmq7yDgTz
	XeSzvsFuErNR2QP+KSvLKSa+HFXAaWyX5+yjLBF7c3EiAqMGTKYs0oO66kKKQQHsYcM41db1Os0Ij
	I5YeMwVNEf79nRCn8NYU0hYg0OpD0uoDVVImeNTuO8T6X1RGx+5YFf1kxU87bNoWoaLrC2kIeGwic
	7+9svy8hwuOZQPiHvMb3vwrDUJv4cXcUJ2TTwGt9PCod+ihzvT9PrMXPmhDnyW17iJ20SNbT7NG6k
	/akG/60FsS9fKOGU0uRoqGQU5i6ruioqEv5qWfRgYHroZANZ6eZ3H4Td7dFMQO923ooSGGypjsIUb
	8YuLl4Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT25U-00EdFZ-8h; Fri, 17 Feb 2023 14:51:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT25P-00EdEm-Lg
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 14:51:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pT25N-00015D-QX; Fri, 17 Feb 2023 15:51:41 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pT25M-0003Vw-Mw; Fri, 17 Feb 2023 15:51:40 +0100
Date: Fri, 17 Feb 2023 15:51:40 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Renaud Barbier <Renaud.Barbier@ametek.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230217145140.GT10447@pengutronix.de>
References: <BL0PR07MB5665C75B684154A56F54D498ECD89@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230210122306.GX10447@pengutronix.de>
 <BL0PR07MB5665285FB23BBC620897BABEECA09@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230216125434.GN10447@pengutronix.de>
 <BL0PR07MB56657046F95666F3464A4BB8ECA09@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230217093619.GP10447@pengutronix.de>
 <BL0PR07MB5665182C6ACFFFB3B4AB456AECA19@BL0PR07MB5665.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BL0PR07MB5665182C6ACFFFB3B4AB456AECA19@BL0PR07MB5665.namprd07.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_065143_725839_7069E48E 
X-CRM114-Status: GOOD (  22.61  )
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

On Fri, Feb 17, 2023 at 01:44:25PM +0000, Renaud Barbier wrote:
> > 
> > A phy is registered in phy_register_device(). The call to register_device() in
> > that function will end up in mdio_bus_match(). You could add some
> > debugging there to see which phy ids are matched against each other.
> > 
> > An idea is that the at803x driver is not yet registered by the time
> > phy_device_connect() is called, but I don't see how this could happen.
> > 
> For some reason mdio_bus_match is not called.
> So if I understand the sequence correctly 
> 
> First phy_register is called and assign genphy to all phys
> 
> phy_register_device id = 0x0, register genphy_driver.drv = 0xbbe7c5fc, Generic PHY
> phy_register_device id = 0x4dd074, register genphy_driver.drv = 0xbbe7c5fc, Generic PHY
> phy_register_device id = 0x4dd074, register genphy_driver.drv = 0xbbe7c5fc, Generic PHY

Okay, here is the problem. You registered the mdio driver at coredevice
level, but the phy drivers are registered at device level. That means
the at803x driver is not present when the phys are probed and then
genphy is used as fallback.

IMO the phy drivers should be moved to an earlier level, like core
or coredevice.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


