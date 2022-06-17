Delivery-date: Fri, 17 Jun 2022 08:39:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o25dv-004tzv-IJ
	for lore@lore.pengutronix.de; Fri, 17 Jun 2022 08:39:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o25dv-0006fl-He
	for lore@pengutronix.de; Fri, 17 Jun 2022 08:39:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H9SqblvdneC6MbMQXb8Ck+WcvpLgDbJIxvH03eDJLYQ=; b=FQDBgknQFi5e5ckh9zVR+MVGjY
	hgseO6VGHC3GEay4+bgUsCjXIZUl8X8mV2QE/Mq98AkmjcynpeMImvjp2GOiA3lpKCGYlNuxOKWSW
	VX9lrqr+B1v7hAyFibAslSrpBuYFFTeClVg0yLCKWsSDvGd97rkS4rsYiX+T9qE2yeCS/IzP8myU7
	g3eugkris+/PEmL4565vl5Y9eJEwFmczbo4/rPIlmUHe9PKuJOsRN+1vIO6+lDG0PWPOrDR0o7P/A
	szS+hdzcMqgrzvHsOuI9qkK8xWF54uGPfswf9UOSGyas6V4dwpOVCgrlqwEj8l5nxNKlclZ8TRO7w
	G3mdDL6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o25cL-005kKg-CL; Fri, 17 Jun 2022 06:38:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o25cG-005kKC-2r
	for barebox@lists.infradead.org; Fri, 17 Jun 2022 06:38:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o25c7-0006c2-Nh; Fri, 17 Jun 2022 08:37:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o25c7-0002iK-En; Fri, 17 Jun 2022 08:37:51 +0200
Date: Fri, 17 Jun 2022 08:37:51 +0200
To: Daniel =?iso-8859-15?Q?Br=E1t?= <danek.brat@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220617063751.GZ1615@pengutronix.de>
References: <20220615203909.27363-1-danek.brat@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220615203909.27363-1-danek.brat@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_233800_165108_4689E109 
X-CRM114-Status: GOOD (  15.69  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] i2c: add bcm283x i2c host controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 15, 2022 at 10:39:09PM +0200, Daniel Brát wrote:
> Add a driver to support the i2c host controller (BSC)
> found in Broadcom's bcm283x family of SoCs (used by rpi boards).
> 
> Signed-off-by: Daniel Brát <danek.brat@gmail.com>
> ---
>  arch/arm/configs/rpi_defconfig     |   3 +-
>  arch/arm/configs/rpi_v8a_defconfig |   3 +-
>  drivers/i2c/busses/Kconfig         |   4 +
>  drivers/i2c/busses/Makefile        |   1 +
>  drivers/i2c/busses/i2c-bcm283x.c   | 327 +++++++++++++++++++++++++++++
>  5 files changed, 336 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/i2c/busses/i2c-bcm283x.c

Much better, thanks, applied.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


