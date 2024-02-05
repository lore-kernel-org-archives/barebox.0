Delivery-date: Mon, 05 Feb 2024 10:50:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWvcE-0045P6-04
	for lore@lore.pengutronix.de;
	Mon, 05 Feb 2024 10:50:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWvcE-0002w5-Kb
	for lore@pengutronix.de; Mon, 05 Feb 2024 10:50:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u4yputFooPqEdT+JnGHTf/Yts+vW0NMbrsO6mQuo1hQ=; b=IveuNY83Exre9jBpVyx+Sc8TId
	DyyKOLaaudNxcpPPWrEaF/cUiKmHkor5HWgxleySi8kdfhMZ7j1OTWn4isKEv2dXoKLwVCXxYlk0t
	dnApNVnLXG8i71B7baumpglsLuGSayvn6hChVA2XQkVIcXrAVOuKmQnAk76XVN/6KDLX+BSLDTJR7
	XRxbtPa4vd7VgLwJxhK53GMIxdSoupd78RqdwVfewsU+bYjrzlpscAt4JsDpVSoKkJx3+wfc6gsfh
	IEQCO1rDER/c5lIH8ObFs3oBBgAyP3C9Zc9vtsy/Rw3KspAyYSS16ksmfpaGp7vMDeElj1ibIOD4O
	1Sfh/c2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWvbU-00000002gNQ-3PvJ;
	Mon, 05 Feb 2024 09:49:28 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWvbS-00000002gMx-0Wmi
	for barebox@lists.infradead.org;
	Mon, 05 Feb 2024 09:49:27 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-51109060d6aso5915436e87.2
        for <barebox@lists.infradead.org>; Mon, 05 Feb 2024 01:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707126563; x=1707731363; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u4yputFooPqEdT+JnGHTf/Yts+vW0NMbrsO6mQuo1hQ=;
        b=QOe6gRrJwD7nPHKPLGzU5T3JuYhxihxuXf0HcA7GeGqNlS2qUZ/oKZjOdPO4h+ocLp
         mmlqBetZ6MKYPHQ3wWV//hH9kM7H1l9xBNh0guV1rmH8N/SIxoXvhyAteBtxC//RckYJ
         z6O450qQkdfl0U0r+KkAe81/GjgaEpqGmwI3E5qCjJLKIRZnJp10NI4VmizgcPMkm5Pk
         9WvpGf2vO8UbzguAhaWCUTze3nRaVa5pFFdGd6IyXNEdzjf1n/6xT6sxi8NKA8tiBHwa
         OWGKNMlLTBfp+DLiIoQ1xOYl3kL+AAdyB5tNy5HXJUMt7xQpD/maJjSW58MmsY7pxcNg
         nTrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707126563; x=1707731363;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u4yputFooPqEdT+JnGHTf/Yts+vW0NMbrsO6mQuo1hQ=;
        b=TUiQv5Ifyb22EHJhkruUeFR1iVvJHONOPROfxxvRyEqwBk8tjh6ieljl/kVNkOCSnC
         GlQl7UrUek8V8Rkd6byniq+0mK7sbRirX0FTVfI4XuPlcy1VppIIOnthaH2JCv6fQqlx
         KKG0cceBxBgR12MlT5YzL3dKNV37HEJheXVGHUFsP29i0hSbPQd2+vGlIw5uEqiT8OfM
         QjmxvXpRxUw9F4DVdfqGHOu4KcBiBt+oPoZxLOEmn45NYp6OdyhQZ5hO0KIb0MXtMYZt
         /lkVY2Rh0FHrl53aNztxtdvgHXxjk1JsWs+HgKUOY9sZAh2SkFIv9hbv408aE6jipmoj
         tWMA==
X-Gm-Message-State: AOJu0YwGx2V1tu11qi9StFjQpu1Y87NIwFDqaVeA3P2xJSLUIFSifHdy
	p0ujig0F7FZIObn9xodY0H8HztmTpBGJ/QtGKXaxyA/+Ug/fpKmYr+VdA+AV
X-Google-Smtp-Source: AGHT+IFNWNdDWVvZTiM67sk1bMNrHk6DcWWWbgyyomu+3Z4n4KvLfxwfNSz0VAKrhW7QpQ+SuiewUA==
X-Received: by 2002:ac2:490a:0:b0:511:4824:6718 with SMTP id n10-20020ac2490a000000b0051148246718mr3199698lfi.56.1707126562743;
        Mon, 05 Feb 2024 01:49:22 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVrMDOtoJuxrMT/eGzY12hDRh9JSuzGnzGGJSlByGJ7Kqe/dSRjizbdLBjCrPAy92WviLWo2w0R2T/d5linoM3AA7T5VMCa47Cjy2o=
Received: from flare ([146.185.218.236])
        by smtp.gmail.com with ESMTPSA id j4-20020a056512028400b0051149f7b6adsm560031lfp.104.2024.02.05.01.49.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 01:49:22 -0800 (PST)
Date: Mon, 5 Feb 2024 12:59:00 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Dan Shelton <dan.f.shelton@gmail.com>, barebox@lists.infradead.org
Message-Id: <20240205125900.c4b182f57b6efe0152beee24@gmail.com>
In-Reply-To: <a154ae13-86e1-4c2b-9c38-3774fde6a6c8@pengutronix.de>
References: <CAAvCNcCZhS8mkvdgcJ2L-eiur+OxgWEXRLnadO_HFyHfSi7WFA@mail.gmail.com>
	<a154ae13-86e1-4c2b-9c38-3774fde6a6c8@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240205_014926_188628_3B4683B4 
X-CRM114-Status: GOOD (  25.29  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: NFSv4 boot support?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, 31 Jan 2024 22:37:50 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi All!

> Hello Dan,
>=20
> On 31.01.24 22:03, Dan Shelton wrote:
> > Hello!
> >=20
> > Does barebox support booting from a NFSv4 filesystem, e.g. boot from
> > NFSv4 filesystem into a Linux NFSv4 netroot (diskless machine)?
>=20
> The barebox network stack only does UDP/IP. There have been attempts to
> bring a TCP stack into barebox, but none have so far succeeded to
> make it mainline. This is a hard requirement before we can consider
> supporting NFSv4. I hope that lwIP could fill this gap in the future,
> but no one is actively continuing this work as far as I am aware[1].

I have started integration on picotcp into barebox in 2015, see
  https://lore.barebox.org/barebox/1436991230-14251-10-git-send-email-anton=
ynpavlov@gmail.com/T/

At the moment I have WIP barebox-v2023.11 with integrated picotcp 2.1:

  https://github.com/frantony/barebox/tree/20231127.picotcp


> > We need NFSv4, because it does not need rpcbind, and combines
> > filesystem, lockd and other stuff all in one TCP port (2049). Site
> > policy also does not allow NFSv2/NFSv3, but allows NFSv4.
>=20
> Please note that this only concerns barebox and that kernel nfsroot is
> unaffected. You can load kernel and device tree over TFTP and supply a
> suitable command line argument to the kernel to use a NFS root.
>=20
> The standard net boot target does just that:
> https://elixir.bootlin.com/barebox/v2024.01.0/source/defaultenv/defaulten=
v-2-base/boot/net
>=20
> It specifies TCP, but hardcodes v3 currently. I guess we could drop the v=
3 and let
> the kernel decide on its own what version it will use? If that doesn't wo=
rk, you can
> override the file locally in your environment, e.g. via CONFIG_DEFAULT_EN=
VIRONMENT
> pointing at a directory that contains a boot/net file with the appropriate
> changes (or just call your boot target something else like boot/nfsv4).
>=20
> Hope this helps.
>=20
> [1]: Some attempts I am aware of:
>      https://github.com/a3f/barebox/tree/lwip
>      https://github.com/olerem/barebox/tree/picotcp-2019.06.29
>      https://github.com/jmaselbas/barebox/commit/4a987bfdc2ad50c13126dd62=
90d2477c3fc0c87d
>=20
> Cheers,
> Ahmad
>=20
> >=20
> > Dan
>=20
> --=20
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>=20
>=20


--=20
Best regards,
=A0 Antony Pavlov


