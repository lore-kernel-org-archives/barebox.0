Delivery-date: Mon, 13 Apr 2026 19:42:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCLIk-00BnNl-1O
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 19:42:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCLIj-0002yy-Lp
	for lore@pengutronix.de; Mon, 13 Apr 2026 19:42:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOmkIxo6v5Jywv601VEQOhI475LJVkPHwDoZmPAKsR0=; b=XfJSYOoT9PB/iR
	p6Fji0CpWdLTO3uH4HsvllGM8ZhrTkzRkSybjE7aJ9pyjF+yMBh6cN3AS0TZ0v/UGrefa3zwRQc1F
	+A6Ru1OS9TS9flOGriO2iUL94XqGqopYeTCOmyeRCM9/o1alKb5ayssnaXcbjYn5CMQyt6g9l5RsR
	toADvFJsFnZTWXvg+jA4wvw+IaVJM453T3EdlN5X8emOR6vvtkYmgIzhaLjNtFWJfTJsBCLBfBg5O
	vnTFjBGLjJ6vlCQGdAEGSWNf7TAkVV6ou2sW9YBAgW/q+oQWm66ldzIszhdZOPa4EyPVxBfvvPQK4
	Ll7MVKVE0RJUfL+Bxhhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCLI9-0000000G8v4-0Gag;
	Mon, 13 Apr 2026 17:41:45 +0000
Received: from mail-dl1-x122e.google.com ([2607:f8b0:4864:20::122e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCLI6-0000000G8uY-1v1D
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 17:41:43 +0000
Received: by mail-dl1-x122e.google.com with SMTP id a92af1059eb24-12c1fcce8f8so8321631c88.1
        for <barebox@lists.infradead.org>; Mon, 13 Apr 2026 10:41:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776102101; cv=none;
        d=google.com; s=arc-20240605;
        b=ZSpr13QZEomJs7QH802z02P4IofrCSGYjU4xM/j/VJfQMF9Od9bMDwlLmAng7zpGpg
         pw+lFvhNaau9lTp5C7hItT4bhkdB/Of7ESqtq8qkJLsHlmhjKf0/7WDnkKLsL3AcJfql
         Anped5+DkuNxPSAJ3lJEiNgRB/yxEV5Jgm+NYpLGNB5T7wkO12VrVJBER2OoVHWg222z
         8IfSJDpzKzZI7XZdrqoSgwaNIEqk9U5y0U/ZCWqO+KZQh3iI+hJSsx/tlJdr38z5rE56
         cerEq4AlwHT7/qNd8hXhml9ip0JxjKZMCiItRzZd/nZfoqH4eHcO1/EweDfGOq65ftpO
         gFgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=uOmkIxo6v5Jywv601VEQOhI475LJVkPHwDoZmPAKsR0=;
        fh=c6RJL8UG+KilL4Z69CKyySdKGTwpJDqtUfz5zqpX4Bk=;
        b=DZ2RjciqHAX5xkTpdYw0Z+IgPHVXuA/7WiPUozLUJVH/5uO77YvgKvCqup9FwZvVHO
         yA2bmk7I8epgS+a6ImkYLpxf2SXq8h4OvXOPq0wLReLeqaH8esA3Hezx8jx8mQ2ioYDn
         hxW7sItBUyfjuKmahb5j4vmk7LXaPDiAUvQ/QVNC9xTiBAPnPIMg4BsFLK6aHTE12qSX
         CYdeenksMhpGjeUVneYLO8TvlcQIRnhDgSxdti0T/s8CbW06UHqXhdCJ1h2lYhtsEYB8
         rS2957uvXJQ7/iYvWgtAijLgy3XH/LUWhIUyg15KCtq5CmFOBbLQK7g35D+RS2IXY3Rs
         +3cQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776102101; x=1776706901; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uOmkIxo6v5Jywv601VEQOhI475LJVkPHwDoZmPAKsR0=;
        b=hF1b4LHm+1lCdWw2GmyACdX0sfhyBsJZuveWS6zfGJKRhuTcVaNSVtLSTD6s3AVFrK
         fj22qq9/MdVDPnqeTqk1N6K1VPgU4DJHwiWXXDG6rvGMlyC+pDfBPfQz9OxOJqoyZj8N
         IY/ixSr4YQYkXJn+mZMrtP+ICzWLUejvMH54ToVZPrVXtJZcAHoKQ1gSJSAeyM/NGmaJ
         4b8Pf/XbRC0MvTva20+KlMQEy6Wrg5vTHgMUW9N84YEUHW7NmqKrZs0Ag8Ai8cAgzC8P
         LzX/hoxI85BZM+KhvxkVMdSqo1bGrtRQul0sElFdNrbd3cPgj3CaapT+ftDDzAu0zdW+
         giTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776102101; x=1776706901;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uOmkIxo6v5Jywv601VEQOhI475LJVkPHwDoZmPAKsR0=;
        b=rbgr4LRF5X2NVWXgimFoE5Az1Xwqt+OJcLmzz5SLAPQefQclFNK3SLmfV+uIDpXzc7
         JlPQEOfssuf7Lv/QXLZPLROZ8qFglF1FtD+tVIY5ZYtVLEXGkDWLuI9N8ZWjrVjPPjHe
         Lkb2+Ibff6zsn936wOH4oszosfz9zVKGohcEWISix7nh7o9N3I3Ymsrk87F0TSNZ+dYX
         nj5u43HFU9FEKosrbmuR85prkgTyrvPaVXKstu3iXZ3cELYeU/UJC+AtjfZ19QOCq4ay
         hBZjZbrGVnHcBmY4njx0w9t3HMB28yc26iazX9cyG74c57t14e3pcMVqKth1SILX8wLx
         CkQw==
X-Forwarded-Encrypted: i=1; AFNElJ9/nsCmOtAoRO547xf5UgSF/ssezcA/nL+3A+PUm/pPxZ8fiL+8GavdfJA6F895Of1gSIAelMgL@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5ce95RUL2BxTU8R+EmJcJ0fEB0YdLEjRYHaRzbk7K7slHseei
	puAf63uFVlOXDSlKDNzrrq6hyVpwReOhS2GcSzwn2gg9XFBUK/cBofOBaLEmHPep86Qv0Wq+0Xr
	XigiMoZs560hRkRJntiLfqBnhHhM0gCHwZJrR
X-Gm-Gg: AeBDiesnyAC7Ucdv0LRcHMFMkGyvE7Su5SILcnaTNWFwcU1SFGI0t3BJ590kcP8v25S
	38eiFdSSa6p/n62WNk7ma7453Rd/Yn5YvbeF0osA/MbsVauvx7D8Er2ZKCoE4diJL0dLeADNI93
	EghniYJ/rg6vhzz/J0EmEOtp04ZIgDVkR8wh2V7W1OjlDzgvIzIwcTfqE7+tyLf8iyB6C8CPxbQ
	hpz7JkV+kaqZHAIQPSHGmK9wi3Du2JELzGfIflOWNs1a52SCmLzYsXPUY/vgJnw7v0XtsPou9uK
	C40J3QdKHUMvsphAfSlTZl4=
X-Received: by 2002:a05:7022:e982:b0:119:e56b:957b with SMTP id
 a92af1059eb24-12c34dba22dmr8272204c88.0.1776102100964; Mon, 13 Apr 2026
 10:41:40 -0700 (PDT)
MIME-Version: 1.0
References: <20260331031723.195128-1-chalianis1@gmail.com> <a7593c0f-07ae-476b-846e-3dbaf2ab75d7@pengutronix.de>
In-Reply-To: <a7593c0f-07ae-476b-846e-3dbaf2ab75d7@pengutronix.de>
From: anis chali <chalianis1@gmail.com>
Date: Mon, 13 Apr 2026 13:41:28 -0400
X-Gm-Features: AQROBzCBz4eh7xJS-eT6Y4mn0FAZcGgl7kDcBQgAZxDqOjM2mqvk4EVP-xzRZoI
Message-ID: <CAL+1fyCM9baNW9ziBQSxO0AtkmWehBBoYEV_O2SwY3WQ5VV4Ew@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_104142_517314_FEE7C837 
X-CRM114-Status: GOOD (  28.19  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FORGED_GMAIL_RCVD,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] usb: dwc2: core: add no-csftrst-wait DT property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,
Le lun. 13 avr. 2026 =C3=A0 09:50, Ahmad Fatoum <a.fatoum@pengutronix.de> a=
 =C3=A9crit :
>
> Hello Anis,
>
> On 3/31/26 5:17 AM, chalianis1@gmail.com wrote:
> > From: Chali Anis <chalianis1@gmail.com>
> >
> > Some platforms (e.g. RPi4/bcm2711) do not deassert GRSTCTL_CSFTRST with=
in
> > the expected window but continue to operate correctly, causing probe to
> > fail with ETIMEDOUT.
> >
> > Per the datasheet, GRSTCTL_CSFTRST is self-clearing but requires at lea=
st
> > 3 PHY clocks after reset before any PHY domain access. Add a 1us delay =
to
> > satisfy this requirement.
> >
> > Additionally introduce the 'no-csftrst-wait' devicetree property to ski=
p
> > polling for the bit to clear on platforms where the reset completes but=
 the
> > status bit is unreliable.
>
> I still wonder why there are no workarounds for this particular issue in
> Linux or U-Boot. We seem to do something different when we run into this
> reliably, but others don't?

I checked the initialization sequence but I didn't
find anything interesting.

> I originally thought, it may be related to the version of the IP,
> because both Linux and U-Boot have special handling for >=3D 4.20, but I
> checked on my Rpi4 and DWC2 has v2.80 there (Synopsis ID 4f54280a)

I implemented the u-boot logic but I had the same code with version check
and I ended by removing it since it works for now without handling the vers=
ions.

> > -     ret =3D dwc2_wait_bit_clear(dwc2, GRSTCTL, GRSTCTL_CSFTRST, 10000=
);
> > -     if (ret) {
> > -             dwc2_warn(dwc2, "%s: Timeout! Waiting for Core Soft Reset=
\n",
> > +     /* Wait for at least 3 PHY Clocks */
> > +     udelay(1);
> > +
> > +     if (!of_property_read_bool(np, "no-csftrst-wait")) {
>
> barebox-specific Device Tree properties should be documented in
> Documentation/devicetree/bindings/.
Okay, ack.

> Alternatively, you can check of_machine_is_compatible("brcm,bcm2711")
I choosed to add something in the device tree to not hard code a
specific machine in
dwc2 in that case we let the machine dts or users facing the same
issue to add the dts
property without even submitting patch, but if you prefer manage this
with checking the
machine compatible I can make the change???

> Cheers,
> Ahmad
>
> > +             ret =3D dwc2_wait_bit_clear(dwc2, GRSTCTL, GRSTCTL_CSFTRS=
T, 10000);
> > +             if (ret) {
> > +                     dwc2_warn(dwc2, "%s: Timeout! Waiting for Core So=
ft Reset\n",
> >                               __func__);
> > -             return ret;
> > +                     return ret;
> > +             }
> >       }
> >
> >       if (wait_for_host_mode)
> >
> >
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>

Thank you for support.

Anis


