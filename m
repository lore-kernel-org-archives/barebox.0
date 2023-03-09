Delivery-date: Thu, 09 Mar 2023 18:54:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paKTD-00F69H-SD
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 18:54:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paKTD-0001Nk-MT
	for lore@pengutronix.de; Thu, 09 Mar 2023 18:54:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wS4DDUeSQ+89yxScjZRyEEtbmUdDbWqM2rOoGkdVLjY=; b=ZPhJB6Xv/6MNYT7aww7a6HOiCg
	hwrYmK97rs/yTwcZi9SGiFoaDfSkywNKmmBChrPLJkn+EUudjwWrpBp09YnSIs4fzIyxzl8b7BGRt
	AJ/serqtQ66GQhTZiXN6XYX8luGIRneNBTFn0wEmPLL/uPKLzmlBpuvy1f676hGrXygQ2GW+d2Qab
	dX/JGDaCBWyK5Sh4TLGw/mIpRFUvaEnahUMRuMsxoVpQXEemNDL3OTcQEsA9AUzTSkm7dR+4+hLwP
	qQ4CQhFVYTmSMoi6BJiSnL3dwXsKHWtIJFljrBim3aloE91VJBvN9DwsdDTaUYuVig/n2j9jijUl/
	BW5ECNjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paKRz-00BTxc-9W; Thu, 09 Mar 2023 17:53:11 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paKRu-00BTwW-NF
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 17:53:08 +0000
Received: by mail-pj1-x1035.google.com with SMTP id x20-20020a17090a8a9400b00233ba727724so6170590pjn.1
        for <barebox@lists.infradead.org>; Thu, 09 Mar 2023 09:53:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678384384;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wS4DDUeSQ+89yxScjZRyEEtbmUdDbWqM2rOoGkdVLjY=;
        b=kyaeKzPs441IEwXWl/pS8ms2EUw+NM6Skd4eC3x8iub2SXwo/IDBnnx9/r83nmmWuq
         4seAobNnEixar0ZCPl4o5pv0Ca8wezUo38HO1f2R8xgbTyGHGPsUJhjdMcglx8zjxNaD
         7CTISz5L3XhlJkPOZQPuuQu09YChCNiIRdN4ztTC90KxPwzCiuUViB0/nKu5ISJ94oFT
         nu+nuCotbYAfcaIm/LLak+oeKlrG1RsiEwWJmfKtKBelrCIa4pUUHsQ7bskfuRwUPhuo
         /K3WjkSbOduNZeT5w8o46kwE/CskrZhLviqgbPG4nWFMY3pbeBaWU1vNhN7862a5eyUV
         Uo2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678384384;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wS4DDUeSQ+89yxScjZRyEEtbmUdDbWqM2rOoGkdVLjY=;
        b=WpHtPZFz+fWyRygFkTjla2VhMxmPGFCDnI2nCOj4RY1oGFePk8japHbuZvaZEFG3/l
         L/emyLtTDbDaDA7Q8ej0SAu+qm6hTyPNm6lbqI+Dm6HAx9tt0MoKx8xixOXBtj8yWsIQ
         yp7/1a7qVE1DSzP7WNsbp5UjprWK+MKnEoGKeNXizCQbgPV5438g5CI2QIe6E8j8l5aw
         3w5TXUCAysmn9X6YUTv6DmzK16HGLi3vyVjW9jdkCzaCuqJpdfTfhU2lfkq4NKgLpDSS
         AHuFdz/t0sTzF1mZESA7ylW+dzRDdafV+ccTgn/e64qDh97a0mDqqRsoWHpOmI6/xv7o
         1HSw==
X-Gm-Message-State: AO0yUKUZjueczwiNoWcrWg6wIsG0V/e+FQgi/lSs+HJWL1ZsfSLh58Ix
	OUabJW+a8lv3pNUYqQnRXuKbn8nwBeLyrnNUyfShIBgeGj0=
X-Google-Smtp-Source: AK7set/KSn3Gm99Oy9gzEi2YralGGr8mHr7zG07TsblNoHnvXwy/1Uj8ox8jYQw/vWdhqnQjX1Sr36oPlm4HBYhBR1A=
X-Received: by 2002:a17:90a:f0c9:b0:237:4a5d:5a57 with SMTP id
 fa9-20020a17090af0c900b002374a5d5a57mr8623778pjb.1.1678384384522; Thu, 09 Mar
 2023 09:53:04 -0800 (PST)
MIME-Version: 1.0
References: <VI1PR04MB5007D429B9FDF43D49A6CC99BFA19@VI1PR04MB5007.eurprd04.prod.outlook.com>
 <99a13ddf-b3ef-d34f-ed1a-b2d9e054bc7b@pengutronix.de> <VI1PR04MB5007DBB5A110F7B04EC03BB6BFB59@VI1PR04MB5007.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB5007DBB5A110F7B04EC03BB6BFB59@VI1PR04MB5007.eurprd04.prod.outlook.com>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 9 Mar 2023 20:52:52 +0300
Message-ID: <CAP1tNvRu6qFrbRhJ3Wyam3hG7hgxxd19OQ+hN=T+huog4SOhLg@mail.gmail.com>
To: "Klotz, Oliver" <Oliver.Klotz@knorr-bremse.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
	"barebox@lists.infradead.org" <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_095306_777750_C7B83C75 
X-CRM114-Status: GOOD (  16.27  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: SPI NOR w25q128 "flash operation timed out"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello.

=D1=87=D1=82, 9 =D0=BC=D0=B0=D1=80. 2023=E2=80=AF=D0=B3. =D0=B2 20:39, Klot=
z, Oliver <Oliver.Klotz@knorr-bremse.com>:
>
> Hello Ahmad,
>
> while doing the bisecting it turned out, that the issue with w25q128 is n=
ot related to a specific Barebox version
> but to 2nd chip select of the SPI bus.
>
> In older products we are using Barebox-2016.07.0 and there is just the SP=
I NOR as single SPI slave (spi0_cs0).
> In the pinmux only spi0_cs0 is multiplexed. And this binary works fine on=
 SOM with n25q128a13 as well as w25q128.
>
> In newer products we are using Barebox-2021.07.0 and there we have a TPM =
(spi0_cs1) as 2nd SPI slave.
> Since Barebox doesn=C2=B4t support TPM I have removed the TPM slave node =
from spi0, but sp0_cs1 is still pinmuxed.
> This is just because I reuse pinmux section from the Linux dts.
>
> Whenever sp0_cs1 is pinmuxed I observe timeouts with w25q128.
> Strange thing here is that exactly the same binary works without issues o=
n SOM with n25q128a13.
>
> Also in the Linux dts the spi0_cs1 doesn=C2=B4t cause any issue and TPM a=
s well as w25q128 are working perfectly fine.
>
> So removing the spi0_cs1 from the Barebox dts fixes my issue - please ref=
er to dts below.
>
> Although I have a working solution I would appreciate your thoughts on th=
is.
>
> Best regards,
> Oliver
>
>
> spi0_pins_default: spi0_pins_default {
>         pinctrl-single,pins =3D <
>                 AM33XX_IOPAD(0x950, PIN_INPUT_PULLDOWN | MUX_MODE0) /* (A=
17) spi0_sclk.spi0_sclk */
>                 AM33XX_IOPAD(0x954, PIN_INPUT_PULLDOWN | MUX_MODE0) /* (B=
17) spi0_d0.spi0_d0 */
>                 AM33XX_IOPAD(0x958, PIN_INPUT_PULLDOWN | MUX_MODE0) /* (B=
16) spi0_d1.spi0_d1 */
>                 AM33XX_IOPAD(0x95c, PIN_OUTPUT_PULLUP | MUX_MODE0) /* (A1=
6) spi0_cs0.spi0_cs0 */
> #if 0
>                 /* Do not mux spi0_cs1 which is for TPM, but causes timeo=
uts to Winbond w25q128 SPI flash. */
>                 AM33XX_IOPAD(0x960, PIN_OUTPUT_PULLUP | MUX_MODE0) /* (C1=
5) spi0_cs1.spi0_cs1 */
> #endif
>         >;
> };
...

A click on the SCLK on the chipselect switch may have an effect.
Try this:
AM33XX_IOPAD(0x950, PIN_INPUT | MUX_MODE0)
AM33XX_IOPAD(0x954, PIN_OUTPUT | MUX_MODE0)
AM33XX_IOPAD(0x958, PIN_INPUT | MUX_MODE0)
AM33XX_IOPAD(0x95c, PIN_OUTPUT_PULLUP | MUX_MODE0)


