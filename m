Delivery-date: Fri, 09 Feb 2024 02:45:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rYFx4-009VKE-24
	for lore@lore.pengutronix.de;
	Fri, 09 Feb 2024 02:45:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rYFx5-0001CR-7P
	for lore@pengutronix.de; Fri, 09 Feb 2024 02:45:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NVtq9+azNkdktWXrMVoVOkfe47KwUuM5z0BMf9sUYW8=; b=J7gBWLRR45AedtobFDrHhPB7Uo
	vJZtdUY5iCMZ4C3t4yGIldwEEDrw5ooVmse8QEpusRRt93FoT8cl36zZ/Lz4BV6G+Rmouu72o/Gn0
	3kF1VtGbzfoKCNvxCWNdz26t4+jrpcRfYX6yzZkfFTo7gKeIq2b9X6IDG8FUL9plKJXgqYpGXX9TF
	AKtLXJ9JLtdJk0M5ihq2osY9txSftk3nFhYNLSFR7Gld/smYMBrlyRW7lTTJbMNCXnNWn+2W9BDof
	ZWDVmr3J5CNhMFn9MuaCq4z+R7xNExrSdXNwuigk2A3CxZ+phjVY8/CyHKVjZCYtA4SN0HOE+E2cT
	ZOtkZChg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYFwM-0000000Frtb-0edl;
	Fri, 09 Feb 2024 01:44:30 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYFwI-0000000FrsH-1ubz
	for barebox@lists.infradead.org;
	Fri, 09 Feb 2024 01:44:28 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2d09b21a8bbso5986931fa.3
        for <barebox@lists.infradead.org>; Thu, 08 Feb 2024 17:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707443061; x=1708047861; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NVtq9+azNkdktWXrMVoVOkfe47KwUuM5z0BMf9sUYW8=;
        b=hc38+n4OIr4P6XKTRX2XNS9CT7ycXUfhVe3y4DtLeB0qjYK9SoaRHa35qgMWhfmvqZ
         2HB7zWpgOAOLaxczLRasEsxFR1wJu/BwRF555ICnGhksHvMydm0Kl/PuklyCZJbiG+p2
         AqeiCN9PRytVGGhZNtVhQ+aO4UqRqdM/wtVp3RuYy+eIOAkgt5JtRyL/5AH/0YM3QH+l
         e4MmXM2SL3B/rc7iBAS+YqDjd2NhVcaNeqQLuH8c7tzDPMNshgOrvoaKFyjKISufnKcp
         YidQoKaz6cRliZiaUMTINGI3UuXZ4xtO6pezHx3Yg+d1aTqYrjCl15CllM6EIOXOI8GV
         13sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707443061; x=1708047861;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NVtq9+azNkdktWXrMVoVOkfe47KwUuM5z0BMf9sUYW8=;
        b=d0em1AncYZQbIwpIkJuniX0WgEfJU28UvVmYlyAXbAMT/el2B3EU67PYEKD4xwVFV5
         k9i23q5TJLkXi+L0YAHZoo3syA4OFMhtzDkW6qDwiDzUsItzf9T1RauLewLQiWovwt6W
         QQlcsTM2UQsGITll7nBBTGKoCWiJ3sXDc1OI2VBdl3qRqwXoL44LFXq6jk9ihlemvFIf
         P0FlHd71RRZ18J+XXg8FAgN3P/f+jRkQLGqdiO8zvARd0guQEXkhXhRRtf9AFAmog6d1
         zYkk/VRXduWWGSadpInmo7kDDOFvthsl32m8GMIN+irfY1KGzPm5ZSevx9VNLlRYH3dl
         /3kw==
X-Gm-Message-State: AOJu0YzHgEJvJJuRyzM0FnnvaU5EnFmuaL1p7f2+sfkl41mTZaeLkeh0
	NcrYu2J9L3l0/w7/TP+IQMDJcB1Ay/5DnOC0Gw7rouSDtrX09hsSjLjG0nBp54AgUL//8b5f0RB
	qawsBruL9vaqnrEpouv7CwfZj4q73uRSlxQ==
X-Google-Smtp-Source: AGHT+IG1yjZ5AYFdOKg281iINAbUhnHQdU2GFX64Yp93jLyuI42yXFRzuxgs1fDDgT+/gFYbvEmDiwmDTU5AG6nbU40=
X-Received: by 2002:a2e:9081:0:b0:2d0:cd0d:42d with SMTP id
 l1-20020a2e9081000000b002d0cd0d042dmr198676ljg.7.1707443061042; Thu, 08 Feb
 2024 17:44:21 -0800 (PST)
MIME-Version: 1.0
References: <CAFPn3sTc_3q04koG_oPnqTmhGnejxtiva+B5KwYsCdC3czCmKw@mail.gmail.com>
 <ZcSDGHbcInKvmR-x@pengutronix.de>
In-Reply-To: <ZcSDGHbcInKvmR-x@pengutronix.de>
From: Thaison Phan <tsphan42@gmail.com>
Date: Thu, 8 Feb 2024 20:44:10 -0500
Message-ID: <CAFPn3sRU=hHsAQRuLaW9sz80SM4ugbWMTxgxbd7cjS0sEk9PJw@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240208_174426_524037_F936E184 
X-CRM114-Status: GOOD (  39.05  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Patch to fix bootm barebox load address alignment to
 acomodate ADRP instruction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

For the system I am running in, barebox is constrained to run within 4MB
of memory. Because of this, when arm_mem_barebox_image() calculates
the address to uncompress barebox to, it selects an address that ends up
being within ~2MB from the start of memory that was designated for barebox
to use. The malloc space ends at the start of the barebox image, and ends
up taking up to the start of memory. memory_bank_first_find_space ends
up finding the first available location to be after the .bss section which =
is
not aligned to 4KB. It seems like my case is a very unlikely corner case,
but I create a patch using PAGE_ALIGN as you suggested just in case it
may be useful.

Signed-off-by: Thaison Phan <tsphan42 at gmail.com>
---
 arch/arm/lib64/armlinux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/lib64/armlinux.c b/arch/arm/lib64/armlinux.c
index 8382ffdf1b..8b62131347 100644
--- a/arch/arm/lib64/armlinux.c
+++ b/arch/arm/lib64/armlinux.c
@@ -55,7 +55,7 @@ static int do_bootm_barebox(struct image_data *data)
  if (ret)
  goto out;

- barebox =3D start;
+ barebox =3D PAGE_ALIGN(start);

  ret =3D bootm_load_os(data, barebox);
  if (ret)
--=20
2.25.1

Thanks,
Thaison

On Thu, Feb 8, 2024 at 2:30=E2=80=AFAM Sascha Hauer <sha@pengutronix.de> wr=
ote:
>
> Hi Thaison,
>
> On Tue, Feb 06, 2024 at 09:37:47PM -0500, Thaison Phan wrote:
> > Hi,
> >
> > The aarch64 bootm image handler for barebox can choose a load address
> > that is not 4KB aligned. This can result in unexpected behavior with
> > the ADRP instruction that is available in 64 bit ARM architectures.
> > ADRP forms a PC-relative address to a 4KB page where the bottom 12
> > bits of the current PC will be masked out. When the load address of
> > the barebox image is not 4KB aligned ADRP can end up forming an
> > address that starts from an invalid page of memory or the wrong page
> > of memory that was expected to be formed. The following patch aligns
> > the load address for the next barebox image to be 4KB aligned to
> > accommodate the ADRP instruction.
> >
> > Thanks,
> > Thaison
> >
> > ---
> >  arch/arm/lib64/armlinux.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/lib64/armlinux.c b/arch/arm/lib64/armlinux.c
> > index 8382ffdf1b..d66963dae5 100644
> > --- a/arch/arm/lib64/armlinux.c
> > +++ b/arch/arm/lib64/armlinux.c
> > @@ -43,6 +43,8 @@ static struct image_handler aarch64_fit_handler =3D {
> >         .filetype =3D filetype_oftree,
> >  };
> >
> > +#define ADRP_PAGE_MASK 0x1000
> > +
> >  static int do_bootm_barebox(struct image_data *data)
> >  {
> >         void (*fn)(unsigned long x0, unsigned long x1, unsigned long x2=
,
> > @@ -55,7 +57,7 @@ static int do_bootm_barebox(struct image_data *data)
> >         if (ret)
> >                 goto out;
> >
> > -       barebox =3D start;
> > +       barebox =3D ALIGN(start, ADRP_PAGE_MASK);
>
> I'd suggest using PAGE_ALIGN here.
>
> While I agree that the barebox image must be page aligned to be
> correctly started, I wonder how it can happen that the address returned
> from memory_bank_first_find_space() is not page aligned. Normally this
> should be the start address of your DRAM. How comes this address is not
> aligned in your case?
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


