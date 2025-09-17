Delivery-date: Wed, 17 Sep 2025 16:04:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uysm9-0045wN-0U
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 16:04:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uysm8-00019E-JE
	for lore@pengutronix.de; Wed, 17 Sep 2025 16:04:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1WHiMNJ/9ZJo7aRyRJuELdw+DqvSMx+Tf74c2BwRhFc=; b=d0ynTvpJgJWAGRLhuksR1KHjzH
	LI41NTtpDNrGw1Q2vpXFbWrcFgFsck94HUOcBWpnAU/ipfV39sv4IrCEScRE0/mO1fTOtrfviGJvq
	Nhy4blgytMJ6+SJSZ+xVOK9VxXTJkTc6f8TMYTiwCY2y1zm4HjhfCuROyjTqzcmw9y+Rbd97g1ah+
	jmrhWj6AOrHgCuGKj/YzfnJqrPB6tEiVhfKyH2/0k8MgqnJLMhCxR9q7Cp6Sr14iE+wqFB/uIa5hp
	1RAthySR5jiaiVtcAoeCa+jaEJH8BuYe5P58YmX3oJOIPqX3vHbooQYY46yk8RGC/50vJGBHqIRWB
	HCXn76Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyslU-0000000C0Ap-1qhF;
	Wed, 17 Sep 2025 14:04:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uysjz-0000000BxyG-2CcE
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 14:02:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uysjx-0000H6-Jp; Wed, 17 Sep 2025 16:02:33 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uysjx-001lwh-1N;
	Wed, 17 Sep 2025 16:02:33 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uysjx-00Dihw-15;
	Wed, 17 Sep 2025 16:02:33 +0200
Date: Wed, 17 Sep 2025 16:02:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <aMq_eYP66kvx_-HZ@pengutronix.de>
References: <20250916093237.712407-1-s.hauer@pengutronix.de>
 <48b12f11-a204-4aeb-9db3-dbc11b49f8ea@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <48b12f11-a204-4aeb-9db3-dbc11b49f8ea@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_070235_624217_07A6A25D 
X-CRM114-Status: GOOD (  24.53  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] drivers: treewide: Do not use NULL as driver_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Sep 16, 2025 at 11:38:48AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 9/16/25 11:32 AM, Sascha Hauer wrote:
> > Several drivers in the tree use an enum for the chip type casted to int
> > as driver_data. This comes with the problem that device_get_match_data()
> > returns NULL for these devices and a potential error check bails out
> > then.
> > 
> > This patch changes the enums used by the drivers to start from 1 instead
> > of 0 so that the return value of device_get_match_data() can safely
> > checked for being NULL.
> > 
> > Most drivers do not check the return value anyway, but fec_imx.c does
> > which causes the driver to no longer work on i.MX27. This issue is fixed
> > here.
> 
> If they don't check the return value, why bother changing it and risk a
> regression?

To not give others bad examples.

> > +++ b/drivers/mtd/nand/raw/nand_mxs.c
> > @@ -38,7 +38,7 @@
> >  #include "internals.h"
> >  
> >  enum gpmi_type {
> > -	GPMI_MXS,
> > +	GPMI_MXS = 1,
> >  	GPMI_IMX6,
> >  };

Anyway, this indeed introduces a regression. We have mxs_add_nand()
which instantiates a "mxs_nand" device without driver data, so
device_get_match_data() will return 0 aka GPMI_MXS which happens to
be the right thing here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


