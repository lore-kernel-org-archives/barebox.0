Delivery-date: Wed, 14 Apr 2021 09:10:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWZf2-0000YJ-Cw
	for lore@lore.pengutronix.de; Wed, 14 Apr 2021 09:10:04 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWZf1-0005DH-Lb
	for lore@pengutronix.de; Wed, 14 Apr 2021 09:10:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BFygNYoyUFW+fKOa0oa1OEuqzFl3d1+pUyP8IqWIPyg=; b=DX7QbGzsXT+hXS6XhHYqgV5TL
	oNG5jqdbBWc8p+nxjHelLBn0qS1SFpp+LYeHxNGHX1HVFpmsBT3G62fDWxUs3GU6XCFke6u2BUbrp
	XUnR59IFcRLqrMz5H29eMph0rjRneT0h4h7+2AO2czNYxXmHJHNT3Gx+raQIm+ONA8vCVSK8Mxvve
	Woo3cWTCs9IwmqLJY8MIX/agZjdzdeE931QmrdRwnk36dwTmXAxlfv36mmQjDyt0z9nigAUyf+uMV
	M5qGpSG6FhBFwoWVR2MZ3nkzXNPnsRLD5lgGWC4vqX9e41Jx8MZrGyAYV8IQ2D4KY7o/wa2HJ5/vz
	dwuWigy3w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWZdm-00Bmeg-BS; Wed, 14 Apr 2021 07:08:46 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWZdd-00Bmda-De
 for barebox@desiato.infradead.org; Wed, 14 Apr 2021 07:08:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=cFslngsHxPbTQoQ4NKV7+/9J98P1eV3CBw6zfooN6/0=; b=Gu5Wf8G8grk5R7Rhl9VCmrLJ27
 1QWbL85kOSCGfIIEg4Tz1gS0CNazhScqW+TMx9DoAVpMG2nxl2SVA/JqkzrkD97qFqfWxrmWx+u68
 Nt9rRoN2m5tZVSLbU/FF/2wVxtK8GRiOrDU2SwstCf4a1Wwsv1fYLSVT6t5TwyKF7/Q9lQa9hdJn1
 zQOOHKg8iOtUQOR3LJ03SmslXvLC8+Q64uFEhsZS/h4+y3UDVpBXhQDHpgz57nT0eI1lucXugDmfi
 iEBw1rWBnYOl2s3RSaxQLZwCjjZHUOAs4TJXb9OBP4A4uUENjz1CG7R1TnOW/gx+b7mm8oe/TU05y
 5vCl5WPA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWZda-007Yi4-Ns
 for barebox@lists.infradead.org; Wed, 14 Apr 2021 07:08:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWZdX-000514-9x; Wed, 14 Apr 2021 09:08:31 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWZdW-0002ho-ON; Wed, 14 Apr 2021 09:08:30 +0200
Date: Wed, 14 Apr 2021 09:08:30 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Lars Pedersen <lapeddk@gmail.com>, barebox@lists.infradead.org,
 Bruno Thomsen <bruno.thomsen@gmail.com>
Message-ID: <20210414070830.GQ19819@pengutronix.de>
References: <20210413061727.186938-1-lapeddk@gmail.com>
 <20210413092340.241337-1-lapeddk@gmail.com>
 <20210413134048.GO19819@pengutronix.de>
 <b95f7406-03a3-f7ea-43bf-8731ed5046dd@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b95f7406-03a3-f7ea-43bf-8731ed5046dd@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:01:44 up 55 days, 10:25, 87 users,  load average: 1.21, 0.45, 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_000834_802971_DBD19B13 
X-CRM114-Status: GOOD (  27.32  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: Fix Kamstrup mx7 concentrator default cfg
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 13, 2021 at 05:04:14PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 13.04.21 15:40, Sascha Hauer wrote:
> > Hi Lars,
> > 
> > On Tue, Apr 13, 2021 at 11:23:40AM +0200, Lars Pedersen wrote:
> >> Select CONFIG_POWER_RESET_GPIO_RESTART for Kamstrup mx7 concentrator
> >> board.
> >>
> >> Signed-off-by: Lars Pedersen <lapeddk@gmail.com>
> >> Reviewed-by: Bruno Thomsen <bruno.thomsen@gmail.com>
> >> ---
> >> Requires patch ARM: i.MX: Kamstrup mx7 concentrator board support
> >>
> >>  arch/arm/mach-imx/Kconfig | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> >> index cc73d0a0d..4ee8ffe4b 100644
> >> --- a/arch/arm/mach-imx/Kconfig
> >> +++ b/arch/arm/mach-imx/Kconfig
> >> @@ -530,6 +530,7 @@ config MACH_KAMSTRUP_MX7_CONCENTRATOR
> >>  	bool "Kamstrup i.MX7 Concentrator"
> >>  	select ARCH_IMX7
> >>  	select ARM_USE_COMPRESSED_DTB
> >> +	select CONFIG_POWER_RESET_GPIO_RESTART
> > 
> > I wouldn't select it. CONFIG_POWER_RESET_GPIO_RESTART depends on other
> > options and Kconfig can't automatically select the dependencies.
> 
> GPIOLIB is selected via ARCH_IMX. This leaves OFDEVICE=n, which
> wouldn't be a valid configuration anyway for this board and probably
> all of imx_v7_defconfig..? Should maybe IMX_MULTI_BOARDS select it?
> 
> > Also if you don't want to make use of the gpio restart driver then you
> > don't want to be forced to compile it in.
> 
> If a board deems reset important enough to force it when enabled,
> why not?

With that reasoning you could enable each and everything from a board. I
don't think that's a path we want to go.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

