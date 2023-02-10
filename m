Delivery-date: Fri, 10 Feb 2023 13:28:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQSW2-002zja-DK
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 13:28:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQSVz-00062v-LP
	for lore@pengutronix.de; Fri, 10 Feb 2023 13:28:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w9stlx6yDbNa5JsyDuwrhotiYD2jCBvCgWA1Bj9cCMU=; b=47GK/Ox3eJgjM5/nYG2hpcIxmB
	SUhVyoGV9MZdTvPARvo/vBkR2bA89pRwL3TCDDtqm26QSXoJnafXs7c7YSNaAhelWrGj7OD0k465x
	C1HxX2kQIpHUdEWTOkS8BsBv64WHiybjAnuX6cF5HjMec1+hmSpVcLgUGKSDW5We8Ru87KYyzmYA5
	LIzaXGG7MPyCbJvoU0oTKvIyUSUTS566v5lRFZ9ca7EWHVN8KE3uQ8oLdUtL5RIdNRGTnk97CviPy
	5YXm+D6aFtdLg7m7fP2+GeldDnXqmHGfq3o46Dh1wn7BlG16p8lWar/4iNP0wXNUu39ny/+XUokIs
	GYdIuSrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQSTf-005fno-Nb; Fri, 10 Feb 2023 12:26:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQSTb-005flC-Br
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 12:26:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pQSTE-0005aU-VX; Fri, 10 Feb 2023 13:25:40 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pQSTE-0005kR-6p; Fri, 10 Feb 2023 13:25:40 +0100
Date: Fri, 10 Feb 2023 13:25:40 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Renaud Barbier <Renaud.Barbier@ametek.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230210122540.GY10447@pengutronix.de>
References: <BL0PR07MB566568DCB4AD086C7C4C3961ECD89@BL0PR07MB5665.namprd07.prod.outlook.com>
 <20230210112546.GW10447@pengutronix.de>
 <BL0PR07MB56659860B1E024CA7DA2AF55ECDE9@BL0PR07MB5665.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BL0PR07MB56659860B1E024CA7DA2AF55ECDE9@BL0PR07MB5665.namprd07.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_042603_421203_17F3E3A2 
X-CRM114-Status: GOOD (  31.31  )
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
Subject: Re: [PATCH 0/2] Initial LS1021-IOT board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Feb 10, 2023 at 11:54:31AM +0000, Renaud Barbier wrote:
> I have not tried yet. I was not sure if you like to have separate machine support as there are some differences in the SOC .
> 
> I will merge it and send you a new patch.

I like it better when it's merged, eventhough it's never compiled
together as they are different compiler architectures.

Sascha

> 
> > -----Original Message-----
> > From: Sascha Hauer <sha@pengutronix.de>
> > Sent: 10 February 2023 11:26
> > To: Renaud Barbier <Renaud.Barbier@ametek.com>
> > Cc: Barebox List <barebox@lists.infradead.org>
> > Subject: Re: [PATCH 0/2] Initial LS1021-IOT board support
> > 
> > ***NOTICE*** This came from an external source. Use caution when
> > replying, clicking links, or opening attachments.
> > 
> > On Wed, Feb 08, 2023 at 01:26:21PM +0000, Renaud Barbier wrote:
> > > The LS1021A-IOT is NXP ARMv7 Layerscape evaluation board.
> > >
> > > These patches provide a basic board support with:
> > >       - UART
> > >       - boot from SPI
> > >       - One Ethernet port - eth1*
> > >
> > > The content of the EEPROM having been lost so the MAC should be set in
> > > the config file
> > >
> > > The code is ported from NXP U-boot 2021-04. Like U-boot, the machine
> > > support i.e mac-lxxx lives in its own directory. However, it is very
> > > similar to the ls1046a machine support. This migth be merged. Please
> > advise.
> > 
> > It would be nice to have this merged to arch/arm/mach-layerscape. For
> > example arch/arm/mach-layerscape/pblimage.c looks identical to your
> > version.
> > 
> > Have you tried merging it? If yes, which problems did you encounter?
> > 
> > Sascha
> > 
> > --
> > Pengutronix e.K.                           |                             |
> > Steuerwalder Str. 21                       |
> > https://urldefense.com/v3/__http://www.pengutronix.de/__;!!HKOSU0g!C
> > ZdG8RU9gQpSVfJzH_T4b8q5lFRdLrpGiJsD5H-
> > H351N8ycvCriKuoi6quenVmESFrbU0Iw9qhIlb5z4ifTE$   |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


