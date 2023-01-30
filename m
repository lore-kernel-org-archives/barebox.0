Delivery-date: Mon, 30 Jan 2023 19:36:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMZ0f-007tLm-Jt
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 19:36:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMZ0c-0003Ui-Qe
	for lore@pengutronix.de; Mon, 30 Jan 2023 19:36:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1slR5yFqUvF9zhW45RNePlHMg+bkQFOc4OMWgavB/Qs=; b=RhiTYnUGVTJT5QiduI5OORt8gy
	W5hEV5eC1V9UpnTC5vZpufqoLCua83IWhwVVdKbHR5Nj06+NrW9wtYtPH4N2NFnV3+4DxN0ysAAvf
	hQFyPBxcoEhxvMANQO9Pw77GCJ7d04fZlYtmXE9YVqL4naBWJx+G/88vIOS9lDPs3AYTSfkgJzG1V
	5822xvC4+0RHw+U4D10PFbq9RtfL71JD+wm5LzLm3CZw21yJczFSP54pYpUZWevtEA/B3XSYoFO+y
	ncVR7tlRZK5L1ix6vDwF0ZN8sNHm0UEKdFoH7u0H1KqVZbJ7PAS9e6UmQQTeKHV0b5WqgRQtQ1+BQ
	Fc09GqIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMYzM-0052lU-IW; Mon, 30 Jan 2023 18:34:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMYyh-0052WO-T6
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 18:34:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMYyd-00031Z-S8
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 19:33:59 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMTK2-0002wO-Uz; Mon, 30 Jan 2023 13:31:42 +0100
Date: Mon, 30 Jan 2023 13:31:42 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230130123142.GS13319@pengutronix.de>
References: <20230126185643.104049-1-contact@jookia.org>
 <20230130102727.GQ13319@pengutronix.de>
 <Y9efLdQi++e/ZFOn@novena-choice-citizen>
 <20230130121752.GR13319@pengutronix.de>
 <Y9e3F2WtTDWOhbE0@novena-choice-citizen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y9e3F2WtTDWOhbE0@novena-choice-citizen>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_103404_000224_B9FF7145 
X-CRM114-Status: GOOD (  25.06  )
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

On Mon, Jan 30, 2023 at 11:24:55PM +1100, John Watts wrote:
> On Mon, Jan 30, 2023 at 01:17:52PM +0100, Sascha Hauer wrote:
> > On Mon, Jan 30, 2023 at 09:42:53PM +1100, John Watts wrote:
> > > On Mon, Jan 30, 2023 at 11:27:27AM +0100, Sascha Hauer wrote:
> > > > This takes around 5 times too long on a i.MX8MM and around 50 times too
> > > > long on a i.MX6Q. This was measured under a regular barebox on the
> > > > shell. In an early environment with MMU disabled it takes 730 times too
> > > > long.
> > > 
> > > Yikes! I'm glad I broke this in to its own patch then. :)
> > > 
> > > I did copy this code from these boards:
> > > 
> > > arch/arm/boards/cm-fx6/lowlevel.c
> > > arch/arm/boards/skov-imx6/lowlevel.c
> > > arch/arm/boards/technexion-wandboard/lowlevel.c
> > > arch/arm/mach-imx/xload-gpmi-nand.c
> > > arch/arm/mach-imx/imx6-mmdc.c (uses 1000 loops)
> > > 
> > > Maybe it's time for an i.MX6-wide early udelay?
> > 
> > i.MX6 is not enough, the code could run on other i.MX SoCs as well.
> 
> Do you think a patch that implements udelay in PBL using the code below with
> a fixed base and drops these implementations would be a good idea?

As said, the code is also for other i.MX SoCs, so a fixed base address
won't do it. You would first have to detect the SoC type, but we can
only get this from the device tree.

I'm afraid there is no good solution for this problem, at least we
haven't found any over the years.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


