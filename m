Delivery-date: Mon, 08 Nov 2021 23:04:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mkCkR-0004Ku-RU
	for lore@lore.pengutronix.de; Mon, 08 Nov 2021 23:04:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mkCkQ-00087T-Qm
	for lore@pengutronix.de; Mon, 08 Nov 2021 23:04:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZMRAPZCZFYfLbWB5og9MShW5+acWYRLkc49eEOtGC9U=; b=fNokTaTIq4pqFf
	8WuRtOHNJUr5hyFyvdYbCOzaDCWNG6UIqIOlnVJC43xXrtRwiAsYIfrIoYlHwB4qhZPxxbjmq9bYE
	lJPLt7GZw8Y2d/X/7kyBnFJo3iPRo3cA6RrsbUbSffVnsZp0rsDQYdGouwR02zTdIj3YYD19jP0CG
	U65h9IYlx3RHd7P2rAFgLV/AZEwv1AUj7lnLGqGlnF0GraG9PRQP6oYG8mgDah60STnlVzELlvJS6
	vyMl/m31XUcZzC9vADL0hi16qPZRz9xLZqA0IPH72fSyVRcfkuN3pp8v8km1HxzWVzQ0c7yzPINJb
	aroT6tJz45T+ba/YpoUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkCiZ-00HXo6-Es; Mon, 08 Nov 2021 22:02:19 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkCiS-00HXnS-4Z
 for barebox@lists.infradead.org; Mon, 08 Nov 2021 22:02:15 +0000
Received: by mail-lj1-x231.google.com with SMTP id m5so13960743ljp.4
 for <barebox@lists.infradead.org>; Mon, 08 Nov 2021 14:02:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rcWz8WPplCO/doqOngWb+Ox0Q/2dP/zgor40jaxmVK0=;
 b=76NzCDdJsbrzttek/Pis7afOk8XdODXhXhJ+4KRBjMEGEZz11an24ljX3RoqSrDx6j
 wK0n4V6ifcINZPKfYBLTJ0EFegE0tKtZ/x4/2AE7h5g+2iIK4+8xhIotacXDuUEfXnpy
 uN2Bc+oXq6PVWWRcAlpqr1ZbMFNiBpZJhITZy1wSEE5iy/RLVrbwLaUe3Oy4SCSOeHhK
 muHcHSQXhP8knLaHBcm5dC96A+up5jNor64fdef4O9e95xrT9GMX5R083OO1R/QeUxTe
 4rjl4nskfXOygLCgmAcEALqA/B4jvykyQuajSBNiz3KbdoBPECm4UYMuX/DtmCwk77a/
 gw4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rcWz8WPplCO/doqOngWb+Ox0Q/2dP/zgor40jaxmVK0=;
 b=oW+P8s2TouTVL+B7PKaxDNMc+pggVpt3N8VZUspmdnpXAeVragYzLXBPbMCeMmwDQC
 CfjSMhjbLswYhVs7yT+SbWG732NnKjrwF3fvoAeO+JgRKm3ZKpYFgWsd/ZmOfXv2iu8H
 X7Dy+ZwDTgt1WABVrkKMkqFGrtXkXE7W8Ufpvh4zkF+GmYdaeev4FFuDT3D+twau2yjJ
 Ivdgz/drWnBILkpFoviOQzBIZwuxM1CEpELHnArhKf7x3J2O4SIRVURC0SU4/cTY2SJk
 y6e1/Mc0WnEdMnG15D+ehrCivoaRXiDDqH1LARSp3fEdkmhMHbham4UcwITiZsh65Tot
 TqcA==
X-Gm-Message-State: AOAM531cbsU5nUR0xqYTLNK9rlf9ZFrOPRjMashjjypIwrstdMN8YvrA
 dhE97YyLDg8k3Im+jwMkeXMYoI6EHULTyfUq18uepoW9yCRBcw==
X-Google-Smtp-Source: ABdhPJxmUldk1j1E4S0o3f6sN+AFnRt8/CXqPp1+JhfbRtGt7zvaLXlNIBg99CBI557s0CwF5QST/ITEROo/0FgSo0k=
X-Received: by 2002:a2e:8115:: with SMTP id d21mr2356708ljg.411.1636408929295; 
 Mon, 08 Nov 2021 14:02:09 -0800 (PST)
MIME-Version: 1.0
References: <20211020083954.3787-1-danek.brat@gmail.com>
 <20211101090039.GM25698@pengutronix.de>
 <CAMHeXxMJYC2q4Hs7zd9A=5-KsXyFUtTshMVoZZC2nJUah=LtjA@mail.gmail.com>
 <20211102074048.GW25698@pengutronix.de>
 <CAMHeXxNbHxrEyzsYaXaaaFx38iKt+LjAkC-EcVUXt96yZ3XBBw@mail.gmail.com>
 <20211104200222.GE25698@pengutronix.de>
 <CAMHeXxOfPsNPHzewPtUKZJ=7bR9ew-hanrokiBF0Cst_oQkcqQ@mail.gmail.com>
 <20211108091022.GK25698@pengutronix.de>
In-Reply-To: <20211108091022.GK25698@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Mon, 8 Nov 2021 14:01:58 -0800
Message-ID: <CAMHeXxNw1qOXS7X+_bE9h7SK5z80=DCsYMopDwJwGCmCe4ROtg@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: =?UTF-8?B?RGFuaWVsIEJyw6F0?= <danek.brat@gmail.com>, 
 barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211108_140212_413937_6AAFC9C6 
X-CRM114-Status: GOOD (  34.54  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] phy: core: Make 'phy_optional_get' return NULL when not
 implemented
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Nov 8, 2021 at 1:10 AM Sascha Hauer <sha@pengutronix.de> wrote:
> On Thu, Nov 04, 2021 at 02:40:08PM -0700, Trent Piepho wrote:
> >
> > I think the specific situation you are concerned about is where:
> > A) the dts does define a phy for usb
> > B) This phy does not work in Barebox, e.g. no driver
> > C) Despite B, USB will still operate with the desired level
> > functionality without a working phy driver.
> >
> > With the patch and CONFIG_GENERIC_PHY disabled, we get a non-fatal
> > return at step A and everything is good.  But once enabled, we now get
> > a fatal error at step B and this is not good.
> >
> > Could this be fixed by making the error at B non-fatal?  This is more
> > how Linux works here: errors that are non-fatal in Linux's
> > phy_optional_get() path are fatal for Barebox.
>
> In Linux phy_optional_get() returns NULL (which is a valid phy) when
> a) there is no "phys" property
> b) The phy os compatible to "usb-nop-xceiv"
> c) The phy has a status = "disabled" property

Add to this:
d) Missing phy-names property.
e) Named phy is not in phy-names.
f) Malformed phys property.
g) PHY's index from phy-names does not exist in phys property.
h) PHY exists in phys property, but has empty phandle
i) No '#phy-cells' property for phy.
j) No of_node for device and phy is not in the global phy list. No
driver, not defined, error adding, anything could cause this to
happen.

And then we go to device specific cases:
An Allwinner sun4i usb phy provider is given a phy index that is
greater than the number of defined phys.
A phy from a sun4i phy provider is marked as missing in the device
configuration data, i.e. phy 1 or 2 on an Allwinner H6.
A Broadcom stingray phy can not ioremap its registers with ENODEV.
And the list goes on, but I think my point is made.

> When there is a phy specified in the device tree then it's mandatory
> and failures in getting it must lead to an error. the "optional" in

"Must lead to an error"  Can this be said with certainty?  I can find
no real case where a warning results in a different end than an error.
Put another way, suppose it does not lead to an error?  What specific
bad thing happens?

> phy_optional_get() is only meant for the "there is no phy specified in
> the device tree" case, it's only a shortcut for
>
>         if (is_there_a_phy_in_device_tree())
>                 phy = phy_get();
>         else
>                 phy = NULL;

Perhaps that is what it was supposed to mean, I agree these seem like
sensible semantics, but see the various errors I tracked down above,
it's far far more complex than that.  IMHO, this complexity is
evidence of a bad design.  No one can keep straight what errors are
fatal and which are not.  It is better to just make all errors
non-fatal and be done with it.  Then at least one knows what to
expect.

> Once you interpret "optional" as something different you end up
> returning NULL for cases where you really need a phy. Only you as a
> human know that, in your special case, on your special board, there is a
> phy specified, but it can do without initialisation. That's why I
> suggested you should add a status = "disabled" property to the phy to
> explicitly state that it can work without the phy. By making it explicit
> you also document that you thought about the case and not just exploited
> a heuristic in barebox.

I think returning NULL on every error, with a warning message, will
allow this.  The warning lets the user know there may be an issue with
the usb phy.  If it works, they can decide the warning is spurious and
silence it, via existing dts editing methods (/delete-property/,
status = disabled, etc.).  If it doesn't work, they know they need to
enable a driver, write a driver, or perhaps disable USB entirely as
unsupported.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

