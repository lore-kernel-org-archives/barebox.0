Delivery-date: Wed, 15 Feb 2023 14:55:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSIFd-008Sft-GH
	for lore@lore.pengutronix.de; Wed, 15 Feb 2023 14:55:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSIFa-000526-S7
	for lore@pengutronix.de; Wed, 15 Feb 2023 14:55:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:In-Reply-To:References:
	MIME-Version:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UWIB8NlEpfbLrk7SK3hPOJhB3onMF/bBhidX8/OhP40=; b=PM6Kf1FhRMaNpczzXkVhWwxFj2
	KqScRDLPpACWP3uWRObh/byieedYRchMO7HEx21ECjPTpkTz84xpMQD62n0h5z9Oeygu/Wp7olZC8
	TdrBPf/op4XGJx1jeUt3Iy9TDXuRdDRrPx+7Dq2mQxrWFxOtari4kDxTe8LnB+sNlxvWJ0VGujN7U
	R/27E1ZG4z3Tmt3zGpZO6f1848G3uDEz4PXTzH4NKPrXXORfBdTC9JbhyosUT3qtJ/MG+7IMoffWq
	oxq9Kf8V9vjj4acdyC1FhWWii/cKwCLsyN+9M8hMEoMbuPXR1j753FOhTDsQfPg5hrm1tugngmZYb
	NDJPyABw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSIEU-0067jT-MQ; Wed, 15 Feb 2023 13:54:02 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSIEP-0067iT-HP
	for barebox@lists.infradead.org; Wed, 15 Feb 2023 13:53:59 +0000
Received: by mail-oi1-x233.google.com with SMTP id c15so15836449oic.8
        for <barebox@lists.infradead.org>; Wed, 15 Feb 2023 05:53:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ossystems-com-br.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:in-reply-to
         :references:mime-version:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UWIB8NlEpfbLrk7SK3hPOJhB3onMF/bBhidX8/OhP40=;
        b=uifilIv5mIWFQgiRcejVC27P8ivc2QbH4CsLltE49gSjqTCwfYZREkvJ4WihZSrGid
         SrwfIS/a3OwtxhuNZKVO6GN7JOY8F1nDf37Bt9cnu9Th2NIsH1A/IBTPrEchV/ePHNb7
         ifPS1k90PxhUqFZXmKF3LbX/ZZqhXxYVFN3GysWBgm651AbZMwRt7PKCGOxE7Av6rAa+
         WIaUoQSdskwWgDMrPM209njy4TsDDH7qqPwK8ebkJ9+wyUcnf0m/jckooBjdqS31OV9y
         chqRQVetI/uvHIJszITxfSy/iGIh70XfdCKSlBViQdJfDzRUzqZSIiao/+9r382WgFxc
         MX8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:in-reply-to
         :references:mime-version:from:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UWIB8NlEpfbLrk7SK3hPOJhB3onMF/bBhidX8/OhP40=;
        b=KynlZE41CMciz8AokTZ5vsFzbd1exlVHyIaKE4pZNpNEhP4uyU32/n3xas0MJKR897
         t2GPEhdByQbRfUp7ynWJxEnKKqVE9iv50QaPVwRce9Q/0qz+6BnJ7Lyxehf9gEYY+BLv
         rWVIJ2WqsHlJe2ymv7uX/0jfqPzalvi3ylz70rJEIZFM69By9SW7MqJeyNbtHp/uomik
         TG24lpyqmUUl9wpiiDkft2EaRqCE7WCTWEJEOXSKQD/4uq5FkDwK2b7Ig9yIfmtlO8fg
         NU+DhhmsX81FVJvTGIbJWNvdH+SU/ge335Jeyjl9/UyeDFBppzaLuS1Ccbs3ssZYxp4A
         appQ==
X-Gm-Message-State: AO0yUKViDtossHB0k8i6fEMC8mgkTleElTOlPQ2J4hF8t/wc+igWDLCk
	oeHGCLzbBc4NUWtmJkyyW6GMjymSzNfCHMi6e9s=
X-Google-Smtp-Source: AK7set/laLZMEqntcS+BItA3lQrMCDqXgMMh8UVf2sDUf+GdFNWFS8D09y8kd7b57Tf7Ew6b515VmA==
X-Received: by 2002:a05:6808:2198:b0:37f:7ae3:a97f with SMTP id be24-20020a056808219800b0037f7ae3a97fmr788283oib.23.1676469234552;
        Wed, 15 Feb 2023 05:53:54 -0800 (PST)
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com. [209.85.160.46])
        by smtp.gmail.com with ESMTPSA id z11-20020aca330b000000b0037dc6cc2e21sm1354190oiz.39.2023.02.15.05.53.53
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Feb 2023 05:53:53 -0800 (PST)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-16e55be7c76so1589085fac.6
        for <barebox@lists.infradead.org>; Wed, 15 Feb 2023 05:53:53 -0800 (PST)
X-Received: by 2002:a05:6870:f:b0:16d:d720:98f8 with SMTP id
 a15-20020a056870000f00b0016dd72098f8mr239705oaa.288.1676469233378; Wed, 15
 Feb 2023 05:53:53 -0800 (PST)
MIME-Version: 1.0
References: <20230203135011.2061939-1-m.felsch@pengutronix.de>
 <12e370a3183d04572da1c5749d8e64dcf5091a0c.camel@linuxfoundation.org>
 <acf8b79c23675a2b4c7225e55e4ab369fbcf7f54.camel@pengutronix.de>
 <7f5ebf2315c969ce7c76d024ec373f45cc8eff3f.camel@linuxfoundation.org>
 <CAP9ODKokQpGL3ttukqRaq3-8m0ci7qp8mckbgudGJx1HOu-fPw@mail.gmail.com> <CANNYZj8_RkjMASpozi+oSu3XOHCW04n9YUC5UgHKy+2vm=cDrQ@mail.gmail.com>
In-Reply-To: <CANNYZj8_RkjMASpozi+oSu3XOHCW04n9YUC5UgHKy+2vm=cDrQ@mail.gmail.com>
Date: Wed, 15 Feb 2023 10:53:41 -0300
X-Gmail-Original-Message-ID: <CAP9ODKqjkCuhyVkfhskOSdF3g57=R9MO6Bcy2R5zBV9fVd6wZQ@mail.gmail.com>
Message-ID: <CAP9ODKqjkCuhyVkfhskOSdF3g57=R9MO6Bcy2R5zBV9fVd6wZQ@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	=?UTF-8?Q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>, 
	Marco Felsch <m.felsch@pengutronix.de>, openembedded-core@lists.openembedded.org, 
	yocto@pengutronix.de, barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_055357_818693_599010CA 
X-CRM114-Status: GOOD (  12.51  )
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

Em qua., 15 de fev. de 2023 =C3=A0s 10:44, Alexander Kanavin
<alex.kanavin@gmail.com> escreveu:
> On Wed, 15 Feb 2023 at 12:22, Otavio Salvador
> <otavio.salvador@ossystems.com.br> wrote:
> >> Fair enough, I'm open to the idea. It would be interesting/useful to
> >> see if anyone else in the community is in favour of this or not. I'm
> >> sure you appreciate why we need to ask the question and why we can't
> >> just add everything! :)
> >>
> >> The community usage does appear to be primarily phytec/ptx.
> >
> > I have used barebox in some projects in the past for multiple customers=
. It is a solid and commonly used bootloader. I consider U-Boot the industr=
y standard, but Barebox is also widely used, and it makes sense to be part =
of OE-Core.
>
> I do not quite understand why barebox needs to be specifically in
> oe-core. There's a well maintained layer for it:
> https://github.com/menschel-d/meta-barebox
> so once all those meta-phytec recipes are phased out in favour of
> using that layer, there's no fragmentation.

I think the Barebox inside OE-Core allows a bigger integration and
reuse of existing tooling for signing and other classes currently well
integrated with U-Boot. For me, a critical point for decision is if
Pengutronix will commit to support it.

--=20
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9 9981-7854          Mobile: +1 (347) 903-9750


