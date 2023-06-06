Delivery-date: Tue, 06 Jun 2023 11:17:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Soi-00CrK3-H2
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 11:17:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Sof-0004JN-Oh
	for lore@pengutronix.de; Tue, 06 Jun 2023 11:17:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Content-Type:To:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Resent-Message-ID:
	Resent-Date:Resent-To:Resent-From:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Sender:Resent-Cc:List-Owner;
	bh=6WCx4pi4rfA4cqzxYSLEofFlNySPbIQgQpU0UZtVyf8=; b=qQF96XZFYvfeil1/LsFDjP6jHR
	fVgY4SNCzkTsQiepJDTx8Z0Z/R9yiYgiSfZNfG8tkDTNt4c2uiU5qtgIyNLOY6kj6F1ob0oqAeNXL
	IE+DLlN9Pn9zfS7S8IGpjBijJY59Gq+H14jp6awcls12NunQcK2qvXLg/FTLtshQC1G2V7lnnT/eV
	OuIfZFnnxKmNcGOsSL5AaPTbzl/EAoNd5MtgJBnZAOQhj3Pdn0o+x+O1byq32Nvmn3k4fem6+QUzF
	vyl9FceNIt+rCplKZfm3MqEwuvogYAfcSTOGvHZ3QTD2KT+NpX8VN0VIdln+5edF0/98pKwoC0Fqd
	2FbHyfHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6SnW-000y1A-1L;
	Tue, 06 Jun 2023 09:16:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6SnR-000xzZ-36
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 09:16:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q6SnQ-000407-Ih
	for barebox@lists.infradead.org; Tue, 06 Jun 2023 11:16:08 +0200
Resent-From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Resent-To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Resent-Date: Tue, 6 Jun 2023 11:16:08 +0200
Resent-Message-ID: <ebe8a0cc-e2b6-b93a-38e7-743353b5c145@pengutronix.de>
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <denorl2009@gmail.com>)
	id 1q6Sm4-0003X9-CQ
	for a.fatoum@pengutronix.de; Tue, 06 Jun 2023 11:14:45 +0200
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-53f7bef98b7so5216663a12.3
        for <a.fatoum@pengutronix.de>; Tue, 06 Jun 2023 02:14:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686042882; x=1688634882;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6WCx4pi4rfA4cqzxYSLEofFlNySPbIQgQpU0UZtVyf8=;
        b=hOj5Jizk7h2etIOhe7lcdvKRwNhvBBs/drCUHavtLk7ne7El9CykveVKGOMckeasGD
         cLvACgrGIZW6yUqkYqKqd9nfh44QohvR3lHMGespCPD/R6wboDTBUp1ra/L7ZZT1RREe
         ATmoyqEiEU9GWXTV8CUuNRDJ9aMJgfNmtWCJjQK7E+4ZilstwCHrcSmVkkAX/8JXtW/N
         wo4pNH64CTSkFFEPjgEsUklFnmMQXwTFY4TG3fY4X+8gdK8GDnTpCPJo8Shbghg8C6Qq
         KotTkiusNtCTb4sOIiwqRfL713Khz2wJ7Tmv/2D+If9oEnIUMvwJsxpn22/Qc7W05Wn/
         ulIQ==
X-Gm-Message-State: AC+VfDzZ3HV8ArocLi9R6otOikm8uAGCcafs4QF+GcKFq5vUuUGlcyCp
	nU7TOi3m13fabZFv3fdd7jsnKOWSk/FJ63sX08HIyetZ8brpow==
X-Google-Smtp-Source: ACHHUZ6jdOpmif0ALKE03QSZzPwV5ATEkCHj2mTN86kE228EQ5R+zFjL4e2hHPdr4glUktXaftDS8+8i7Gy224JgUSI=
X-Received: by 2002:a17:90a:4e0a:b0:259:9667:8a95 with SMTP id
 n10-20020a17090a4e0a00b0025996678a95mr1413311pjh.26.1686042882104; Tue, 06
 Jun 2023 02:14:42 -0700 (PDT)
MIME-Version: 1.0
References: <20230605202634.42175-1-denorl2009@gmail.com> <20230605202634.42175-3-denorl2009@gmail.com>
 <5d5c5f27-6c1c-8808-4db6-b7e10de500dc@pengutronix.de>
In-Reply-To: <5d5c5f27-6c1c-8808-4db6-b7e10de500dc@pengutronix.de>
From: Denis Orlov <denorl2009@gmail.com>
Date: Tue, 6 Jun 2023 12:14:30 +0300
Message-ID: <CALHb5ug3kGt5vFpdBO=oiZ15yL6YUuumXWWdPYAxnveAjMRGAQ@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_021609_998360_6BFEE04F 
X-CRM114-Status: GOOD (  23.61  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 02/17] MIPS: malta: use CKSEG instead of KSEG macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, 6 Jun 2023 at 11:03, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> On 05.06.23 22:10, Denis Orlov wrote:
> > KSEG macro is not available when compiling with CONFIG_64BIT enabled, so
> > use CKSEG instead.
>
> If they're interchangeable, why do we need KSEG?

Hmm, I think maybe we don't. We can replace every instance of KSEG with
CKSEG without any change in functionality, except for the fact that the
latter will compile with 64BIT enabled. Overall, it seems that a lot of
MIPS-specific headers were taken from Linux as is back when the support
for MIPS was being added to barebox. Those were already old and crufty
back then but there are also a lot of definitions that we neither need
nor use, yet which unnecessarily complicate the code. I might try
cleaning up those headers sometime in the future.

Regards,
Denis

>
> >
> > Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> > ---
> >  arch/mips/boards/qemu-malta/lowlevel.S | 4 ++--
> >  arch/mips/mach-malta/pci.c             | 2 +-
> >  2 files changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/mips/boards/qemu-malta/lowlevel.S b/arch/mips/boards/qemu-malta/lowlevel.S
> > index 98821e0426..541d62fc2a 100644
> > --- a/arch/mips/boards/qemu-malta/lowlevel.S
> > +++ b/arch/mips/boards/qemu-malta/lowlevel.S
> > @@ -56,14 +56,14 @@ __start:
> >        */
> >
> >       /* move GT64120 registers to 0x1be00000 */
> > -     li      t1, KSEG1ADDR(GT_DEF_BASE)
> > +     li      t1, CKSEG1ADDR(GT_DEF_BASE)
> >       li      t0, GT_LD(MIPS_GT_BASE)
> >       sw      t0, GT_ISD_OFS(t1)
> >
> >       /*
> >        * setup MEM-to-PCI0 mapping
> >        */
> > -     li      t1, KSEG1ADDR(MIPS_GT_BASE)
> > +     li      t1, CKSEG1ADDR(MIPS_GT_BASE)
> >
> >       /* setup PCI0 io window */
> >       li      t0, GT_LD(0x18000000)
> > diff --git a/arch/mips/mach-malta/pci.c b/arch/mips/mach-malta/pci.c
> > index 113b94fe23..0ab239f509 100644
> > --- a/arch/mips/mach-malta/pci.c
> > +++ b/arch/mips/mach-malta/pci.c
> > @@ -136,7 +136,7 @@ static int gt64xxx_pci0_pcibios_write(struct pci_bus *bus, unsigned int devfn,
> >  static resource_size_t gt64xxx_res_start(struct pci_bus *bus,
> >                                        resource_size_t res_addr)
> >  {
> > -     return KSEG0ADDR(res_addr);
> > +     return CKSEG0ADDR(res_addr);
> >  }
> >
> >  struct pci_ops gt64xxx_pci0_ops = {
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>



