Delivery-date: Wed, 16 Jun 2021 21:57:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltbfJ-0000hn-Do
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 21:57:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltbfI-0000pC-B6
	for lore@pengutronix.de; Wed, 16 Jun 2021 21:57:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dr0G4CKPvzV8Q1I1Rtht6xrzHojecGknna6JZ0J2p0g=; b=K90++Gq4L8d7PY
	2SEojuI3SheDxtt0O/JlbH1HbwPwUklWAemw2Vh1gWKpUaEs0DQ3QX1mj5OOLrdrVktEHIqhqRAOj
	qzGIY0y6X+CWzBsGp7fX8uocjZS6pc9eGTnkO/X8cDaDRy3MSPzKOX1MoTTypuScGRiF9jS8ZThv/
	yTapjyONfvw3FjO6UQVsVkawIPIi0vhuubHVjsbsyG0CdP1ytTYkqOj1FjX1sQwAVeJyO1Xosq3gh
	1n59OUrM8MW4oSFcXJopqoNuOqRAl3kWayTQ9E45mwa/xVysf6etj5AepDwP1qoDExdl9X++z5G4n
	EgamZH8epDPPPHkIarTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltbdf-007cKy-Rp; Wed, 16 Jun 2021 19:55:51 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltbdb-007cKQ-ER
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 19:55:48 +0000
Received: by mail-lj1-x234.google.com with SMTP id s22so5493391ljg.5
 for <barebox@lists.infradead.org>; Wed, 16 Jun 2021 12:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t+VRTp+2ofayzUV1vR1lVA6nloqRZteTiT5FOI/Hgnw=;
 b=EQlbapyxH63UUcpfa7mpaRngx6aPPfSveTKcZVXvXm1MiZ8ZtsqGCA8rVIhXWkQ7oz
 EESSg4Sb7TGkuqVjOreTe4Vc7ewXQ0B0DV6pcbZ1UA6IWqxa2OmxwU1YTWXOhIQSRF0U
 uSoMdhCAiiuDuVn++lkHBDsKlgHuPSLT0/0bsnKTrMeShX71KE0oA9WfPUrKjBOWQ/Ju
 JK8V03PeMB3Dn1g9Y2byfvizayi7DXAyM1m6wmFU6a1U6zPO/j/dHhnoTUBVIdJDJ4N/
 DqMKnRwqPpBEfBQ6PA98I8/wmX2FPu2Q4o0YyIlkq/wXiLXw6+DTv9XFS30eU0Y3b6AG
 Ft3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t+VRTp+2ofayzUV1vR1lVA6nloqRZteTiT5FOI/Hgnw=;
 b=Mz80stA47VJAtpz+sWYor6MkzRJZnogbdOVGfN9finx4dK8xh9Jsuhe7UTaGOhH+Wz
 HKskJkCjXiyByYjNlU0g+jUjoqs5YmGdYiFSEHyb1QBZrWW5RnMbHv3/LwtegLDdeNeL
 ba9r3MbKpo0ynh+MY0FRPrsbGL+UioTrhFfNF5bRtMMAx9RWN8mjO5jt3c6eMAsaMTZC
 9ucQy3D6qWta6uT6oJaqkvqTzvaDm6TMhU6n/afQzsazUg2etqGJyqsH9fOUy1wCFxCk
 m+6BSE2ImbtlmKvOuTH8HZGc1IgQIsT7s4moSFqFvg4GwU8nTLuO0evVmGfPjGK2zmlw
 tOYA==
X-Gm-Message-State: AOAM532jAUxXxaub8v/6+1d5xFc4MkrFO4b1KCWK/TaG/ZYp8XI5BaVV
 eLbMMr8ZCEVTgGUToupt4v8kzOu9yqNrYSLshFpgvg==
X-Google-Smtp-Source: ABdhPJyUmmrStrlwuwz972VsX6JqwWEicQZFskU5XOJ1Q0Bo3YQwCAGkj0scI5eR3qU7uHKiLi8xnryXgrRY0DqMIHM=
X-Received: by 2002:a2e:864b:: with SMTP id i11mr1393989ljj.288.1623873344745; 
 Wed, 16 Jun 2021 12:55:44 -0700 (PDT)
MIME-Version: 1.0
References: <FA60DA2B-8C76-4460-8009-88EAB94A0F2C@inside-m2m.de>
 <20210616123403.GW9782@pengutronix.de>
 <D8E37CF9-C7A1-40AE-B747-69E000D1B727@inside-m2m.de>
In-Reply-To: <D8E37CF9-C7A1-40AE-B747-69E000D1B727@inside-m2m.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Wed, 16 Jun 2021 12:55:33 -0700
Message-ID: <CAMHeXxMF7uGBTtL0mJNzXUuJQUABKOAkC3YPV5Lsc7JzB0Ms5A@mail.gmail.com>
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: Sascha Hauer <sha@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_125547_649375_D61DD744 
X-CRM114-Status: GOOD (  17.65  )
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
Subject: Re: Compiled in boot environment and dtbo files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 16, 2021 at 8:59 AM Konstantin Kletschke
<konstantin.kletschke@inside-m2m.de> wrote:
> global.bootm.image=/boot/uImage
> global.bootm.oftree=/boot/am335x-boneblack.dtb
>
> Is the order of loading (of_overlay before loading devicetree) messing things up? If not, what does?
> Is it reasonable for me to learn the bootloader spec stuff?

While I have not yet used overlays in barebox, and don't know what is
wrong here, the order of loading is not what you think.

Setting global.bootm.* only sets a env variable.  It does not load
anything.  The file doesn't even need to exist, i.e. it can be on a
device that is not mounted yet.  These variables set the defaults for
when the "bootm" command is run.  One can put dtb and kernel image on
the command line of bootm too, so override the default from the env
variables.

So the dtb will always be loaded after calling of_overlay, since the
dtb is not loaded until the last command barebox will run to actually
boot the kernel.

of_overlay will call of_register_overlay(), and that registers the
overlay to be loaded when bootm runs, after it has loaded the main dtb
and is applying fixups.  But it registers to binary dtb data, not just
the file name, so the file is loaded when of_overlay is run.  Looks
like that fixup process run by bootm didn't work for some reason and
this is the source of the errors.

To be more consistent with the rest of bootm, there should probably be
variables "global.bootm.ofoverlay.*" and bootm will load the files in
those variables as overlays.  Those improvements Sascha alluded to are
probably something like this.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

