Delivery-date: Thu, 05 Mar 2026 13:16:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy7cw-008K94-2K
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 13:16:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy7cx-0000er-22
	for lore@pengutronix.de; Thu, 05 Mar 2026 13:16:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3jb/gYN8EZ4CKKX0OP9kjnE+LXl9j00g3q8I5CA4Kxs=; b=A05cFrssmctod0SoWOcdgJ/k7I
	EXzQsfegIjKct0EqxWMvZ6nZNkRmgfErVSu2XqraGOUx2iLypnVQI+3X7LnvGyd6Fd3W5pSoqH1JS
	3AQqBCcGdZ+IL0HrDhOfzHH+byG8wu1ueS0WgSQg9WVY4igBKY6MaYSpZs7evtQe6vDWeEmM7d2oX
	fTpwyMdAfTJJbjysVvOCkKAT8z8tkpelNIBKt+rupVXPutdiU+BnTtJWI/JT9rq02uSRhJ9MzCFlM
	mOYg/NiDs912h48i4Oq3zRwUmPqExtrf4M50CbW9q4lssIyQdhD7df4jofSQPKvavlH+Tyov1VlT9
	Mm5Z9yBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy7cY-00000001kEA-3nm3;
	Thu, 05 Mar 2026 12:16:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy7cW-00000001kCQ-2C9i
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 12:16:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vy7cT-0000VG-JR; Thu, 05 Mar 2026 13:15:57 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vy7cS-003slC-0C;
	Thu, 05 Mar 2026 13:15:57 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1vy7cT-00000002JqD-1H1W;
	Thu, 05 Mar 2026 13:15:57 +0100
Date: Thu, 5 Mar 2026 13:15:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <aalz_cwsApZjjYed@pengutronix.de>
References: <20260305065352.3417011-1-s.hauer@pengutronix.de>
 <2bcf7ef8-6d97-46c7-a8d2-3db70365e32a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2bcf7ef8-6d97-46c7-a8d2-3db70365e32a@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_041600_564559_7E4F27D5 
X-CRM114-Status: GOOD (  21.15  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] aiodev: Enable saradc for RK3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Mar 05, 2026 at 08:35:27AM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 3/5/26 07:53, Sascha Hauer wrote:
> > The RK3588 also has a saradc, add the SoC to the dependency list.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/aiodev/Kconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/aiodev/Kconfig b/drivers/aiodev/Kconfig
> > index 1c7bf16546..5c925109fb 100644
> > --- a/drivers/aiodev/Kconfig
> > +++ b/drivers/aiodev/Kconfig
> > @@ -60,7 +60,7 @@ config STM32_ADC
> >  
> >  config ROCKCHIP_SARADC
> >  	tristate "Rockchip SARADC driver"
> > -	depends on ARCH_RK3568 || ARCH_RK3576 || COMPILE_TEST
> > +	depends on ARCH_RK3568 || ARCH_RK3576 || ARCH_RK3588 || COMPILE_TEST
> 
> Given that there are so many RK35xx variants, let's just turn this into ARCH_ROCKCHIP?

Did that.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


