Delivery-date: Thu, 02 Mar 2023 11:59:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgeL-006TzD-2B
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 11:59:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgeL-0005w5-0V
	for lore@pengutronix.de; Thu, 02 Mar 2023 11:59:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bdd1bydlq3AnpZGhzWvDZr9MOTsVSU2HVmditKxSGQs=; b=g4N+o1C896b5iVmzxu9pu3pibZ
	AWByCD4NtfnaF+BmDe01ud/R4FX3Cpsn7p+gtzDx2M5zPqvSd6nJM0iMokAZPWfj3aRIVbJTIXLFW
	G34OUjaBSdpjkTCoyIFBSEBfczOg+HmF2xedR0G1AzHbIRj9iD21SrL+hkH445iF8wiRHie12YpWP
	x5HGpjJpub8Ux4yQDgyPBIOP+zuD4AUx706i6X4b1IparR+2IghOAA3n4vNQT88gQ3HsUPlg/vOC+
	PP/wwPqDTCcI7DfqFVNgv/54Xi0Tc7aogdjg9Sqx2mTaD2eliY3/3Vf4+mZ6v5vrIg2bOX7LilItQ
	Fe3ryg7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgdC-001mEm-AH; Thu, 02 Mar 2023 10:57:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgd5-001mDC-Lt
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 10:57:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgd3-0005mC-Ou; Thu, 02 Mar 2023 11:57:41 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgd3-0004G1-HW; Thu, 02 Mar 2023 11:57:41 +0100
Date: Thu, 2 Mar 2023 11:57:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230302105741.GQ32097@pengutronix.de>
References: <20230302103943.939422-1-s.hauer@pengutronix.de>
 <20230302103943.939422-8-s.hauer@pengutronix.de>
 <20230302104953.p45jyi6qmg4bzg2v@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230302104953.p45jyi6qmg4bzg2v@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_025743_750224_5FFD632F 
X-CRM114-Status: GOOD (  20.64  )
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
Subject: Re: [PATCH 7/8] ARM: dts: imx7d-peb-eval-02: Fix dtc warnings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Mar 02, 2023 at 11:49:53AM +0100, Marco Felsch wrote:
> Hi Sascha,
> 
> On 23-03-02, Sascha Hauer wrote:
> > Some nodes have a unit name, but no reg property. Drop the unit name
> > to avoid dtc warnings.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/dts/imx7d-peb-eval-02.dtsi | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> > 
> > diff --git a/arch/arm/dts/imx7d-peb-eval-02.dtsi b/arch/arm/dts/imx7d-peb-eval-02.dtsi
> > index 8bde5b13e7..5c2c302d54 100644
> > --- a/arch/arm/dts/imx7d-peb-eval-02.dtsi
> > +++ b/arch/arm/dts/imx7d-peb-eval-02.dtsi
> > @@ -13,21 +13,21 @@
> >  		pinctrl-0 = <&pinctrl_leds_eval>;
> >  		status = "disabled";
> >  
> > -		led@0 {
> > +		led0 {
> 
> To follow the binding doc the name should be led-0. For the below nodes
> as well.

Fixed, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


