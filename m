Delivery-date: Mon, 13 Jan 2025 14:39:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXKek-000cFl-24
	for lore@lore.pengutronix.de;
	Mon, 13 Jan 2025 14:39:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXKej-0002RB-Vy
	for lore@pengutronix.de; Mon, 13 Jan 2025 14:39:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dbuuI74cnfpP14oNvXj/I5gHSdqOOpuApO9ke3AAGnU=; b=Hi/VS+ZVETqeFqMyLSXH7VepVE
	C9npedqW7DkXtVRCGJ7ctpk3jTz5awsN0n6sXCCMFXWmglIlzQLjjpjyhgC8xssXBGOxxtcVJSkXD
	MEmUkNH6fpJTuq8RvSej5sjNU5DPKA23HT0W7xwskKRlvXmQIScMJG13VoqVVBl+uJtExpXOM6/pG
	QySJFGkoIhM3yLQA5LxNBpYsDJQ6DAesw+FEs89J9WNAQfZLLBX8BYZELsBdWUCzJx0kfat4grFjW
	NvVudrehldm/n/nXIN3y5aNXE8JMgP9NFuQKLtyMc9lus9RKGhReB8SEYrMOsgiEmuLNUvhjI57X7
	bAHa+JpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXKeI-00000005HGF-1QNC;
	Mon, 13 Jan 2025 13:38:34 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXKde-00000005H7Y-34OY
	for barebox@lists.infradead.org;
	Mon, 13 Jan 2025 13:37:56 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-2f44353649aso5702466a91.0
        for <barebox@lists.infradead.org>; Mon, 13 Jan 2025 05:37:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736775474; x=1737380274; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dbuuI74cnfpP14oNvXj/I5gHSdqOOpuApO9ke3AAGnU=;
        b=fmsFPCwCYd3xcEriF9NSldRUfec7B2dcHnR/TjOAHUmfvs5aFNQfO2eauK18Mew/6G
         qtZMeHd8SUHYt/U6TthOgsM0rkTYlziTVSfPxS0uj+i10OMYh43oXZ51Ja5CANK3hv7w
         hHmi+mmyvcWeadNbdgVpp5g74eCLLtLJguMQL/sUaujMtzxnq7v9XdBxmRDS10TzINoJ
         jPiYGdRiNIao654PQOjZw1l1kYk4ECdfiubiqp6bHJikSSTISUfDRVKtSMfC0XNaO7dd
         FjAGz4QGRkJ07BsW59TuBqLmeeMkGoln4nuk1SSd/6AfZl/qNr4xxhS6NqS+9BebKMi3
         2VAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736775474; x=1737380274;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dbuuI74cnfpP14oNvXj/I5gHSdqOOpuApO9ke3AAGnU=;
        b=beJw65gayyoXqWu7epje2tDSvMOD28ePe2jjS/GZX/vUxD6tZOKZ9QudeUsPMJf5pn
         CArR1FcCS0Vbw3ayexaIPwjEfiJ8YBjHxdYUU9b3XcikRinjyCVmhv5VItwNkzexDc6P
         3d5BRCKPiZxSdxeyAmema9xK9Cp41jQtkI2w0RSO2keCBwygBEnKUuagB4WmLnuykVWT
         BLHKzsDdYTVDiZX4mO9ohhfjL0CoDAOds8xBCMAykD9LiZvIOjo5FOox5LctzYmwhkzO
         WAPEAQ5roHKg7KbSbzET8X2VxCJjR6sqNBtRJQSkUNfJKFYjBCwZqnwoualys3NPzQpp
         26nw==
X-Gm-Message-State: AOJu0Yxs/0GSG9g9gN6Sq3PE3uN+WZoTY4xzog5gEnlXqUWn8Mia15Zr
	80niqt3UeJGlYPI4D2nzevFw0L8ioy51hn2NLGADrfgXlr+6zlnCzpSuFfxvty1T7JgoohVAA2H
	cKWMjftszFkpzEm0c5cjcPO67K/udzsUqGD2Otg==
X-Gm-Gg: ASbGncsDu+DF4j5NC/0pKOdCz1crTOIU8ly0am5fjEjuOmdx4IqfudST8uKmhsoINiM
	Y4tSMpCIckCEKkJbq78za/mxW8HEluxbDPT8BA+s=
X-Google-Smtp-Source: AGHT+IEJoosz7pcQnzYGaZoiOT8i2r8YdXAJTn0acQPCjs3mLCVN5dmRAjjYw1aWx/pTh8+ObuuHx01mI1iBBJTicX8=
X-Received: by 2002:a17:90b:270c:b0:2ee:6e22:bfd0 with SMTP id
 98e67ed59e1d1-2f548ee48demr27263289a91.21.1736775473767; Mon, 13 Jan 2025
 05:37:53 -0800 (PST)
MIME-Version: 1.0
References: <20250113070216.16303-1-eagle.alexander923@gmail.com> <757d2274-534a-4cf4-b6fc-0e990c5dd601@pengutronix.de>
In-Reply-To: <757d2274-534a-4cf4-b6fc-0e990c5dd601@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 13 Jan 2025 16:37:41 +0300
X-Gm-Features: AbW1kvYwDEt_fovOWTlJ7srAk50tM4YZF5P0UMWnMiKXz65t4OCVV47MkZlghQo
Message-ID: <CAP1tNvQMYokRvvj_SwUq1_qETmTqS2-cY7chbat6wqqFeyydrg@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_053754_788551_FBFFE765 
X-CRM114-Status: GOOD (  24.48  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] i2c: at91: Fix driver for SAMA5D2 SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

As far as I understand, AT91_TWI_TXCOMP is set at the same time as
one of the AT91_TWI_RXRDY or AT91_TWI_TXRDY signals, so we need
to check these bits first to perform the read or write operation of
the next byte.
If it was the last byte (when the STOP bit is transmitted) we exit.

Thanks!

=D0=BF=D0=BD, 13 =D1=8F=D0=BD=D0=B2. 2025=E2=80=AF=D0=B3. =D0=B2 16:17, Ahm=
ad Fatoum <a.fatoum@pengutronix.de>:
>
> On 13.01.25 08:02, Alexander Shiyan wrote:
> > Most bits of the AT91 SR status register are cleared after reading,
> > so we may lose the status at the end of the wait loop.
> > Let's use the value already readed to check for "completed" status.
> >
> > Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> > ---
> >  drivers/i2c/busses/i2c-at91.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at9=
1.c
> > index dbc5aa4ddf..8929dbaede 100644
> > --- a/drivers/i2c/busses/i2c-at91.c
> > +++ b/drivers/i2c/busses/i2c-at91.c
> > @@ -276,7 +276,7 @@ static int at91_twi_wait_completion(struct at91_twi=
_dev *dev)
> >
> >               dev->transfer_status |=3D status;
> >
> > -     } while (!(at91_twi_read(dev, AT91_TWI_SR) & AT91_TWI_TXCOMP));
> > +     } while (!(status & AT91_TWI_TXCOMP));
>
> This makes the function harder to reason about, because the status read
> is done at the start, but only acted upon at the very end.
>
> Would it make sense to change this to a while loop or move it into the
> loop directly after the other status read and early exit if it's true?
>
> >
> >       at91_disable_twi_interrupts(dev);
> >
>
>
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  =
|
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|


