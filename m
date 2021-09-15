Delivery-date: Wed, 15 Sep 2021 10:52:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQQeR-0002Jc-Cm
	for lore@lore.pengutronix.de; Wed, 15 Sep 2021 10:52:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQQeQ-0008La-DW
	for lore@pengutronix.de; Wed, 15 Sep 2021 10:52:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IMot4MlET9YmUmzM5M+NFiI2IqJHnRnFes3NOe/33I4=; b=wrbfXkHrVupexpq8WsIWHRfK/E
	FPOW0ox1tYN7lIo1c9SVzrJjeuSyqGfGnoySDNQSEpsDhJT0i3twrVlAHl8ZgLoMBTRcajbu866JB
	1bBjN1YRY39uX9vTSFiTEyRwAYBN1faW6cZVc0oaulJ5rgpjgZqiucYOnWomi27Mae1MmDMO+Opp7
	TG7412ie9qfOEB6kF9kKGTeDwNGqYkAdaRpFcYAXyt44z9vS5y9aYW5L9o2a1DAW3M4wsuEvjuZQ+
	02rVFe6FgwgfFBE45kTx4v+ndUU1iy9lR3zqXmZUwkR+URLMFEGPGBokPKvdDXp5af8buVAioCokP
	kUe+5B7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQQcv-008WA7-G4; Wed, 15 Sep 2021 08:50:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQQcp-008W9a-Hd
 for barebox@lists.infradead.org; Wed, 15 Sep 2021 08:50:41 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mQQcm-000870-5S; Wed, 15 Sep 2021 10:50:36 +0200
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>, ejo@pengutronix.de,
 rhi@pengutronix.de, uol@pengutronix.de, renaud.barbier@abaco.com
References: <20210914132016.22572-1-a.fatoum@pengutronix.de>
 <20210914132016.22572-4-a.fatoum@pengutronix.de>
 <CAMHeXxOisX+Nnqk-5SPF3uDwFH4TGOyNv13fX6vdshXJhm3gog@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ca70d49c-a4eb-07ce-6615-0d5c52a797a9@pengutronix.de>
Date: Wed, 15 Sep 2021 10:50:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAMHeXxOisX+Nnqk-5SPF3uDwFH4TGOyNv13fX6vdshXJhm3gog@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210915_015039_643535_48D65337 
X-CRM114-Status: GOOD (  30.67  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/4] scripts: allow building USB loader tools for target
 as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Trent,

On 14.09.21 21:11, Trent Piepho wrote:
> On Tue, Sep 14, 2021 at 6:21 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>
>> We currently build the USB loader tools only for the host (build) system,
>> but it can be useful to cross compile them as well for the target.
>>
>> We already have some target tools, but support for those is easier,
>> because they don't link against libraries. We use pkg-config to get
>> cc and ld flags, but we always assume that pkg-config is for the host
>> system and there is no well-defined way to request pkg-config for the
>> target system.
>>
>> Support this by introducing a new CROSS_PKG_CONFIG. This will be
>> consulted only for target tools and default to
>> $(CROSS_COMPILE)pkgconfig.
>>
>> Users can override it as necessary, for example, with Yocto, pkg-config
>> will be for the cross environment, so target tools can now be built
>> with:
> 
> I just added support to Buildroot for building imx-usb-loader from
> Barebox, since it's nicer than the standalone version of the program.
> 
> Since pkgconfig was only used for host tools, I didn't need to make
> both host and target pkgconfig work.  But of course that will no
> longer be true after this patch.

It still wouldn't break your workflow, imx-usb-loader wasn't built
for target so far.

> There is a problem with only supplying CROSS_PKG_CONFIG.  To get both
> host and target pkgconfig to work, I also need to supply the env
> variables used by pkgconfig, PKG_CONFIG_SYSROOT and PKG_CONFIG_LIBDIR.

You can set these on the environment before starting barebox build.
If you have a $(CROSS_COMPILE)pkg-config that doesn't need any further
configuration, you can use that.

> The former makes the paths returned by pkgconfig correct and the
> latter controls which set, target or host, of .pc files will be used.
> 
> Maybe something like this in the Makefile:
> 
> CROSS_PKG_CONFIG ?= $(CROSS_COMPILE)pkg-config
> CROSS_PKG_CONFIG_SYSROOT ?= $(PKG_CONFIG_SYSROOT)
> CROSS_PKG_CONFIG_LIBDIR ?= $(PKG_CONFIG_LIBDIR)
> CROSS_PKG_CONFIG_ENV := \
>        PKG_CONFIG_LIBDIR=$(CROSS_PKG_CONFIG_LIBDIR) \
>        PKG_CONFIG_SYSROOT=$(CROSS_PKG_CONFIG_SYSROOT)
> 
> HOST_LIBUSB_CFLAGS := $(shell $(PKG_CONFIG) --cflags)
> CROSS_LIBUSB_CFLAGS := $(shell $(CROSS_PKG_CONFIG_ENV)
> $(CROSS_PKG_CONFIG) --cflags)
> 
> Then use those everywhere someone wants the libusb cflags.  Repeat for LDFLAGS.

I am not really sold on this. Linux doesn't mess with PKG_CONFIG_ variables
either. For perf the assume $(CROSS_COMPILE)pkg-config to be available.
I think it's a suitbale default for us too. The lines above can go into
a shell script wrapper.

> You'll get fewer repeated invocations of pkg-config this way too.

Ye, I thought about that as well, but we do it like this for the host tools,
so I left it for now. It's not much overhead and it makes it a bit easier
to follow what is used.

Cheers,
Ahmad
 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

