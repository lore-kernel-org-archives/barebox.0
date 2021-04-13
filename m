Delivery-date: Tue, 13 Apr 2021 13:25:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWHAe-0007T8-9Y
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 13:25:28 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWHAd-0007bd-57
	for lore@pengutronix.de; Tue, 13 Apr 2021 13:25:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S+bJ4EVKM0zicCGpYjEv7fQaVTblroFcZkCFxoJSlKI=; b=TT+sfbZYbzQAuF28qGZh/vN8U
	jlqJ3JqYeX2msDRUWtB51ffsGMsayXXs0wMZiI4u9cfsDEg7LWsmDXydM0efQ7xg1mzh3ucHtCwYy
	thdoETJqyRy0h8vYcoA7pLQ+/pmmWSEdfXzAhwv1wnJ+nlwQyxQItUagdNm4uC9ABrwOsEMnFwrX9
	LVbyS6Ls7atD+mkFeUGGK8xrVLqimYdFAVdD2y8l6HYG7PxrN0fS06REQnZCHYhZob2DgauIMDDx5
	DLIu0LSl5bliyDKoHlcmz9nyP4963masuASdGQ41VcbeW82E/PvQaQdSlmr+CS5SQKejJApyt2Gz9
	ATxQPGrBA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWH8j-0091kz-0v; Tue, 13 Apr 2021 11:23:29 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWGq2-008xDl-DS
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 11:04:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=H4DO6EpPjEbIkkyrvOSNf648BJztr+1QkXF2X5t+9dk=; b=hAf9IIF4GxOgqtsGFXGkKMJtyT
 vNUTp6bFvrf6nazNYctEz0L7mm6aPtnE6QFlzv3sdaU/dE5Fl0k/bzfWPau2pEKgqlcYDvjR6/1EZ
 MU8Xzpgq1Iz767/P+0JvvVQYZaOW2UnddHBrK0lv4HIxe0ysuhQwPzhRFsIox13N6YM2f1jmT5k2O
 HtKQnrDWablVcrZXJ9bO/3kmezT8p3UFc0DhTvbQPNNQh0TyOM4nEa9C5LFViQ7U9cwosi+jCQNx9
 7wC5McjwmOERFTE08kuApDmE8Co5ZXAOnjzlQHMRh181QvIEcGm8xWazYLgod9hUfqc9GJi+VSnCW
 yrZleY8Q==;
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWGpz-006x1b-QR
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 11:04:09 +0000
Received: by mail-ot1-x332.google.com with SMTP id
 c8-20020a9d78480000b0290289e9d1b7bcso1624346otm.4
 for <barebox@lists.infradead.org>; Tue, 13 Apr 2021 04:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=H4DO6EpPjEbIkkyrvOSNf648BJztr+1QkXF2X5t+9dk=;
 b=qntVlJY5InVA4u8YvGajFWrsS2ntbJbl3qfnp9a3JlMuuBvE0IwulCF8x9XF4t63/9
 DQxKfnYL37Vph/zGQHNsCbocbFW+RPB6auiNovJuu8onZ8+jgU4+iyBZyCwfY0+iSOqy
 ACLrHToMVYZWqso4Czr6c+q8lpUCo4sspIJH3FmerFGQlwlv6GhgVLY7EuPV6XhOqzQv
 CEILWcgtdP+1Vlb1ndj8d307DSPJ3ntZMpMydap1a8d8+pz98BozklKWj5E/PIXUx0kc
 O27e2R0lQnma2RjUbCj1w7QAR0tVLwnxOcGe17aa8fZZstKr1WYA/hTdS2VwKzzwjgI9
 jS+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H4DO6EpPjEbIkkyrvOSNf648BJztr+1QkXF2X5t+9dk=;
 b=qJXgUM0dkXvdMwPlIvnmplOKD9jL+AgQ3+cV34Cx3DI+LG7nFbE2p8s3W7+wKEjpjr
 cQoCig1xYBK4KZRBt/ssRV3RGIQ3Tom5cnozH5DydM/154VHBa1+eh+yAMgmbTKzhOzY
 eHsBDW4ekjdw08rQ/2XV+8iORTqRvJWMyQE+H4Tg/ypdJYmgUUfWPTAJOeiUwtQGSIgD
 J+oMV573vdnrIW0bVgtNWJ+SroWhFBspq7WxyzRsZs+8UFI0MkphrfnwUkdmqHKZxhER
 GKdaJWxDfJePKjYDqEK4bBSBTTB9gWleWc8+4N3Q+tagrt+NFY8AXNQEqf/G7Ihamzrt
 hBCA==
X-Gm-Message-State: AOAM5311U7Lpzo19qdhkR3TWiFEegP6t/yyFua4tFQLmWSywDr7VZ98l
 FyEHaoxwmBzOt79wGefXG/BmTBeubfDM1RnjeBM=
X-Google-Smtp-Source: ABdhPJx+xw+63/zsBrpb5YAVvq2gQmoPD+Wdhx6eCvtRtUXBhpirI7DtBdtrY5Dn3HRvbLQsCuMQGycQuu3jAo25YN8=
X-Received: by 2002:a9d:730b:: with SMTP id e11mr3679416otk.166.1618311843425; 
 Tue, 13 Apr 2021 04:04:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210413061727.186938-1-lapeddk@gmail.com>
 <20210413092340.241337-1-lapeddk@gmail.com>
 <ffa4e57a-e8b3-a31d-cb93-d0bf8a6b9157@pengutronix.de>
In-Reply-To: <ffa4e57a-e8b3-a31d-cb93-d0bf8a6b9157@pengutronix.de>
From: Lars Pedersen <lapeddk@gmail.com>
Date: Tue, 13 Apr 2021 13:03:52 +0200
Message-ID: <CAKd8=GvP4xAWR7JVYh0DKjhwCdgZf_LXi0DQaLHV3QfWV4zMrw@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Bruno Thomsen <bruno.thomsen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_040407_874016_01B50587 
X-CRM114-Status: GOOD (  17.16  )
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

Hello Ahmad.

On Tue, 13 Apr 2021 at 12:09, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hi,
>
> On 13.04.21 11:23, Lars Pedersen wrote:
> > Select CONFIG_POWER_RESET_GPIO_RESTART for Kamstrup mx7 concentrator
> > board.
> >
> > Signed-off-by: Lars Pedersen <lapeddk@gmail.com>
> > Reviewed-by: Bruno Thomsen <bruno.thomsen@gmail.com>
> > ---
> > Requires patch ARM: i.MX: Kamstrup mx7 concentrator board support
> >
> >  arch/arm/mach-imx/Kconfig | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> > index cc73d0a0d..4ee8ffe4b 100644
> > --- a/arch/arm/mach-imx/Kconfig
> > +++ b/arch/arm/mach-imx/Kconfig
> > @@ -530,6 +530,7 @@ config MACH_KAMSTRUP_MX7_CONCENTRATOR
> >       bool "Kamstrup i.MX7 Concentrator"
> >       select ARCH_IMX7
> >       select ARM_USE_COMPRESSED_DTB
> > +     select CONFIG_POWER_RESET_GPIO_RESTART
>
> Sorry, no CONFIG_ in Kconfig files. ^^

Heh okay :) Then lets stay with the v2 patch and disregard the patch
fix in Kconfig.

>
> Cheers,
> Ahmad
>
> >
> >  config MACH_NXP_IMX6ULL_EVK
> >       bool "NXP i.MX6ull EVK Board"
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

