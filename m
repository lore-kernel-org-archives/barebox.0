Delivery-date: Fri, 16 Sep 2022 13:39:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZ9h8-006dWN-AL
	for lore@lore.pengutronix.de; Fri, 16 Sep 2022 13:39:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZ9h6-0001ou-V1
	for lore@pengutronix.de; Fri, 16 Sep 2022 13:39:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jr7v0kI+8QxT0TTL2ZN+drDiL+Y03k5035LDTGFo09A=; b=2Gph6V7bKnPrxo+6dQQaQjwB9G
	SLpVJCzFZobmkc+NaDVUeSZzRJSQa7fXnaLd+O/kImoh+fP/+8qahLqFk1Mi0FizZRRucbRp5Ukk5
	MILFPf7t5L/9I1HiDhhkO18WvvHcZr34gOm9nw1qufhKTYe3BaKNKVkm+PHzlN0e5Se5IFnQXv7LH
	VgPG7uqOReoo+ln0ISA8/yPYuLV5YWSb8066Dd4ac18VP/9glQODqv8z2Ouou4M6WtTGrGbMXvH3D
	hK0xnsMoEsfZVANkjnuUszFZ/xf05WXqsPcKcVvKXzpGG9kTPgv3JCVY05Ey/OZnNSJmMpH769dKu
	vcRrCF4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ9fM-00Cl9Q-D4; Fri, 16 Sep 2022 11:37:52 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ9fI-00Cl7G-Dx
	for barebox@lists.infradead.org; Fri, 16 Sep 2022 11:37:49 +0000
Received: by mail-lf1-x132.google.com with SMTP id f9so34403007lfr.3
        for <barebox@lists.infradead.org>; Fri, 16 Sep 2022 04:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date;
        bh=Jr7v0kI+8QxT0TTL2ZN+drDiL+Y03k5035LDTGFo09A=;
        b=c5VbRcVx23VFHEH+z4XXzIA/ZpzvanTssE7LKnEQhUVIAYEH47THMqMfwaKL+tu02y
         O5FsZIJYNL1olQjPNAfC8KWBrGaA70pMOzft0UhCPqdQEn6dz2hnVZbHU9+jH3iqMRAy
         FR7qB450o92BgLRqDda+ivUr1mtC0+niMN4fmWj2fqmNVt0ELYFKBnY58n7BIHBenOH9
         hYsVyE1lu0Au411AxT/WqwS7DfrlLiTBjLkE/BUnEN/skms7eveBwcNkCJr7L8pUJFnq
         vXuLDJO3f7LLxKXoQJ+pX//SwBIgsl0ScW3gVM83ZISMN9rIVm25U5E+CJdHzUidwsod
         Ateg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Jr7v0kI+8QxT0TTL2ZN+drDiL+Y03k5035LDTGFo09A=;
        b=s8a2Nudm2QDMlgRItx9B4ml2yMophPRNt7BumlHG+2HaMlZYFErsT/+CWxVppHD1ka
         ZvNqGbjmTbdzEgD6HNJVIy7+RKFWeeXwYajfm7nfFG7kSc1r6/Ovtb7PklLkNEIFR+UU
         rn6T/Qxq1Lc+D5BnvH9R6hZhzYUG9mOZa0w/Ao7mS8Cw+ceFLwWPWo8KxPw+pPdzofMX
         FJIXtrCkGb3knm/cWYlqLAK74MP71eKdqiKgN/RwlQIwBaf8vpI7m01/e8TOScYLzmS9
         JnmyvdSP9WXnF9+pTo10u9yS5QfSwmEdpP9qItTRrKnKOV9PL1bsJjyxRZlllIG0tZsU
         t3QQ==
X-Gm-Message-State: ACrzQf3lYKLCLs5L790rOTDvHwh5phrm690u2jzHbYiFvGdo9n6Hk/MX
	9/ZR0MUAKUoQ2/dzqRLgBHk=
X-Google-Smtp-Source: AMsMyM6gzc9tAWMfgVTccxtHo3InV8GpToM4e+gno+/3soFICuNKGNXwvGyOb7VEDyxAvmeNmE58pA==
X-Received: by 2002:a05:6512:12c8:b0:49b:817a:c2fc with SMTP id p8-20020a05651212c800b0049b817ac2fcmr1644752lfg.165.1663328263060;
        Fri, 16 Sep 2022 04:37:43 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
        by smtp.gmail.com with ESMTPSA id u13-20020a05651220cd00b0049771081b10sm3446698lfr.31.2022.09.16.04.37.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Sep 2022 04:37:41 -0700 (PDT)
Date: Fri, 16 Sep 2022 14:41:00 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <20220916144100.fcd08e98d9ffc77a7d4d016e@gmail.com>
In-Reply-To: <20220916062843.GX6477@pengutronix.de>
References: <20220912084627.84575-1-antonynpavlov@gmail.com>
	<20220915091820.aa57cf6dd4cabd1878e6d849@gmail.com>
	<20220916062843.GX6477@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_043748_487864_EE8D2DAE 
X-CRM114-Status: GOOD (  15.30  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFC] Documentation/conf.py: fix copyright years
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, 16 Sep 2022 08:28:43 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

Hi Sascha!

> On Thu, Sep 15, 2022 at 09:18:20AM +0300, Antony Pavlov wrote:
> > On Mon, 12 Sep 2022 11:46:27 +0300
> > Antony Pavlov <antonynpavlov@gmail.com> wrote:
> >=20
> > Hi Sascha!
> >=20
> > Here is the barebox documentation generated in my gitlab CI/CD system w=
ith 'make docs':
> >   https://frantony.gitlab.io/-/barebox/-/jobs/3029093142/artifacts/Docu=
mentation/html/index.html
> >=20
> > and this is the barebox documentation from barebox.org:
> >   https://www.barebox.org/doc/latest/index.html
> >=20
> > The index.html pages look different (different color scheme is used, no=
 barebox logo in the left top
> > conner after 'make docs' etc).
> >=20
> > Could you please publish an instruction how to reproduce barebox html d=
ocumentation from barebox.org?
>=20
> We have the theme here internally. Sorry, I can't give you any
> instructions on how to reproduce the docs as found on the website.
> What do you need them for?

I want to extend my gitlab.com CI-CD scripts.

--=20
Best regards,
=A0 Antony Pavlov


