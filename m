Delivery-date: Mon, 30 Jan 2023 19:36:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMZ0i-007tMB-Eu
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 19:36:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMZ0f-0003XC-LE
	for lore@pengutronix.de; Mon, 30 Jan 2023 19:36:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j5S8KGCt5yapKg0s2InOyg12X7PNb2ioF8md9UTJyPU=; b=SSnrJXouVLVCTQjEfvf0a32k+k
	Z6gBSocs/o80cag64o5k9or0nL+VxyH64LP0ZoeReHufCFL4+fSsYkPm+zLV3AQDhaiBQsPcMobbb
	zOARN7UPEWy2XY8rfpqsQCtttkAczQb7cGxfKGx9UgDH+zXvc/LL8xwFPqUcKI+tYFFtvPplJj6vi
	NP7sy+ASRk2NO+YXY3DkQI6Umsk7Qm08oYILkCpN3OYmLgjba4dwdC1Lsr5tb8H5h+4nkkS54g6Po
	GjQwNdE4sX0z+WP2FpQKBKx7r4MP/FiPAReBbNYDeQ6gkzU2GiMOdCo++cQsgMapj8vwEatjtr41g
	7TkVP+KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMYz8-0052fR-JT; Mon, 30 Jan 2023 18:34:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMYyh-0052WX-SD
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 18:34:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMYye-00031s-Jb
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 19:34:00 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMX9O-0002KS-4h; Mon, 30 Jan 2023 17:36:58 +0100
Date: Mon, 30 Jan 2023 17:36:58 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230130163658.GT13319@pengutronix.de>
References: <20230126185643.104049-1-contact@jookia.org>
 <20230130102727.GQ13319@pengutronix.de>
 <Y9efLdQi++e/ZFOn@novena-choice-citizen>
 <20230130121752.GR13319@pengutronix.de>
 <Y9e3F2WtTDWOhbE0@novena-choice-citizen>
 <20230130123142.GS13319@pengutronix.de>
 <Y9e+dKTG59Y0Kxhl@novena-choice-citizen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y9e+dKTG59Y0Kxhl@novena-choice-citizen>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_103403_991162_F08F55CD 
X-CRM114-Status: GOOD (  25.14  )
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
Subject: Re: [PATCH] I2C: i.MX: early: Use internal udelay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 30, 2023 at 11:56:20PM +1100, John Watts wrote:
> On Mon, Jan 30, 2023 at 01:31:42PM +0100, Sascha Hauer wrote:
> > As said, the code is also for other i.MX SoCs, so a fixed base address
> > won't do it. You would first have to detect the SoC type, but we can
> > only get this from the device tree.
> > 
> > I'm afraid there is no good solution for this problem, at least we
> > haven't found any over the years.
> > 
> > Sascha
> 
> Oh right, because Barebox does multi-image builds. That is an unsatisfying
> problem but it makes sense.
> 
> So for this patch I imagine I should just take the udelay you've written,
> use the I2C registers as the base address and just poke around for a while?

Yes, sounds good.

> 
> I'm still unsure on how to test this- can I just disable the MMU and dcache
> in board.c and do some prints with some type of timer?

You can't disable MMU during runtime, but you can compile without MMU
support, just disable CONFIG_MMU. However, the early I2C code already
runs with MMU disabled, can't you just put in some test code there?

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


