Delivery-date: Mon, 11 Oct 2021 19:45:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZzN8-0006dc-JO
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 19:45:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZzN7-0004n1-N4
	for lore@pengutronix.de; Mon, 11 Oct 2021 19:45:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8QFrBjv1oOU93FeZCoIsWgqMc+DyT7An4TxbLm19afo=; b=CyGc6K/KoW1OvN
	NWR+1pkhZgBwGbRdY7ngONOl0CzwzIDSUG06KEVlWKPfGucF/kXHAcdVLwxNiBZTtAWgDb+6bEqi7
	oB97yJbMUrv89bWDJTFP3y3upt6AL7SL3TSE/N2CluDqlpHNGEF4HS8+XwE/gs2bi7h1NgRMHqtnu
	C6EgHdQBg8kRIhZj8aO4lSlhm2eS0WnxZHlZHIuvnT8hUf533bGIxWjOSjcXBT9NM0N+3Dg6iIdFP
	BRWrco9HX259t/0H0epBeSDOkWf0YfP03YT/guL5P3C8lweep6lGTVL0gM6ZOEPZ413V61IjD0eLJ
	VQNFGFxZBimar9q4jdMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZzLR-00AGyk-PL; Mon, 11 Oct 2021 17:44:13 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZzLM-00AGxu-MI
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 17:44:10 +0000
Received: by mail-lf1-x134.google.com with SMTP id p16so6126451lfa.2
 for <barebox@lists.infradead.org>; Mon, 11 Oct 2021 10:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GpNYxkhscM3bLPxTwlUQQBF5foG4nwsxf7FARB4w9so=;
 b=QQpfjkIaLQ99vnpjAYJTAlzdGlS02bEF+Fzi5+mDrOWYHiknJKt9wEptJkxe5NpbUZ
 /HkY7/0eRYd+g/TIdcQn1dfBANZ5OVxhUHWYny+j373SBqVfl5kuqJUf8gqP8GO3Y4Nw
 MmQNFvNnCFE/trEXjoErZolqb+goSL2CmQzpS8fKZCcrRj1lGz3mmmmOUr/a9Vp/PpFF
 r0lVQ5toWR4CH/TYu6L1WeqMf1DZPfcJpRZfkaOO0IKbvrKxlwKCaPyPl46PjSq7vUwC
 1bL+f3s3aWmiun0yPF3ZLDT1fNteZhY7QxNY1cOFlgm2GLsRo5j2Igu66hWw6QPYq66W
 0A0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GpNYxkhscM3bLPxTwlUQQBF5foG4nwsxf7FARB4w9so=;
 b=CyVsxTi0ZE9EWvkCTFufQW9cL5oyuzRrD6nxm+QqnjZwNQMyr/tGum0y7MMDzwPKz6
 lbY7NyNF7PlR2qh8dlalHog/bnOLK/NiWm/EOxjBYwGV9NhmzdXgZeuu9bvwC+kAdcxz
 GrHsEDtEO0SLJjJxkNL6dQws7W1Ig/9q1juSlwFZEKoS/8r88MKjzNG+rDXRTFq/Wg7R
 cdyNoLiNQxc+rj3qYzfjjwx/3uCkq/paK0Z1QGpeT8o6Ca/0E+3Ai1bg8b8MqSoJTZnC
 xh8l6npDG41HGNkjbyPchqFOEVf7djXpBC9SgjtTLK4o8ybuZCzSaz+jYG/durKrHO8+
 MdxQ==
X-Gm-Message-State: AOAM531jr5sh1Eir3VRuCB7uJaR93oPBpzuJQ8n8kGzLvsIN8QRuPA0M
 muZ7g8NJ+UMDDveDKHLFeZQK+Ab4MrEvWEl1NEEx4JtZ2DJ8M5cG
X-Google-Smtp-Source: ABdhPJxcKiU1kCvYhsRigVTW2OIHAew+Wmd0MmtKlc0ntTFYNUhNPthkEe3y+6KgX5SJ6q+Dcu/YnUV2XLP22cqMye8=
X-Received: by 2002:a2e:6e0b:: with SMTP id j11mr24424682ljc.527.1633974246498; 
 Mon, 11 Oct 2021 10:44:06 -0700 (PDT)
MIME-Version: 1.0
References: <20211011080346.37197-1-s.hauer@pengutronix.de>
 <20211011080346.37197-7-s.hauer@pengutronix.de>
In-Reply-To: <20211011080346.37197-7-s.hauer@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Mon, 11 Oct 2021 10:43:55 -0700
Message-ID: <CAMHeXxP4vbdaN84B3Vz5xFT=ioHy92CPn1BJT6Y6JpFg3Uj+Kw@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_104408_932216_9A7C7A21 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/9] usb: dwc3: Clarify error message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 11, 2021 at 1:04 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>         case DWC3_GHWPARAMS0_MODE_GADGET:
>                 if (IS_ENABLED(CONFIG_USB_DWC3_HOST)) {
>                         dev_err(dev,
> -                               "Controller does not support host mode.\n");
> +                               "This barebox does not support DWC3 host mode.\n");

Aren't these messages backward?  The hardware is set to device mode,
CONFIG_USB_DWC3_HOST means, "Support only host mode," so it should
fail because Barebox does not support device mode.

Maybe something like: "Barebox built without support for DWC3 USB
device mode (USB_DWC_HOST).\n"  Let the person know what variable to
search for in the config menu to change it.

>                         return -EINVAL;
>                 }
>                 mode = USB_DR_MODE_PERIPHERAL;
> @@ -51,7 +51,7 @@ static int dwc3_get_dr_mode(struct dwc3 *dwc)
>         case DWC3_GHWPARAMS0_MODE_HOST:
>                 if (IS_ENABLED(CONFIG_USB_DWC3_GADGET)) {
>                         dev_err(dev,
> -                               "Controller does not support device mode.\n");
> +                               "This barebox does not support DWC3 device mode.\n");
>                         return -EINVAL;
>                 }
>                 mode = USB_DR_MODE_HOST;

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

