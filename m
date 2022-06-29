Delivery-date: Wed, 29 Jun 2022 09:10:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6Rq3-000xbM-3Q
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 09:10:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6Rq5-0003D0-86
	for lore@pengutronix.de; Wed, 29 Jun 2022 09:10:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LYxJx/ppbrd8vSS118o7aVaQKCPeBRBVbVuLqI+NfIo=; b=eNuGp2r599K45R7u3YEh5JZVkd
	iWAuCnp6himghoV8XRtrXtcrCjxVPwmhmTIViI5Uque6tBQHyCLqRfBC1cAx+Z/EV6acJy8RIswT8
	oHbeztbJk/FE58DVzQli96d0lJthW0PDpJQmAYGJPARn4yvvI8EUFmC4/zNlWNJjybZhqLz9KvwSk
	IaqQcpzIR8/+VlTdby7zQ5PiUUPcvrrKFdtcHyqmT0CyfpmVqx519ixvlHjknu+DfCd2nal4+kymc
	cOPT/cYeVwQ607kBdM4W0kjzmeFLN6dSyrJV0cebdvVAMeUmAHIVQK3OFRT7+VMjtCvHfQn/IE3Vd
	eD9qaomg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Rop-00A0QD-2o; Wed, 29 Jun 2022 07:08:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Rok-00A0PZ-7e
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 07:08:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o6Roi-00037F-By; Wed, 29 Jun 2022 09:08:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o6Roh-0002Cc-RQ; Wed, 29 Jun 2022 09:08:51 +0200
Date: Wed, 29 Jun 2022 09:08:51 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	barebox@lists.infradead.org, Ahmad Fatoum <afa@pengutronix.de>
Message-ID: <20220629070851.GL19026@pengutronix.de>
References: <20220627102500.18427-1-eagle.alexander923@gmail.com>
 <20220627102500.18427-5-eagle.alexander923@gmail.com>
 <20220629065251.GJ19026@pengutronix.de>
 <f565caf9-ecfc-04cd-d587-85728c9665e2@pengutronix.de>
 <20220629065951.GK19026@pengutronix.de>
 <fc07a9a9-3d78-7295-119a-e0b54d593237@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fc07a9a9-3d78-7295-119a-e0b54d593237@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220629_000854_314980_28708521 
X-CRM114-Status: GOOD (  23.58  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/8] usb: gadget: Fix Kconfig dependencies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 29, 2022 at 09:03:41AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 29.06.22 08:59, Sascha Hauer wrote:
> > On Wed, Jun 29, 2022 at 08:55:46AM +0200, Ahmad Fatoum wrote:
> >> Hello Sascha,
> >>
> >> On 29.06.22 08:52, Sascha Hauer wrote:
> >>> Without GLOBALVAR selected the USB gadget autostart stuff can be
> >>> compiled, but without any functionality, as all functionality is
> >>> behind globalvars, so adding this dependency mykes sense.
> >>>
> >>>>  	select SYSTEM_PARTITIONS if USB_GADGET_MASS_STORAGE
> >>>
> >>> I am not sure why SYSTEM_PARTITIONS is selected here. Maybe Ahmad can
> >>> comment on that. From what I can see with USB_GADGET_AUTOSTART selected
> >>> without SYSTEM_PARTITIONS we still get autostart functionality, but
> >>> without global.system.partitions support which seems ok.
> >>
> >> Instead of adding yet another gadget-specific global variable,
> >> the mass storage gadget only uses system partitions, so this
> >> select makes sense IMO.
> > 
> > I would argument that USB_GADGET_AUTOSTART is functional without system
> > partitions, and the additional support for system partitions can be
> > manually selected by the user.
> 
> I think it's a bit surprising to enable USB_GADGET_AUTOSTART and then
> see DFU and fastboot working, but not USB_GADGET_MASS_STORAGE.
> 
> If you have both USB_GADGET_MASS_STORAGE and USB_GADGET_AUTOSTART enabled,
> the user implicitly agrees to waste some space on them working together.

I was mistaken. I didn't realize that system partitions is the only way
to activate USB mass storage support automatically. Ok then, applied
this one with just the "select USB_GADGET" removed.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


