Delivery-date: Wed, 23 Jun 2021 21:39:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lw8ia-00034N-Si
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 21:39:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lw8iZ-0003eb-No
	for lore@pengutronix.de; Wed, 23 Jun 2021 21:39:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SG/QLxeH9PghnPqvuNlkPbZqSujnmKFN1BTb+VskObM=; b=jfh7S81+XHB915
	Lkkno4jnkwFH22i6rwqM9InP7XM/pPHytAJL3j/AJ+QDzxl4VjRwYewgF9jRlQDmHrBrKuisZC5/8
	Nzt+i23fJdXjhChnzlbVNDYIrfk62asZVXPX8BFQcvE3bw+eIItqLGNUQX2esneloKvkcETfj3kNy
	AG49AYqrA8CaaipbvGaquuHXX3UUyVqW5kV9FbGhgjoWgHK/T2QqyhNOVlbtThqLix7Th6/DwIxqJ
	l/KCcrwxayWS48+3ZVGJhDCNpfNKl5cdqxmtb5tG/qt66v1rcFbmkoSwML+BlYPuM4xhICvk//+Km
	QnSj8nEfbBSZRm2RDNWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lw8gv-00BntF-CR; Wed, 23 Jun 2021 19:37:41 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lw8gq-00BnsP-6i
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 19:37:37 +0000
Received: by mail-lj1-x229.google.com with SMTP id d2so4456112ljj.11
 for <barebox@lists.infradead.org>; Wed, 23 Jun 2021 12:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FuxhxMgi8mxwrQz6vT7KHxXpFtQdKeRWoTDwx6OHgHg=;
 b=D/muQVM8trY3+tf4h77btx1dKhHlMUI/6db8AvTCVqJAE0G25109VG03SbUEn3x9CI
 yUXFy7fPFdm0ovUn8dM6/SrkG5ruFte1hhNFQu3KwubRx/3RbraC4D8VGOB0W2fSt0RP
 scp/vmrfXnug3AjEjDXaaRVvbBKLxyM/PTDWVwAqfi8tOFm6rdCMHZX/QFsDd8BH8NoI
 H2yP9S1bCvKxNIC5jpGNkDuFGdJwNFsdE/3houPZ3qQZJLf18cpXpxCtbC3Dc2Km0oAQ
 rhDOKtpEsyL6M1AbpLmEF2Wo0kC/X7Ycjyc1v+c7EA267Y8gpCuoNnuMTJw6gweXxSiD
 a19A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FuxhxMgi8mxwrQz6vT7KHxXpFtQdKeRWoTDwx6OHgHg=;
 b=EVyPAi10IhOmv4L/QRH0D5h1S64ymZgYSWbNkI2HS4gMh3umOcPWaG8tNOTTcCmsLV
 UnWGg8bMfDEBxac17wtQCa6rp98OdWNCq9TG83UjwRh60LoEO31PJPPgDiR/1yw38SIe
 73F7d42zY1AeXwrZGY7iNc7w9he1IFriexkPjpZH5eofrFE8HmUDTuMDMZXfWlaXILKG
 bTN8TyjIlqYEu1nKbd3WD8xeyPy6aRfpapQDokhcgjYbqkAv7wyrk3B2MVaL4oLpjHfz
 /Xfi0DMa0jl2i2xetFGftY19D9IuZFZel2THd046zX57WAQaH15vGOajvlKqRd4UZFVk
 MUIw==
X-Gm-Message-State: AOAM530pQP4jtj5NKFMYuyoiJBra9xKnQKFljk+66IhNA7wtWdQcKrvX
 PosY2PXblaFdrs0tc9ajqFsMU47ghPeBio//2gSdD5mEkVAYuQ==
X-Google-Smtp-Source: ABdhPJyIHLccEsibftoBflyRYE/EgiYkPr6U5rK2TtSn2PESJSH0cpPCxFage8I+UDbivBmdJBVKqEtNj7eJFS5h7x4=
X-Received: by 2002:a2e:894e:: with SMTP id b14mr1010115ljk.112.1624477054598; 
 Wed, 23 Jun 2021 12:37:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210623051632.30253-1-s.hauer@pengutronix.de>
 <20210623051632.30253-17-s.hauer@pengutronix.de>
 <cf7b8b42-7c58-f1b7-ff25-0e0e32b46b74@pengutronix.de>
In-Reply-To: <cf7b8b42-7c58-f1b7-ff25-0e0e32b46b74@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Wed, 23 Jun 2021 12:37:23 -0700
Message-ID: <CAMHeXxNoxju8HzqCPMrMyvCUP67WFH6QBOoWLM-cN5n7jeatKg@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_123736_406791_943B6FEA 
X-CRM114-Status: GOOD (  21.76  )
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
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 16/17] Documentation: Add documentation for device tree
 overlays
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 22, 2021 at 11:14 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hi,
>
> some bikeshedding incoming.

Well, while we're out here at the shed...

> Convention seems to be that attributes of the same thing are preceded by a `.', e.g.:
>
> global.of.overlay.dir
> global.of.overlay.compatible
> global.of.overlay.filepattern

This looks a lot more Barebox-like to me.

> (I think the `.' between of and overlay is not a bad idea, as we may decide to have e.g.
>  global.of.compatible in future)

Are these only used when bootm is run? Aren't most magivars that work
this way in the namespace "global.bootm"?

> > +``global.of_overlay_compatible``
> > +  This is a space separated list of compatibles. Only overlays matching one of
> > +  these compatibles will be applied. When this list is empty then all overlays
> > +  will be applied. Overlays that don't have a compatible are considered being
> > +  always compatible.
>
> Makes sense.

I've always thought the way Barebox's global.linux.bootargs.*
variables worked was nice.  It avoids different things that add
arguments for different reasons from interacting with each other
trying to write to a single variable.

There's a similar process with overlays.  Some overlays are based on
the board variant.  Then an add-on board might bring in an overlay.
Then another overlay from a second add-on board that is unrelated to
the 1st.  Then an overlay to configure something at boot time, like
add an LED trigger at boot.  It's so much easier to just set or unset
a single variable, than to need to worry about appending or removing
or modifying a string inside a space separated list.

> > +``global.of_overlay_filepattern``
> > +  This is a space separated list of file patterns. An overlay is only applied
> > +  when its filename matches one of the patterns. The patterns can contain
> > +  ``*`` and ``?`` as wildcards. When empty, all files are applied.
>
> Similarly, we could have ``*`` as a default.

If the default value is "*", and it's necessary to use a space
separated list, then a script adding another pattern will use
something like:
global.of_overlay_filepattern="${global.of_overlay_filepattern} new-overlay.dtb"

But that doesn't work if the variable doesn't start as empty.  Using
"global.of.filepatterns.*" as a set of variables would help.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

