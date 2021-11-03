Delivery-date: Wed, 03 Nov 2021 19:02:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miKb3-0001U5-U7
	for lore@lore.pengutronix.de; Wed, 03 Nov 2021 19:02:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miKb2-00081O-Pg
	for lore@pengutronix.de; Wed, 03 Nov 2021 19:02:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y6UNq4v/n2qFAE9zyMTpsm5g1ElMUAkUPLof3N1OlVw=; b=aUJTsPEw1lL8Pp
	TDvYbl8sBe0iQbPKT6zAiDuABEMP+VbHhPbEtMPAI1AYEKOY0z0xRkw2Xeoqns2nweCi/RkvgGxY3
	FA/qOrExKUAN73x59BUHknPoScXWKQwRJdFDcmM2LyYbrE4cI/ay29M23yiI+uDtvrc204zSTBjPX
	4v5hkb0mg3mnjWR3Pv9ETVgtamhx0enbiWYlxVSFbGLRZgScUsJVAOINm2886RnNRDIOcKr6hXaH8
	JrHEohsobHkw1hP6iutAjcSfqPv/IneYn3aBoNibNgE8tcBjMDLjNlL/ZthR5rcaG5FLl4mzOI12a
	Daznd9IfG4bBRQTtbxCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miKZS-0064c6-1N; Wed, 03 Nov 2021 18:01:10 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miKTP-0062qr-EQ
 for barebox@lists.infradead.org; Wed, 03 Nov 2021 17:54:56 +0000
Received: by mail-ed1-x52e.google.com with SMTP id j21so12139090edt.11
 for <barebox@lists.infradead.org>; Wed, 03 Nov 2021 10:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6wkQQ8OqQWyYsOTzZBF5JanlSpn2SULajMmLILInwh0=;
 b=UvQrKGFXU8pNpAtjqbUTx9FLrtkuoq55Lmq7g52+BzQZyoB6XcTEBdlf2tRFzIUsmg
 6TLihq/M53+RFLvoYabUZACIT6Oeruc5UP0DGtQU5MDmfSoN3gTu1ltlqhkRreH6TjWm
 6AkA3UZ0u3j8bA+lSp4XdBTN42jJR4uN5+ds0snpJj/gtLkETvhNPS1/KJHvIwpX7+2o
 4QWQKPEM3hzojW/42ayPsQ98FQf9cnFWFdnvJ3D9FfgQFnWt39BVbO5vX2J7soh1yOq5
 FkN2DuaDHvEEQ+fKbZZU8qsVKz75E1gwS3nRtQffabakg6ULqE1ytbvbhazNiHCkI5/B
 I08Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6wkQQ8OqQWyYsOTzZBF5JanlSpn2SULajMmLILInwh0=;
 b=uAWi/h5onP7OB/YqYI4gzXM7iHh7esESViIqNnjjUp2tFdmsCaJ0eMjICbdhkxvhgG
 Xm0fRkphwOd87ENT1nKMkQsLo4Me1aGHynDlcYShFCc2awtyHPlVQd2c+POOfFp39p9U
 vF8n7TtYHIkVPqgrRKwDqFu+0ppHSUIMilm4pwF8snIJPQIoVUP7lgWYExLfW8zD2JPt
 xrHwYU28x2tBxF4ZJHZAyh9B6Kv8duzxEwkoua1N7nYeWQJxgFb+1QZz0KEkDdaqAUbF
 29a53aOObD41vBtFecgA9vfPd9PHa8sjIyO6wEzirqqIihwf5UG+IQR83UJuW+z/dXXh
 OO3w==
X-Gm-Message-State: AOAM532UezVxge01QB04dS3vQt1L3QNPYuhI5PphDRNqfOw6+ruop0jX
 tUudSj/mH+SG7SHAU5hCDGX3d5QxJlVpk45LQOtB3LKyMt4Typx00x8kwA==
X-Google-Smtp-Source: ABdhPJzgN2/p3hzEVq/J9O/ITdlYPgJv4YvIqOg6MTTtMayxA0EMCIMJeqvySwC5XY7B2JuXvEVIh/TdRiiPxoTcM4k=
X-Received: by 2002:a17:907:3eaa:: with SMTP id
 hs42mr55886088ejc.429.1635962092818; 
 Wed, 03 Nov 2021 10:54:52 -0700 (PDT)
MIME-Version: 1.0
References: <20211103203547.ee214b1d8bf7987970a3d904@gmail.com>
 <3fd5c873-525c-1ef0-3630-524e41afdccf@pengutronix.de>
In-Reply-To: <3fd5c873-525c-1ef0-3630-524e41afdccf@pengutronix.de>
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 3 Nov 2021 20:54:41 +0300
Message-ID: <CAA4bVAE1AUn3gpM8_xK1RoS7HTpPUkZgkY4QobLMvCxanPL+tQ@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211103_105455_528564_373D7D4C 
X-CRM114-Status: GOOD (  11.28  )
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
Cc: barebox <barebox@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: do we need regmap-i2c in barebox?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad!

On Wed, 3 Nov 2021 at 20:39, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hello Antony,
>
> On 03.11.21 18:35, Antony Pavlov wrote:
> > Hi!
> >
> > I have made draft version of pcf85363 i2c rtc driver for barebox.
> > I used drivers/rtc/rtc-pcf85363.c from linux kernel as a prototype.
> > The linux driver uses REGMAP_I2C linux feature. Barebox has regmap
> > framework, but no special i2c regmap features.
>
> There is d827f61e149b ("regmap: implement regmap_init_i2c")
> since barebox v2021.07.0. What extra functionality are you missing?

Many thanks for pointing on d827f61e149b, I have missed it in the maillist!

At the moment I use v2021.06.0 as the base of my production branch.

I'll try to upgrade my pcf85363 driver to use regmap_init_i2c and test
it in a several days.

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

