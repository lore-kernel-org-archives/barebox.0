Delivery-date: Tue, 13 Apr 2021 12:09:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWFzM-0007L4-PR
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 12:09:44 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWFzL-0005ES-WE
	for lore@pengutronix.de; Tue, 13 Apr 2021 12:09:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Io1Qk+18bPnCRPZYvEwvjiIg6mS3N3YY9KplMsfQnsw=; b=h1cz8rsR75ZwcEk8qq8Pzd86g
	99AsCbJ5RLe6DLKKKLM68z0mjIAF5aB3JZIMWMkA4lGirLAJPjG/jsud31SyFUwWRNq6GzU/pKA/E
	FUcJQKiaN4jfxMpLGiBHCEtP7hlTDMAB2i3UGIOdnY6csLQMuYb/sarrd6d2SHauB7lBxPSOPqJB6
	Mwjnqypi6x5bi5hsDlW1omMqnI62NCQKstAX0AZU9e6mIB5AtyUk7125srvL6+zw1cP7bIdgd8PMn
	t1KF23a9nN8vBVu2a9H0H+CesAEDN6dzR4u5WemEfBjvqGIMwEd2WPKP8DLEEnLqfmvk2UdRiYj7Q
	6+fKt0ZNg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWFyK-008pzQ-DT; Tue, 13 Apr 2021 10:08:43 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWFyC-008pyU-6K
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 10:08:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=jFb/qRA349Us4yolynQMtKNEo3okU029vSCiA/y0Y28=; b=eaxk8Yx+8P+m1eaiPJvQHy3vNX
 PGpx2p6kjvalAjnYzf+G1jZZlmAPdDdVsJ0PQL8z5dJX8gaFkQdMdZ7tgN5tgZ4J2oytAKLRhdKLY
 zcts6rz/NiTzrgnnn2My8Q9mD6JkhoklfCvofWRYKG57PKtiKaMkXs6msLsBtl96hsHU2Zl4BU1sq
 VgUaaf0D//0G4EVUlXRsxGdCyAzN+BxKUgjPaZSFk2egWsc67eKLfHhotij3HsSw90XwWC9MJ0kvC
 MQCZ1z0L1RtXkBzUzByfB/57ejJojyl+zIKQeadHLNckdT2vQRDqv2BlQC9f99Olq5f8YzEvtUDRz
 Jd6AIIEQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWFy9-006uoo-5H
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 10:08:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWFy7-00056y-Sh; Tue, 13 Apr 2021 12:08:27 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWFy7-0000nK-JQ; Tue, 13 Apr 2021 12:08:27 +0200
Date: Tue, 13 Apr 2021 12:08:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210413100827.GN19819@pengutronix.de>
References: <20210413090318.14105-1-s.hauer@pengutronix.de>
 <6835e212-133c-e2f8-6e05-336e6877543c@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6835e212-133c-e2f8-6e05-336e6877543c@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:07:56 up 54 days, 13:31, 103 users,  load average: 0.22, 0.19,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_030829_217428_72261E04 
X-CRM114-Status: GOOD (  23.13  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: Add missing braces
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 13, 2021 at 11:56:10AM +0200, Ahmad Fatoum wrote:
> Hi,
> 
> On 13.04.21 11:03, Sascha Hauer wrote:
> > Add braces around the definition of imx1_gpio_val and imx31_gpio_val
> > to make sure it's evaluated correctly.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/mach-imx/include/mach/imx-gpio.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm/mach-imx/include/mach/imx-gpio.h b/arch/arm/mach-imx/include/mach/imx-gpio.h
> > index 0cfd16f4fa..b9a6acc013 100644
> > --- a/arch/arm/mach-imx/include/mach/imx-gpio.h
> > +++ b/arch/arm/mach-imx/include/mach/imx-gpio.h
> > @@ -72,11 +72,11 @@ static inline void imx31_gpio_direction_input(void *base, int gpio)
> >  #define imx6_gpio_direction_input(base, gpio) imx31_gpio_direction_input(base, gpio)
> >  #define imx8m_gpio_direction_input(base, gpio) imx31_gpio_direction_input(base, gpio)
> >  
> > -#define imx1_gpio_val(base, gpio) readl(base + 0x1c) & (1 << gpio) ? 1 : 0
> > +#define imx1_gpio_val(base, gpio) (readl(base + 0x1c) & (1 << gpio) ? 1 : 0)
> 
> Braces around base and especially gpio might be a good idea as well.
> You never know..

Right. I converted the macros to static inline functions instead.

Sascha

> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

