Delivery-date: Thu, 30 Jun 2022 14:21:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6tAc-0020DQ-Lg
	for lore@lore.pengutronix.de; Thu, 30 Jun 2022 14:21:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6tAe-0005Sl-Km
	for lore@pengutronix.de; Thu, 30 Jun 2022 14:21:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xxA1Eu9kKs99Pm2voOyUADoXEP2Td9z+aMCVoZcmoks=; b=4o/00Vg93Vm7U/yhAzdYNnbQC8
	oys0dEY4WFmdIM0w/MzLZu5SDnflI+f1n2AhA938KNZ1fS9At0ZKA3dmihFbE0xH5cZAXonmIoaIe
	82hDy92GCaLwh2Zqh16sXNjHV4u7i+sINkOTdVevSNBWdhzgdt8KfEMXVuR4Z41XX0XkX6JsuPml4
	LbYMT0ndSI7sRgfycD+DoWqUGP0MM2XHaEekhZdmG1eFFaYOiQSo8wL1VDZDJmkkmkoC9sApoYnrw
	SEobr5cwzhHJy+ww7a/zLRyPN6mU/6sw6IO9FJG9T7G1YPynF+LGg0h6B+3qe1P58tiRgDHWcQJjb
	yp6GUOFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6t9D-00H3D2-At; Thu, 30 Jun 2022 12:19:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6t98-00H3C2-4d
	for barebox@lists.infradead.org; Thu, 30 Jun 2022 12:19:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o6t93-0005Al-Ji; Thu, 30 Jun 2022 14:19:41 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o6t93-0004RS-3o; Thu, 30 Jun 2022 14:19:41 +0200
Date: Thu, 30 Jun 2022 14:19:41 +0200
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20220630121941.GV19026@pengutronix.de>
References: <20220628203849.2785611-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220628203849.2785611-1-sam@ravnborg.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_051946_216441_63ADDBFF 
X-CRM114-Status: GOOD (  30.17  )
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
Subject: Re: [PATCH 0/11] ARM: at91: Add pbl support to skov-arm9cpu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 28, 2022 at 10:38:38PM +0200, Sam Ravnborg wrote:
> The following is the current set of patches so far to support
> PBL for the skov-arm9cpu.
> 
> The pwm is not really part of this - but it is part of the story.
> The patch-set was triggered when someone reported a bug in the 
> atmel pwm code. The code did not build - so I ported it over.
> Now I wanted to boot the target, but at91bootstrap no longer
> supports the at91sam9263. So I decided to try to make it work
> in barebox. I have tried this before and failed - but it should
> be possible...
> 
> What I have made is modelled on top of all the great work
> for other more modern atmel bouards.
> 
> v2:
>  - The first stage bootloader works - thanks to feedback from Ahmad!
>  - Add support for non-high capacity SD cards, as required by at91sam9 (Ahmad)
>  - Replace hardcoded delay loops with pit based early delays (Ahmad)
>  - Several adjustments to skov-arm9cpu code to fit the changes
> 
> The following patches are not ready:
> - atmel_lcdfb: add support for updated DT bindings
> - ARM: at91: Update DTS for skov-arm9cpu
> 
> They both rely on updated bindings that has not landed yet,
> and which may end up not being compatible with the changes
> implemented here.
> So the patches works - but bindings are work-in-progress.
> 
> My plan is to resurrect my drm driver for at91sam9 and
> with that the update the binding file. But timeline
> for this work is unknowm.
> 
> In other words - I assume patch 1 to 8 + 10 as ready.
> Patch 9 + 11 are WIP.
> 
> 	Sam
> 
> Sam Ravnborg (11):
>       pwm: atmel: Fix build and update
>       ARM: at91: Make sdramc.h useable in multi image builds
>       ARM: at91: Add initialize function to sdramc
>       ARM: at91: Provide at91_mux_pio_pin for use in lowlevel
>       mci: atmel_mci: Add PBL helper to configure highcapacity
>       ARM: at91: Add at91sam9 xload_mmc for PBL use
>       ARM: at91: Add extra register definitions
>       ARM: at91: Add lowlevel helpers for at91sam9263
>       atmel_lcdfb: add support for updated DT bindings
>       ARM: at91: Add xload support to skov-arm9cpu
>       ARM: at91: Update DTS for skov-arm9cpu

Applied 1-8, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


