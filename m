Delivery-date: Fri, 28 Feb 2025 09:27:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnvin-007z8X-2M
	for lore@lore.pengutronix.de;
	Fri, 28 Feb 2025 09:27:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnvim-0003JX-J0
	for lore@pengutronix.de; Fri, 28 Feb 2025 09:27:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dcwh4oZU4Z9vp1w0+o6Ahrk6+ZFqWEzgSclJB3l/ggU=; b=XI0tHmUgTi573+DdgTqy67X/Xy
	7SQYyzaHK534b3lcVNCWG9/lP2xEL30myIubGzwk3Q6Xm511+N5Z5wx0ehEfpsh0QWjjVSO4eSF8y
	VKvNF08aqj86LVY/LaVcJKwJ9bujiZdc97RKWb9nCeCZIkwbfLUc0u4/WCGlQN0bNhWRGnaT/Fs0M
	oTJ2ObzRWIQrP6oB+rSjvFSaCiI8IKT1Pb3Plxeb90xj2z1txpkxa2St29sD6N1dsuWpZ83EYCghS
	cQSojSrvHQuGSxg4kDu1YVOkBRE+zm5DAbMSjoFVQbAXIupVbB3Sp6A34hutHKR4yL6o54+vJBQBc
	EMZwnQPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnviE-0000000AB5z-0h7K;
	Fri, 28 Feb 2025 08:27:14 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnvaD-0000000A9PL-3bqL
	for barebox@lists.infradead.org;
	Fri, 28 Feb 2025 08:18:59 +0000
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-2f9b91dff71so3072362a91.2
        for <barebox@lists.infradead.org>; Fri, 28 Feb 2025 00:18:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740730736; x=1741335536; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Dcwh4oZU4Z9vp1w0+o6Ahrk6+ZFqWEzgSclJB3l/ggU=;
        b=etBP8Li5cGaocAsOYo5oFVW9rmOtDfX50Y1zj1YnyCpyOcW+FBpS1b/i4mcmOAsvDh
         IBU9HW17JLMajIVajnhkcyE0pcFiEV5dSSs02tzFzViS6u2X+wfgFO6yZFc36N1uBgBD
         VQOB7IoEQ+u+CQCIE2rUOnGqf6YyfHUKRdBfv6L9ovyE9FAAk2v57lK06lyYaF4KKN7d
         iHnvyPI++5QkGcSx898rMWBmAVx3/MemfduLs2zk9ITe1/XbLwZ9D0IvzeRHxwXDZXjk
         dX2BKMaDKOBd+RxOr+o3Y+MxWdTHOWIiHI8PxZ8m6gGJ1g3r0M4ll5KemNJE9PxKnSwx
         8qvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740730736; x=1741335536;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dcwh4oZU4Z9vp1w0+o6Ahrk6+ZFqWEzgSclJB3l/ggU=;
        b=CJQaujNw7h7q2aOkYTuc/HUigto8nyCXLgdOn9UhgwrRPevqLE/f+b+8rLJ6u7d3p/
         uHqt47lCAfaWRESnxFZFl+d18d+dZqT5RU2lrnORnBq2xprd60Rt6NtTDGTJ4A+0YgYu
         hIXa5Jnxsl9hgyoQzBG57Td6gkhQcIgwzV1YNRAP7yHMoNJCtP5ghP106Tm8X8zoDZ5H
         212he3lRaCWRgKO7/KUDGTPpjG6Bn3DNJD9iuk20RXb+Krqwe/xbMS63kF0ogzfSrtEx
         SKLL2ezhDbAffx+H3obnnX45jBARrsce+3ErHLHnL8NAEtEb7qWL1jRTMYg5EJq77aWX
         cAsg==
X-Gm-Message-State: AOJu0YyD/kagcpJhwsT//GyLa4H2J3coCZFvNAwgDCysc0KxBbV8r4Hj
	+jfNYPe3kmvXlqU1WFgk5hva/Q/9Vae0tt2TmKzmahXFG0BQ9OAHnpH0tkXJXQaKuXfrURE/QOk
	7Oz4z6rPj2XX+L4rViE+C+0JuCXBEcsF9
X-Gm-Gg: ASbGncs6dLxs2i2pefE1gPYXMOozHG7UXb4NB0uIHvSe+LQaviSiunSCOkXES+VliYS
	Pai8zwkjr7C40pwzNBJFstCB9X4CiN6EydPCTZNvjnYPA332N632AQ5te+faHQAS2fD5uhewOqA
	gTMCOk/zI=
X-Google-Smtp-Source: AGHT+IG6/oRCakkfN4+WS1DtifVYykEGGE9lGpHNMcXrpt7Q1/8CtC/YurU6dMn4SsD97N3MtDWOhKMnJr7NMLHScnA=
X-Received: by 2002:a17:90b:3ecd:b0:2fe:b016:a6ad with SMTP id
 98e67ed59e1d1-2febab77398mr4540463a91.18.1740730736529; Fri, 28 Feb 2025
 00:18:56 -0800 (PST)
MIME-Version: 1.0
References: <CAP1tNvToG8WGLUo4_e2dSdovFZBAbcdOFUqm+F+W4gWoaVnrgQ@mail.gmail.com>
 <Z8CaS4gLesWjG81q@pengutronix.de> <CAP1tNvQFhZHobkaYL_v9aQ8FAqEtd--pkGxW3C6v81zMUaM-PQ@mail.gmail.com>
 <Z8FuOsc_Eg-p6zCJ@pengutronix.de>
In-Reply-To: <Z8FuOsc_Eg-p6zCJ@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 28 Feb 2025 11:18:44 +0300
X-Gm-Features: AQ5f1Jr0CbYKlmvYQrEMk3aODJkvOAPAz80hVABdwo8gQYPhUTQl18yebXjHEAw
Message-ID: <CAP1tNvTG-Na4pCD0qqh=hm647=UkQ7CzEFFHztgzHcq3m1bh=w@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_001857_896844_79D905FB 
X-CRM114-Status: GOOD (  15.65  )
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
Subject: Re: automount doesn't work without GPT table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

> > The error occurs in the cdev_mount_default() function.
> > cdev_get_mount_path() returns "/boot".
> > And indeed, the partition is mounted here for some reason...
> > I don't understand yet why this happens.
> >
> > barebox@Mega-Milas Informer SAMA5D2:/ mount
> > none on / type ramfs
> > none on /dev type devfs
> > /dev/mmc1.0 on /boot type fat
> >
> > Update:
> > I found that this happens if the CONFIG_OF_BAREBOX_ENV_IN_FS option is used.
> > When disabled, mounting occurs as expected, but in this case I cannot
> > use environments from a file from a partition on the SD card.
> > It is not yet clear how to get out of this situation...
>
> Ok, so the partition is already mounted for the environment to /boot, so
> you get -EBUSY when trying to automount it somewhere else.
>
> The question arises why you want to access it via automount when you
> already mounted it for your environment.

Mounting the FULL partition with the environment file to /boot was a
surprise to me :)
I just expected the usual behavior of the automount command.

Thanks!


