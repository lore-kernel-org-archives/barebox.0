Delivery-date: Fri, 17 Apr 2026 13:12:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDh7U-00DAu7-0o
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 13:12:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDh7T-0008Ub-N9
	for lore@pengutronix.de; Fri, 17 Apr 2026 13:12:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X8pQT49YZCNlrsDvgq9kqM+KHGg+lIRikEuX/AWc5LU=; b=biNrOG3J4H7tA2goBfFyjHzLAh
	Du5+t/1J2Cp5a8hLIg6owfsSSC8Wloj9o4gFxNEHKXEqWOZ+fI4c5tPHBbVmOaTA4JcAs0tV0sKC8
	RnxFKaed19Wyh9BLvLQLnw7pw86wGjNcGMaizHvKu+Q7+400ryYRnjP0/IE9P7JXQ0BspzUk3Wr+u
	h7hx4UsS0UfyN0ELrQdnZKGOjH93TymWGZpHdmUpfSzVXXAwsVDT4QROEKBU732tSftq3BW3rdgn2
	IDkz5FirxdCZcYrIF3IVLWiBtJS+PGjVl0zQyL/D3D1taWiKh6hfC1uDomIVYI5ShQwqlgVpB6deV
	AYVJIpeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDh75-00000003xbB-18Jn;
	Fri, 17 Apr 2026 11:11:55 +0000
Received: from mail-dl1-x1233.google.com ([2607:f8b0:4864:20::1233])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDh72-00000003xZN-3MOc
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 11:11:54 +0000
Received: by mail-dl1-x1233.google.com with SMTP id a92af1059eb24-12c637089ccso1315588c88.1
        for <barebox@lists.infradead.org>; Fri, 17 Apr 2026 04:11:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776424312; cv=none;
        d=google.com; s=arc-20240605;
        b=B7gfgMN0p0aT6Rz8MCpbBCiEBfbKCnRWRdyq3ma/xormG945urZ+SRGqLwgKc8KGn+
         3OfvbyupIpiFpsb6VDJXll42SvbApPhtXoJ2w+wJ6wU6Lrs/YmKlo4HSMQv+cJrLQEbt
         +pSiCeLG4oFy6p5rE8zb8qO0Xb09I01sIQ5yQyFWYBK4ro5dEfGq++Jhq0eOGO7G/evJ
         BGW6gLiXvlkTRp9Ro2gA/ja1HxLABTveUQr1mt0YWWN2fIo8QC9HVKgPQiFOT8/n9eSC
         RffA1tUuR18FUwbz3OktDLr/IWGBkBxF3LP2WlAyLNcZGr1jGBn1mUv6I74MIm47gusL
         ftBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=X8pQT49YZCNlrsDvgq9kqM+KHGg+lIRikEuX/AWc5LU=;
        fh=QTl4aF0/iXkDY6Uf61Tk/V/7sh5GF70RwK/YHfa2l1k=;
        b=Qsb8LE/iaqAhMvJnI6pwT/aGmSSa5vURtnkaMzbv2Z2MRKogHxMWEfgpzjlKdjGS5F
         Zc1GP8bsZAJVwsX5A/wukTgmqXAcQS3I9OoHc0WqtzvYxQk8f19hao/QkAI8gr9ZPPAu
         b/7j6C9dxaojoVosds9jS7rkbd11+R0jbvsdHw1mGjK2moA83FffCM5NjgPp9I4nCZ6M
         gex1W9KCQJ2q4D23JRABabnscudVyFzxbJ+Twvadv7br12dutsVBxZs1BQSDOruKgBf4
         UaDA4tQRLj2uD3EmistSYx+1Hq3uVr9vIkcIvvh+RCVmVburqsPeseyPOMXp1FrQsY4K
         xvkA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776424312; x=1777029112; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X8pQT49YZCNlrsDvgq9kqM+KHGg+lIRikEuX/AWc5LU=;
        b=VqFdJlUtx+lqWW4H1iO8+Ra0Uwtu+Jyh7gJg5byl/s5jD+/G2Le+STXxdgOL3qXYUj
         /nayC7kFLqfk7oAPNXsRp9xMUTidAVrV9ib+JSP4rtMPrwqgmmFl55s+FDuQpUCXqYJv
         Gy+IYFSoejgqvnwM0y2tXGWcoTPZ9NJvoRdV1M9tPx9lU2plYP0KOet01NI3CTVI8XoK
         PS4OQ0vCDAxzgC/k6IM9ejexad93JMzzWxk/Sa+jk1vByYTXQc11dCUtHOOgoUlK4KG4
         GsKTzTbV1s34+Zs7/wULmDiMRUaZW+joVXR3Cl/2KyLi78yP4boO7t0kjjUciwYqZrqP
         J8Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776424312; x=1777029112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=X8pQT49YZCNlrsDvgq9kqM+KHGg+lIRikEuX/AWc5LU=;
        b=B8+RQcrJ7VQzmXJGCPDzAdgrn/FYXIATlGljowrieMJ31LWOadT6jeA212H0S6TKkM
         QGoaqvUVvhvkP4Ho0o4QJKcDqVE6tInSBQ6mW91LzQmA7XVM+5tBORb5oKmXeZDdeEG5
         OZXTfsl6cSqVcVB+wB1aAD4CJs4SZxaSGeizgaQwZ1sj6wCtvBDCKkgs7i+5ILFl9PV3
         uLXoR7ALzlne4nxpCr6ZE3c64EupjhppPyQfcERc1HZMJ2O6oJVdJ0zd0SjbZ14B+dVP
         IgsR6IisNZUr8MJvOFh896sGFcuZbAqbKItbInvdpX4UFR4aKUR804ZbpI7mgp204+c0
         40mw==
X-Gm-Message-State: AOJu0YxUvzUlYbm11ng74k7f73yV0fU8PIZeTMy5kiNtG1bUAU/6Erb8
	XdhzTTCVJPVJiWDo09cUeHbNaA2lOtN+CMMg/psxMaTvkT/ttX45y5Fh81wY2GbMIcnc1m6hMSJ
	1v5XsTi87q61a7b5e0GhASIs0c9FYZgTe38zlUKo=
X-Gm-Gg: AeBDiet6cr2j00pKlF2PiRa1UaGZECg8v9qgSanxhuEQ5l4XXiVez/qGubmUlOdhJIJ
	umeEXbelhPq/aPuPOIOCSMBCSeLdZT7DsRjgBOmNLrO5SQgUslF1ab/LqYUy1C3MgNSgMrveOxg
	y8uD4yctqFO3yyFPqkzGMo2xsC7PKNLMrZvUnoyWcLSS1QuuOxY9J54iVFx9M1YUE9mxNjHYoau
	FNg5oTj0ggw8+ZTmxk0gPdTYApKH8fnXSRQhLdMaOaPeVwN1k6fVUM75m8PZD7ioRwPZTxXy9hg
	OlEej7VMaKxw0wHq7Q8=
X-Received: by 2002:a05:7022:e1f:b0:12c:22be:385b with SMTP id
 a92af1059eb24-12c73f66c73mr954276c88.4.1776424311938; Fri, 17 Apr 2026
 04:11:51 -0700 (PDT)
MIME-Version: 1.0
References: <20260416125512.3275056-1-eagle.alexander923@gmail.com> <aeHzAfUsNYQL3S4h@pengutronix.de>
In-Reply-To: <aeHzAfUsNYQL3S4h@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 17 Apr 2026 14:11:38 +0300
X-Gm-Features: AQROBzA4liIVXcDg1FpxNWhWI5OSb_BxcHodbMWTLVEf8YRHFhszssAld-mYaGI
Message-ID: <CAP1tNvQdF5Di3fbpRyiqBprNi08N9PJGnZjP9Ssq8tZ0-Emtmw@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_041152_842056_3968310B 
X-CRM114-Status: GOOD (  18.82  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] bootm: filter out "<NULL>" rootopts to avoid kernel
 cmdline noise
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Is dev_get_param() return NULL or empty string if missing?
Maybe we need to check (val && *val) ?

=D0=BF=D1=82, 17 =D0=B0=D0=BF=D1=80. 2026=E2=80=AF=D0=B3. =D0=B2 11:44, Sas=
cha Hauer <s.hauer@pengutronix.de>:
>
> Hi Alexander,
>
> On Thu, Apr 16, 2026 at 03:55:12PM +0300, Alexander Shiyan wrote:
> > When rootopts is set to the literal string "<NULL>" (e.g., due to a
> > missing or invalid value in cdev_get_linux_root_and_opts), the resultin=
g
> > kernel command line contains "root=3D/dev/... <NULL>", which is invalid
> > and may cause boot failures or confusion.
> >
> > This patch checks for the "<NULL>" string in rootopts and replaces it
> > with NULL before calling format_root_bootarg(), effectively omitting
> > the erroneous token from the command line.
>
> I would rather avoid setting it to "<NULL>" in the first place.
>
> Does the patch I just sent help or is there another place where this
> happens?
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


