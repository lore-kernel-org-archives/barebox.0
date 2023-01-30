Delivery-date: Mon, 30 Jan 2023 19:36:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMZ0m-007tMx-Um
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 19:36:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMZ0j-0003Za-Rt
	for lore@pengutronix.de; Mon, 30 Jan 2023 19:36:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FNu1jZuFutD4wSh06+XpTeOOWDbZTsaYjnqXsWcPspM=; b=eYyNY9o0PNhXbA2/47G2a611+5
	g3h/RUrP63e/jG2Gb2Kw9jeILTjPhh82+fGoWowwxAshsoviaRBdK+N6hWdwASBKlpwewlchGk05F
	wdFF3PX0F2SWFynSOl9SC8YiWF9SPTvEK+dxiavTPz+ZGgU37k2F4k7WiwhZ3wjHFPTsR/iMEN4Zk
	A0zQSpFKMhG/G/kSoyMfj9Px4YAjnFT+vTuFJQwfSGwIQxt4YVm46iF6HAYVF6eMuuhxBjTihDJDG
	OGsmxwHJdN8jC7Ptrd1oBEBV6R1QLt9tmA31+loqEXnHRGO2Ew78g/7+d7T7DZvlYdmb0VaRNB/r0
	tc75fISw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMYzG-0052jv-Ny; Mon, 30 Jan 2023 18:34:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMYyh-0052WT-UF
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 18:34:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMYye-00031f-50
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 19:34:00 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMT6e-0002J5-Cm; Mon, 30 Jan 2023 13:17:52 +0100
Date: Mon, 30 Jan 2023 13:17:52 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230130121752.GR13319@pengutronix.de>
References: <20230126185643.104049-1-contact@jookia.org>
 <20230130102727.GQ13319@pengutronix.de>
 <Y9efLdQi++e/ZFOn@novena-choice-citizen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y9efLdQi++e/ZFOn@novena-choice-citizen>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_103404_054146_B32C6B80 
X-CRM114-Status: GOOD (  28.34  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,
	DATE_IN_PAST_06_12,DKIMWL_WL_HIGH,DKIM_SIGNED,DKIM_VALID,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] I2C: i.MX: early: Use internal udelay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 30, 2023 at 09:42:53PM +1100, John Watts wrote:
> On Mon, Jan 30, 2023 at 11:27:27AM +0100, Sascha Hauer wrote:
> > This takes around 5 times too long on a i.MX8MM and around 50 times too
> > long on a i.MX6Q. This was measured under a regular barebox on the
> > shell. In an early environment with MMU disabled it takes 730 times too
> > long.
> 
> Yikes! I'm glad I broke this in to its own patch then. :)
> 
> I did copy this code from these boards:
> 
> arch/arm/boards/cm-fx6/lowlevel.c
> arch/arm/boards/skov-imx6/lowlevel.c
> arch/arm/boards/technexion-wandboard/lowlevel.c
> arch/arm/mach-imx/xload-gpmi-nand.c
> arch/arm/mach-imx/imx6-mmdc.c (uses 1000 loops)
> 
> Maybe it's time for an i.MX6-wide early udelay?

i.MX6 is not enough, the code could run on other i.MX SoCs as well.

> Though this code might break if its timing is already wrong.
> 
> > Maybe we could do this:
> > 
> > static void __udelay(void *base, int us)
> > {
> > 	int i;
> > 
> > 	for (i = 0; i < us * 4; i++)
> > 		readb(base);
> > }
> > 
> > The time spent for a register read depends on the bus clock which
> > doesn't change that much between the different SoCs.
> 
> This seems like a better solution if you've tested it, I'm not too sure
> how to check this. Would I just then specify the controller as the base?

Yes, the I2C controller base should be passed here.

I tested this with a call to this udelay function with a sufficiently
great number of microseconds surrounded by a printf.

> 
> Though the actual goal of the code is to wait for the controller to bestable.
> Maybe there's a better way than a delay?

I briefly looked into this, but the commit history of both barebox or
Linux do not give a real conclusion what we are waiting here for.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


