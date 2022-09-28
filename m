Delivery-date: Wed, 28 Sep 2022 12:20:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odUBP-00HG2F-W8
	for lore@lore.pengutronix.de; Wed, 28 Sep 2022 12:20:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odUBO-000329-Cw
	for lore@pengutronix.de; Wed, 28 Sep 2022 12:20:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cuiHpzyrVGsQj2HFnvmHuIFQ7r0uKf4LvYF6pAcd4kc=; b=Qa3BJ6WldksApEWlO6EiofFmFT
	pAAu1bOtelz9Ew5niWvRD4qebvBPMnp9xsjeJWCW6a485q4vg95XDb7ZV8vNxFrf9sBsrtT+XXoqI
	ewBB6viaPjX/kx1eyGjip9v5YKVwSDT/BIfkrAiyswYZ6RBpBQFD0vdYeZNW2uzfRu3bYu41MO8ZC
	YvMxckXXnCDF75c/sP0OIqfZChIZPwevAQjJZQSR+fUjHP6vHsUYIZxtPgYKTnJFeAlO+4ocunK81
	Xfx4Wnbo9yOnLEPty/XjupxMdZkIVDMIPGRD6BPl8saAGaGGvwTjeqrA7SkRzwyW5HhvbCAG8v3Zc
	G55DEh6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odU9x-00FYPw-4z; Wed, 28 Sep 2022 10:19:21 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odU9n-00FYMW-Sw
	for barebox@lists.infradead.org; Wed, 28 Sep 2022 10:19:13 +0000
Received: by mail-ed1-x535.google.com with SMTP id e18so16657111edj.3
        for <barebox@lists.infradead.org>; Wed, 28 Sep 2022 03:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=skymem-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=cuiHpzyrVGsQj2HFnvmHuIFQ7r0uKf4LvYF6pAcd4kc=;
        b=18bo6OGZe27q0YldA7DeDon/ccPJjDN5QCmYZ0ufuktM0AcJmPNGW8DBhBWKNPeNA7
         fPFO9DKxkGr7TJbBI9vz6oojzv9SmIw/OwpSDravu9Btg8KYFFGlbL7NwSxahRxEeQXO
         QBnsdtG3ceEw8lN0f/J8vIp6WM6tAzxzqe6G2vC4TbTb+qKJ2hyC1OI6R1dXuv3dkcTq
         KcOKyZFIPORXDViKejyvyW01Cu5SH+pKvXBlAYKXqjX/BQv6MAuVqvA6xU/Sda27iKRn
         OF/hmbGzXp6qh6eZn02dBuOKFnMoFwNT9rDP0RH31VWDdmsFXSnOzsfyDu40lxYOrv9r
         w5RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=cuiHpzyrVGsQj2HFnvmHuIFQ7r0uKf4LvYF6pAcd4kc=;
        b=bQxslgi7bdU5eHv+JnZCq12EomevqRA1ZqvgwoPk8MGxoPaYsKCcPW19e8awwKZqU3
         MO2YkmueSvorYTS+kxC2z+A7MiOqejr8aRnWwRPE5JA7RoFmJZWv55V0Enkge/5Csze4
         MHAP2A6ys/E5qJUpxTobBkBXkXJBzzBd593qckUCaWIK/SruezVoYN1wYoSJeTMNsnUS
         CpqYr0Qpts7aFdHW9bV07mQBTt9Xt8Su1h7A5gr4KfRqIvHKpBFYbYcRlidL/7z2wr0G
         6hDVYKu9DIqgBxmNihQPCCk1AMpM6sPG2QVtzCS9okAiFxRRL4bDWsM7uvVYkwzMQw0x
         jxWw==
X-Gm-Message-State: ACrzQf2L7XvQ+dy2kV9ttfuVBClFyrPJdEEnOxBCviuYxdudie/BFiNd
	Jc7VWbiMP2iI+mXn1ewG7hhhwhLCrwCJsDM5ASHCRLmOvHzR+KOeL54=
X-Google-Smtp-Source: AMsMyM63RZo09s8TNjCe44yIiRnr/s4rawUOElhqyM+/Oq8XtxNzG5TyoOL1+9WeN/c7I2AKuUZ7pXkhkrDzRK7ExDA=
X-Received: by 2002:a05:6402:410:b0:451:ea13:4ed7 with SMTP id
 q16-20020a056402041000b00451ea134ed7mr33956408edv.262.1664360349230; Wed, 28
 Sep 2022 03:19:09 -0700 (PDT)
MIME-Version: 1.0
References: <lyr0zw68de.fsf@ensc-pc.intern.sigma-chemnitz.de> <f3f0d847-c37f-599c-fb3a-14de696e4270@pengutronix.de>
In-Reply-To: <f3f0d847-c37f-599c-fb3a-14de696e4270@pengutronix.de>
From: Info Skymem <info@skymem.com>
Date: Wed, 28 Sep 2022 12:18:57 +0200
Message-ID: <CAKvd=_jNb7=ekysEKPHGyOGAu-u74FvCNLdqhgmWpHQ66PWcgA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>, barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_031911_971190_FE95E837 
X-CRM114-Status: GOOD (  15.09  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: Broken ubifs-zstd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,
thank you for your information.

On our website you can find email addresses of companies and people.
https://www.skymem.info

In short, it=E2=80=99s like Google for emails.

Best regards,
Robert,
Skymem team

On Tue, Sep 27, 2022 at 7:47 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrot=
e:
>
> Hello Enrico,
>
> On 27.09.22 18:21, Enrico Scholz wrote:
> > Hello,
> >
> > trying to mount a zstd compressed ubifs fails on an iMX6ULL with
> >
> > | ERROR: UBIFS error (ubi0:0): 9fe6691d: cannot decompress 2612 bytes, =
compressor zstd, error -22
> > | ERROR: UBIFS error (ubi0:0): 9fe6692d: cannot decompress 2612 bytes, =
compressor zstd, error -22
> > | ERROR: UBIFS error (ubi0:0): 9fe66a65: bad data node (block 0, inode =
815)
> > | ERROR:  magic          0x6101831
> >
> > (2022.09 and master).
> >
> >
> > After reverting
> >
> > | commit b4a9782d4f56333e897dccc35c2c27e2605f6b93
> > | Author: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > | Date:   Wed Jul 13 12:09:18 2022 +0200
> > |
> > |     lib: zstd: sync with Linux
> >
> > it works again (both in Linux 5.15 and barebox).
> >
> >
> > ubifs was created by recent OpenEmbedded kirkstone with
> >
> > | MKUBIFS_ARGS =3D "-F -m 2048 -e 126976 -c 2048 --compr=3Dzstd"
> >
> >
> > Warnings are triggered (after fixing assert()) at
> >
> > | WARNING: at lib/zstd/decompress/../common/bitstream.h:390/BIT_reloadD=
StreamFast()!
> >
> >
> > Is anybody else experiencing these problems?
>
>
> I am afraid, I didn't properly test this with UBIFS..
>
> >
> >
> >
> > Enrico
> >
> >
>
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
>


