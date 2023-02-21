Delivery-date: Tue, 21 Feb 2023 11:36:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUQ0r-00DnYa-2r
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 11:36:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUQ0p-00036S-PS
	for lore@pengutronix.de; Tue, 21 Feb 2023 11:36:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AIgUgPI/7HZAgsX8eg/URaiZRDpD0knWy9AY1t50HqM=; b=R3CvVOZODKiz4Sj8MSqvIXB83/
	lUh2ZYWrgxoBIfFbGCQMmOscrjc/3z+y/6S7pjcBlk3P11SW9lxQliROJUDjILradUL/+YBsdKoUI
	c5/8G07eMNs9tttPnU1aStna/iG4JidZjVmpADu2U0lgG88aaeEbb6coVRrUFMZkLoQD7a7yXgXIJ
	IALlzBN47/9u9BluOHFYL40Li8uWC8tdik/ixJuGUSHU4s2MqTmuC5+Y3khXPrL+eNw24VIFdDuCR
	fm2HZduIBrwxR/y/JrS7xKm+Sjj0cf2afHFk7o4F0/deXzBN+ceLHQKIyxylnWUhPFjZCxJNcryJC
	88zh1S/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUPzc-007PEK-BX; Tue, 21 Feb 2023 10:35:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUPzX-007PDi-F7
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 10:35:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUPzW-0002pr-3q; Tue, 21 Feb 2023 11:35:22 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUPzV-0005Qz-NU; Tue, 21 Feb 2023 11:35:21 +0100
Date: Tue, 21 Feb 2023 11:35:21 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <ahmad@a3f.at>, barebox@lists.infradead.org
Message-ID: <20230221103521.GJ10447@pengutronix.de>
References: <20230221070758.1130869-1-ahmad@a3f.at>
 <6fd0eaed-4f3c-6a73-a881-b6e63461f5a9@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6fd0eaed-4f3c-6a73-a881-b6e63461f5a9@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_023523_524802_BFBCC660 
X-CRM114-Status: GOOD (  30.77  )
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
Subject: Re: [PATCH] treewide: rename leftover device_d
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Feb 21, 2023 at 08:14:22AM +0100, Ahmad Fatoum wrote:
> On 21.02.23 08:07, Ahmad Fatoum wrote:
> > We have some instances of device_d and driver_d still lingering in
> > documentation and commented out code. Let's drop these as well.
> 
> I see now that in the meantime some new driver_d/device_d were added.
> I will change those at another time (unless Sascha wants to squash).

Applied this as-is for now. We can remove the newly added
driver_d/device_d right after the next release.

Sascha

> 
> > 
> > Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> > ---
> >  Documentation/devel/porting.rst        | 2 +-
> >  drivers/mtd/nand/nand_omap_gpmc.c      | 2 +-
> >  drivers/usb/musb/musb_core.h           | 2 +-
> >  fs/cramfs/cramfs.c                     | 2 +-
> >  include/linux/mfd/core.h               | 2 +-
> >  include/platform_data/eth-smc911x.h    | 2 +-
> >  include/platform_data/serial-ns16550.h | 2 +-
> >  7 files changed, 7 insertions(+), 7 deletions(-)
> > 
> > diff --git a/Documentation/devel/porting.rst b/Documentation/devel/porting.rst
> > index 8af0456ab2d5..619c5e49e00f 100644
> > --- a/Documentation/devel/porting.rst
> > +++ b/Documentation/devel/porting.rst
> > @@ -258,7 +258,7 @@ tree binding, you can write a driver that matches against your board's
> >    	{ /* sentinel */ },
> >    };
> >  
> > -  static struct driver_d my_board_driver = {
> > +  static struct driver my_board_driver = {
> >    	.name = "board-mine",
> >    	.probe = my_board_probe,
> >    	.of_compatible = my_board_of_match,
> > diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
> > index e8e690311148..c7252ce72a27 100644
> > --- a/drivers/mtd/nand/nand_omap_gpmc.c
> > +++ b/drivers/mtd/nand/nand_omap_gpmc.c
> > @@ -12,7 +12,7 @@
> >   * A typical device registration is as follows:
> >   *
> >   * @code
> > - * static struct device_d my_nand_device = {
> > + * static struct device my_nand_device = {
> >   *	.name = "gpmc_nand",
> >   *	.id = some identifier you need to show.. e.g. "gpmc_nand0"
> >   *	.resource[0].start = GPMC base address
> > diff --git a/drivers/usb/musb/musb_core.h b/drivers/usb/musb/musb_core.h
> > index a0467ff3c465..c9a0a8eed662 100644
> > --- a/drivers/usb/musb/musb_core.h
> > +++ b/drivers/usb/musb/musb_core.h
> > @@ -324,7 +324,7 @@ struct musb {
> >  	u16			int_rx;
> >  	u16			int_tx;
> >  
> > -	//struct device_d		*phydev;
> > +	//struct device		*phydev;
> >  	struct usb_host		host;
> >  	struct usb_phy		*xceiv;
> >  
> > diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
> > index 4676af8a5515..2d1070f1a7e2 100644
> > --- a/fs/cramfs/cramfs.c
> > +++ b/fs/cramfs/cramfs.c
> > @@ -168,7 +168,7 @@ static int cramfs_read(struct device *_dev, FILE *f, void *buf, size_t size)
> >  }
> >  
> >  #if 0
> > -static int cramfs_info (struct device_d *dev)
> > +static int cramfs_info (struct device *dev)
> >  {
> >  	if (cramfs_read_super (dev))
> >  		return 0;
> > diff --git a/include/linux/mfd/core.h b/include/linux/mfd/core.h
> > index 5175bbe3709a..18ff16a64231 100644
> > --- a/include/linux/mfd/core.h
> > +++ b/include/linux/mfd/core.h
> > @@ -12,7 +12,7 @@ struct device;
> >  /*
> >   * This struct describes the MFD part ("cell").
> >   * After registration the copy of this structure will become the platform data
> > - * of the resulting device_d
> > + * of the resulting device
> >   */
> >  struct mfd_cell {
> >  	const char		*name;
> > diff --git a/include/platform_data/eth-smc911x.h b/include/platform_data/eth-smc911x.h
> > index c97a2967c90e..77b4f44633d1 100644
> > --- a/include/platform_data/eth-smc911x.h
> > +++ b/include/platform_data/eth-smc911x.h
> > @@ -9,7 +9,7 @@
> >  
> >  /**
> >   * @brief Platform dependent feature:
> > - * Pass pointer to this structure as part of device_d -> platform_data
> > + * Pass pointer to this structure as part of device -> platform_data
> >   */
> >  struct smc911x_plat {
> >  	u32 shift;
> > diff --git a/include/platform_data/serial-ns16550.h b/include/platform_data/serial-ns16550.h
> > index ccf950b077a3..11a5e9c7a3ea 100644
> > --- a/include/platform_data/serial-ns16550.h
> > +++ b/include/platform_data/serial-ns16550.h
> > @@ -28,7 +28,7 @@
> >  
> >  /**
> >   * @brief Platform dependent feature:
> > - * Pass pointer to this structure as part of device_d -> platform_data
> > + * Pass pointer to this structure as part of device -> platform_data
> >   */
> >  struct NS16550_plat {
> >  	/** Clock speed */
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


