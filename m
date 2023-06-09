Delivery-date: Fri, 09 Jun 2023 09:15:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7WLR-00GsEU-Vp
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 09:15:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7WLP-0007BB-Ft
	for lore@pengutronix.de; Fri, 09 Jun 2023 09:15:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kj8yvpJFf4/Aj4EmO7C77jGHGNyJloKxJXcGKeNSA1g=; b=k92dbvqWNYlAOK67dQeueDPXxK
	wgdcDKxrotD12433hQKnC2/77J3HFT2UNtB69eVS6RStTrPW/soD1IvuATchX6J7mctA8PUFJifUp
	7E5dk/jArBZ+HAh2VL7t4XIxNoGMVWnqKxVY4TiZNSx5XNYrRgEP1aoUg6bEww6NmL9CE7AaJ60MH
	2vmH3DnLiQ0ugbVg7XzkUa8uxvw2Ft+XoB3m3QrXKWCJI/CQKDnPzoFF9zVt93u5uym8pf57/hjA/
	G12tbaXZvLDGIwDfHbdoMFpSE/8GaiWTxJ+HwadEI34NIL0Me+qOBvbtMJXEyLHZ/YGVpaExSLN3v
	FeYHSU3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7WKB-00C0LD-0h;
	Fri, 09 Jun 2023 07:14:19 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7WK8-00C0Ko-1C
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 07:14:17 +0000
Received: by mail-oi1-x235.google.com with SMTP id 5614622812f47-39a97058691so391332b6e.2
        for <barebox@lists.infradead.org>; Fri, 09 Jun 2023 00:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686294853; x=1688886853;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Kj8yvpJFf4/Aj4EmO7C77jGHGNyJloKxJXcGKeNSA1g=;
        b=WpbwzomqgzAKmqeSYOYrA97/D2NTUrOJeJk3GrWetC/j/BBP3eN/zm/cTNeIqYubS8
         AoAjq+l5Y5LgAcAFVBGbtjOVPUrlIxbhKawgFsHgiBgucC7dMF9ok3RQ7LboMZ5/7ZR4
         Q17ymKAe/uvTZ7kUMmU+mwG8CO1wGj0avIMbJroDpKKAACsAEmZmZZa3uffwJ6pgEfZC
         CSVvEFIlKt569mbTMIzyWE0ELqqgrFly4jdC9Kh5y3Y0zH32fM3DCgnuXgqQMAADv50z
         uLWaH+dWF0ETyu1C+AVJQ9e2D1U4qiXbtyP/npg0xl7YaMy35BT+ecaARGSM0GMd9Iw0
         WusA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686294853; x=1688886853;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kj8yvpJFf4/Aj4EmO7C77jGHGNyJloKxJXcGKeNSA1g=;
        b=BUFnsLl74Amm3XyK/kuZ5ubH/xZiqoEDSFNQ6jprLYleoRCaraFBSzNrm5OIeBrlJ1
         B7Q2Hk4xQP9HPtqgfJqeChmCxL0x7G3aLXD+LeSL5avpNQrCI2jFzFc6LrgJL0fpu9r+
         +nQ9SdrQWKEXMy+cB/oAVezCfpK2dlE2xs4ncWSHCyvQJk9X2c9oFPxTZjZbFHzPLLjG
         nDCu1DoP3nX/OLf9npkg2TseWgxUPniFPvwCy0LAonxQnLzZXJwM4YpgEfyGf0BrjbIr
         CuroMab10vlrE5jwX42rnDzZidRjCYlFuigsu3qF9iZzaEzhWw73B4P37ED7cLL6vyKT
         9pZA==
X-Gm-Message-State: AC+VfDz5/ULvLvceR9bJC8+VpxFV1P8zkILH1rZzzB2kxvlfmTX9qm4e
	7PaIlGJjzjZMfFTsmJOnktrl/Fp2dUTTox/CSjcPMZmRZ/ixcg==
X-Google-Smtp-Source: ACHHUZ6VRKgHYVuFyLms7oVWymIEnZZvczC1kP0G3e6lcGHvfSY21nsAsBmaWIgxi1xSQPxx2dXe87q18gdMQMDmgsY=
X-Received: by 2002:a05:6808:1813:b0:39a:7830:f252 with SMTP id
 bh19-20020a056808181300b0039a7830f252mr957133oib.1.1686294853057; Fri, 09 Jun
 2023 00:14:13 -0700 (PDT)
MIME-Version: 1.0
References: <20230607051155.3175-1-denorl2009@gmail.com> <20230607051155.3175-3-denorl2009@gmail.com>
 <e72144bf-7523-4d5e-09a3-74f910a1ed7f@pengutronix.de>
In-Reply-To: <e72144bf-7523-4d5e-09a3-74f910a1ed7f@pengutronix.de>
From: Denis Orlov <denorl2009@gmail.com>
Date: Fri, 9 Jun 2023 10:14:01 +0300
Message-ID: <CALHb5ujjPBenOtsmpfa-Y7LikNiAz4KK1bHOA7k3pQCjCM8n8A@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_001416_435559_6656482B 
X-CRM114-Status: GOOD (  16.71  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] test: mips: add QEMU Malta 64le labgrid config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Ahmad,

On Fri, 9 Jun 2023 at 09:36, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> On 07.06.23 06:59, Denis Orlov wrote:
> > Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> > ---
> >  test/mips/qemu-malta64el_defconfig.yaml | 22 ++++++++++++++++++++++
> >  1 file changed, 22 insertions(+)
> >  create mode 100644 test/mips/qemu-malta64el_defconfig.yaml
> >
> > diff --git a/test/mips/qemu-malta64el_defconfig.yaml b/test/mips/qemu-malta64el_defconfig.yaml
> > new file mode 100644
> > index 0000000000..22562d5b7a
> > --- /dev/null
> > +++ b/test/mips/qemu-malta64el_defconfig.yaml
> > @@ -0,0 +1,22 @@
> > +targets:
> > +  main:
> > +    drivers:
> > +      QEMUDriver:
> > +        qemu_bin: qemu
> > +        machine: malta
> > +        cpu: 5KEf
> > +        memory: 256M
> > +        bios: barebox-qemu-malta.img.swapped
> > +        extra_args: ''
> > +      BareboxDriver:
> > +        prompt: 'barebox@[^:]+:[^ ]+ '
> > +        bootstring: 'commandline:'
> > +      BareboxTestStrategy: {}
> > +    features:
> > +      - virtio-pci
>
> Did you test virtio PCI? I don't see it enabled in the defconfig.

Nope, I didn't. I must have copied this from the 32-bit malta config
file. However, I see that its defconfig also lacks VIRTIO_PCI, so should
those be removed from both labgrid configs?

Besides, judging from the virtio PCI Kconfig option depends, there seem
to be some issues with virtio PCI on MIPS without CONFIG_MMU set. Is the
lack of VIRTIO_PCI option in 32-bit malta defconfig related to that?

Regards,
Denis

>
> > +images:
> > +  barebox-qemu-malta.img.swapped: !template "$LG_BUILDDIR/images/barebox-qemu-malta.img.swapped"
> > +tools:
> > +  qemu: /usr/bin/qemu-system-mips64el
> > +imports:
> > +  -  ../strategy.py
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>


