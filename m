Delivery-date: Tue, 25 May 2021 09:38:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llRdl-0008Jv-2i
	for lore@lore.pengutronix.de; Tue, 25 May 2021 09:38:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llRdk-00061M-5E
	for lore@pengutronix.de; Tue, 25 May 2021 09:38:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zhst6qAu7r8Vj77NBnnwF7nA+Fk2m1PVHfaxHtLJ6ro=; b=QcI3sdHPGMxisj
	sogMMEzYEj/AmSZev3E/1d0Bb64izUiX582KL3L2HwzD8sJi+Tp0oGjkxi/RRCCMg/5n0ZpKwa8rs
	WfTW7s97OVDhRF/eHilDOyvaEJeLEVYBsnHqRQWf0TIOcCfU9oTqKIfpyDlgC8WJ4R4z1VntpXiuI
	t8Yij83QAyEsOL3qfp5SbfpULy/Z44515rRR7jWqRfPbrbv2yHmVEinFwkE1wQwV6tKx07itgRDi2
	5y0hCbU06GgD2Y/RDkPhs3tTkQrqUOYrnzIFVXJyTjVUyu8suB/qxuOCkkvWZbmLBnLI2fkNnDhqO
	3XG2uFKZva96GDE5JYeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llRcW-003wbL-2v; Tue, 25 May 2021 07:36:56 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llRcR-003wae-0I
 for barebox@lists.infradead.org; Tue, 25 May 2021 07:36:52 +0000
Received: by mail-lf1-x12f.google.com with SMTP id b26so28480741lfq.4
 for <barebox@lists.infradead.org>; Tue, 25 May 2021 00:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PbX8gvCE8sBN4zWgJb6KdaO0veznUqP8fPAzuO5ZUbs=;
 b=JtV9xXdN1OcsIgm7ZWiFzYw1WoeIfhReOay9qfFsP4Uny2bvJE3Wj8UbO1+4lLUsIY
 a0vOWBVx4FF7+HyKfiMcf9cUvkxdRkDFBxYebJoHjouENbAIo4GiLJ+uodYK4okVVkBZ
 k4dyXSFHRj+Eob+NPuFt3aXTNsJlU2+CE+txnWuOeizL4JGKBdtLyYRMtzP8U2hmuQnG
 CJ/oxZOwE6YdBKaCcN5XzKhhkIVvTFGHJ9Ro+2gAkcqWZwKAwC2lFntyzhmhky7k5SrQ
 LVe2Byt4dBlxZNG6qfb32k0cDB3wSxpNo/DvLNHW9xh9TgagK4jm2xdgNpenn+fyDxOM
 3G7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PbX8gvCE8sBN4zWgJb6KdaO0veznUqP8fPAzuO5ZUbs=;
 b=GQjSf0WjdwksjXnTpE8c0U6blvWZF5SBOgORuj2OYrEZK9IFsx3t7nynQXhThXq7vS
 QDALDojFLDIQalHk1LurxoWwwE8g5JAKf4RM0ZQkygu9uYDls1q7HToZhJXOxgfdQSpr
 Dlpfhk+NU5R5nDV9Wunz738DYYcrjdcXxL/NNnBTzAVqRe/+6MuMKCDllG8d2HgFlYlV
 Gg31yr8Bmpa91J7o03O+XLoSQptRDpEsrvlrQ4a64gIOK9zL7sxMfhBFatyXgbiq90aH
 bOTqktq3TZGr9E15Epi7+fLApC+VyoLsTvXwl4ynch1wxGzu9w4baLfe0CFvd2xn1wtG
 e2Ug==
X-Gm-Message-State: AOAM5317rMbPtyKn5ZmUXWF2qq4NjzSeQrBL/Reoocl7emuMWofqM18F
 TbJKRFgpQdTdpcu0+szPPgU=
X-Google-Smtp-Source: ABdhPJycny0U2xd/PMYIi9tmx9SWEKWL7ZpkFuEtS5JznO38aulJLCfi2NYX7gV++2uVvtVWfN/Z/g==
X-Received: by 2002:ac2:5e69:: with SMTP id a9mr13079500lfr.387.1621928209439; 
 Tue, 25 May 2021 00:36:49 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id t7sm1751705lfe.170.2021.05.25.00.36.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 May 2021 00:36:49 -0700 (PDT)
Date: Tue, 25 May 2021 10:36:47 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum
 <a.fatoum@pengutronix.de>, Marek Czerski <m.czerski@ap-tech.pl>
Cc: barebox@lists.infradead.org
Message-Id: <20210525103647.b4c08389183128e7abea97a0@gmail.com>
In-Reply-To: <20210525071952.18045-6-antonynpavlov@gmail.com>
References: <20210525071952.18045-1-antonynpavlov@gmail.com>
 <20210525071952.18045-6-antonynpavlov@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_003651_066537_9146A038 
X-CRM114-Status: GOOD (  21.46  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 05/10] litex serial: add setbrg callback
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, 25 May 2021 10:19:47 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

Hi all!


> From: Marek Czerski <m.czerski@ap-tech.pl>
> =

> setbrg callback (set baudrate) is needed by the loadx/loady commands.
> Because litex serial has fixed baudrate the callback only checks if
> the requested baudrate is the same as the CONFIG_BAUDRATE.
> ---
>  drivers/serial/serial_litex.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/serial/serial_litex.c b/drivers/serial/serial_litex.c
> index 8562a45ecc..9d35a6e44a 100644
> --- a/drivers/serial/serial_litex.c
> +++ b/drivers/serial/serial_litex.c
> @@ -58,6 +58,13 @@ static int litex_serial_tstc(struct console_device *cd=
ev)
>  	return !litex_serial_readb(cdev, UART_RXEMPTY);
>  }
>  =

> +static int litex_setial_setbaudrate(struct console_device *cdev, int bau=
drate)
> +{
> +	if (baudrate !=3D CONFIG_BAUDRATE)
> +		return -EINVAL;
> +	return 0;
> +}
> +

I have sent this patch separately because it need special attention.

LiteX serial port hardware has fixed baudrate and setbaudrate has no sence.
On the other hand absent setnbaudrate() litex serial makes impossible =

to use Y-modem data trasfer.

I don't like CONFIG_BAUDRATE here. Can we use =


	if (baudrate !=3D cdev->baudrate)
		return -EINVAL;
	return 0;

instead?

Please comment!

To: Ahmad
It looks like CONFIG_BAUDRATE is a one more global defconfig parameter
that complicates "one defconfig for all RISC-V boards" approach.

P.S. There is typo in litex_seTial_setbaudrate name. I have noted just now.
It should be fixed of cause.


>  static int litex_serial_probe(struct device_d *dev)
>  {
>  	struct resource *iores;
> @@ -73,7 +80,7 @@ static int litex_serial_probe(struct device_d *dev)
>  	cdev->tstc =3D &litex_serial_tstc;
>  	cdev->putc =3D &litex_serial_putc;
>  	cdev->getc =3D &litex_serial_getc;
> -	cdev->setbrg =3D NULL;
> +	cdev->setbrg =3D &litex_setial_setbaudrate;
>  =

>  	console_register(cdev);
>  =

> -- =

> 2.31.1
> =



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

