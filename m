Delivery-date: Fri, 09 Jun 2023 09:59:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7X1y-00Guek-6F
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 09:59:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7X1v-0004bV-Lt
	for lore@pengutronix.de; Fri, 09 Jun 2023 09:59:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EC/8DZZIOAdGpn9smrxUuLWjkMghugv/ftol+Qv3ir0=; b=mOF2P/7s+SdgBNmNdEKDRQvAv/
	i1IXAruDAk+cSwAzq86Xuy70CsFuLKmPNBJgBT4L7LezizkHNsQorLjYvg9Ulu8i0fDUtLIj9bgvf
	6iHFF4KPg/sAA+3lJzc9bDt94OTlUGMvl3A1qME9vQmzrMUogdVDwiy6okXLoEZGbjZcGWn7fmoWI
	CcMN+Vp6hUGCiVjczelMfI7pZaHZerHt4BAVMuVHqNAeZsqPJwjRLK9uy/UkoEk1jcCzVSw2E49AR
	zFqDZZ7iqHZLt2rzpkc1CLzbtP3M8Rjm9/of6KUObahMtiVb1qvChSdUh9kieYc4vh+u7ToGDnw6K
	F8G4RuOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7X0p-00C941-2a;
	Fri, 09 Jun 2023 07:58:23 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7X0l-00C91M-0q
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 07:58:22 +0000
Received: by mail-pg1-x529.google.com with SMTP id 41be03b00d2f7-543cc9541feso429937a12.2
        for <barebox@lists.infradead.org>; Fri, 09 Jun 2023 00:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686297497; x=1688889497;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EC/8DZZIOAdGpn9smrxUuLWjkMghugv/ftol+Qv3ir0=;
        b=aCXwoCeLtZZKPlWJ0/F233gsF9uPGEtbkmRxv0RySijc/2fZ7nKPsP8WFL8oxPCASN
         /SK/PgaZg9sAPuNvtdDsZAHude2p8ezIAoBuTC53HEmwe0THpm7l1y9GbrHxp3+0LOaq
         HBD2GbSNKEtxwPAedSps23Pak57WrZSKwx9FEtvPeqJd7LCNMjV0CHocopzo+HlS+XSo
         UBoRTBysA4MRGf7DWoYJE4l4wmfKT2mYh+m1KGoDtMJ1M75Z6NP9WxvgFF7iu4R40jqq
         lFf1/qVVpZM0Sa2eD89fo+s7JrRtl4ENATBtEZtm9oPUjfZk5slucMRa7ub1C6yCZikR
         aB6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686297497; x=1688889497;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EC/8DZZIOAdGpn9smrxUuLWjkMghugv/ftol+Qv3ir0=;
        b=Ixfd0KbrB3yWJpSyd+gEmNKIrOhrkBkym08yeW/AdvhMhC+DOnAamyhWJNd6vEtVud
         3jp8/Rx8O1yWxx3kMWAdH6so9nRwMCvHZDa7YYqOKmx/ED8u9eVpbBRfOlFUjrPpKlzB
         a0B4mGjbAeZa1Wiw5D1uC1fRRmJXeGqdu5SLkfp6dPfDJtFPXQ3ednMUNUxrB/v20tUm
         l47Yo4AIdK0hH14GfAvvpRMYKKDKP1S6i4We/3aFeE07Md1rq8sBmGJw++BrM8Ho7JOj
         LYTJe98zYH8kEhMPZA3NEt6rtOpCup+tMd3lvBZ6OSZ5rtCIM8me/9+HRi1uayih2fa2
         h/cA==
X-Gm-Message-State: AC+VfDxQOWuCLliUAKObkSg70/qVJKWBEXEBvkUe84/Vu0Yt0Ko8TNqw
	TjjGs+FrHAgupycsHxHjWsrTnTMucyw6humawn7Cy/UWH+wFHg==
X-Google-Smtp-Source: ACHHUZ47F+VfNUcHKFCVagxVpKXfT5gDXLhdBp13J0SFImJv6lNwopxG87urOQ0BexymnMhyOlm1VDPg6aNSwIiw1kE=
X-Received: by 2002:a17:90a:bc05:b0:256:c324:7ae4 with SMTP id
 w5-20020a17090abc0500b00256c3247ae4mr454084pjr.16.1686297497540; Fri, 09 Jun
 2023 00:58:17 -0700 (PDT)
MIME-Version: 1.0
References: <20230607051155.3175-1-denorl2009@gmail.com> <20230607051155.3175-4-denorl2009@gmail.com>
 <8e0570ef-ea42-b9d7-1ebf-ffd17bd0d97d@pengutronix.de>
In-Reply-To: <8e0570ef-ea42-b9d7-1ebf-ffd17bd0d97d@pengutronix.de>
From: Denis Orlov <denorl2009@gmail.com>
Date: Fri, 9 Jun 2023 10:58:06 +0300
Message-ID: <CALHb5ujRqJQKYGU1Pivwph0H1UojHW-8sYvPVGqj63Ng9PG2Dw@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_005819_300431_B8E45027 
X-CRM114-Status: GOOD (  18.57  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] ci: add a job for testing 64BIT MIPS with labgrid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, 9 Jun 2023 at 09:38, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> On 07.06.23 06:59, Denis Orlov wrote:
> > Signed-off-by: Denis Orlov <denorl2009@gmail.com>
>
> https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/x86_64/13.1.0/
> has a dedicated mips64 toolchain. Given that you don't touch the Containerfile,
> I assume this means that the normal toolchain can compile both 32- and 64-bit?

Well, it seems so, judging by the fact that I had run CI successfully on
my GitHub repo. I guess the main difference between mips and mips64
toolchains is the default compile configuration values. On debian there
are also many different MIPS compilers (mips-linux-gnu-, mipsel-linux-gnu-,
mips64-linux-gnuabi64-, mips64el-linux-gnuabi64-, and others) available,
however I am compiling barebox/Linux successfully with the mips-linux-gnu-
one when the correct target endianness/ABI options are being passed.
Maybe there are other differences, but I don't know of them.

Regards,
Denis

>
> If so,
>
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>
> > ---
> >  .github/workflows/test-labgrid-pytest.yml | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
> > index 2c74150066..674e4251d1 100644
> > --- a/.github/workflows/test-labgrid-pytest.yml
> > +++ b/.github/workflows/test-labgrid-pytest.yml
> > @@ -26,6 +26,10 @@ jobs:
> >              lgenv: test/mips/qemu-malta_defconfig.yaml
> >              defconfig: qemu-malta_defconfig
> >
> > +          - ARCH: mips
> > +            lgenv: test/mips/qemu-malta64el_defconfig.yaml
> > +            defconfig: qemu-malta64el_defconfig
> > +
> >            - ARCH: x86
> >              lgenv: test/x86/efi_defconfig.yaml
> >              defconfig: efi_defconfig
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>


