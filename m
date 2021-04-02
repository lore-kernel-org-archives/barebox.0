Delivery-date: Fri, 02 Apr 2021 07:25:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSCJN-0007u8-HS
	for lore@lore.pengutronix.de; Fri, 02 Apr 2021 07:25:37 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSCJM-0002vy-OK
	for lore@pengutronix.de; Fri, 02 Apr 2021 07:25:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=olemalAQYfUJuUhIO0MBpIMQqLbLOk2R3ObsrZa/6fA=; b=KjcqVrF28l925QSlkIvSTnejB
	5kUIT9VYGMOUHu1l9WnMyZILqEHKWyqdH2gKtE6cqcb9bSFEtJkq73pYO1GbfI4hsyHOj9KTjkcwp
	2SIDbzDBN3Tpatajta7Xd8ErJ5/oX7sDGpAuBCAiaoTOQZGJ5x/Aaxa7GIsbsaHWmgxkYJIs6oN2H
	AZGz++AIcgYYP3yBwi7bA4nkwXuhNhERmDSGHUu8Yk1MzA4f08UTWiHowUickpT6ffSNYDeHYzVAT
	ajjqSxDOZBEaqErLhPfH5fThk555d6HZd0UF3sAEvov7JJWdlppyUhjl1NPsiXWY2kyRJPKGfuJbf
	uJZ03nEig==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lSCHu-00C049-QY; Fri, 02 Apr 2021 05:24:06 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSCHn-00C03g-2t
 for barebox@lists.infradead.org; Fri, 02 Apr 2021 05:24:01 +0000
Received: by mail-lf1-x12c.google.com with SMTP id o126so6132906lfa.0
 for <barebox@lists.infradead.org>; Thu, 01 Apr 2021 22:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LQKHjVMahixFB9XSxw96xoP5cbdfZCdQCAZ9tFxTlnU=;
 b=i4lYNfkT7xlols6Z6RsAJu90+T6v4pmwBLVp9amS7rlTVQLz7fU28O7FjkvKJm1hvr
 B0p6hxbmycAq+zj2jMbw9T55ixNwKkffAuqmpzNIdgRQaNiYRYE8UdX8/gOmJEgmQ0Bn
 QzD5exdI5oX1kEaz1SOY9NAVuDLdhiB2ZzQRP0TwgN/z9euoomGoQkFOjHl1nfrbT+WV
 vmc5k2vq4vJRBW1OeKEhzqUTRrwQNviV9fF9wfPP2B2IdBV9yTg8K3A3I+XVBKb2p/fS
 pvEiXNw38TfVAagSBftVIBXCZiwtTDZCQ3D8LYfbr5ve/k2VC6SV4Vb9RVgB4U7mojg/
 jYKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LQKHjVMahixFB9XSxw96xoP5cbdfZCdQCAZ9tFxTlnU=;
 b=Sl7kAwc4fkD0VBxxxiPDyqhkCwIlwUNA0o7ayucl1j6V43GXITEShZ8sfiq3EEEVE3
 hxohp0+FpyVJoRV/NpIr+V9GosXDMa9gH2CmtLt/cPjFYxv9mFPEU1WEUS3W9Fo8DEsW
 5X8caaADAelHxQvpqRWjIQv9vqZTX0lzOC/fxu5ykdNyE1jwaX1pWCqp+OLVTOFC7dVv
 MWfyWJ0psLCOvNaJJtXnBvzoxHXdo4hNx/mgmp0Gdmg1tthdHPu1gxAKPe5ig/47d87V
 nr0fTPnSZClH/P+Zms1uY0YB9ao4o14vykmSusYcRfQxHB+PmUliq39a1OJadTXHWdhx
 e7sg==
X-Gm-Message-State: AOAM533CzY8VrPxtRNocIZ76sO9LHOMdmh6bKLchdaAsslfb3hu1QmlY
 9J6A/4FkaMG8BHxr6RvGRg8=
X-Google-Smtp-Source: ABdhPJyXaInArjt3mE9jo+5shrTKP1odL4mltTPJIdIaFxCgeL2mSKfXEqjmLNd/HFc56WPPsIBvag==
X-Received: by 2002:ac2:43b3:: with SMTP id t19mr7603450lfl.387.1617341035732; 
 Thu, 01 Apr 2021 22:23:55 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id l5sm742053lfc.137.2021.04.01.22.23.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 01 Apr 2021 22:23:55 -0700 (PDT)
Date: Fri, 2 Apr 2021 08:23:48 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-Id: <20210402082348.bbb0c53c98a17498a208c42d@gmail.com>
In-Reply-To: <f29356e1-46ff-6920-f233-b073b93e6b42@pengutronix.de>
References: <20140405230029.876959920a802447aeb9720f@gmail.com>
 <1396724565.786389175@f77.i.mail.ru> <20140405192722.GA2297@omega>
 <f29356e1-46ff-6920-f233-b073b93e6b42@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210402_062359_416036_41ABD764 
X-CRM114-Status: GOOD (  11.97  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: RFC: barebox-x86 as a coreboot payload
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, 1 Apr 2021 15:52:14 +0200
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

> Hi,
> =

> On 05.04.14 21:27, alex.aring at gmail.com (Alexander Aring) wrote:
> > On Sat, Apr 05, 2014 at 11:02:45PM +0400, Alexander Shiyan wrote:
> >> Sat, 5 Apr 2014 23:00:29 +0400 ?? Antony Pavlov <antonynpavlov at gmai=
l.com>:
> >> Amused: http://www.coreboot.org/File:Coreboot_libpayload_tint.png
> >> This is a really missing feature in barebox :)
> >>
> > =

> > We should port doom to barebox. This is the most ported game ever.
> > =

> > - Alex
> =

> [x], see the announcement earlier today.
> =

> :-),

Good shot!

:)

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

