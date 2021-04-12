Delivery-date: Mon, 12 Apr 2021 14:41:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVvso-0005EG-RJ
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 14:41:38 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVvso-0006mj-0a
	for lore@pengutronix.de; Mon, 12 Apr 2021 14:41:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y6iJx4ex8t0UQMDfd0X3M0yv3e1bOlOicKPVhx7fTBY=; b=kDeJ2b5mnAu5jgWEUVzTi4Xic
	vpInu0NFzoQNWr58cimX07+KthQx+NvZARbkOQGxxJYIp+IqcWKsQkHKU/LoZaytFxZ529GS+AZGf
	k5Ep+24nywyVQMI3J/8e+TcrZJsaboCUWfT+jTaR1EGh/Y4wQyyix9qYMXiY0dSxfkJZpx5/dliIT
	dzjjlG7XuxGfcAF2F8UeQGF8I71UwdC3M3+b3UHAg+oPpLWkJhoOkQ4tlApgG2Cb6cw8gM+dLtfzd
	fTmf7afNIls+NMrfpL+RBgyjjcDCXFEJjrLRT7Iur8W4jsvvbgge1plJgVdBtceUrL5s2B5dlKEBH
	xEKm/X7Eg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVvrH-006iRu-Uu; Mon, 12 Apr 2021 12:40:04 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVvrB-006iRF-M9
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 12:39:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=wBAJTchfyUFMkVLuxTZ4Su7vua0mnDCcviNHl3u/F5s=; b=EufOHWISoqcp3n21yefUmdDdR7
 wqGD8vOcCNwtFGOe8v0rAzwhVO5szsSpmO8xYLUPAZPsDrXWKFJl3GPXxpOU2uuIY+iZkd3qSUG/3
 Kq7QMdvq+LHDdTl+ibRn6MbhN4SupIdVzCx9mN8fLVVTvnH806um8Oy/W8ajLmqBnDAtiLTPoRikO
 j6beIpn+bNGSWZKoQ5sADMWXUQWpoV3ZvT2agWoMVKIVItA3DRrbUPn2ZnfdkcoyMfXl8ld+TjGA5
 4I+V4l7k+jvV/tWU5bNELqc9BuuCxDRHcRGqvS2g65dGNAyFZmoCdBTIXzKXvjSdG29hjsqUkCBIZ
 X5iKiapg==;
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVvr9-006E5O-2G
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 12:39:56 +0000
Received: by mail-ot1-x32d.google.com with SMTP id
 d3-20020a9d29030000b029027e8019067fso10701416otb.13
 for <barebox@lists.infradead.org>; Mon, 12 Apr 2021 05:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wBAJTchfyUFMkVLuxTZ4Su7vua0mnDCcviNHl3u/F5s=;
 b=bw0jHSw7qS9IX5yw9BA1mgEO/S3iWhutwgNe2q5egOM1NypTGD97xRj5Or1suaxVEJ
 pVnLLXQKwRxU1UiFztgTBIgJTMVUmdVx+YOyLF+svO8stgDyoxOzMjjbca9fC/W3p7SD
 NBb3HLsbgRAColWBYq1YTg0F5RnLvfRsH7BI4HaTk6KkalTNHwX3XyH+UuQqdjiHsviD
 bVqL3c5KBnxMX8tPr9CctHdI8Au8ovHpHrddiREvOwDE3TzR0kQJBQVr/+xUJki6zuiB
 Shhpwz+ZF0KnfXrSQwQBL9XWWP7Tl7y8bBo7RlTJWw+VFnOYkQTUm3XCM5hxB+GyxjdD
 NGKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wBAJTchfyUFMkVLuxTZ4Su7vua0mnDCcviNHl3u/F5s=;
 b=BsA0VURoUCGCUoZyJ03UnA/ARp49C/ze3u0LfR8XvKSiDrIDve+GnrLaV+F+dUxl3Q
 QUsrtW7bLw1YAQjYNZZDfc7Q2b5AqMsNRn76+IEAjGU7AcR6YcXfNgzrrkRPqQvphsEz
 u9GO6SLNcEf9xsvq5SScfeIwY+qBqC0FHrtLHmLDw46mofu43/waGMUt69xOjWYnlskK
 0dOl8GjxWQpmo1TYqcQXCIGilWOWzX4EIJVCbLFc+JVG7XruyESTMOEC2a7OgYzgVzuH
 KNd9aCu+yu96sl5qulFyo5FWwYDiRKHGPRHd/6sfAvOqvVGLnT4zbP9iLZQxNQ0ayl7G
 J71g==
X-Gm-Message-State: AOAM531z/7DWyzdesepgthFsIoiMjTOUCYK6SvG7QcdNltrXScUvDUkz
 CgjM8JfoevioVViK1QfaeYTZy9MNW7JxKzEpA8U=
X-Google-Smtp-Source: ABdhPJwpKjGjd4idw/rjO/1hkp9FNEd/UAn0Lz19hkNRDxa/N0dKFiJixFIYGi8RKESWXWUO5Zv8L9dkToZ9L3+Pp4I=
X-Received: by 2002:a05:6830:408f:: with SMTP id
 x15mr6904241ott.201.1618231193851; 
 Mon, 12 Apr 2021 05:39:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210409132035.197739-1-lapeddk@gmail.com>
 <67622809-1252-bfff-d114-ce11f2c7c7dd@pengutronix.de>
 <CAKd8=GuJnm0Uz7bXOCoy8YhQ_OL_1nB3Cjq_ERrY3Xo=ynhSjw@mail.gmail.com>
 <7551e835-6109-2386-6b4b-7224aae675bb@pengutronix.de>
 <28d4e31c21b59e3ae6fcd84617207ab02e3af02d.camel@pengutronix.de>
In-Reply-To: <28d4e31c21b59e3ae6fcd84617207ab02e3af02d.camel@pengutronix.de>
From: Lars Pedersen <lapeddk@gmail.com>
Date: Mon, 12 Apr 2021 14:39:42 +0200
Message-ID: <CAKd8=Gs0yZAbBwxnzrtzRQkHNY6qEEs5FStrqnqjyyUHNgtgYA@mail.gmail.com>
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org, 
 Bruno Thomsen <bruno.thomsen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_053955_143875_E17B23C2 
X-CRM114-Status: GOOD (  33.77  )
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

Hello Rouven.

Thanks for your response.

We will need another hardware update before production so we will try
to get this added.

Regards,
Lars Pedersen

On Mon, 12 Apr 2021 at 14:22, Rouven Czerwinski
<r.czerwinski@pengutronix.de> wrote:
>
> On Mon, 2021-04-12 at 13:24 +0200, Ahmad Fatoum wrote:
> > Hello Lars,
> >
> > On 12.04.21 12:45, Lars Pedersen wrote:
> > > > > +#define BOARD_RESTART_GPIO IMX_GPIO_NR(7, 12)
> > > > > +#define TPM_RESET_GPIO IMX_GPIO_NR(3, 8)
> > > > > +
> > > > > +static void kamstrup_mx7_tpm_reset(void)
> > > > > +{
> > > > > +     imx7_setup_pad(MX7D_PAD_LCD_DATA03__GPIO3_IO8);
> > > > > +
> > > > > +     gpio_request(TPM_RESET_GPIO, "tpm-reset");
> > > > > +     gpio_direction_output(TPM_RESET_GPIO, 1);
> > > > > +     mdelay(100);
> > > > > +     gpio_set_value(TPM_RESET_GPIO, 0);
> > > > > +     mdelay(100);
> > > > > +     gpio_set_value(TPM_RESET_GPIO, 1);
> > > > > +     gpio_free(TPM_RESET_GPIO);
> > > >
> > > > We are trying to cut down on code that doesn't use the driver model.
> > > > Couldn't this be represented as a gpio-hog in the device tree or
> > > > a reset line for the SPI device?
> > >
> > > I can't find anything in the DT binding for the SPI/TPM driver to use
> > > a reset line.
> >
> > Proper way would be for this to be added into Linux then,
> > but that's out of scope for the patch here.
> >
> > > Can a DT gpio-hog toggle the pin? Don't you need a
> > > driver for this?
> >
> > You can't pulse with a gpio-hog. I assumed the TPM is in reset by
> > default.
> >
> > > I see the following options:
> > >
> > > 1) gpio-hog with a label and use new gpiolib in board.c.
> > > 2) gpio-hog and control the pin in a boot script.
> >
> > If there's no straight-forward way to do it without board code,
> > it's ok the way it is with one change though: I missed it the first
> > time, but your board breaks multi-image support because you don't
> > check whether the initcall is indeed running on your board (See for
> > example imx_v7_defconfig, which builds over a hundred boards at once).
> >
> > Easiest way to get this right is to write a board driver.
> > See arch/arm/boards/lxa-mc1/board.c for an example.
>
> TPMs usually don't have a reset line since it is a hardware misdesign
> if the reset needs to be done within the bootloader. This opens up the
> TPM to an attack where the system is properly booted, unlocking keys
> which are only accessible if the correct PCR sequence is send to the
> TPM. Than the attacker resets the hardware/CPU, but potentially loads
> up a different bootloader or tricks the bootloader into skipping the
> TPM reset. This will leave the TPM keys accessible even if the system
> has not been booted with the correct measured boot values. Boards with
> TPMs should be designed so that a CPU-Reset always results in a TPM
> Reset as well.
>
> Regards,
> Rouven
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

