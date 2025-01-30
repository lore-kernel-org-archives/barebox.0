Delivery-date: Thu, 30 Jan 2025 14:46:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdUsH-006MDs-0s
	for lore@lore.pengutronix.de;
	Thu, 30 Jan 2025 14:46:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdUsH-0006IX-Aj
	for lore@pengutronix.de; Thu, 30 Jan 2025 14:46:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2OBHHGWGO1QYd0VMJyphv2YTSL8YGU8EDokCY/jtGLo=; b=bCeekIZ/MvmxUJQDwMnGUFhzyJ
	qo1bWGHebezmzetVspakTmVeielgJVqAAofue06nUamRS7zbHHeBOfoIBjSXce7GZoMCuycZJv9gA
	MReX+pGY3584rn9LiROHA5GfGBYL0jKhWIwwRo79y/2X6f05Ya8Rw1ShTfOYN79eKzEuEkG0CVA/V
	hSu1DGd1Y5gggwmQyjFIcCpgU6i0xeMQl6E+4N3YtdeCr79xxriKKPNLZvE9UrxOjIz//qvSOqFcG
	dW6wtt0iAnshrYHkjEtmyBc6vc7lBxjmyuIOQ2g+s1QO2fXcDVSgtXVAOBGmTSoDAGA/iKvZ2Iwo5
	zvkGWutw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdUrq-00000008tvx-2xBz;
	Thu, 30 Jan 2025 13:46:02 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdUro-00000008tvd-3nb7
	for barebox@lists.infradead.org;
	Thu, 30 Jan 2025 13:46:02 +0000
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-2f441791e40so1007091a91.3
        for <barebox@lists.infradead.org>; Thu, 30 Jan 2025 05:46:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738244760; x=1738849560; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2OBHHGWGO1QYd0VMJyphv2YTSL8YGU8EDokCY/jtGLo=;
        b=R8FFpJJIs9fTkTW3Oagr2QZVnLHXJvU0xbqNMDioxOYOcrXXf9fQ5Q6in4fZABkYmn
         0l4IkwOzziNKSMRTmyDLgXLjmmedYCOXNEGE/W10WW1GKnZRRuA3rzR84zxnOl+Cxwbr
         14ETg7RtsPC66mppx3PitRlyeEzTE6QVJA6ZYOSPgRwHcpIiJblFHsPB/MIXpQOEn7Oo
         I43ItvL4ccfah8wYjkmGSQAXvG4GuzZ1oJeSICes9Tqumd1STWJcnnVFmWhO/+gXRfGi
         uvgaBf0VeV/GGRmb5//TIi4TZjTOmnVTyAuC6sXyLbor9w6kcNN8tTRUHkb8pYz/hMLM
         1sgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738244760; x=1738849560;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2OBHHGWGO1QYd0VMJyphv2YTSL8YGU8EDokCY/jtGLo=;
        b=myfSd7WJpNTBNev3MDnw7GUF4Azd0ydNlztXAAgxUgVK8c26Q+QddlYRTN1aaLdwDV
         hAZZpXC9XYKi79/4c93pVIw/1W1BCyilSVUaJSQR4kuIKN+bEu3PhkWzHK4u1SXz36JZ
         Dq+Z6gdIncDU6h0sE+DLg4hjUG6g44V+r7UZw5d/g1N4V46GAWSbAVFAGQbfI5D+UYmH
         0EvJUCQb/b1aooPQkw98B6Mz/stPuZgoGHM7HB67LKdRVDGwNlpHvTARPIeV4TuSruJV
         zy3VLK+7Uhc26QHLSLueY1oux1N+lgSgYKzSgt7QzuDUoP319y/PY3YjETGfl4Ee+2VJ
         OGdw==
X-Gm-Message-State: AOJu0YyhBK46wCOwf9kxUZtbuFtlaQlkDrWzOTz0w/f6duqwS+/pqPk7
	uxva9Zhtc8+bKYO5o+Q6gqu63BIQ0kWYC8OcoC3ycNNhEXAh3Bpo+AtsqHogNHUyyrAXZtwuxgk
	3SeefRaKOT0nFddxoqVmri5yiDCQISyHvZ4A=
X-Gm-Gg: ASbGnctc/jBFrej/IErxVyjr0IpQSVPgUTUcZJHb6vIA74gL8jrt6TFa1xtflfPMRr3
	fnad2eIH/LOHFupHRwLsvDVV0xwaOH74AbRXjQQ+M/j5JdYk4jc8PlQAcu+NK+jRYFqkkRjIhKg
	==
X-Google-Smtp-Source: AGHT+IGVD/js/q6WkQOcgUierDQIIoYZT4ksMi+lILDjmO23O9OmhnQBm7jj3cwgqHjS86M8QXNoi6dLHfVMWcwZPTs=
X-Received: by 2002:a17:90a:c88b:b0:2ee:8619:210b with SMTP id
 98e67ed59e1d1-2f83acaf8a0mr10419035a91.29.1738244759912; Thu, 30 Jan 2025
 05:45:59 -0800 (PST)
MIME-Version: 1.0
References: <CAP1tNvRa-1XPm087pzti1XmqvRDqchKOWZgvgYmcAQh+uOayBg@mail.gmail.com>
 <Z5uBCoIy69dB3QH_@pengutronix.de>
In-Reply-To: <Z5uBCoIy69dB3QH_@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 30 Jan 2025 16:45:48 +0300
X-Gm-Features: AWEUYZl_lWNAv3fpX8cJwK0XGbSUDvnK1sigWSUgoAljGX_d5D-LXT-GDU1XCXc
Message-ID: <CAP1tNvR3SwMo2b1kUMzdL6BQM85yVYaK2YwxnHSKm53vg0aZow@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250130_054600_947369_29458865 
X-CRM114-Status: GOOD (  26.87  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Devicetree add-on
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

Yes, I understand that.
But maybe we can make another entry point to start from scratch,
but with another tree, roughly the same way we do with pbl?

Thanks!

=D1=87=D1=82, 30 =D1=8F=D0=BD=D0=B2. 2025=E2=80=AF=D0=B3. =D0=B2 16:39, Sas=
cha Hauer <s.hauer@pengutronix.de>:
>
> Hi Alexander,
>
> On Wed, Jan 29, 2025 at 09:10:58AM +0300, Alexander Shiyan wrote:
> > Hello All.
> >
> > The question arose whether it is possible to load an add-on into
> > devicetree, but NOT through an overlay,
> > i.e. as a full-fledged dtb?
> > Ideally, it should look like this: the main ENTRY_FUNCTION() loads the
> > base tree, then,
> > after initialization in device_initcall(), the board modification is
> > determined and the full devicetree
> > written for this variant is loaded.
>
> exchanging the device tree during runtime is not a good idea. Pointers
> from the old tree might still be in use. Also it's not easy to track
> which devices have been probed already and which have to be probed from
> the new tree. Exchanging the device tree might work at first, but opens
> the door for some bad surprises.
>
> Do you need the full device tree in barebox itself or just in the
> Kernel? If the latter I would just start the kernel with the full device
> tree and keep the original one in barebox.
>
> There are also some boards in the tree in which we use I2C EEPROM
> support in PBL, so we can pick the correct device tree from the start
> rather than starting with a base device tree.
>
> Sascha
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


