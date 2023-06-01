Delivery-date: Thu, 01 Jun 2023 23:21:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4pjo-006LXS-7K
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 23:21:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4pjl-0000Zv-LM
	for lore@pengutronix.de; Thu, 01 Jun 2023 23:21:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ySSGYfrkdjzrZm16AAeLZOoKHU/AR55rGvhUcS3BRbA=; b=d6a5cK9dVrjDMVWhC/W9CbA89n
	+7/MHHogFpKBSiTSwmDeKwXfPE+fBcRDWXD3gm8cT8uE+a1y8OlS9dUqdXHHoExKySjS12kQs8AUr
	gxLLQSZvqV3VVjQWi7BCCBPxIuB1qmXv0yFNExcPT2bO4OLXXVHTBu5mjnxoqUFK3c4SIRv4nePKl
	kmM6d+mUOM6yOecaE6LpqcVXxFE/qDkpyPRvB5LwOAoTgTQR0MbQusAajVJk3kqhrf5ULngyl0WmO
	pvp37UAc0x86UqW5IYaNcFqXO4vLSBIvD3IjNCrMlNX9iierw1CkZu3E+kX933ihwOObxes3Im9lc
	q4GmSbZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4piN-004yGe-1x;
	Thu, 01 Jun 2023 21:20:12 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4piJ-004yFl-2x
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 21:20:09 +0000
X-GND-Sasl: jmaselbas@zdiv.net
X-GND-Sasl: jmaselbas@zdiv.net
Received: by mail.gandi.net (Postfix) with ESMTPSA id 224A31BF209;
	Thu,  1 Jun 2023 21:20:03 +0000 (UTC)
Date: Thu, 01 Jun 2023 23:20:03 +0200
From: Jules Maselbas <jmaselbas@zdiv.net>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
User-Agent: K-9 Mail for Android
In-Reply-To: <855aba3f-6753-3260-2527-5342a6cdc6e4@pengutronix.de>
References: <20230524234328.82741-1-jmaselbas@zdiv.net> <20230524234328.82741-5-jmaselbas@zdiv.net> <855aba3f-6753-3260-2527-5342a6cdc6e4@pengutronix.de>
Message-ID: <CB94379A-4B3D-4834-8587-A144BF76D604@zdiv.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_142008_087606_7E5FDF3D 
X-CRM114-Status: GOOD (  17.66  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v2_04/13=5D_ARM=3A_lds=3A_Add_SoC_speci?= =?US-ASCII?Q?fic_sections_to_go_before_=2Etext=5Fhead=5Fprologue?=
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On June 1, 2023 8:34:21 AM GMT+02:00, Ahmad Fatoum <a=2Efatoum@pengutronix=
=2Ede> wrote:
> On 25=2E05=2E23 01:43, Jules Maselbas wrote:
> > On sunxi platforms the boot rom (BROM) looks for a specific header whi=
ch
> > will also be loaded in memory, causing pbl, or barebox, image not load=
ed
> > at the expected BASE addresse=2E This also cause an issue with relocat=
able
> > pbl: instruction used for relocation expect the image to be aligned on=
 a
> > 4K page boundary=2E
> >=20
> > The proposed solution here is to allow to soc specific section to be p=
ut
> > in the very begging of the =2Etext section, before anything else=2E
> >=20
> > Signed-off-by: Jules Maselbas <jmaselbas@zdiv=2Enet>
> > ---
> > rfc->v2:
> >  - fix typo in commit title
> >  - replace the use of macro with SORT_BY_NAME(=2Etext_head_soc_header*=
)
> >=20
> >  arch/arm/lib/pbl=2Elds=2ES | 1 +
> >  1 file changed, 1 insertion(+)
> >=20
> > diff --git a/arch/arm/lib/pbl=2Elds=2ES b/arch/arm/lib/pbl=2Elds=2ES
> > index 114ec7bc81=2E=2E059909806e 100644
> > --- a/arch/arm/lib/pbl=2Elds=2ES
> > +++ b/arch/arm/lib/pbl=2Elds=2ES
> > @@ -27,6 +27,7 @@ SECTIONS
> >  	=2Etext      :
> >  	{
> >  		_stext =3D =2E;
> > +		*(SORT_BY_NAME(=2Etext_head_soc_header*))
>=20
> You shouldn't need SORT_BY_NAME here, because they should be just one=2E
sadly there isnt one but two:
 - egon header
 - switch to aarch64 header

moreover the egon header is only needed once =2E=2E=2E well actually egon =
header cannot be executed in aarch64 so it should never came after it (henc=
e only once)
This makes two configurations:
 - eGON header followed by switch to aarch64 (xload conf)
 - only te switch to aarch64 (boot from USB/fel)

maybe this wont be an issue if there is only one image (not xload)=2E

>=20
> >  		*(=2Etext_head_prologue*)
> >  		*(=2Etext_head_entry*)
> >  		__bare_init_start =3D =2E;
>=20


