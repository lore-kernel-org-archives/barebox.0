Delivery-date: Fri, 05 Apr 2024 14:13:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsiS7-00Cu44-1I
	for lore@lore.pengutronix.de;
	Fri, 05 Apr 2024 14:13:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsiS6-0002kv-PD
	for lore@pengutronix.de; Fri, 05 Apr 2024 14:13:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ntRw7OvgL+hpd6R9pYY9RDkk4jG/k+F6rnm8DdkwW10=; b=iZQV2Wt590IAamBe8DWsBfd8Ym
	dRzUjQeIE5SW5RVhSFR+gVl1f4ykDGFLr8bsjG2JQLuG0QkCSRUMyYzkSvtzoALByqUtUpr9m24vk
	GhTht0tIWyQFjTpU3z6FZXlM32JbFt4uB4pbj+6bBCT4WSz1cidK/IBPMcbr1RLyrJNVIEIOR0i2j
	k1MxAOmBaLrOvNe1tEBsnBXkQBBhjroCmUfsCcpFa6vSAz9HD9zItk3vNZ2ZxdqXKcQuRLCb7lYYW
	D6H1vQOZq23iCH7AuN9xeGcFWIx6uSNya1bIgUgg3gBMBvU+D3ywXoN+Qz8HO2WZqiDRFbYOto4FM
	BfGelEYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsiRZ-00000006r2e-15gH;
	Fri, 05 Apr 2024 12:13:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsiRV-00000006r0a-2tBB
	for barebox@lists.infradead.org;
	Fri, 05 Apr 2024 12:13:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rsiRU-00024V-6l; Fri, 05 Apr 2024 14:13:12 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rsiRT-00AYR9-QM; Fri, 05 Apr 2024 14:13:11 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rsiRT-00FgVK-2O;
	Fri, 05 Apr 2024 14:13:11 +0200
Date: Fri, 5 Apr 2024 14:13:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Zg_q11-0QnLLpXcm@pengutronix.de>
References: <20240405101250.2523616-1-s.hauer@pengutronix.de>
 <09357d76-9bce-4087-ac93-4f4b4cf3c5f1@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <09357d76-9bce-4087-ac93-4f4b4cf3c5f1@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_051313_845952_076B0A3E 
X-CRM114-Status: GOOD (  27.64  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: mecsbc: fixup /regulator-sd device tree node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Apr 05, 2024 at 01:46:26PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 05.04.24 12:12, Sascha Hauer wrote:
> > The MECSBC prototype board has a bug which makes the 1.8V SD mode
> > unusable. Add a fixup which sets the regulator-min-microvolt property of
> > the SD regulator to 3.3V to prevent the Kernel from going into 1.8V.
> 
> Isn't that what the MMC no-1-8-v device tree property is for?

Although it's described in mmc-controller.yaml this is not a generic property.
Only SDHCI based controllers evaluate this property (which the affected
controller here isn't)

Sascha

> 
> Cheers,
> Ahmad
> 
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/boards/protonic-mecsbc/board.c | 21 +++++++++++++++++++++
> >  1 file changed, 21 insertions(+)
> > 
> > diff --git a/arch/arm/boards/protonic-mecsbc/board.c b/arch/arm/boards/protonic-mecsbc/board.c
> > index 3ba8fb8d1c..56f7ca393a 100644
> > --- a/arch/arm/boards/protonic-mecsbc/board.c
> > +++ b/arch/arm/boards/protonic-mecsbc/board.c
> > @@ -90,6 +90,24 @@ static void mecsbc_process_adc(struct device *dev)
> >  	pr_info("VIN = %d V\n", mecsbc_get_vin_mv() / 1000);
> >  }
> >  
> > +static int mecsbc_sd_of_fixup(struct device_node *root, void *context)
> > +{
> > +	struct device *dev = context;
> > +	struct device_node *np;
> > +
> > +	dev_info(dev, "Fixing up /regulator-sd\n");
> > +
> > +	np = of_find_node_by_path_from(root, "/regulator-sd");
> > +	if (!np) {
> > +		dev_err(dev, "Cannot find /regulator-sd node\n");
> > +		return 0;
> > +	}
> > +
> > +	of_property_write_u32(np, "regulator-min-microvolt", 3300000);
> > +
> > +	return 0;
> > +}
> > +
> >  static int mecsbc_of_fixup_hwrev(struct device *dev)
> >  {
> >  	const char *compat;
> > @@ -103,6 +121,9 @@ static int mecsbc_of_fixup_hwrev(struct device *dev)
> >  
> >  	free(buf);
> >  
> > +	if (mecsbc_data.hw_id == 0 && mecsbc_data.hw_rev == 0)
> > +		of_register_fixup(mecsbc_sd_of_fixup, dev);
> > +
> >  	return 0;
> >  }
> >  
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


