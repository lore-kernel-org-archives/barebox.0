Delivery-date: Thu, 22 Sep 2022 18:22:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1obOyL-00CITK-7z
	for lore@lore.pengutronix.de; Thu, 22 Sep 2022 18:22:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1obOyK-0007kn-1Y
	for lore@pengutronix.de; Thu, 22 Sep 2022 18:22:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5OELL/MxftnVFju8Gg+gas5ti/y2XJdpDh8WJzyVuUM=; b=zBpZtHX3TZS+sqhtwK/KER61uU
	CBcwjiW2POrVrzMn9zjTDq4TyrEs6/DDiqWJRm704ErPwYn7qcewOzMzO5UwVG0Sa8UvmlYvvwwto
	yfIlsUB8qEuNzCO7eZrCxjUCeKXmqcNr5G4zLK1hr3oexlM3G45Lz7AlFkuQ1CX3iqOGCnC2nDBCP
	vlwJ7Fft5XEa2Nrj0EF/ip2HtDt7wdK0D/z4LENHVWUXFT70X3PWqG9rWnU5TNt17P1oOhOZgCL9c
	O6AVJdyPyXJNNido/UbaTmMRMSTRi/IbNmgiFBajBTE/LDETRucaLhetaAGcZuMgqv982lP5vinPk
	AXIO8FzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obOwh-00Ghgq-D2; Thu, 22 Sep 2022 16:21:03 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obOwZ-00GheX-L4
	for barebox@lists.infradead.org; Thu, 22 Sep 2022 16:20:57 +0000
Received: by mail-lf1-x12e.google.com with SMTP id z25so15561412lfr.2
        for <barebox@lists.infradead.org>; Thu, 22 Sep 2022 09:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date;
        bh=5OELL/MxftnVFju8Gg+gas5ti/y2XJdpDh8WJzyVuUM=;
        b=m4lB+2ypudezPwj05Joz4BxcZepNU0UtWvn/MfDe/Tx3x5ihJHqhXQTeMzElkW2VgR
         k0dZ2qFfK4NnUVTiXA6n28U8f3hQ6efyoUYpt/7lZ9oG9MoQ27i5ltDags3gJzoxThIa
         HZ24o/qLBREO2tMm1wT1bfx+jOByKiI4a3pJG3MmTzvY0f0Mx7u6fVa2mcaRKVukTfMu
         uIweK+iY0QvTES26ZgZxd4RappKFx2WUG8HkV8vrgfr6YlcfJ7xPIyrfG8uwU9yLeOAZ
         Bv1eFR0ZJq28ioPUV1kslTSD2/8x7392LIUV63WSdhSiZtsXUVHjZMBqRJe364HxzKLY
         ynoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date;
        bh=5OELL/MxftnVFju8Gg+gas5ti/y2XJdpDh8WJzyVuUM=;
        b=u0VqN+SHIVS+Xre8sTNMM3o9dAl9a7YpNuvq5TsFEn3mmrA7USXx1wZTJmV09Wu4tE
         +NrGjF3ohXS4taB1TMPbyO1BLqRK1QgI9GaGYIpPZoSZ8k0B6iFKxxTl0MmOGYfV24z8
         bistWbyIJy87RGGSICFmeQOdywJN9UodxXBKbVxRQ/Hrzy9cELvkE0Tgz/F4A+oBRChy
         YWCToErtgOEmKxmuWHsF7h7KpjL+C6IozTgys7rb+kzwpwbC4bVPcOsiXi7nZMHdJ6DX
         x8dfOKNqxWRHn7xStAIB8owQ6xX+5kk6IZ1arRtNsnUyhQKiHOtax91WNdKhVauYJs3X
         nvvQ==
X-Gm-Message-State: ACrzQf2DKWButHctQQj58MhAq+TDK5fKkjS/gV5UihQ09MFZUQFkvK9y
	GHthSeRqkyDYlc1K8p9SeLE=
X-Google-Smtp-Source: AMsMyM6ElRMuGlsUh50p87NtNE5qms4av0Eusxy3ws16kVA1XA+rhh71/W1pzGR0skBlMTa998FfeQ==
X-Received: by 2002:a05:6512:13a1:b0:48d:f14:9059 with SMTP id p33-20020a05651213a100b0048d0f149059mr1723419lfa.110.1663863653150;
        Thu, 22 Sep 2022 09:20:53 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
        by smtp.gmail.com with ESMTPSA id c3-20020a05651221a300b0048b08e25979sm1000328lft.199.2022.09.22.09.20.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Sep 2022 09:20:52 -0700 (PDT)
Date: Thu, 22 Sep 2022 19:24:21 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Trent Piepho <trent.piepho@igorinstitute.com>, Oleksij Rempel
 <o.rempel@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>, Barebox
 List <barebox@lists.infradead.org>
Message-Id: <20220922192421.62a169b0993a454da401cc8f@gmail.com>
In-Reply-To: <20220919091410.GC6477@pengutronix.de>
References: <20220907112118.71575e3650222736432b3086@gmail.com>
	<20220912080152.GE24324@pengutronix.de>
	<20220912120734.3fa82231ca6d16ba604ee262@gmail.com>
	<20220919091410.GC6477@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_092055_728408_3B00CA7A 
X-CRM114-Status: GOOD (  20.26  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Makefile.lib: cmd_dtc: warning: missing whitespace after the
 macro name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, 19 Sep 2022 11:14:10 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

Hi Sascha!

> Hi Antony,
>=20
> On Mon, Sep 12, 2022 at 12:07:34PM +0300, Antony Pavlov wrote:
> > On Mon, 12 Sep 2022 10:01:52 +0200
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >=20
> > > One side effect is that this gets even less readable.
> >=20
> > Yes, you are right :)
> >=20
> > > Another one would be that two dts filenames which only differ in the
> > > usage of '.' and '_' would result in the same define, but I think that
> > > case is negligible as this define is unused in barebox itself. It cou=
ld
> >                                        ^^^^^^^^^^^^^^^^^^^^^^^^
> > > be used by external dts fragments passed in via CONFIG_EXTERNAL_DTS_F=
RAGMENTS.
> > >=20
> > > Other than that, what side effects are you afraid of?
> >=20
> > I have an idea that someone relies on these *_dts macros.
> >=20
> > Now I see (as you have noted above) that there is no macro users in mai=
nline source tree:
>=20
> Could you create a formal patch from this?

I'll a formal patch in a few days.

--=20
Best regards,
=A0 Antony Pavlov


