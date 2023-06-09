Delivery-date: Fri, 09 Jun 2023 11:19:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7YGt-00Gz0H-AH
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 11:19:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7YGq-0000By-Po
	for lore@pengutronix.de; Fri, 09 Jun 2023 11:19:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q+EbvBYURj/l0FXK/IGAgO6RlaGHYq/E2TQvXp9cT7k=; b=YvWeULQz/rg3ZK8RCnE3XndfYw
	TeRvnHI2frAuyyQt7o+Y8mxqQ6bFjE9CYd/dhlWs2I4MJfDYJ102qCyhh1Kkuu8e2FEJ/+kEL0rjY
	QxYZZggvyGLnGRDPxcAup0VaGDOFUdXVSCXLFWrxg3FQjAiDqWNcqPUjLWk2tEcW58uJbhxPGupZe
	braTw+MApL9OsaJ18oEfqA4b2QapIhmehMCRAj3HfTjaKJm6k0ylOnh3Y1xnIcSOYqRUAON3C12Sl
	8PZ/UKhX1yM8dCEj41849hOkg5njLsBRrTE4GK1vK32xqNtMo8slU25avzZl+V0uIlNbUT2dnY+gX
	5bSgzVSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7YFf-00CO2K-3B;
	Fri, 09 Jun 2023 09:17:47 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7YFc-00CO0w-2W
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 09:17:46 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-2566ed9328eso524159a91.2
        for <barebox@lists.infradead.org>; Fri, 09 Jun 2023 02:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686302262; x=1688894262;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Q+EbvBYURj/l0FXK/IGAgO6RlaGHYq/E2TQvXp9cT7k=;
        b=K7Q6pkMthlTkqTcCafq0Z3rhIKsfudMZX/nPNAMPtx2BuZ7EgFGJ+aWtea9874TrQU
         8wG1kNi8CaAzWkHKlgmD7MD64e5Jjjc58HqS+4fbZR0/WSuHJpNqFVKSlA+HzlZmZjQ2
         mxBj4xFqM9F+HFFM7Q/MUbGahp9DZIT60I1PuPDmyYKkNW+MbixZov7DfmKBUS1ZumSB
         gxhOzpU/4Hu/o0gNEZnpu4djd+73ckm32w2kHt8bQwwRLUdx6669+kFjsZXivpT/xGT0
         oDDbRBQ7X/9Mg+dxSceypd2Gm5wMzksg0U/Iv9QTPcunczc1+tI0PYAWyQJgUHdWvS5u
         z6tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686302262; x=1688894262;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q+EbvBYURj/l0FXK/IGAgO6RlaGHYq/E2TQvXp9cT7k=;
        b=EbzrIyJZeN1ul5K6qN/bpE4YlRZfeVxpg0eez7fm/sdpysvrAMOZBEIzZcwVwYQRld
         L7miQB9+cF0hq5yeIYF4GvuzS27tEeB0YrXkoMlsdjfZQBkM+M3tL2CaOy/GUtuZS0Cz
         0eM1OLjQ5mvszwzyLFhYNWYdcjf9IWwm4af7cjVpEzVQma4+YqmkQip5fXtHft48xBRV
         q4xO9lIEIAu+YQfX9tFqFBs4YH57YEds8KBZmaJUQnPD6BJcg5BTz2VQwtQgXF2ddTDG
         kT8IgaygceEHKKjcQS3uCecGNRmsv373tBa54RPbEGXkT5Ll9G3l3UdygiRpA0J4NjBu
         3UrQ==
X-Gm-Message-State: AC+VfDxuuvGKebLCy2w4d2RdHPPrHpXZo7fx4lO3SvxjVo1D52X59r7H
	UhcQe24NCYGAEf8mjxwvg5LIdz9lVQG6KMKLr+Ce7dwAIzWokQ==
X-Google-Smtp-Source: ACHHUZ51EsmElCY6bdroAS9nUnyh+qAXyaWYVRDrLS1uI0PUQ9Y1rgAg5khrDyYCXO53eYj9wNUIKPSXfiOPRUERiTU=
X-Received: by 2002:a17:90a:f0c3:b0:253:8e59:a867 with SMTP id
 fa3-20020a17090af0c300b002538e59a867mr666737pjb.42.1686302261718; Fri, 09 Jun
 2023 02:17:41 -0700 (PDT)
MIME-Version: 1.0
References: <20230607051155.3175-1-denorl2009@gmail.com> <20230607051155.3175-3-denorl2009@gmail.com>
 <e72144bf-7523-4d5e-09a3-74f910a1ed7f@pengutronix.de> <CALHb5ujjPBenOtsmpfa-Y7LikNiAz4KK1bHOA7k3pQCjCM8n8A@mail.gmail.com>
 <f597258b-a7fb-af4e-323c-77c6ab5b5a61@pengutronix.de>
In-Reply-To: <f597258b-a7fb-af4e-323c-77c6ab5b5a61@pengutronix.de>
From: Denis Orlov <denorl2009@gmail.com>
Date: Fri, 9 Jun 2023 12:17:29 +0300
Message-ID: <CALHb5uiDfZpwDUQGDYazBX2vZRTWEiJBEm1kcF94AJoK_Uhx9Q@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_021744_819739_1976F16A 
X-CRM114-Status: GOOD (  27.90  )
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

On Fri, 9 Jun 2023 at 10:21, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> On 09.06.23 09:14, Denis Orlov wrote:
> > Hello Ahmad,
> >
> > On Fri, 9 Jun 2023 at 09:36, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >>
> >> On 07.06.23 06:59, Denis Orlov wrote:
> >>> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> >>> ---
> >>>  test/mips/qemu-malta64el_defconfig.yaml | 22 ++++++++++++++++++++++
> >>>  1 file changed, 22 insertions(+)
> >>>  create mode 100644 test/mips/qemu-malta64el_defconfig.yaml
> >>>
> >>> diff --git a/test/mips/qemu-malta64el_defconfig.yaml b/test/mips/qemu-malta64el_defconfig.yaml
> >>> new file mode 100644
> >>> index 0000000000..22562d5b7a
> >>> --- /dev/null
> >>> +++ b/test/mips/qemu-malta64el_defconfig.yaml
> >>> @@ -0,0 +1,22 @@
> >>> +targets:
> >>> +  main:
> >>> +    drivers:
> >>> +      QEMUDriver:
> >>> +        qemu_bin: qemu
> >>> +        machine: malta
> >>> +        cpu: 5KEf
> >>> +        memory: 256M
> >>> +        bios: barebox-qemu-malta.img.swapped
> >>> +        extra_args: ''
> >>> +      BareboxDriver:
> >>> +        prompt: 'barebox@[^:]+:[^ ]+ '
> >>> +        bootstring: 'commandline:'
> >>> +      BareboxTestStrategy: {}
> >>> +    features:
> >>> +      - virtio-pci
> >>
> >> Did you test virtio PCI? I don't see it enabled in the defconfig.
> >
> > Nope, I didn't. I must have copied this from the 32-bit malta config
> > file. However, I see that its defconfig also lacks VIRTIO_PCI, so should
> > those be removed from both labgrid configs?
> >
> > Besides, judging from the virtio PCI Kconfig option depends, there seem
> > to be some issues with virtio PCI on MIPS without CONFIG_MMU set. Is the
> > lack of VIRTIO_PCI option in 32-bit malta defconfig related to that?
>
> Ah, right. test/emulate.pl reads virtio-pci feature to decide what Virt I/O
> transport to use. Maybe the MMU incompatibility is fixed now with your
> recent DMA rework or maybe we still have 1:1 mapping assumptions in the
> virtio code itself. If you could give it a quick test with CONFIG_MMU=n
> and see if it works, that would be great. Something like this should do it:
>
> /usr/bin/qemu-system-mips64el -M malta -cpu 5KEf -m 256M \
>    -bios barebox-qemu-malta.img.swapped -serial mon:stdio -trace file=/dev/null \
>    -drive if=none,file=/src/barebox-rockchip/somealigned.img,format=raw,id=hd0 \
>    -device virtio-blk-pci,disable-legacy=on,disable-modern=off,drive=hd0
>
> (Above was generated by ./test/emulate.pl $config -n --blk=somealigned.img)
>
> You should see a /dev/virtioblk* device if everything is enabled and working.

Yeah, it seems that this works on both CONFIG_MMU=y and CONFIG_MMU=n now.
The drive mounts successfully and I am able to look at its contents with
"ls". So, does this mean that we should enable the VIRTIO_PCI option in
malta defconfigs?

>
> Cheers,
> Ahmad
>
> >
> > Regards,
> > Denis
> >
> >>
> >>> +images:
> >>> +  barebox-qemu-malta.img.swapped: !template "$LG_BUILDDIR/images/barebox-qemu-malta.img.swapped"
> >>> +tools:
> >>> +  qemu: /usr/bin/qemu-system-mips64el
> >>> +imports:
> >>> +  -  ../strategy.py
> >>
> >> --
> >> Pengutronix e.K.                           |                             |
> >> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> >> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> >> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> >>
> >
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>


