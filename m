Delivery-date: Mon, 12 Apr 2021 14:11:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVvPg-0005Ae-A9
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 14:11:32 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVvPf-0003BX-DW
	for lore@pengutronix.de; Mon, 12 Apr 2021 14:11:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hy9yz2gqWk4h0yssFJPbt6e93RSBL8FQuaG4bBKtGVY=; b=S8go6ikj7ArWFqUrY1YRBStI1
	dSoedxLrVkhO0NzpQqprAsSaKy4B5q2bEFW67x6Q/Bzh1RPYYHxuzK1RHH7VllcR2p0NwLCF8vuYF
	IdPTHPKMmMigtzQAH1J2rd5XK2yQ8OWI6Ki4aej+EC6vIGjHAejcLX5YGCQDoPAHaJX+ettpx29tQ
	pQGtnRGlrKlCjb9MBq4E47IJQAMrYxm8Hpuq07uNCQUFw6W4lyVreU47Cf/psQ3CwX/FQYoOZDaZd
	OoBXzBVOwm3a5dFr/+D3aL0KB1EeZ0mgzbn4u3kRsociws2OLzTo4CR1LNav4bA1RKBKjrP5Mp+9W
	ldvlYYPJg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVvNb-006e7L-C3; Mon, 12 Apr 2021 12:09:23 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVvNY-006e7C-5N
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 12:09:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=7+1Jgsbco8bFXffrYNtqouyfvVL672jIGpetpCjIymI=; b=Xjy4lc7GwMne/Qxw4OuCbkBtZ6
 q8EM4PYZVfukmqc76XmUhnchfwQNrirfvlDl9v+0ORlfCxIRoPbang9RAmCHFFrBb685p5pP9FqxA
 4Bdc8+q6WMCxRJFtYoyFciH+XMoDdVEravhsXKd0HaNY66FeMOlGTvngtW0h69hclhXY0PE/M8hIW
 8+xaAiR+WCTOfH3864SBUn/YVwNkxVHHT5yMLFNNh13SyTPjoNjE0SonpLrnnF/YeLelnUXvJznGC
 jXEWDRIZzTJCJqvurHpO2CP6/+fE9TEGXVEVOlxJH5swH9G1/8iOlpMfllGehifjJU4qwu+Cdk9Qq
 dXK+upbQ==;
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVvNV-006Cni-5i
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 12:09:18 +0000
Received: by mail-ot1-x330.google.com with SMTP id
 k14-20020a9d7dce0000b02901b866632f29so12562220otn.1
 for <barebox@lists.infradead.org>; Mon, 12 Apr 2021 05:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7+1Jgsbco8bFXffrYNtqouyfvVL672jIGpetpCjIymI=;
 b=P8epfj+OmPnRfsyEsLBzvvF5GJb0D0EfjC7zfnan1V139wvogtbDpWyGn/0bzymIOz
 VNA/UluZeqJ85nMBx6JAOhvDw2JfR1L3ATYgoiRheCcuL+6DEfMHipwrCP70QMkkhv9L
 xUI9H0qYqG3ELBWcjL3se/i/jMMZVtzCgLEmcoaq/EoXqSK7vUP5YctSU3WjhjTAKkmB
 RWdg6DluCZrJMjU9XSf0HueqxY2Ao7zR+Wb54XngOMIc0/VuKIM9/Bo28aQI5Z6xWRdA
 u7uUpKaU/f/+J4ryi9VeALde6NgFTkrCPk3PpQgaKvUO+1dvJg/4+atMHnbNcNieUNFA
 WYlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7+1Jgsbco8bFXffrYNtqouyfvVL672jIGpetpCjIymI=;
 b=ZRwbqyT7O+JRk+WRcclBmpeBHZA2EaBHRXzcg4g+RDOTTbUyDODLFW7Nk2Kr96kxCz
 8qBRe751phJCbHWW9nukEhlaFI81oHKocSgOcpvxErP/vuIW53zHiFYUIIwhN18V6tfe
 XzfUksRQAOSao2d+TtDRayILmERZ3E4/coEZCWkY7rm2gm+BCftN013I6db1Edvd2m4R
 zqHZTcAHDKdtopZYSjNLgvlwX+ji3qjvS45EixXjN/dENfD18gBwqPiULqxtDESJAuws
 Mzw8xx8dJ7xFjTJE688Xerc8bty3YrfZehAilwoOsxCPi2XYz1ls5lwWWm8CcdQiEceU
 5T1A==
X-Gm-Message-State: AOAM532VrNW65AzN6oHNUtgMeCc2x61xuzKhRpJyDoeqrGjEBiyrH+a/
 omhY8MnGKa5e8ad6SdART45cH3tfHN9oikYDEiI=
X-Google-Smtp-Source: ABdhPJznYq1KCusZgea9P+7CpBwB8ZB6Zwb8kbfmJNFKUCY5VLeYE69Rth8bZcj6bfoEPMuDbEGEE3n0p6wPekWF+uM=
X-Received: by 2002:a05:6830:408f:: with SMTP id
 x15mr6799163ott.201.1618229354153; 
 Mon, 12 Apr 2021 05:09:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210409132035.197739-1-lapeddk@gmail.com>
 <67622809-1252-bfff-d114-ce11f2c7c7dd@pengutronix.de>
 <CAKd8=GuJnm0Uz7bXOCoy8YhQ_OL_1nB3Cjq_ERrY3Xo=ynhSjw@mail.gmail.com>
 <7551e835-6109-2386-6b4b-7224aae675bb@pengutronix.de>
In-Reply-To: <7551e835-6109-2386-6b4b-7224aae675bb@pengutronix.de>
From: Lars Pedersen <lapeddk@gmail.com>
Date: Mon, 12 Apr 2021 14:09:03 +0200
Message-ID: <CAKd8=GvvoobiudVaRp7qdDU-P4k1herndE-AXoiZkLtoc5R-vw@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Bruno Thomsen <bruno.thomsen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_050917_256406_8DE5AA4E 
X-CRM114-Status: GOOD (  38.73  )
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

Hello again. Thanks for the quick response :)

On Mon, 12 Apr 2021 at 13:24, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hello Lars,
>
> On 12.04.21 12:45, Lars Pedersen wrote:
> >>> +#define BOARD_RESTART_GPIO IMX_GPIO_NR(7, 12)
> >>> +#define TPM_RESET_GPIO IMX_GPIO_NR(3, 8)
> >>> +
> >>> +static void kamstrup_mx7_tpm_reset(void)
> >>> +{
> >>> +     imx7_setup_pad(MX7D_PAD_LCD_DATA03__GPIO3_IO8);
> >>> +
> >>> +     gpio_request(TPM_RESET_GPIO, "tpm-reset");
> >>> +     gpio_direction_output(TPM_RESET_GPIO, 1);
> >>> +     mdelay(100);
> >>> +     gpio_set_value(TPM_RESET_GPIO, 0);
> >>> +     mdelay(100);
> >>> +     gpio_set_value(TPM_RESET_GPIO, 1);
> >>> +     gpio_free(TPM_RESET_GPIO);
> >>
> >> We are trying to cut down on code that doesn't use the driver model.
> >> Couldn't this be represented as a gpio-hog in the device tree or
> >> a reset line for the SPI device?
> >
> > I can't find anything in the DT binding for the SPI/TPM driver to use
> > a reset line.
>
> Proper way would be for this to be added into Linux then,
> but that's out of scope for the patch here.
>
> > Can a DT gpio-hog toggle the pin? Don't you need a
> > driver for this?
>
> You can't pulse with a gpio-hog. I assumed the TPM is in reset by
> default.
>
> > I see the following options:
> >
> > 1) gpio-hog with a label and use new gpiolib in board.c.
> > 2) gpio-hog and control the pin in a boot script.
>
> If there's no straight-forward way to do it without board code,
> it's ok the way it is with one change though: I missed it the first
> time, but your board breaks multi-image support because you don't
> check whether the initcall is indeed running on your board (See for
> example imx_v7_defconfig, which builds over a hundred boards at once).
>
> Easiest way to get this right is to write a board driver.
> See arch/arm/boards/lxa-mc1/board.c for an example.

In arch/arm/boards/freescale-mx7-sabresd/board.c they do something like:

if (!of_machine_is_compatible("fsl,imx7d-sdb"))
  return 0;

Can't I just do the same?

if (!of_machine_is_compatible("kam,imx7d-flex-concentrator-mfg"))
  return 0;

The board driver in arch/arm/boards/lxa-mc1/board.c seems more complicated.

>
> >>> +}
> >>> +
> >>> +static void __noreturn kamstrup_mx7_board_restart_gpio(struct restart_handler *rst)
> >>> +{
> >>> +     imx7_setup_pad(MX7D_PAD_ENET1_TX_CLK__GPIO7_IO12);
> >>> +
> >>> +     gpio_direction_output(BOARD_RESTART_GPIO, 0);
> >>> +     mdelay(1);
> >>> +     gpio_set_value(BOARD_RESTART_GPIO, 0);
> >>
> >> I just sent out a patch[1] with a driver implementing the "gpio-restart" device
> >> tree binding. Could you test that one and use it here instead?
> >>
> >
> > I have applied the patches on a master branch (Last patch failed to
> > apply but was only watchdog) and the gpio-restart works perfectly.
>
> Thanks for testing! You can add your Tested-By on the patch in question
> if you like.
>
> >
> >>> +
> >>> +     hang();
> >>> +}
> >>> +
> >>> +static int kamstrup_mx7_concentrator_coredevices_init(void)
> >>> +{
> >>> +     kamstrup_mx7_tpm_reset();
> >>> +     restart_handler_register_fn("board", kamstrup_mx7_board_restart_gpio);
> >>> +     barebox_set_model("Kamstrup OMNIA Concentrator");
> >>
> >> The default model name is "Kamstrup OMNIA Flex Concentrator".
> >> If that's too long, you could override /model in the barebox device tree.
> >> With the changes suggested above, you could drop board.c then altogether.
> >>
> >
> > I'll move this into the device tree or delete it entirely.
>
> Great. :-)
>
>
> Cheers,
> Ahmad
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

