Delivery-date: Tue, 06 Jan 2026 14:11:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6qH-001tyu-1G
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:11:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6qG-0005L0-SC
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:11:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H5EUzleDNWPTGM04rtL9i4QpkLAjBwfzYAkkQ5ZpvCo=; b=mR0hQgs6ADrEB1IJY9cA3CB0Xv
	VNjfOocRVJLPnRKS+9m0QPPs7OMIPePTWw/xSjouanKztxYaqnAmrP2AwJVdje0pgKElP30C9H5gf
	PWn+W7beWUikzSscDFmPxla+DsHPR6ldy7wfa8qOWDRXR9i/P2+/BoXi2wq9iV+BAvoTTD6AWpyAz
	v3E4bHLva/gv8OElj27nNw8M2C708lI1R6sXWU345+4p2Nl2tZczKbtrdg77RtksXRibZjh1fjP9f
	4o4w/hk7JWtey2khCrDNcBjirZJgBd1UirNfSR/queuPqIMxEeg7EdUMA8liBqCBUDyTQwb1W29n3
	xyfXNQiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6pm-0000000D43u-2xo5;
	Tue, 06 Jan 2026 13:10:50 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6pk-0000000D42y-0aL5
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:10:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1767705014;
	bh=Qn0+x8ef7j6yhPYY4+ucgR2QV0zZHZBEsoZnXnolv/c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hc+beZV1LXnmIzPA51Iid5NoTlh3do3qB8QcTqzB/TLkFTlGg3H7GKET+6EyAu3tH
	 MAe9qzWNgRB1FWs8G7TQS4HmxCtYV8zUc8ou9RVKcMuDooALsK0eZjZZkjWmf53Y85
	 r3npRjawA4pWr5P6vMHv+GR3DdeDpCPnVNltUJJ43shppNAC9BP+dJLrbxwVdm19ud
	 D03Ro8tMva82xNvSsdxUMYl4RqW+Qri7xMzyrbxPfYMNW3drS6M2oA96jjS3/ga4G3
	 2Hu2lL/d7s4vI6W8ozHbxV/RyxyNlizlmuoJSZmzPbekthxrEMM/RMPOpJD3HR3tox
	 FGLCLh4GQhNhQ==
Received: from hephaistos (tmo-112-184.customers.d1-online.com [80.187.112.184])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id AB92140236;
	Tue, 06 Jan 2026 14:10:14 +0100 (CET)
Date: Tue, 6 Jan 2026 14:10:08 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <aV0JsI7NisQ3gans@hephaistos>
References: <aVzVyOKQ-mc4LLBd@hephaistos>
 <20260106095253.souvmkzvzufrkecv@pengutronix.de>
 <aVzgGHbZipXS7kWr@hephaistos>
 <e31c674b-8d63-42bc-bd54-bcb9c7b5b92d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e31c674b-8d63-42bc-bd54-bcb9c7b5b92d@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_051048_316976_E6E4674E 
X-CRM114-Status: GOOD (  10.80  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Yocto migration meta-barebox -> walnascar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad!

On Tue, Jan 06, 2026 at 12:33:21PM +0100, Ahmad Fatoum wrote:

> When enabled, the same barebox build generates two images:
> barebox-am33xx-beaglebone-mlo.mmc.img -> MLO
> barebox-am33xx-beaglebone.img -> barebox.bin
> 
> Both are placed in the VFAT.

I do not necessaryly need two images, if booting is now done with a
combined one, which is new, if I understood this correct.

In my images deploy dir the following images showed up after my
migration to walnascar away from the meta-barebox layer which is not
used anymore.

barebox-am33xx-afi-gf.img
barebox-am33xx-baltos.img
barebox-am33xx-beaglebone.img
barebox-am33xx-myirtech.img
barebox-am33xx-phytec-phycard.img
barebox-am33xx-phytec-phycore-emmc.img
barebox-am33xx-phytec-phycore-no-eeprom.img
barebox-am33xx-phytec-phycore-no-spi-no-eeprom.img
barebox-am33xx-phytec-phycore-no-spi.img
barebox-am33xx-phytec-phycore.img
barebox-am33xx-phytec-phyflex-no-eeprom.img
barebox-am33xx-phytec-phyflex-no-spi-no-eeprom.img
barebox-am33xx-phytec-phyflex-no-spi.img
barebox-am33xx-phytec-phyflex.img
barebox-am35xx-pfc-750-820x.img
barebox-beagleboard.img
barebox-dt-2nd.img

And that is, when I wondered myself, if - in our case - barebox-am33xx-beaglebone.img
is going to be named MLO and put into the vfat boot partition or if I
have something missing or done wrong, which is absolutely possible, of
course!

So, no *mlo* file.

> For your old setup, you will need two recipes. Just define your own
> barebox.bb and barebox-pbl.bb recipes and inherit barebox in each and
> use different configs. All the core logic is in a barebox.bbclass to
> allow you to easily create your own recipes.

So only using this approach with two barebox.bb and barebox-pbl.bb I
would get an additional *mlo* file, right?
As said, if I can omit this approach this is fine by me.

Regards
Konsti



-- 
INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Straße 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de 

Geschäftsführung: Michael Emmert, Derek Uhlig
HRB: 111204, AG Hannover



