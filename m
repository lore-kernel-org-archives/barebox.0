Delivery-date: Fri, 06 Feb 2026 17:35:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voOnl-009Xlk-2t
	for lore@lore.pengutronix.de;
	Fri, 06 Feb 2026 17:35:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voOnk-0004kj-JP
	for lore@pengutronix.de; Fri, 06 Feb 2026 17:35:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wCJzYlWh/EDSWsBQ9fgMqeoielYudHZkmzJthv7nnf0=; b=B/DHjtUeNrZIMiCKVazf9PQbQu
	AhZ64rFMs2pXjPRFA9/KqAtAdVju/mFS0gaz097sv2oqxqdipVSOFzAkm0xHsCQBdylSSJh4cOpVT
	MZo+ojbs3dyoxYyWoZ8iuk+CyvUfNijTW17BZcfImJ2ADmvAx4RGiTRpMRhZg+pDLyvoxiQKhwSP7
	0F7JszA1kG60Dl1oiqVxPPcw8ajcFoLF2gSlN+6GFkoCA7dsNMizv/zJCesCTkXlYN9pQrSssL9LE
	KZwDwLhP/FMqu0bR1tUyKoOPpeQBrZEu95n0ESsRX3X1r+XwbZno6uB65SWhnEGbVoxalGdEjzaac
	+br9LkzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voOn6-0000000BZLQ-1g5I;
	Fri, 06 Feb 2026 16:34:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voOn2-0000000BZKR-43Ik
	for barebox@lists.infradead.org;
	Fri, 06 Feb 2026 16:34:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1voOn1-0004c4-5d; Fri, 06 Feb 2026 17:34:39 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1voOn1-004Qzx-26;
	Fri, 06 Feb 2026 17:34:38 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1voOn0-002PC3-2n;
	Fri, 06 Feb 2026 17:34:38 +0100
Date: Fri, 6 Feb 2026 17:34:38 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20260206163438.gcqqdvvmyv2l6rrc@pengutronix.de>
References: <20260205-vmaster-customers-leicageo-system1600-v1-0-a80b234ce1a1@pengutronix.de>
 <20260205-vmaster-customers-leicageo-system1600-v1-4-a80b234ce1a1@pengutronix.de>
 <ade6d330-a7a2-42cf-9813-c4b0bdf76b39@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ade6d330-a7a2-42cf-9813-c4b0bdf76b39@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_083441_008019_8DB7ECB6 
X-CRM114-Status: GOOD (  35.32  )
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] watchdog: Add Hexagon EFI watchdog driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-02-06, Ahmad Fatoum wrote:
> 
> 
> On 2/5/26 4:45 PM, Marco Felsch wrote:
> > The EFI system co-processor implements a watchdog device which must be
> > pinged to inform the MCU that the system is up and running.
> > 
> > Normaly the ping is done by Linux but sometimes it can become necessary
> > to do it within barebox too, e.g. to allow barebox debugging and
> > development.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  drivers/watchdog/Kconfig       |  9 +++++
> >  drivers/watchdog/Makefile      |  1 +
> >  drivers/watchdog/hgs_efi_wdt.c | 88 ++++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 98 insertions(+)
> > 
> > diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> > index bf18782bdb58b20240d7762ce32f98c78c4cd12d..c962e8f22e5a7cb21ee93b3f82189cc8536781b9 100644
> > --- a/drivers/watchdog/Kconfig
> > +++ b/drivers/watchdog/Kconfig
> > @@ -195,4 +195,13 @@ config K3_RTI_WDT
> >  	  Say Y here if you want to include support for the K3 watchdog
> >  	  timer (RTI module) available in the K3 generation of processors.
> >  
> > +config HGS_EFI_WATCHDOG
> > +	bool "Hexagon Geosystems EFI watchdog"
> > +	depends on MFD_HGS_EFI || COMPILE_TEST
> 
> Thanks for making sure it compiles under COMPILE_TEST. :)
> 
> 
> > +#include <mfd/hgs-efi.h>
> > +
> > +struct hgs_efi_wdt_data {
> > +	unsigned int msg_id;
> > +};
> > +
> > +struct hgs_efi_wdt {
> > +	struct watchdog wdd;
> > +	struct hgs_efi *efi;
> > +	const struct hgs_efi_wdt_data *data;
> > +	bool is_running;
> 
> This is only ever read, but set no where.

You're right, I forgot to set it since pinging the watchdog within
barebox is a dev-feature :/ Fixed it with the new version.

> > +};
> > +
> > +static struct hgs_efi_wdt *to_hgs_efi_wdt(struct watchdog *wdd)
> > +{
> > +	return container_of(wdd, struct hgs_efi_wdt, wdd);
> > +}
> > +
> > +static int hgs_efi_wdt_set_timeout(struct watchdog *wdd, unsigned int timeout)
> > +{
> > +	struct hgs_efi_wdt *efi_wd = to_hgs_efi_wdt(wdd);
> > +	struct device *dev = &wdd->dev;
> > +	struct hgs_sep_cmd cmd = {
> > +		.type = HGS_SEP_MSG_TYPE_EVENT,
> > +		.msg_id = efi_wd->data->msg_id,
> > +	};
> > +	int ret;
> > +
> > +	/* The watchdog can't be turned of */
> > +	if (efi_wd->is_running && !timeout)
> > +		return -ENOSYS;
> > +
> > +	/* The EFI watchdog doesn't have a timeout, once pinged */
> > +	if (efi_wd->is_running)
> > +		return 0;
> 
> A watchdog can also implement a ping callback, which may be suitable here.

You're right, I adapted the code. Since the ping() is optional and the
set_timeout() isn't I went the way of supplying only the set_timeout().

However, I convered it to ping() and always return -ENOSYS in case of
set_timeout().

> > +static int hgs_efi_wdt_drv_probe(struct device *dev)
> > +{
> > +	struct hgs_efi_wdt *efi_wd;
> > +	struct watchdog *wdd;
> > +	int ret;
> > +
> > +	efi_wd = xzalloc(sizeof(*efi_wd));
> > +	efi_wd->efi = dev_get_priv(dev->parent);
> > +	efi_wd->data = of_device_get_match_data(dev);
> > +
> > +	wdd = &efi_wd->wdd;
> > +	wdd->hwdev = dev;
> > +	wdd->set_timeout = hgs_efi_wdt_set_timeout;
> 
> FYI, if you can query the EFI whether it's enabled, you can set
> wdd->running to either WDOG_HW_RUNNING or WDOG_HW_NOT_RUNNING

Right! I added the WDOG_HW_RUNNING, since the watchdog is always
running.

Thanks for the review!

Regards,
  Marco


> 
> > +
> > +	ret = watchdog_register(wdd);
> > +	if (ret)
> > +		dev_err(dev, "Failed to register watchdog device\n");
> > +
> > +	return ret;
> > +}
> > +
> > +const struct hgs_efi_wdt_data hgs_efi_wdt_gs05 = {
> > +	.msg_id = 0,
> > +};
> > +
> > +static struct of_device_id hgs_efi_wdt_of_match[] = {
> > +	{ .compatible = "hgs,efi-gs05-wdt", .data = &hgs_efi_wdt_gs05 },
> > +	{ /* sentinel */ }
> > +};
> > +MODULE_DEVICE_TABLE(of, hgs_efi_wdt_of_match);
> > +
> > +static struct driver hgs_efi_wdt_driver = {
> > +	.name		= "hgs-efi-wdt",
> > +	.probe		= hgs_efi_wdt_drv_probe,
> > +	.of_compatible	= hgs_efi_wdt_of_match,
> > +};
> > +device_platform_driver(hgs_efi_wdt_driver);
> > 
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


