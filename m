Delivery-date: Wed, 01 Mar 2023 08:55:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXHIp-005SRn-Es
	for lore@lore.pengutronix.de; Wed, 01 Mar 2023 08:55:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXHIp-0001T0-4k
	for lore@pengutronix.de; Wed, 01 Mar 2023 08:55:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sC1voEAL+2Ms2v9QQVxz6O54s6TshVGrp//8tSmwbBA=; b=YJeXt743ry3ljqzYaLVevvOtW7
	9IqTKKau2hc1HQWRejwxjI0o6rzeHstJoNj6ByTYwDBaxw/LsBdHrTvnJ5UG+6h63RGMDOKj4cxB5
	LO6u8nTXrjTaUgjb8w+BDz2FFeH9z/gLOt+SLlrRDoHuh736nK2ih/+EV8pP/FeF0uqvvFYN9S1ut
	wEUGsA3TogwcGeVzpKED6lTCRXWP4GK7BkJYoL6ohLvvPFdKphlhVn4gP35Tsem1NHBkTgnb61/hf
	GvEHcSZFyrg4jcH11buBGm0v/aYVgE81JPUTsLoX0sF/T/LJ9scCF4O2caHpX//I1grW2Cm4i6N4c
	bXwPvcKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXHHL-00FNLH-Kg; Wed, 01 Mar 2023 07:53:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXHHG-00FNK0-7W
	for barebox@lists.infradead.org; Wed, 01 Mar 2023 07:53:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXHHB-0001L6-1m; Wed, 01 Mar 2023 08:53:25 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXHHA-0008Du-NJ; Wed, 01 Mar 2023 08:53:24 +0100
Date: Wed, 1 Mar 2023 08:53:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230301075324.GO32097@pengutronix.de>
References: <20230228143031.1718565-1-s.hauer@pengutronix.de>
 <Y/47xKrQwNGDe2KU@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y/47xKrQwNGDe2KU@ravnborg.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_235330_285706_C506F1F2 
X-CRM114-Status: GOOD (  30.02  )
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
Subject: Re: [PATCH 0/9] ARM: misc cleanups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Feb 28, 2023 at 06:37:08PM +0100, Sam Ravnborg wrote:
> Hi Sascha,
> 
> On Tue, Feb 28, 2023 at 03:30:22PM +0100, Sascha Hauer wrote:
> > I am working on making it possible to build support for multiple
> > arch/arm/mach-*/ into the same barebox. Here are some misc cleanups
> > I stumbled upon while preparing multi arch support.
> > 
> > Sascha Hauer (9):
> >   ARM: mxs: remove unused mach/clock.h
> >   ARM: imx: remove unused mach/clock.h
> >   ARM: rockchip: drop mach/timer.h
> >   ARM: i.MX: Move imxfb.h to include/platform_data/
> >   pinctrl: rockchip: Fix uninitialized var warning
> >   ARM: at91: remove unnecessary configs
> >   ARM: at91: Switch all boards to multiimage
> >   at91: consolidate usb-a963 128m images
> >   ARM: pxa: Move plat/ include files to mach/
> 
> As much as I like the patches I think a more sane course of
> action for these old at91 boards would be to drop most of them.

Agreed, and you just motivated me to look into it.

> A simple algorithm would be:
>   If not supported in the kernel, drop the board.

That algorithm doesn't bring us very far. Here is a list of boards
supported in barebox, the 'x' add the beginning denotes that I
found a device tree for it in the kernel:

AT91RM9200
==========
x MACH_AT91RM9200EK	Atmel AT91RM9200-EK Evaluation Kit

AT91SAM9260
===========
x MACH_ANIMEO_IP	Somfy Animeo IP
x MACH_AT91SAM9260EK	Atmel AT91SAM9260-EK
x MACH_QIL_A9260	CALAO QIL-A9260 board
x MACH_TNY_A9260	CALAO TNY-A9260
x MACH_USB_A9260	CALAO USB-A9260
  MACH_GE863		Telit EVK-PRO3

AT91SAM9261
===========
x MACH_AT91SAM9261EK	Atmel AT91SAM9261-EK Evaluation Kit
  MACH_PM9261		Ronetix PM9261

AT91SAM9G10
===========
x MACH_AT91SAM9G10EK	Atmel AT91SAM9G10-EK Evaluation Kit

AT91SAM9G20
===========
x MACH_AT91SAM9G20EK	Atmel AT91SAM9G20-EK Evaluation Kit
x MACH_TNY_A9G20	CALAO TNY-A9G20
x MACH_USB_A9G20	CALAO USB-A9G20
  MACH_DSS11		aizo dSS11
  MACH_QIL_A9G20	CALAO QIL-A9G20 board
  MACH_HABA_KNX_LITE	CALAO HABA-KNX-LITE

AT91SAM9263
===========
  MACH_PM9263		Ronetix PM9263
x MACH_TNY_A9263	CALAO TNY-A9263
x MACH_USB_A9263	CALAO USB-A9263

AT91SAM9G45 or AT91SAM9M10
==========================
  MACH_AT91SAM9M10IHD	Atmel AT91SAM9M10IDH Tablet
x MACH_AT91SAM9M10G45EK	Atmel AT91SAM9M10G45-EK Evaluation Kit
x MACH_PM9G45		Ronetix PM9G45

AT91SAM9N12
===========
x MACH_AT91SAM9N12EK	Atmel AT91SAM9N12 Evaluation Kit

SAMA5D3
=======
x MACH_SAMA5D3XEK	Atmel SAMA5D3X Evaluation Kit

SAMA5D4
=======
x MACH_SAMA5D4EK	Atmel SAMA5D4 Evaluation Kit
x MACH_SAMA5D4_XPLAINED	Atmel SAMA5D4 XPLAINED ULTRA Evaluation Kit

It seems most boards are supported in the kernel as well.

>   
> The boards that are not in the kernel have not seen any
> activity in barebox for a long time, so it is not like
> they look maintained.

None of the boards has seen any activity except for those that are
already converted to multiboard.

Given that we could remove all board and SoC support that has
not yet been converted to multiboard support.

The question is: When you want to port over some more board/SoC code
to multiboard, does the existing code help you or would it be easier
to do a fresh start?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


