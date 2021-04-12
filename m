Delivery-date: Mon, 12 Apr 2021 16:19:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVxP5-0005bg-BJ
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 16:19:03 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVxP4-0002OJ-Dn
	for lore@pengutronix.de; Mon, 12 Apr 2021 16:19:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Sd3uS2PDPQqY/rajYzXgioi2hhxmORfHiaUoU51vUhA=; b=HF/4a8eZ5Qoy+7S0SMVwSnZ0B
	8JbtmM7wHE29qSyFp4bKKCirOI/jnhJ//Gl46AdbLDkJohwEoEX9Ju0//9fEZIdkms8KLYds9MtAj
	xCGHnOjouJikM/vT4CLGNteWy4g4DqN7jgzxpBv8FhFB7gj5+2tz6mMukDF6R6Lr+l/0bkSimMcb8
	0xebaVttL+R0RTKFdJzoGYvfYrLc8Sx1Sq4BuaK54wQfF+m+xMh4mLOhnKbhnrsh/BUs8XwDpSreO
	5ZNRcqvHSIon4MHYNdtHTYPThUHMx3VQtOGtCfEE5DxxFrc6IjYv61ZmaG/ydi4mxQPi6VZylBbQu
	EfnnqP8zg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVxNx-006wXO-4s; Mon, 12 Apr 2021 14:17:53 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVxNs-006wX5-9x
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 14:17:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=L2K8SJFthUE1jSTuwh2i/aZA6YlHmRwYjj4ViQmf3d8=; b=mRn9ZIZuxj2YJU2SxKYbyGayJI
 ka4i6QPozsUo/ZZo8Lkj3lk1cefyGAERRIrPEGALEdpKOXdngxSOTbyQ6iWaFejTJ/ovH5yItxNAz
 u+pWHNpUW1ivfOTAIdzfSUoMxf76L0MfZfBaxVkIScKx912cjezGBTrqHWAJIkaQRN7I9pxJXZnmK
 qi+cV8KcpapfoOhucj1PlHcwVPWl2B0SX39LE/ttHUoHENZgU/4yTbIxUI+g1GETXsKdL6uoFnh+d
 alHYs4Fr856soBWocLcbLZVf+TTG78fjdbgSkbVL3qQKtk0Z4PIvhZoF1D5WoIDwHbOdkgo61hAtY
 BQbsu3Qg==;
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVxNp-006IXb-HT
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 14:17:47 +0000
Received: by mail-ot1-x336.google.com with SMTP id
 w21-20020a9d63950000b02901ce7b8c45b4so12914501otk.5
 for <barebox@lists.infradead.org>; Mon, 12 Apr 2021 07:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L2K8SJFthUE1jSTuwh2i/aZA6YlHmRwYjj4ViQmf3d8=;
 b=tu7hiqpvn1rn9wX93QpQ1X+Saw+F9d/qi9p2VC0snZjV+Eu/YzviZS8zT8+6nXriCW
 AkQYWlrPMv70ZoITJUOmny02O/qQK8ztU9m72sJnXuhP8FgozB/O3XEzg65J4UQOqdgt
 Xa0S4OT7tL8MbRtIfRn6wx2UO/Vqz33m+8ocbq30YSv3oWWeIvlMBOYzq3culWYLMCbm
 ThtrHO5NtrX0vBbFCcrkH2IeSl5Raq4wwOxVz99kj/leUcebZc9mas5z4/wqyHcRHTTB
 ZN2LfDHvTTr6wJr/NK0gKObpv4VegO7aXydwNVnUxjPx5cIUXGoG5MiNsu/cs2/1frhf
 6rZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L2K8SJFthUE1jSTuwh2i/aZA6YlHmRwYjj4ViQmf3d8=;
 b=HQ2M/2+JjVcmEjD3/jDHYPTGfmAxmVg/dRS1dWJKOro2uqbcD6AjTr9bcZelMPUkjr
 dRxHi4fQwoYjHF/oHqnVwCBJqEciGGwWYUIo54W9TZ4j4Dinp1N5s+k+7ToNBH8VrII1
 6UBKvcm+NAI74ovUSSBxJw5OmqMjJFMoQpy77QdMWrykmFgtL/NE2hY9e/kv13MKx51m
 NIk113EaL4UuU4X7q8wh3noYZVBZ0n4Ae0GfNnGMwqTeDFAIfOZMWAkPqjzFb/OptJUh
 flFXdY8QJGkwFoLh3PhGw6VXFAUGFYr9YYmPOZuGsiIKTQBgAD3a24sUErvpdMCv9uJT
 /dqw==
X-Gm-Message-State: AOAM531ieeO0mMfs8K7lrO0VXMBrt+Zh6ecXh4u0bQbdgf7oOCj8DstP
 hShYBY9YuxoYeJYP9q49x4XBsGFI9dye3ldm2bg=
X-Google-Smtp-Source: ABdhPJz9/rOHX5Vp+jP5lfVQ7HPb1Z0XyNRPerwwHBOGar/ZoRmnMIbvE8brV2IAmXkQ1PaLw6aDKxYRmNRZZWCPqjY=
X-Received: by 2002:a9d:6a91:: with SMTP id l17mr24259556otq.18.1618237064375; 
 Mon, 12 Apr 2021 07:17:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210409132035.197739-1-lapeddk@gmail.com>
 <67622809-1252-bfff-d114-ce11f2c7c7dd@pengutronix.de>
 <CAKd8=GuJnm0Uz7bXOCoy8YhQ_OL_1nB3Cjq_ERrY3Xo=ynhSjw@mail.gmail.com>
 <7551e835-6109-2386-6b4b-7224aae675bb@pengutronix.de>
 <CAKd8=GvvoobiudVaRp7qdDU-P4k1herndE-AXoiZkLtoc5R-vw@mail.gmail.com>
 <0476fd8d-c2ef-942a-64ab-62dd5eda9a22@pengutronix.de>
In-Reply-To: <0476fd8d-c2ef-942a-64ab-62dd5eda9a22@pengutronix.de>
From: Lars Pedersen <lapeddk@gmail.com>
Date: Mon, 12 Apr 2021 16:17:33 +0200
Message-ID: <CAKd8=Gt1piJ14=V8u7wtwL3aS0yMetvyZ0kyrJQLP=Vq4_LfDg@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Bruno Thomsen <bruno.thomsen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_071745_601770_04783F40 
X-CRM114-Status: GOOD (  32.61  )
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
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: Kamstrup mx7 concentrator board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Ahmad

On Mon, 12 Apr 2021 at 14:43, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hello Lars,
>
> On 12.04.21 14:09, Lars Pedersen wrote:
> > Hello again. Thanks for the quick response :)
> >> Easiest way to get this right is to write a board driver.
> >> See arch/arm/boards/lxa-mc1/board.c for an example.
> >
> > In arch/arm/boards/freescale-mx7-sabresd/board.c they do something like:
> >
> > if (!of_machine_is_compatible("fsl,imx7d-sdb"))
> >   return 0;
> >
> > Can't I just do the same?
> >
> > if (!of_machine_is_compatible("kam,imx7d-flex-concentrator-mfg"))
> >   return 0;
> >
> > The board driver in arch/arm/boards/lxa-mc1/board.c seems more complicated.
>
> The board driver support is recent and not many boards use it.
> Doing of_machine_is_compatible check manually is error-prone (inverted logic,
> sometimes it's forgotten, like in v1 here) and doesn't scale once you
> have multiple compatibles you want to match against. Drivers can also
> EPROBE_DEFER if they can't yet acquire a resource.
>
> For the simple case of toggling a reset, likely only difference now is that you
> can verify your driver availability with drvinfo. I'd prefer new code uses board
> from the get-go though if board code is really needed.
>

I got it working but we have decided to update the hardware to reset
the TPM after your colleague mentioned how it should be done correctly
:)

Just to be clear. I can now remove board.c as you first mentioned
since I don't need any special stuff.

Also I need to update imx_v7_defconfig with this board with default value yes.

> Cheers,
> Ahmad
>
> >
> >>
> >>>>> +}
> >>>>> +
> >>>>> +static void __noreturn kamstrup_mx7_board_restart_gpio(struct restart_handler *rst)
> >>>>> +{
> >>>>> +     imx7_setup_pad(MX7D_PAD_ENET1_TX_CLK__GPIO7_IO12);
> >>>>> +
> >>>>> +     gpio_direction_output(BOARD_RESTART_GPIO, 0);
> >>>>> +     mdelay(1);
> >>>>> +     gpio_set_value(BOARD_RESTART_GPIO, 0);
> >>>>
> >>>> I just sent out a patch[1] with a driver implementing the "gpio-restart" device
> >>>> tree binding. Could you test that one and use it here instead?
> >>>>
> >>>
> >>> I have applied the patches on a master branch (Last patch failed to
> >>> apply but was only watchdog) and the gpio-restart works perfectly.
> >>
> >> Thanks for testing! You can add your Tested-By on the patch in question
> >> if you like.
> >>
> >>>
> >>>>> +
> >>>>> +     hang();
> >>>>> +}
> >>>>> +
> >>>>> +static int kamstrup_mx7_concentrator_coredevices_init(void)
> >>>>> +{
> >>>>> +     kamstrup_mx7_tpm_reset();
> >>>>> +     restart_handler_register_fn("board", kamstrup_mx7_board_restart_gpio);
> >>>>> +     barebox_set_model("Kamstrup OMNIA Concentrator");
> >>>>
> >>>> The default model name is "Kamstrup OMNIA Flex Concentrator".
> >>>> If that's too long, you could override /model in the barebox device tree.
> >>>> With the changes suggested above, you could drop board.c then altogether.
> >>>>
> >>>
> >>> I'll move this into the device tree or delete it entirely.
> >>
> >> Great. :-)
> >>
> >>
> >> Cheers,
> >> Ahmad
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

