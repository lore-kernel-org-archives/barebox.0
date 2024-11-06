Delivery-date: Wed, 06 Nov 2024 14:34:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8gB2-005Xlt-19
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 14:34:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8gB2-0000C1-VD
	for lore@pengutronix.de; Wed, 06 Nov 2024 14:34:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:
	From:Subject:Cc:Message-Id:Date:Content-Type:Content-Transfer-Encoding:
	Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A7TgnYYWy0F0fWRv3HOw3BSoIvXmvi4ZMuefTQmSC18=; b=rPiX0CZw7aMeMbrJasFdDt2jJ4
	jcpfg8Y69Jy/8xbbUvYNwOrPYhTHVEM5AkDTh14P0JG/TQSBfWNLsL+xjR6d4cGRoduqZKp/FZaSL
	OcE61aqVOw3b1qUyyPhD1dEjkMoGNHI7DS0QDOghWm7bT9ExcprlgJj91ZJfgb6ckQokzl3toPnbc
	GB92ZP9BaJOi/O0QsrrVbhsioIBNUGDGYbzwp4PsLucKsLQblnATnCctLK5o2LuHzuynUjULY3nzQ
	o0dJnAi0BBFyHwiKzwl18r9Gdwao2+sNvpq1Sa7X7XI1V3dDPBTg9TW8TdXLE+kcQxR3dfaeuh9KN
	b/XcPAJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8gAP-00000003QqV-378j;
	Wed, 06 Nov 2024 13:33:49 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8fbe-00000003Knp-14hq
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 12:57:55 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-431548bd1b4so56140545e9.3
        for <barebox@lists.infradead.org>; Wed, 06 Nov 2024 04:57:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730897872; x=1731502672; darn=lists.infradead.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A7TgnYYWy0F0fWRv3HOw3BSoIvXmvi4ZMuefTQmSC18=;
        b=YDcCnlBkQlBfb3okE1fTlNXdo1oetIyd6826V04KLEgZHjt9g5UeMtHjZ9z4ZlKNCy
         C8QnVv9LQIc5HrNP5rrCfl/JsDjKmepEpgbLWHCn3t1/+allzNz2Ts5I6Ddtz6Jzi5lL
         G4AB403Uvh6WenvN4MPKIvMfipf7LlY675nRAxdmaZeAekN6Pe0XQRAUodY5+xK75AV5
         JEJNnzRFfejpMLF1VWs+YdygVmGqddDgJLDR348yx38+RDMIFmm54weZuCUR5glkzj3q
         wjC38uqubJXm3KIbjfeuO0JMHX3fqeSqeS0GL1dlvgxd6V97XkpBdGca6/g97KpXefQF
         /SCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730897872; x=1731502672;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A7TgnYYWy0F0fWRv3HOw3BSoIvXmvi4ZMuefTQmSC18=;
        b=uZKcCU2a3YmEGoWrAqjS7CW0WC50ImJooaniL0LktJ1Ftrg+WWmZnBx3iaxygUez9G
         Flq35r1733hQ8LmNKZju2UjtcrsqcX/bbkVvHwH7mpsjAz2Y/rwL6KA+rhkOQNp9MUDE
         Ta2M/AkO4+9fysAu4a2fVmKmJSYh4qh9zeu3SeeYV3EyVjczdJAIjpBKG9EYOBnZPtA8
         M+wrCXXIe85MDz8QWYv3byALPLBk5CdmBmsyfbzoDVXSZ21mDBoaeU3DESQt6Mc34w01
         Q/BU4EHoeB6KXJiXEsocU7TstbxW85D5tQ3BV02OrOYDxZCAm3IoWEw0e2biOao02Myq
         h9Iw==
X-Gm-Message-State: AOJu0Yz2QlahXSpSFbB9gpBEDgwmL3JU9heru+6yHXO2sEYBRB3U+SdY
	NxOCDTaBWEOQ9ukSzErDj/sf6IIhXeraSvM17fBfhc23Zgehw5OTKWg1gQDp
X-Google-Smtp-Source: AGHT+IFiz+ZIBsmD2ojqdXHSBxebYBYnQsQ/Lnod0JUG5naDXK2e3XHAcvTg5HU1x+aH+XY1G2lI9Q==
X-Received: by 2002:a05:6000:1449:b0:378:7f15:d51e with SMTP id ffacd0b85a97d-381c7ab29d1mr16590459f8f.43.1730897872104;
        Wed, 06 Nov 2024 04:57:52 -0800 (PST)
Received: from localhost ([2a01:e0a:1b8:9000:8227:2526:4e85:b6ad])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c10ea7a1sm18858452f8f.62.2024.11.06.04.57.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2024 04:57:51 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 06 Nov 2024 13:57:51 +0100
Message-Id: <D5F434LTU1LZ.1KK4GTAAYPQEM@gmail.com>
Cc: <barebox@lists.infradead.org>, <oss-contrib@rtone.fr>, "Sebastien
 Bourdelin" <sebastien.bourdelin@rtone.fr>
From: "Sebastien Bourdelin" <sebastien.bourdelin@gmail.com>
To: "Sascha Hauer" <s.hauer@pengutronix.de>
X-Mailer: aerc 0.18.2
References: <20241031092721.763280-1-sebastien.bourdelin@gmail.com>
 <20241031092721.763280-5-sebastien.bourdelin@gmail.com>
 <Zyi9nvr3acntKtkc@pengutronix.de>
In-Reply-To: <Zyi9nvr3acntKtkc@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_045754_318189_F0B9600C 
X-CRM114-Status: GOOD (  22.47  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/4] mci: bcm2835: set timeout value to 100ms
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon Nov 4, 2024 at 1:27 PM CET, Sascha Hauer wrote:
> On Thu, Oct 31, 2024 at 10:27:21AM +0100, Sebastien Bourdelin wrote:
> > From: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
> >=20
> > As mentionned in the Raspberry Pi4 bootrom Changelog [1]:
> > "Increase timeout of early SD/EMMC commands to 100ms".
> > The BCM2711 SDHCI can take up to 100ms to complete a command.
> >=20
> > Without this change, we had noticed that Barebox sometime stay stucked
> > on a timeout error while trying to boot Linux from the eMMC.
> >=20
> > [1] https://github.com/raspberrypi/rpi-eeprom/blob/master/firmware-2711=
/release-notes.md#2022-03-10---promote-the-2022-03-10-beta-release-to-lates=
tstable
> >=20
> > Signed-off-by: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
> > ---
> >  drivers/mci/mci-bcm2835.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >=20
> > diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
> > index cbf99ee7ca..3b086ed22c 100644
> > --- a/drivers/mci/mci-bcm2835.c
> > +++ b/drivers/mci/mci-bcm2835.c
> > @@ -128,6 +128,10 @@ static int bcm2835_mci_request(struct mci_host *mc=
i, struct mci_cmd *cmd,
> >  		block_data |=3D data->blocksize;
> >  	}
> > =20
> > +	/* BCM2xxx SDHCI might take up to 100ms to complete a command */
> > +	if (cmd !=3D NULL)
> > +		cmd->busy_timeout =3D 100;
>
> Do we need this for all commands or just some specific ones?
I actually have no idea, the CM4s datasheet doesn't give much
informations regarding the eMMC controller and we just found that
information in the rpi-eeprom changelog, and saw it was also the defaut
timeout value used in U-boot [1].
After this change, we haven't been able to reproduce the issue.

We know for sure this issue happens at least on a read
command.

[1] https://github.com/u-boot/u-boot/blob/master/drivers/mmc/sdhci.c#L195
>
> cmd is always non NULL, no need to check.
Ok, i can send a v2 for that, just let me know if my explanation for
your first question is enough.=20
>
> Sascha



