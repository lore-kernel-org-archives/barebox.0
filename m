Delivery-date: Mon, 15 Jun 2026 12:42:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ4lY-0066fz-1Q
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 12:42:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ4lW-0007qU-A5
	for lore@pengutronix.de; Mon, 15 Jun 2026 12:42:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8g7101GG6LLf/aC/pdClNH1HEdm/Szk9N5G70Q24kZQ=; b=Bg+nAOH9peK8pleSQbQaw/jED8
	CAbnxvBLCN6rRK7cGVTPqYwx3Pw0LXkpGScSNp73J4CE4st9YUv8Dt2+gts5PXiCnI9jtSy1ksOJV
	Y3dX9G6VL7oWHqZQJJQozpbU1TXize9qS521DfqdchB306DQX0LwlberbhzbdZH3D0ZRBFLfxz3aB
	7XBE31QfYc3nCmd9H6JymUgjzLGR3tCe+uvlK148JXZLFkeceEl0FfkaJKMCCnGtoXGNgs+/szcUb
	eFa6HWGxX2nF79eskQeP2Ybl4ZrGh3QztRYpnbSmZP1H/m1+tdstjsufwZx/oq56fXHmDq7xkM7rB
	k8lbcPnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ4kL-0000000E3nb-3K7U;
	Mon, 15 Jun 2026 10:40:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ4kG-0000000E3n6-3TaW
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 10:40:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pfitzner@pengutronix.de>)
	id 1wZ4kD-0007XO-OP; Mon, 15 Jun 2026 12:40:41 +0200
Message-ID: <8c2c1b7e0f7c3cccd95dc84dadaf26880b61c34e.camel@pengutronix.de>
From: Fabian Pfitzner <f.pfitzner@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Date: Mon, 15 Jun 2026 12:40:41 +0200
In-Reply-To: <E1wQ2Ub-00000004VNh-09rq@pty.whiteo.stw.pengutronix.de>
References: <E1wQ2Ub-00000004VNh-09rq@pty.whiteo.stw.pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.60.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_034044_892169_B8126F86 
X-CRM114-Status: GOOD (  29.83  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] arch: arm: imx: detect secondary boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, 2026-05-21 at 12:27 +0000, Sascha Hauer wrote:
> On 2026-05-20 10:33, Fabian Pfitzner wrote:
> > Integrate support to detect secondary boot on imx machines.
> > Copy the logic for detection from the uboot-imx project[1].
> >=20
> > The information will be stored in the `bootsource_instance_index`
> > variable.
> >=20
> > [1]
> > https://github.com/nxp-imx/uboot-imx/blob/99518e6b6f20cb6a2bf19115e355d=
b9f58100af8/arch/arm/mach-imx/imx8m/soc.c#L792
> >=20
> > Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
> > ---
> > =C2=A0arch/arm/mach-imx/boot.c | 52
> > ++++++++++++++++++++++++++++++++++++++++++++++++
> > =C2=A01 file changed, 52 insertions(+)
> >=20
> > diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
> > index
> > 3fea22d05f3bfdf2fe9caa6767e1c7c5ea3ced00..a35a1acc2e71231236d3dd500
> > 8523f6c66912000 100644
> > --- a/arch/arm/mach-imx/boot.c
> > +++ b/arch/arm/mach-imx/boot.c
> > @@ -26,6 +26,8 @@
> > =C2=A0
> > =C2=A0#include <soc/fsl/fsl_udc.h>
> > =C2=A0
> > +int imx8m_detect_secondary_image_boot(void);
>=20
> It should be either static without forward declaration or exported
> with
> the declaration in a header file.
>=20
> > +
> > =C2=A0static void
> > =C2=A0imx_boot_save_loc(void (*get_boot_source)(enum bootsource *, int
> > *))
> > =C2=A0{
> > @@ -35,6 +37,10 @@ imx_boot_save_loc(void (*get_boot_source)(enum
> > bootsource *, int *))
> > =C2=A0	get_boot_source(&src, &instance);
> > =C2=A0
> > =C2=A0	bootsource_set(src, instance);
> > +
> > +	int index =3D imx8m_detect_secondary_image_boot();
>=20
> You assume you are running on i.MX8M here which is not necessarily
> the
> case.
>=20
> > +
> > +	bootsource_set_instance_index(index);
> > =C2=A0}
> > =C2=A0
> > =C2=A0
> > @@ -756,3 +762,49 @@ void imx8mn_get_boot_source(enum bootsource
> > *src, int *instance)
> > =C2=A0
> > =C2=A0void imx8mn_boot_save_loc(void)
> > =C2=A0	__alias(imx8mp_boot_save_loc);
> > +
> > +int imx8m_detect_secondary_image_boot(void)
> > +{
> > +	u32 *rom_log_addr =3D (u32 *)0x9e0;
> > +	u32 *rom_log;
> > +	u8 event_id;
> > +	int i, boot_secondary =3D 0;
> > +
> > +	/* If the ROM event log pointer is not valid. */
> > +	if (*rom_log_addr < 0x900000 || *rom_log_addr >=3D 0xb00000
> > ||
> > +	=C2=A0=C2=A0=C2=A0 *rom_log_addr & 0x3)
> > +		return -EINVAL;
>=20
> We have imx8m_get_bootrom_log() which handles different cases like we
> are in PBL/EL3 or in barebox proper. Why not use it here?

I tried using `imx8m_get_bootrom_log()` here, but it does not seem to
work. The function returns an invalid address (0x8000) here.

>=20
> I wonder how this works at all because you are derefencing the ROM
> which
> is inside the faulting zero page. I would assume barebox crashes here
> when this is called from barebox proper.
>=20
> > +
> > +	/* Parse the ROM event ID version 2 log */
> > +	rom_log =3D (u32 *)(uintptr_t)(*rom_log_addr);
> > +	for (i =3D 0; i < 128; i++) {
> > +		event_id =3D rom_log[i] >> 24;
>=20
> We already have defines for this, see arch/arm/mach-imx/bootrom-cmd.c
>=20
> Sascha
>=20
> --
> Pengutronix e.K.=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0
> |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |
> Steuerwalder Str. 21=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 |
> http://www.pengutronix.de/=C2=A0 |
> 31137 Hildesheim, Germany=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | Phone: +49-5121-20=
6917-
> 0=C2=A0=C2=A0=C2=A0 |
> Amtsgericht Hildesheim, HRA 2686=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 | Fax:=C2=A0=C2=A0 +49-5121-206917-
> 5555 |

--=20
Pengutronix e.K. | Fabian Pfitzner |
Steuerwalder Str. 21 | https://www.pengutronix.de/ |
31137 Hildesheim, Germany | Phone: +49-5121-206917-0 |
Amtsgericht Hildesheim, HRA 2686 | Fax: +49-5121-206917-9 |


