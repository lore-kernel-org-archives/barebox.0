Delivery-date: Fri, 09 Jun 2023 11:39:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7Yaa-00Gzn6-Ig
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 11:39:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7YaX-0003KY-RF
	for lore@pengutronix.de; Fri, 09 Jun 2023 11:39:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Sj9+QaBAAAlaNDG86Qq378BYLQL+pJdBT6aQkSquiZQ=; b=gKCVwDXFtyWhKUCEXwcs18WP/K
	PF9h6XBYC2TcAGBYbsHJ9N5rfhhXTZB7F9dkpnuEoMGuwCAWBVdHXiXM3au/oxaYBxO8Tp0iGVNAM
	IPTX1qd6KiTf0FRj79GQJU+RxB7FoamZ3z7/sw0ecsE23kwWfZynWe20XmZ5pt+EQXkyxroku7i4N
	wFjzU7WaRABLKRDsC8x+IFlVaLzUttd5GXtODpvZGKp9uyudtCiUvQT28qXZTiUeMoUAibwX4QB6E
	APNDZA7DJQh5wQ/ZOs+VpvVyGZ1PaTtgIALIlVcK1Vf2QnDg4q2J26kHCSsdQPUF7lCXM53QK9752
	hv6q9Fag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7YZl-00CRjt-2M;
	Fri, 09 Jun 2023 09:38:33 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7YZh-00CRi8-1s
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 09:38:31 +0000
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-394c7ba4cb5so402615b6e.1
        for <barebox@lists.infradead.org>; Fri, 09 Jun 2023 02:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686303506; x=1688895506;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Sj9+QaBAAAlaNDG86Qq378BYLQL+pJdBT6aQkSquiZQ=;
        b=BqFPGxmLxgabVK3sbK4xaOwnS+uonvI4mb6ukDj6AsIhgPZCX/4vvSmRH2Qq413g5V
         gAzw0XY21uY4ojzAe5L6njeOUtZj40ujBLO5R+JeT4hfuK6jUWPqMh9zHePbItQrm9FA
         Oy8giFl7rIcxEUDXUHGV0guITfXHc00IhCIJnsLt7aD7HUD5oi6FvfGft2L6pguX93am
         Pscic/YKPsxriWUauDkwmG8pgD+QnX3Yr3+v1rfaVymZUZd8xBWUE1ZTsiMMGJHzK5WU
         seAGpdmHyv6kf+pV6otsqYnl9pR9gNcVKPB0NvHgFnM6FhdrXqEmZ148sbS6odv/cr5K
         Xapg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686303506; x=1688895506;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sj9+QaBAAAlaNDG86Qq378BYLQL+pJdBT6aQkSquiZQ=;
        b=NnCvlRmovzHfcpQIxdx3EJBJHGaIa2qZIkznLpCMDBgXOmzBHqQreVyuBZ2v9MMAIk
         cNphpOWmykH1HdTQOhQGCJ1F/QApDYMtQsGtraUVkwWbKRQcs0KnGOEsS2qX6WM5Hkti
         YJg9g/eVQHyPwwJM1OEdJnAr+W/z0M8abmNDXva40nOwdtRhfw7Q+DfreLtx+v5SkVU4
         IGs92HCHjUHfB/BTN0tqy3huDapQRh+8X+dBQr7Z9jWbiNEUuUcqsRlrTfOaCR/uABgJ
         TXOdNUJtRdermN2kRPmoGhzczVw417e+TTyXh2bQp3gcFOB+dnx9Cwclpm9k4hHQSAPS
         7T8Q==
X-Gm-Message-State: AC+VfDw1VnulMTXLV3sStNkQ3lo5vU7BAZL183Q5X+9jHIZ1xdkOCPaT
	9pRsivzzgU5f6r8mhRCIJiBE0OClfdYzbHp26GlM0XMBtjiL7g==
X-Google-Smtp-Source: ACHHUZ6w/lEuuANmuoAbOeOMKA9hqgNrSj2mSG8ax9nZIc/wbIlUfba79DCMHDMFZQP5lV2yhtyeoDSQP6PhxncbFkY=
X-Received: by 2002:a05:6808:210f:b0:39a:bdc8:d4d2 with SMTP id
 r15-20020a056808210f00b0039abdc8d4d2mr1363840oiw.5.1686303506410; Fri, 09 Jun
 2023 02:38:26 -0700 (PDT)
MIME-Version: 1.0
References: <20230607051155.3175-1-denorl2009@gmail.com> <20230607051155.3175-3-denorl2009@gmail.com>
 <e72144bf-7523-4d5e-09a3-74f910a1ed7f@pengutronix.de> <CALHb5ujjPBenOtsmpfa-Y7LikNiAz4KK1bHOA7k3pQCjCM8n8A@mail.gmail.com>
 <f597258b-a7fb-af4e-323c-77c6ab5b5a61@pengutronix.de> <CALHb5uiDfZpwDUQGDYazBX2vZRTWEiJBEm1kcF94AJoK_Uhx9Q@mail.gmail.com>
 <917a2465-b754-b7f4-d51b-53bd2c5ba7e5@pengutronix.de>
In-Reply-To: <917a2465-b754-b7f4-d51b-53bd2c5ba7e5@pengutronix.de>
From: Denis Orlov <denorl2009@gmail.com>
Date: Fri, 9 Jun 2023 12:38:14 +0300
Message-ID: <CALHb5ujbh+B8nKiA2Oe=83eaALcekHHagbR6jeb_Z_ZW-OhG1Q@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_023829_637691_8C82080D 
X-CRM114-Status: GOOD (  30.05  )
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

On Fri, 9 Jun 2023 at 12:28, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> On 09.06.23 11:17, Denis Orlov wrote:
> > On Fri, 9 Jun 2023 at 10:21, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >>
> >> On 09.06.23 09:14, Denis Orlov wrote:
> >>> Hello Ahmad,
> >>>
> >>> On Fri, 9 Jun 2023 at 09:36, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >>>>
> >>>> On 07.06.23 06:59, Denis Orlov wrote:
> >>>>> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> >>>>> ---
> >>>>>  test/mips/qemu-malta64el_defconfig.yaml | 22 ++++++++++++++++++++++
> >>>>>  1 file changed, 22 insertions(+)
> >>>>>  create mode 100644 test/mips/qemu-malta64el_defconfig.yaml
> >>>>>
> >>>>> diff --git a/test/mips/qemu-malta64el_defconfig.yaml b/test/mips/qemu-malta64el_defconfig.yaml
> >>>>> new file mode 100644
> >>>>> index 0000000000..22562d5b7a
> >>>>> --- /dev/null
> >>>>> +++ b/test/mips/qemu-malta64el_defconfig.yaml
> >>>>> @@ -0,0 +1,22 @@
> >>>>> +targets:
> >>>>> +  main:
> >>>>> +    drivers:
> >>>>> +      QEMUDriver:
> >>>>> +        qemu_bin: qemu
> >>>>> +        machine: malta
> >>>>> +        cpu: 5KEf
> >>>>> +        memory: 256M
> >>>>> +        bios: barebox-qemu-malta.img.swapped
> >>>>> +        extra_args: ''
> >>>>> +      BareboxDriver:
> >>>>> +        prompt: 'barebox@[^:]+:[^ ]+ '
> >>>>> +        bootstring: 'commandline:'
> >>>>> +      BareboxTestStrategy: {}
> >>>>> +    features:
> >>>>> +      - virtio-pci
> >>>>
> >>>> Did you test virtio PCI? I don't see it enabled in the defconfig.
> >>>
> >>> Nope, I didn't. I must have copied this from the 32-bit malta config
> >>> file. However, I see that its defconfig also lacks VIRTIO_PCI, so should
> >>> those be removed from both labgrid configs?
> >>>
> >>> Besides, judging from the virtio PCI Kconfig option depends, there seem
> >>> to be some issues with virtio PCI on MIPS without CONFIG_MMU set. Is the
> >>> lack of VIRTIO_PCI option in 32-bit malta defconfig related to that?
> >>
> >> Ah, right. test/emulate.pl reads virtio-pci feature to decide what Virt I/O
> >> transport to use. Maybe the MMU incompatibility is fixed now with your
> >> recent DMA rework or maybe we still have 1:1 mapping assumptions in the
> >> virtio code itself. If you could give it a quick test with CONFIG_MMU=n
> >> and see if it works, that would be great. Something like this should do it:
> >>
> >> /usr/bin/qemu-system-mips64el -M malta -cpu 5KEf -m 256M \
> >>    -bios barebox-qemu-malta.img.swapped -serial mon:stdio -trace file=/dev/null \
> >>    -drive if=none,file=/src/barebox-rockchip/somealigned.img,format=raw,id=hd0 \
> >>    -device virtio-blk-pci,disable-legacy=on,disable-modern=off,drive=hd0
> >>
> >> (Above was generated by ./test/emulate.pl $config -n --blk=somealigned.img)
> >>
> >> You should see a /dev/virtioblk* device if everything is enabled and working.
> >
> > Yeah, it seems that this works on both CONFIG_MMU=y and CONFIG_MMU=n now.
> > The drive mounts successfully and I am able to look at its contents with
> > "ls". So, does this mean that we should enable the VIRTIO_PCI option in
> > malta defconfigs?
>
> Even for 32-bit? Ye, then we can drop the depends line in VIRTIO_PCI and
> enable it in the MIPS defconfigs.

Yep, 32-bit with CONFIG_MMU=n works too. I will send a patch later today.
Should CONFIG_DISK and CONFIG_VIRTIO_BLK also be enabled in those
by default?

>
> Thanks for testing!
> Ahmad
>
> >
> >>
> >> Cheers,
> >> Ahmad
> >>
> >>>
> >>> Regards,
> >>> Denis
> >>>
> >>>>
> >>>>> +images:
> >>>>> +  barebox-qemu-malta.img.swapped: !template "$LG_BUILDDIR/images/barebox-qemu-malta.img.swapped"
> >>>>> +tools:
> >>>>> +  qemu: /usr/bin/qemu-system-mips64el
> >>>>> +imports:
> >>>>> +  -  ../strategy.py
> >>>>
> >>>> --
> >>>> Pengutronix e.K.                           |                             |
> >>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> >>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> >>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> >>>>
> >>>
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


