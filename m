Delivery-date: Mon, 12 Apr 2021 12:46:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVu5n-00054N-Ja
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 12:46:55 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVu5m-0001T6-Gx
	for lore@pengutronix.de; Mon, 12 Apr 2021 12:46:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7lvIJsmZpSAf7vcCFlnxXOmJl18pbmtGRGjyClTULmI=; b=LFKGayl60s9tByCUYVHxZKHQJ
	Covk0TVQ/B5bsp/UmwqGGQg1TkSllD02rpD2hqOCaA4M7Rj5AS9Ed2NQx+rUKE6WdNFnkTVLjNH6s
	YLLryNJXy3Ig62DjQifsGknynG5yfZWxxBr6Ronj69lsmdLJRMNKJ46Kyl9eAshSHLb0uOLrczmU8
	Vkxv73W56mQURH7ZbRjg71XPAmPOZTSifWcjwx/pWrwFbXAwc68KUHIZTHiyI8mfxYp4UQBBMUeCp
	gZwYeOZPcqyVqhJGrmnGZZ7mZHGZjPnTeEli1DGkuTTISdS+KtWzKiOs8XBsgtSgwTeYemiGtaV47
	0MIq/hp7g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVu4Z-006TDi-UQ; Mon, 12 Apr 2021 10:45:40 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVu4T-006TDF-LZ
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 10:45:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=wadUYGZyaj+w8fl1yAyCIlo2swjkGKN3GwaGA4xiA/A=; b=oYSd6FVL32d9s4NnOMdnKssGxy
 e2IkOJb7YapDQH/sH5IQ9696asRPAtZt2OLFwDIXyZrIxWjOhj1OIv51+Vp4AwjzsPW684SlicxaV
 EKufdzEzXKWP/INV/zz8VFwINRUVC0pwnhTlqOo18fffZXfA72mLMUUg3Hp8B+yqjyTr7OL05wT8A
 wa5UKW/M8Cb7oVm5QQ/jCix51dA0TojO/Pjqsklk8Hj8qK6XvbdO1BbFUbYgHIgUoIbPUy8henBke
 GMzpznbz4kfaXa1mugI3UcCdzu0cItEhitIMOFcRznNUC5frhz1tvOzmg6ooj+SshSY4tZwU/00SN
 FDXraK4A==;
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVu4Q-00698v-QZ
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 10:45:32 +0000
Received: by mail-ot1-x329.google.com with SMTP id
 v19-20020a0568300913b029028423b78c2dso3745330ott.8
 for <barebox@lists.infradead.org>; Mon, 12 Apr 2021 03:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wadUYGZyaj+w8fl1yAyCIlo2swjkGKN3GwaGA4xiA/A=;
 b=KokPkKyxiYiokIOtgBYQCa3iImZUOV/1hFukbSqybICmjT7zy7VX+7vg89iuyDpyev
 fG/MaCdfieJ3JCUtPUIOLmRS9HwKbuHhqSpd773Xm0UW9wijp4eVr9QGaEnCprl0NTDn
 ECo9Hi+jTs3iOjgcfW4qyERTYkdKl3DetK/p/JK077JUP4kD3LIdrMGCzFWDNebXTH+E
 fSqeUHGUgVLQNprWq9H3WNDB1cTf/9nDejbHGbxI+QlJqWl9wJf/BScyVKp8dmzjtaGt
 vwYMsUHV5/+0DD4/O0GrKBAWhDRBtAc4aEFh0ceDvNXZpfJ+flW+5PlzfJSCQUGSu+AL
 U8bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wadUYGZyaj+w8fl1yAyCIlo2swjkGKN3GwaGA4xiA/A=;
 b=JxwsAzAceLP8CveejUmIonzc4hOiV47wVamWr26sokKc/EgUcbKzj4zh83bx0bzCo4
 LsAjHi6IwZNj3DK8Lf3hXgPyqxo6w4X/Oj0JWzbdOOsdxiqmx0rqzjUD6mDXB2VuaRBU
 DtXaxBCvJuJkxORnV94XkCzQ/bmmW5qpTus9ptDeQmaegGp5Cz9bG0TUjn+vXZAje/83
 vzQL4oqu7CH9+vOC/g+D9Qlx4UMsK3ZIPWM23D7hm/W3blSWLA+GtG08E8jzJUSvqrRF
 GDqQM9kW3eAAQKdE1r32yYuYoRSki3Ci3Pp9JZJoA+gVYhpWHisOa0CokdAYbg+Dh/eA
 rcAw==
X-Gm-Message-State: AOAM532WVdvMJ4/JlQ9swQVPtYDINWZYpMfnV+/Py/20mkWnYkw2DVFr
 nwribdO2baobQr8qKL6SIomiJAzIpwiLpa5SkR0=
X-Google-Smtp-Source: ABdhPJy+VHi3ZtSIPwX8BVcWdS/wyQTgEZZmzuxrtziWNh7JKkebzA0PjVzBdQh2oZgze6VYDOj8JlKNrqtqDAPWEdk=
X-Received: by 2002:a9d:6a91:: with SMTP id l17mr23522236otq.18.1618224329136; 
 Mon, 12 Apr 2021 03:45:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210409132035.197739-1-lapeddk@gmail.com>
 <67622809-1252-bfff-d114-ce11f2c7c7dd@pengutronix.de>
In-Reply-To: <67622809-1252-bfff-d114-ce11f2c7c7dd@pengutronix.de>
From: Lars Pedersen <lapeddk@gmail.com>
Date: Mon, 12 Apr 2021 12:45:17 +0200
Message-ID: <CAKd8=GuJnm0Uz7bXOCoy8YhQ_OL_1nB3Cjq_ERrY3Xo=ynhSjw@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Bruno Thomsen <bruno.thomsen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_034530_883931_067D0E23 
X-CRM114-Status: GOOD (  29.44  )
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

Hello Ahmad.

Thanks for the feedback.

On Sat, 10 Apr 2021 at 12:43, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hello Lars,
>
> On 09.04.21 15:20, Lars Pedersen wrote:
> > diff --git a/arch/arm/boards/kamstrup-mx7-concentrator/board.c b/arch/arm/boards/kamstrup-mx7-concentrator/board.c
> > new file mode 100644
> > index 000000000..ac32e9b05
> > --- /dev/null
> > +++ b/arch/arm/boards/kamstrup-mx7-concentrator/board.c
> > @@ -0,0 +1,51 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +// SPDX-FileCopyrightText: 2021 Kamstrup A/S
> > +
> > +/* Author: Lars Pedersen <lapeddk@gmail.com> */
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +#include <io.h>
> > +#include <gpio.h>
> > +#include <restart.h>
> > +#include <mach/imx7-regs.h>
> > +#include <mach/iomux-mx7.h>
> > +#include <mach/generic.h>
> > +#include <mfd/imx7-iomuxc-gpr.h>
> > +
> > +#define BOARD_RESTART_GPIO IMX_GPIO_NR(7, 12)
> > +#define TPM_RESET_GPIO IMX_GPIO_NR(3, 8)
> > +
> > +static void kamstrup_mx7_tpm_reset(void)
> > +{
> > +     imx7_setup_pad(MX7D_PAD_LCD_DATA03__GPIO3_IO8);
> > +
> > +     gpio_request(TPM_RESET_GPIO, "tpm-reset");
> > +     gpio_direction_output(TPM_RESET_GPIO, 1);
> > +     mdelay(100);
> > +     gpio_set_value(TPM_RESET_GPIO, 0);
> > +     mdelay(100);
> > +     gpio_set_value(TPM_RESET_GPIO, 1);
> > +     gpio_free(TPM_RESET_GPIO);
>
> We are trying to cut down on code that doesn't use the driver model.
> Couldn't this be represented as a gpio-hog in the device tree or
> a reset line for the SPI device?

I can't find anything in the DT binding for the SPI/TPM driver to use
a reset line. Can a DT gpio-hog toggle the pin? Don't you need a
driver for this? I see the following options:

1) gpio-hog with a label and use new gpiolib in board.c.
2) gpio-hog and control the pin in a boot script.

>
> > +}
> > +
> > +static void __noreturn kamstrup_mx7_board_restart_gpio(struct restart_handler *rst)
> > +{
> > +     imx7_setup_pad(MX7D_PAD_ENET1_TX_CLK__GPIO7_IO12);
> > +
> > +     gpio_direction_output(BOARD_RESTART_GPIO, 0);
> > +     mdelay(1);
> > +     gpio_set_value(BOARD_RESTART_GPIO, 0);
>
> I just sent out a patch[1] with a driver implementing the "gpio-restart" device
> tree binding. Could you test that one and use it here instead?
>

I have applied the patches on a master branch (Last patch failed to
apply but was only watchdog) and the gpio-restart works perfectly.

> > +
> > +     hang();
> > +}
> > +
> > +static int kamstrup_mx7_concentrator_coredevices_init(void)
> > +{
> > +     kamstrup_mx7_tpm_reset();
> > +     restart_handler_register_fn("board", kamstrup_mx7_board_restart_gpio);
> > +     barebox_set_model("Kamstrup OMNIA Concentrator");
>
> The default model name is "Kamstrup OMNIA Flex Concentrator".
> If that's too long, you could override /model in the barebox device tree.
> With the changes suggested above, you could drop board.c then altogether.
>

I'll move this into the device tree or delete it entirely.

> The rest of the patch looks good to me. With the feedback addressed:
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>
> [1]: https://lore.pengutronix.de/barebox/20210410103511.2073504-1-ahmad@a3f.at/T/#mc4dbda46e6bd868fc9ecfcfa42f3dbfe943bef47
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

