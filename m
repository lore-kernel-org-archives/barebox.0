Delivery-date: Tue, 11 May 2021 12:44:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgPsY-0004RQ-5H
	for lore@lore.pengutronix.de; Tue, 11 May 2021 12:44:42 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgPsX-0005GQ-26
	for lore@pengutronix.de; Tue, 11 May 2021 12:44:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9LORrcq0kEKznJot03fAX3xBUoe3nBV5vdd8F6fXQRs=; b=Cf3Ar6qLJ1XRY/dRcBCzWHWBo
	C8IeZMdI/odvHqS7xGUC04ubqj98duPnfQe49XqfyErw1Oxgn8wELQKKd67Ylg1dV9Rk9sNTTxqn0
	q5Zjiv1Z7mMug8Ngw4Zjo/+66egHk+0/V4Z+9A7bItKaMsn+C2iKKMd8Pm745l0XcFNCLSOJq4IJw
	zj+mTxH+WFFnMGPmyhJftGhTmVaOd9yhEYeGIFafTjS+bvk0NdwM4djANBXfwsBxnBYWdLXf+GNdm
	23X0T1SB9YYHoqnmfQCd5zg13bCGm5Z5+SqaZTQGq7RX6O/Mxf9kZ5TdxjanYOGX6rn2scLf6T3ZT
	GC3ca6GeQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgPrF-00GzZh-Tm; Tue, 11 May 2021 10:43:22 +0000
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgMLl-00GSnG-9l
 for barebox@desiato.infradead.org; Tue, 11 May 2021 06:58:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=ov4LujWH0kCT9eutEFQw2idqehqbwe1MJAHLDc+dzJ4=; b=V8eaxl4vv0fM+JDg6C9CCjcFm2
 Lpltcid5E9eEKtr9bLesXgDM9yA3WEm+d5XZXBsGToq3JKBesaTkv4/Hxq2rMv7P+DxwxgMHxX7bH
 26qk7hmaqhW1OPuCvT8uAgTAo4ZUwqhMdwyCgDkb2oscZZOrJup/mmxfLVDFTwFBgayLNjoJstd5i
 PY6F870vT7kve2G5eEmANBkRvuzj6c0p/puNP2IgJKYum8jcchy2cVVVlLNeSlTylaClJD2u7ETZt
 K45pA1aUePqm+8/x1Wthz/5QNzg31WtT4L3AplHp3CkixWNaZmk/q50XOCvB99B6Ux3Z7RC3xHggL
 LCF996mw==;
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgMLf-009Li6-JG
 for barebox@lists.infradead.org; Tue, 11 May 2021 06:58:32 +0000
Received: by mail-lj1-x234.google.com with SMTP id v5so23798530ljg.12
 for <barebox@lists.infradead.org>; Mon, 10 May 2021 23:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ov4LujWH0kCT9eutEFQw2idqehqbwe1MJAHLDc+dzJ4=;
 b=dGP94mAkrt3CMqPGIo13AQmBidiTlZdue9beNg9Y/grI7qF/7jH+vZOfmeo21CBeg+
 lJPNa3WwSSgMlkzo2Z2ILF4tL0MuKQJhDveh/mmqCH3URJZ+iLcAmFEY/DwPw0ENbwaw
 bJ0T3L8URmRpAcRYVIhZiR9rsTzwh68XmleJGWgcuSoFeQgCvbNuhV5TmInas41FInjB
 ShSKfqSkpsBJjxJVhQjPb7Loqqi5bVELfU3NNmOq0dxgPH2fnGVQSE+KWt0wb39eGzJf
 gctK6FXn2OKz2++tM9N8l1EBXxroHgohWdvLBIYdTxHfCaFf3IcwIh4x/8/U1vGlRInl
 fnoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ov4LujWH0kCT9eutEFQw2idqehqbwe1MJAHLDc+dzJ4=;
 b=n1bxbfhbCgUdsCBY8Q2p0co57WVpVcpyem78pcVWWDhBipHnrkJbNt5rg1uBVlAsf2
 XpQFdFeH/3v3Vx6411Yn+M3TgZqKXdvrM/6Eu/tQc21OgQuwI06WBHR1axVWSbeACAuC
 3ZpMK4C45h32u24zQ7pxoC6QcsCfMFM6ORNI0E7GR/0BFvq8nuuM9gjVRj2tgoK/HNs8
 QEvwDqpcwsELgzDExE8am1DqLUFpKoEF3xjz5L8tFQjn2qc7HV7MEqlgZkE5jY0gJXLG
 Sikn2mfqMLj3rqworGiqWtB9Hv4Z74XErA7S+S758MteyWrDsj+Mk6rzv26ackxNgz5X
 uCyA==
X-Gm-Message-State: AOAM532F1WdiNVuJH0doDw+sRd3hnYyM2bmGbXinFMGvhT1CoYVYZpoF
 ELVWrGEP5WNWn0KWeeT1RVY=
X-Google-Smtp-Source: ABdhPJxAHtBJiHU7ml6McaT1PNreNUHIf47K4Ud3A1aZGuOfxcrVYvLoGUieaCrichj8Ev5P8LLDUg==
X-Received: by 2002:a2e:a7c7:: with SMTP id x7mr14805031ljp.417.1620716308166; 
 Mon, 10 May 2021 23:58:28 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id x12sm2509126lfn.258.2021.05.10.23.58.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 May 2021 23:58:27 -0700 (PDT)
Date: Tue, 11 May 2021 09:58:26 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <20210511095826.c13f0a0843013f040ac70c49@gmail.com>
In-Reply-To: <20210503111643.GY19819@pengutronix.de>
References: <20210426143025.149717-1-antonynpavlov@gmail.com>
 <20210503111643.GY19819@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_235831_662033_F99824B0 
X-CRM114-Status: GOOD (  20.70  )
/bin/ln: failed to access
 'reaver_cache/texts/20210510_235831_662033_F99824B0': No such file or
 directory
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_235831_662033_F99824B0 
X-CRM114-Status: GOOD (  16.96  )
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
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] startup: introduce global.endianness variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, 3 May 2021 13:16:43 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

Hi Sascha!

> On Mon, Apr 26, 2021 at 05:30:25PM +0300, Antony Pavlov wrote:
> > The global.endianness variable makes it possible
> > to determine current endian mode from command
> > line or from script on bi-endian capable system.
> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  common/globalvar.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > =

> > diff --git a/common/globalvar.c b/common/globalvar.c
> > index a55b38b00f..75ce6331b7 100644
> > --- a/common/globalvar.c
> > +++ b/common/globalvar.c
> > @@ -641,6 +641,8 @@ int globalvar_add_simple_ip(const char *name, IPadd=
r_t *ip)
> >  =

> >  static int globalvar_init(void)
> >  {
> > +	const char *endianness;
> > +
> >  	register_device(&global_device);
> >  =

> >  	if (IS_ENABLED(CONFIG_NVVAR))
> > @@ -651,6 +653,13 @@ static int globalvar_init(void)
> >  	if (strlen(buildsystem_version_string) > 0)
> >  		globalvar_add_simple("buildsystem.version", buildsystem_version_stri=
ng);
> >  =

> > +	if (IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
> > +		endianness =3D "big";
> > +	else
> > +		endianness =3D "little";
> =

> PowerPC is for sure big endian, but doesn't set CONFIG_CPU_BIG_ENDIAN,
> so will be erroneously be identified as little endian with this patch.
> Either you fix that or depend on something like #if __BYTE_ORDER =3D=3D
> __LITTLE_ENDIAN

Barebox don't use "__BYTE_ORDER =3D=3D __*_ENDIAN" solution. =


Please see include/envfs.h:

#ifdef __BAREBOX__
#  ifdef __LITTLE_ENDIAN
#    define ENVFS_ORDER_LITTLE
#  elif defined __BIG_ENDIAN
#    define ENVFS_ORDER_BIG
#  else
#    error "could not determine byte order"
#  endif
#else
#  if __BYTE_ORDER =3D=3D __LITTLE_ENDIAN
#    define ENVFS_ORDER_LITTLE
#  elif __BYTE_ORDER =3D=3D __BIG_ENDIAN
#    define ENVFS_ORDER_BIG
#  else
#    error "could not determine byte order"
#  endif
#endif

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

