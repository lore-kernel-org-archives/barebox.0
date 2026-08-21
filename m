Delivery-date: Fri, 21 Aug 2026 13:25:08 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wxNMx-005Yyx-0e
	for lore@lore.pengutronix.de;
	Fri, 21 Aug 2026 13:25:08 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6DEA9202235
	for <lore@pengutronix.de>; Fri, 21 Aug 2026 13:25:07 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Lm5JNy//";
	dkim=pass header.d=gmail.com header.s=20251104 header.b=BrMSisEx;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("google.com:s=arc-20260327:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c0Pe/hlPJPSj9fqBItoXEQwNIbKLlYa/lrX26OX9PGM=; b=Lm5JNy//Kyzd7QVWRXDdxhnrmX
	2P9qOiVkcznLxxoyKI06dvhVtVjRbLgjt5CA3o5ribiJmnhfaPKPLpGibZvfIDunfL8XKRf08Exsn
	tWC18cl3Grff/+w3VHVMgl0XwJVFistK+okLjEfWikTq88lfafqwg7fKjhg49L4d9XndRfCqnybnE
	023EFpH5LKWCLv+WrW8Gsg3yadl2lcHq8PdNduJO6AcFfy4cquJKz1+Ctp8n/yDLLUMc0hmqes/JM
	z5mZhcwO2rC+n3gUo49+IE5YT31xTMSHY7DuRMw+vnBPTNAPVFtrF8kwSfVElWWMcvNHhcSEau+3G
	YV3ryaPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxNLl-0000000DBFq-1xuf;
	Fri, 21 Aug 2026 11:23:53 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxNLi-0000000DBEv-2H9W
	for barebox@lists.infradead.org;
	Fri, 21 Aug 2026 11:23:52 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-c20ce3c118aso162851466b.0
        for <barebox@lists.infradead.org>; Fri, 21 Aug 2026 04:23:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787311429; cv=none;
        d=google.com; s=arc-20260327;
        b=TvQwHw1xXi6Iy73Hry1XGr9Kil0y92792HKGx48fDbRogb9eQk1syNVw/QnCvG5Gee
         nII7bP9n+xRbPvGe8pXcQNhPbVolY+C7dDoy6xq0p806D4khT6gtD55YAGRUcBcWjfV7
         M21XJFgToLQXyPNoHynzwPqBhK6gk2L4nFFBvsg4BaWK01XQ+kumMn66qSIAR3nl8p44
         mDk37Y+nDFAqhZqwb1mgkCXhjrTqkO6K0MQ5InNbCeSPwJ+UbNao6OKKJhNzV+YGC6v9
         Yj6Nw+eU9yppRLmmgQb8aCPFBrTYZBT68EB1yYqvBU/WWl7JpQL9edVdGmW37ur817ni
         4Ufw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=c0Pe/hlPJPSj9fqBItoXEQwNIbKLlYa/lrX26OX9PGM=;
        fh=5it1KIvwVtoCTUbH2lPKvazShxWMt6Nku+COQ9sXEaE=;
        b=BOnFuIO2+Y3M8yAsYSi0Mjus9vAld6cymnsvYSn3iYw40pO/1hh9oqTRfEgb2L4eE+
         d//i0vUA0HW97xYojP2Nw9wvU/sme7QtXA0KtLdq8z6kX0VpzkGhilA7HxcIyCCf3aaY
         /QS/s8SBfhxmLqCM+9G2tSPU1pjdi9Xw2X6a9J4VC8BEo02GiIdYie9ehQoStJOApCxI
         okrxo92ZdUFvd+G/bmUJCqhsFV2U6sPGghTE3rNsj+J/oftmcO2HVAFBoTDCcElZiSP5
         pBvjYOZYVyRzIMVMfPESjb9BXV2UQN9slNs1/N9d07wGXeQw+rQrutoFM6KjXewdA+EQ
         JjXQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787311429; x=1787916229; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=c0Pe/hlPJPSj9fqBItoXEQwNIbKLlYa/lrX26OX9PGM=;
        b=BrMSisExv3Fc91W2AW7v5xvzXxGPFqnaHBaqQXnMH5lH0lyjNTegry4LdjU+BSgPTE
         RV3FgtfxBjq0I3G+Fh2BBMF/sZnIyXTaT+Vke88pKzW2B2cWP+0skATOpwk5jjzfILlk
         OlKrg0tN2Ny4ei3SRQN2CgOOTZWPUsOQtpJHPxrIp+P1Zy0Okda0hLUE8eB2+UsAMlEe
         kqTEE/BfnTLk4n8BdA30AKbwfLJOjA7bFqmXQUU8vx76UvGG1lTFIyyxZeDEVFb0BiNX
         S01bmWDxYgPHDyqCVGx2D6L+4YbOKhckiard5i5wn/qo0YkxT7LsU7hTaVHE2WLB7kZ9
         L74Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787311429; x=1787916229;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=c0Pe/hlPJPSj9fqBItoXEQwNIbKLlYa/lrX26OX9PGM=;
        b=bWexE9rzthLnD+MbgqT0ql1RIGO5oEgnH3GXuJDfKORo6Ffe5QDI7fT7y9Ovd1A3Ef
         lckeK7xiaLi+z6Afxp9CVA6yr+ZbNZBePfIXPFSk6LZ7cGq0VoAwa4R98jKQAN5nE5ne
         0AJ1Dco4jeK29QnuGorwcgw86BRYGywzr4OITpHuAgYExBVfTmbDzXroCz3hBa+e1SGL
         cDIwF0JmEJtiHdEx9i/aTGT5EKkLRf9JtA26vaYvCHOrs+yTRBVuszDB9HDoMtdX7o+q
         t9kpQIHifhzoFUcRapqxboXjpQKC8mXyBY4h/GWbcr6S7KMHyk6pHiDF3n4GJeF1LtE8
         P5zA==
X-Gm-Message-State: AFuF++nkQ2K0p+iqxW56FeX8KZgqatvB1xwNzSbTDcUgnloUkUl8hRMK
	fwwikUgQv6XfPk336FwgaShLNv4H/61wVMBKq5tfQqVORAaq7Ae5FDShObhplpymT48SklIdMsy
	PGXaQz3X4bPx8xH0wDbp6ErUprVF+AKHgR2zDGAg=
X-Gm-Gg: AR+sD109kKaE3XEbKpZyfbH2NYtaQ4uZG4gjwAiaRet6fGNActzfI4c7xv57imKAFvx
	54urm80sIoaD5SO+9pnXufiOwOAkDedlsRM+LaRystzA54V++9LZ3oLsU5t7fQLqrZL60qd/arQ
	hwFJtWB2II5nED5fNvQG/3XnLM0hzKvZuNrEO6hCkIYVXujoi/65t4J36lGvyxRxzCv+21mFgaC
	oG91Ub85eHMRZE2GmBMQA8395pNii/pQoSmybq8W/wYsIz3crn5vTYukaho2Z5SfOlvUHuCwskX
	gUDnuXN5YJ3Igp6YNYZiPF+cLQSdPEb949EIH6NVUw==
X-Received: by 2002:a17:907:9481:b0:c0d:7c31:26a9 with SMTP id
 a640c23a62f3a-c246d58210bmr442289166b.2.1787311428409; Fri, 21 Aug 2026
 04:23:48 -0700 (PDT)
MIME-Version: 1.0
References: <20260813-rn102-rn104-series-v4-1-f932ac63efa0@gmail.com>
 <E1wvs81-00GOzc-1k@pengutronix.de> <CANRe2W+Cp82qe+R_VNf_hXV+NRet+F63fq34pEw3FR-s4kw3zg@mail.gmail.com>
 <4df2a9de-cc31-40ee-8328-a1db9f7aaa7a@pengutronix.de>
In-Reply-To: <4df2a9de-cc31-40ee-8328-a1db9f7aaa7a@pengutronix.de>
From: Luca Lauro <famlauro93l@gmail.com>
Date: Fri, 21 Aug 2026 13:23:34 +0200
X-Gm-Features: AcwNN1VaNgi_sUlYGsfSqsWLs5ZSnBU15xq-sk3MNDe1zpZlyGDi8jw8oSH3UlY
Message-ID: <CANRe2WK8LAhc4we3m36k7Qcj6yd-=MTugo8K2jeoap2wGy_7Pg@mail.gmail.com>
Subject: Re: [PATCH v4 01/14] ARM: mvebu: add Netgear RN102 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>, ukleinek@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260821_042350_627888_2A841009 
X-CRM114-Status: GOOD (  44.64  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Il giorno ven 21 ago 2026 alle ore 11:17 Sascha Hauer ha scritto:
    > > On 2026-08-20 16:27, Luca Lauro wrote: > > Hi Sascha, > > > > about the
    NAND node: the upstream DTS does contain the NAND config [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:62b listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [famlauro93l(at)gmail.com]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 48acx8jbas8badetcs57p1ewcj1bwqjj
X-Spamd-Result: default: False [-8.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[google.com:s=arc-20260327:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[famlauro93l@gmail.com,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::62b:received];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	FROM_NEQ_ENVFROM(0.00)[famlauro93l@gmail.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 6DEA9202235

Il giorno ven 21 ago 2026 alle ore 11:17 Sascha Hauer
<s.hauer@pengutronix.de> ha scritto:
>
> On 2026-08-20 16:27, Luca Lauro wrote:
> > Hi Sascha,
> >
> > about the NAND node: the upstream DTS does contain the NAND configurati=
on
> > properties, but they are placed inside the `nand@0` child node. Barebox
> > pxa3xx-nand reads these properties from the controller node instead, so
> > the upstream layout is not sufficient for barebox to probe and configur=
e
> > the NAND controller correctly.
> >
> > For this reason the overlay needs to replicate NAND configuration
> > properties in the controller node. Without them, barebox does not apply
> > settings and NAND doesn't work.
> >
> > The only part that is truly duplicated is `status =3D "okay"`, which I =
can
> > drop in v5.
> >
> > Thanks for the review.
> >
> > Il giorno lun 17 ago 2026 alle ore 09:51 Sascha Hauer <
> > s.hauer@pengutronix.de> ha scritto:
> >
> > > On 2026-08-13 17:26, Luca Lauro via B4 Relay wrote:
> > > > +                                      filetype_kwbimage_v1);
> > > > +
> > > > +     return 0;
> > > > +}
> > > > +
> > > > +static const struct of_device_id rn102_of_match[] =3D {
> > > > +     { .compatible =3D "netgear,rn102" },
> > >
> > > How is the driver probed? The string "netgear,rn102" is in no dts.
> > > Unless I am missing something this should be "netgear,readynas-102".
> > >
> > > Same for the rn104 patch.
> > >
> > > > +/*
> > > > + * NOTE:
> > > > + * armada_370_xp_barebox_entry() cannot be used here because the
> > > > + * upstream SDRAM size detection for Armada 370-XP misinterprets
> > > > + * the DDR_SIZE_CSn registers on this board and reports an incorre=
ct
> > > > + * memory size (256MB instead of 512MB on RN102).
> > > > + *
> > > > + * Until the generic detection code is fixed, we compute the SDRAM
> > > > + * size manually using the DDR_SIZE_CSn values.
> > > > + */
> > > > +static unsigned long armada_370_xp_memory_find(void)
> > > > +{
> > > > +     unsigned long mem_size =3D 0;
> > > > +
> > > > +     for (int cs =3D 0; cs < 4; cs++) {
> > > > +             u32 ctrl =3D readl(ARMADA_370_XP_SDRAM_BASE +
> > > DDR_SIZE_CSn(cs));
> > > > +
> > > > +             /* Skip non-enabled CS */
> > > > +             if ((ctrl & DDR_SIZE_ENABLED) !=3D DDR_SIZE_ENABLED)
> > > > +                     continue;
> > > > +
> > > > +             mem_size +=3D (ctrl | ~DDR_SIZE_MASK) + 1;
> > > > +     }
> > > > +
> > > > +     return mem_size;
> > > > +}
> > >
> > > The only difference I can spot here between this function and the
> > > existing variant in arch/arm/mach-mvebu/common.c is:
> > >
> > > #define  DDR_SIZE_MASK                       0xff000000
> > >
> > > whereas the common.c variant uses:
> > >
> > > #define ARMADA_370_XP_DDR_SIZE_MASK     0xffff0000
> > >
> > > The latter goes down to this:
> > >
> > > > commit 7351b6b5c59c7a280787998006f39a5cd3a2f18b
> > > > Author: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> > > > Date:   Tue Jun 13 00:37:49 2017 +0200
> > > >
> > > >     ARM: mvebu: fix size mask for RAM window
> > > >
> > > >     The size field in the window control register occupies bits 31:=
16. So
> > > >     adapt ARMADA_370_XP_DDR_SIZE_MASK accordingly. This fixes detec=
tion
> > > of
> > > >     RAM chips smaller than 32 MiB and so probably doesn't affect an=
y
> > > >     supported machine.
> > > >
> > > >     Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutron=
ix.de>
> > > >     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > >
> > > > diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/com=
mon.c
> > > > index 06bfb72615..fa971da11e 100644
> > > > --- a/arch/arm/mach-mvebu/common.c
> > > > +++ b/arch/arm/mach-mvebu/common.c
> > > > @@ -47,7 +47,7 @@
> > > >  #define ARMADA_370_XP_SDRAM_BASE       (IOMEM(MVEBU_REMAP_INT_REG_=
BASE)
> > > + 0x20000)
> > > >  #define ARMADA_370_XP_DDR_SIZE_CSn(n)  (0x184 + ((n) * 0x8))
> > > >  #define ARMADA_370_XP_DDR_SIZE_ENABLED BIT(0)
> > > > -#define ARMADA_370_XP_DDR_SIZE_MASK    0xff000000
> > > > +#define ARMADA_370_XP_DDR_SIZE_MASK    0xffff0000
> > > >
> > > >  /*
> > > >   * Marvell MVEBU SoC id and revision can be read from any PCIe
> > >
> > > @Uwe, Where did you get that information from. Could it be that we
> > > should just revert this one given that it seems to be untested on you=
r
> > > side?
> > >
> > > > +
> > > > +&nand_controller {
> > > > +     compatible =3D "marvell,armada370-nand", "marvell,pxa3xx-nand=
";
> > > > +     status =3D "okay";
> > >
> > > These two properties are already in the upstream dts files, please dr=
op.
>
> Could you retry on current -next? It contains
>
> fac937411f mtd: nand: nand_mrvl_nfc: support the nand-controller bindings
>
> which seems to fix that issue. At least that fixed the binding on my
> pxa3xx board.

I tested the RN102 on current barebox-next, including commit
fac937411f (=E2=80=9Cmtd: nand: nand_mrvl_nfc: support the nand-controller
bindings=E2=80=9D).

Results:

- The NAND controller on RN102 is now probed correctly without any
  workaround in the controller node. ECC strength and step size are
  taken from the upstream DTS, and the BBT is detected properly.

- The barebox DT overlay can now limit itself to redefining the
  partition layout under nand@0. The duplicated NAND configuration
  properties in the controller node are no longer required.

- Environment and barebox-state backends work correctly with the
  updated overlay.

So the upstream nand-controller binding support fixes the issue on
RN102 as well. I will drop the duplicated NAND properties in v5 and
keep only the partition definitions.

Thanks,
Luca

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
>


