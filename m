Delivery-date: Wed, 15 Feb 2023 16:01:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSJHQ-008WR7-J2
	for lore@lore.pengutronix.de; Wed, 15 Feb 2023 16:01:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSJHN-0004ka-SA
	for lore@pengutronix.de; Wed, 15 Feb 2023 16:01:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:In-Reply-To:References:
	MIME-Version:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oCLbkuPWNu8lBSY6cH0VBmOiD9CzeRhHNag/JDYCPl0=; b=XyR8fp763+vXz4cgmuSFVMjSZv
	nUJEXme1O9B2BtcGSoc3aXZEfUDCdlfzMT8oedvm+VYYAa7WOEr22mL3XRgSZWdZ8aiRMj+mOvC6w
	O6PAd9EiAaqZsnmvIgFdw5CoPLsKFafZuiLlPT5/FiBBlU3llYa7O2RU8HYZbsP/BUHSWsG7zIaLc
	s3FP8Bg82CG3Ybj59cw7edgaQSDIMsdEvRjry5cu3kKdTTb/Z/40GX1ESWh+QKi75tx+RUSYXrrJt
	hzeH0vLk7dlD1vLkWwJPYjfRhUfQ34OH+cu3/Ag3gdZ1i6/G7JE9cso7oHb/dy0pJ0ru85/Tp7Re6
	uvaGxZ3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSJFq-006Il3-V1; Wed, 15 Feb 2023 14:59:31 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSJFm-006IkB-MN
	for barebox@lists.infradead.org; Wed, 15 Feb 2023 14:59:28 +0000
Received: by mail-ot1-x329.google.com with SMTP id e12-20020a0568301e4c00b0068bc93e7e34so5764096otj.4
        for <barebox@lists.infradead.org>; Wed, 15 Feb 2023 06:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ossystems-com-br.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:in-reply-to
         :references:mime-version:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oCLbkuPWNu8lBSY6cH0VBmOiD9CzeRhHNag/JDYCPl0=;
        b=r6zvpLtBRqc4RUM/7sJqlXWc3b550SazzBenpzcjjOWE5rCX2Da7mBfewTjNiJcgwl
         YUBdJ3oHnXJBW62bFo+4vBDoZzWANGyAHNDBYBkpVXKboRFO/4i2CGo+T/UffbrTB2nP
         QgvyaMbwUnE+v8T0rCq6PXhGOVXLipVI6QUs2y0ICsBC+tv1GgniFQUthdolM4++0F9s
         QPNym/kqBjWP07OaeHGiuayCjuXjA2FNlIoIIxPCYwExc4IwjI8Wpoz0BqdiQXXGeNB+
         ET72X/wUSsDA8tHNL1aAYJ2pxPwflf0gkogRDojtupkLjrlphLhiuUukhAdTNlK3MbTz
         r1HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:in-reply-to
         :references:mime-version:from:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=oCLbkuPWNu8lBSY6cH0VBmOiD9CzeRhHNag/JDYCPl0=;
        b=n7Iu06AwHu0sj///w4ox4KsJzYQWe0WCuGXSh6+KF6klejgXXn7wH48QN8Wy50qTdz
         9ZTpgjTemulo2qpFMJIl+dIkBXzEsPWw5HYA7YYDyY+3EK/LOqWc5q76cckEgoNYpAIj
         XhqwJxXg5zeU0E2/n+OWbwCJ7PUA+c54VAbsnAutNCeTWQQxaH/15yEyjNnRbp1sR4y1
         moKT4nmtC17DGyl0A0B/dfV7UD8WtZ1gT45vSltXok9QBGffRbjL8SlYzHxIZpX1v5eL
         Yo+3e/T4RTdXuCbUpiRru6l19yAwkPhSGRkB/KYiz8wp7ifpKy6sTes2uwWRcXERpu7G
         b2wQ==
X-Gm-Message-State: AO0yUKWqrXO60fKEpshRAFzpcXbdSUIKkIloocBcs/CjM7oIFdfYlbvm
	HVoFi4xAJHO6YS8XeY/h8FcrMVkjelGG8dFLNnM=
X-Google-Smtp-Source: AK7set9xxnqWT6KzT7l9mD0p0MrWWVLLc9FSDtZf4EDIV9O+dxJZWM1i52gO5ukXYeRuJKlw1IVDQw==
X-Received: by 2002:a05:6830:194:b0:68d:51fe:7b6b with SMTP id q20-20020a056830019400b0068d51fe7b6bmr1206501ota.8.1676473163953;
        Wed, 15 Feb 2023 06:59:23 -0800 (PST)
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com. [209.85.160.41])
        by smtp.gmail.com with ESMTPSA id p24-20020a9d76d8000000b0068bbc9e7cc9sm7534815otl.53.2023.02.15.06.59.23
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Feb 2023 06:59:23 -0800 (PST)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-16df32f2ffdso12513740fac.1
        for <barebox@lists.infradead.org>; Wed, 15 Feb 2023 06:59:23 -0800 (PST)
X-Received: by 2002:a05:6870:f:b0:16d:d720:98f8 with SMTP id
 a15-20020a056870000f00b0016dd72098f8mr260575oaa.288.1676473162966; Wed, 15
 Feb 2023 06:59:22 -0800 (PST)
MIME-Version: 1.0
References: <20230203135011.2061939-1-m.felsch@pengutronix.de>
 <12e370a3183d04572da1c5749d8e64dcf5091a0c.camel@linuxfoundation.org>
 <acf8b79c23675a2b4c7225e55e4ab369fbcf7f54.camel@pengutronix.de>
 <7f5ebf2315c969ce7c76d024ec373f45cc8eff3f.camel@linuxfoundation.org>
 <CAP9ODKokQpGL3ttukqRaq3-8m0ci7qp8mckbgudGJx1HOu-fPw@mail.gmail.com>
 <CANNYZj8_RkjMASpozi+oSu3XOHCW04n9YUC5UgHKy+2vm=cDrQ@mail.gmail.com>
 <CAP9ODKqjkCuhyVkfhskOSdF3g57=R9MO6Bcy2R5zBV9fVd6wZQ@mail.gmail.com> <CANNYZj_jLK-FXrGx+bF6fXrSsc-so6G_kpyZKNTpatqJKxQeRg@mail.gmail.com>
In-Reply-To: <CANNYZj_jLK-FXrGx+bF6fXrSsc-so6G_kpyZKNTpatqJKxQeRg@mail.gmail.com>
Date: Wed, 15 Feb 2023 11:59:11 -0300
X-Gmail-Original-Message-ID: <CAP9ODKpNDSBSwwAwfBCFx6gJQqNEb8bPpbiQwAbFwGkn+6WfUQ@mail.gmail.com>
Message-ID: <CAP9ODKpNDSBSwwAwfBCFx6gJQqNEb8bPpbiQwAbFwGkn+6WfUQ@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	=?UTF-8?Q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>, 
	Marco Felsch <m.felsch@pengutronix.de>, openembedded-core@lists.openembedded.org, 
	yocto@pengutronix.de, barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_065926_940389_039D3BAE 
X-CRM114-Status: GOOD (  14.55  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [yocto] [OE-core] [PATCH 1/2] barebox: add initial support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Em qua., 15 de fev. de 2023 =C3=A0s 11:11, Alexander Kanavin
<alex.kanavin@gmail.com> escreveu:
>
> On Wed, 15 Feb 2023 at 14:53, Otavio Salvador
> <otavio.salvador@ossystems.com.br> wrote:
> > I think the Barebox inside OE-Core allows a bigger integration and
> > reuse of existing tooling for signing and other classes currently well
> > integrated with U-Boot. For me, a critical point for decision is if
> > Pengutronix will commit to support it.
>
> You should be well aware there's a history of people contributing
> stuff to core and even assigning themselves as maintainers, then
> disappearing. And then it falls (largely) on me to keep things
> (barely) going. What happens if ptx withdraws its commitment? Can I
> then send a commit that removes barebox from core? Imagine the angry
> lynch mob that will show up after my head.

Yes. If no one maintains, it should be removed. People will get mad
but then we'll see more commitment in future.

> Adding things to core is a decision that cannot be easily reversed, so
> I'd rather have barebox in meta-barebox for a while, with any needed
> fixing to classes and infra in core.

Sure but adding things to the core should still be possible and it is
a place to foster work sharing and contribution.
--
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9 9981-7854          Mobile: +1 (347) 903-9750


