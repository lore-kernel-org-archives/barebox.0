Delivery-date: Tue, 13 Apr 2021 15:34:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWJBO-0007tl-Ad
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 15:34:22 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWJBN-0005Fu-IM
	for lore@pengutronix.de; Tue, 13 Apr 2021 15:34:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qdFAD+BTjbsdbkgZR9UZW4plZqTGSjFCcQ9T/VYfky8=; b=I9/FE6AFh7dWN7CkBPw4MPnJG
	qv0LNVYvOty+K3eLDKPhepJbzgBX4O6AfQzKUgfKGnuivagbC6bvyXMqvrcpv7rsyc9JjshlAhMoc
	306bZD9FUN6GCJ7R4MxjfJnon98wIyK5bFUWSQncDn4a4h4dTOePsSP89ItBIc2LsVu9jPYraFZY3
	WaeOAt5IaKr5VU5qcLVKjLkEDTMpuUkfr/GZMdLAe76cavdjcKyLaDojIe8WCFyUxweT7Dp3Ho2li
	36JqzdPR/a9ge0NH/CfbDWg8hDEvj9MKa9sJlBiEuwv1su9tWBzq7J5tMpci9wPMCIoJGXxXHNikl
	Pa84OyvqQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWJ9U-009NtS-EX; Tue, 13 Apr 2021 13:32:24 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWJ91-009Nr5-0i
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 13:32:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=lWhKO+tM1OvIbEINVk1KO3C1sXw20q8HYvvhCr/SJB4=; b=M9BXalUfTJJOMCCWMrCuRUIj/T
 UyxHW3X63Pdy0NqvJwwr5Wt2KTPWIV7xo4fpej14FMeBFhwEBNJAeKsn0Ccf2oH5dUqXM8wT1r9gW
 Y5BC2k5iQjZLTuYSDyTz2cd1bvblCyIg1Hl2KZlA1WtJF6xMEVkvPK67P1380q/extkAhKh0tSVaq
 nfQTKHkN1DC6ZAsDq/ZM8gb3YOOJ9dtn6MVls4T867t/flqMkMEFboyNz/szdvJQQBRGXZctE3XJG
 fYHFnJhcTYhkLoPnUAqv459Cm6U+NY6F9ol/bzOmjLYB99G3SCZ84F0P46wcEjqC2sIP4j7GPtvoW
 jHez+hXw==;
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWJ8y-0073qy-8Z
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 13:31:53 +0000
Received: by mail-ot1-x336.google.com with SMTP id
 w21-20020a9d63950000b02901ce7b8c45b4so16062464otk.5
 for <barebox@lists.infradead.org>; Tue, 13 Apr 2021 06:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lWhKO+tM1OvIbEINVk1KO3C1sXw20q8HYvvhCr/SJB4=;
 b=NOaJv1Y4iZ8GCALT7bNRVBuNdBxRlLhZEDZfE0yS3JHOaIynOkjhLElQ+/HcNJDRTd
 ffCJNL1sLfs+mKu3hIFI2N2YbBf7lZP5Sbl9CuRo/GEaZERiIovqxQaKxyOZPtlThi+M
 h+dO2RrqC/vzAtKLLkzWBGgoqZI2ZgAN7Y3ny+pMmhtkHFjbPS/IS0emBMk/H8wsaK8Q
 945xuDpRq2iOI9hh8USGL+e90ZgeNBkjaDyqIWEzfC9/CRaVYeuNbgnASJ5aRrVxjyVP
 BmCKOOuTBdUD2bzC1hbaeCXgQWLD0rDCpz4YaB7juiYzRPMc1vMw27ZbGMX9AoBgAK3z
 PaPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lWhKO+tM1OvIbEINVk1KO3C1sXw20q8HYvvhCr/SJB4=;
 b=YZHv8kVw5ZzJqUeaYR/9Q/GCyAZCvRr20GWptqJQhuXt2HpBI17azj3H/O0ow6ZSeH
 mqGFap7w98H3Q0BOq116PpP0GW7v5OpBnUC8dmLe19ORKGZSgiSSf1nucsOJ/gFAijxN
 JU6kXZi+cfwzRG+c5HfGfeYt09ZdIdInkuVuevxJrn5rnixGsjM1tkJCOTgmxFRigPgL
 ylVEO1B3JUvqaIkp8TIKPRcUdBC70znV/nVOw38LOAUYgyPnVSpyM+h4NJ5ixgB1+cr1
 gFl2jatcl6gaXqkqLdECcIqPBKwLcpqK9N03M0OOwp+TrNSZDM2/oi6EZ2Lp3BBAwXWf
 qc6g==
X-Gm-Message-State: AOAM531QPpyNEyEPRNFidXA+ldgpjD3d1pMYUi0Ji4XrSqvqMgBrgkYN
 sNlm+1yGiY248q1qczxgmCzOTY33iYWqmkJUwPc=
X-Google-Smtp-Source: ABdhPJxQUeMCgPTaXiXkRnIV6rAGl3VvczG2NnmQKVHuaEul8VNAP0zvQoGmRRAPn+dmsGdjxmX+4A09fKU/sOFvbv0=
X-Received: by 2002:a9d:6ada:: with SMTP id m26mr1263184otq.18.1618320710864; 
 Tue, 13 Apr 2021 06:31:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210413061727.186938-1-lapeddk@gmail.com>
 <20210413092340.241337-1-lapeddk@gmail.com>
 <ffa4e57a-e8b3-a31d-cb93-d0bf8a6b9157@pengutronix.de>
 <CAKd8=GvP4xAWR7JVYh0DKjhwCdgZf_LXi0DQaLHV3QfWV4zMrw@mail.gmail.com>
 <45063309-981a-0a38-b737-812ed295604c@pengutronix.de>
In-Reply-To: <45063309-981a-0a38-b737-812ed295604c@pengutronix.de>
From: Lars Pedersen <lapeddk@gmail.com>
Date: Tue, 13 Apr 2021 15:31:39 +0200
Message-ID: <CAKd8=Gux_ifi-C8-7-GFps_QACTFmaJPLw3FhjptTRq66mAGHw@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Bruno Thomsen <bruno.thomsen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_063152_327514_A8263C59 
X-CRM114-Status: GOOD (  20.81  )
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
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: Fix Kamstrup mx7 concentrator default cfg
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, 13 Apr 2021 at 13:07, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
>
>
> On 13.04.21 13:03, Lars Pedersen wrote:
> > Hello Ahmad.
> >
> > On Tue, 13 Apr 2021 at 12:09, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >>
> >> Hi,
> >>
> >> On 13.04.21 11:23, Lars Pedersen wrote:
> >>> Select CONFIG_POWER_RESET_GPIO_RESTART for Kamstrup mx7 concentrator
> >>> board.
> >>>
> >>> Signed-off-by: Lars Pedersen <lapeddk@gmail.com>
> >>> Reviewed-by: Bruno Thomsen <bruno.thomsen@gmail.com>
> >>> ---
> >>> Requires patch ARM: i.MX: Kamstrup mx7 concentrator board support
> >>>
> >>>  arch/arm/mach-imx/Kconfig | 1 +
> >>>  1 file changed, 1 insertion(+)
> >>>
> >>> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> >>> index cc73d0a0d..4ee8ffe4b 100644
> >>> --- a/arch/arm/mach-imx/Kconfig
> >>> +++ b/arch/arm/mach-imx/Kconfig
> >>> @@ -530,6 +530,7 @@ config MACH_KAMSTRUP_MX7_CONCENTRATOR
> >>>       bool "Kamstrup i.MX7 Concentrator"
> >>>       select ARCH_IMX7
> >>>       select ARM_USE_COMPRESSED_DTB
> >>> +     select CONFIG_POWER_RESET_GPIO_RESTART
> >>
> >> Sorry, no CONFIG_ in Kconfig files. ^^
> >
> > Heh okay :) Then lets stay with the v2 patch and disregard the patch
> > fix in Kconfig.
>
> Sure, ss you like. Just for clarification, what I meant was that in Kconfig
> files symbols don't have the CONFIG_ prefix. That's only used outside
> (e.g. from Makefile or C preprocessor).

I misread your answer and was a little to quick with a fix. I'll send
a new one which also has been compile tested.

>
> Cheers,
> Ahmad
>
> >
> >>
> >> Cheers,
> >> Ahmad
> >>
> >>>
> >>>  config MACH_NXP_IMX6ULL_EVK
> >>>       bool "NXP i.MX6ull EVK Board"
> >>>
> >>
> >> --
> >> Pengutronix e.K.                           |                             |
> >> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> >> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> >> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> >
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

