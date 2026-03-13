Delivery-date: Fri, 13 Mar 2026 15:20:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13NI-000EYa-2n
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 15:20:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13NI-00034F-6D
	for lore@pengutronix.de; Fri, 13 Mar 2026 15:20:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4SV7Nt9Bq15m0R8kmaS1RMSRN0cBI4AwJl71qZ1Du0c=; b=JJ9NhpuP/9gaXMO2YRNjataVqy
	S0OgG/WbBKscliuVaakN9T7nHj++sjK1jMzuLf+a2A7h7Xve/nGK1WMxU6R5RbTMWb1U1yFl1Mve3
	1rbEXu3uvgFMtR2HBpk2pY8omivEXNiqRUTOoPJmlNVTKnUkaj36eSK78sVFhdiuE1EQoOHbZ6vW1
	EcSfsGmCohYVS3m+9KNIZR8GdwUJ7WDxlO/AraMjI8wAetqCq+Bv3nXua+5IelEJ1u2TvNP67SHdd
	J8UUrMXfLwFKWXwDAHqQC44a2QWNTLMN0jUn+QoEoBT/irI4dCoqZJQrLyOU0xjwrtPWoA6ZDIxCd
	1Aa44+DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13Ms-00000000MYB-1cPj;
	Fri, 13 Mar 2026 14:19:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13Mp-00000000MXP-438D
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 14:19:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w13Mm-0002u3-Gz; Fri, 13 Mar 2026 15:19:52 +0100
Message-ID: <2d81955609d42ee98e53e1510d4267634df68bff.camel@pengutronix.de>
From: Fabian Pflug <f.pflug@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>, Marco Felsch
	 <m.felsch@pengutronix.de>
Date: Fri, 13 Mar 2026 15:19:52 +0100
In-Reply-To: <abQPA1BFyCN4M51O@pengutronix.de>
References: <20260312-v2026-01-0-topic-tqma8mpxs-v4-0-88472a13347d@pengutronix.de>
	 <20260312-v2026-01-0-topic-tqma8mpxs-v4-2-88472a13347d@pengutronix.de>
	 <abQPA1BFyCN4M51O@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_071956_004461_043F60C8 
X-CRM114-Status: GOOD (  24.61  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 2/3] ARM: boards: tqma8mpxl: extend with support for
 xs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On Fri, 2026-03-13 at 14:20 +0100, Sascha Hauer wrote:
> On Thu, Mar 12, 2026 at 12:34:32PM +0100, Fabian Pflug wrote:
> > The TQMA8MPxS is another board from TQ with the same processor, but a
> > different formfactor. Nevertheless they share a lot of code and can be
> > used from the same barebox resulting in the rename of tqma8mpxl to
> > tqma8mpxx.
> >=20
> > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> > ---
> > =C2=A0arch/arm/boards/tqma8mpxx/board.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=
=C2=A0=C2=A0=C2=A0 1 +
> > =C2=A0arch/arm/boards/tqma8mpxx/lowlevel.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 97 =
+-
> > =C2=A0arch/arm/dts/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=
=A0 2 +-
> > =C2=A0.../dts/imx8mp-tqma8mpqs-mb-smarc-2-upstream.dts=C2=A0=C2=A0 |=C2=
=A0 402 ++++++++
> > =C2=A0arch/arm/dts/imx8mp-tqma8mpqs-mba8mpxs.dts=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 15 +
> > =C2=A0arch/arm/dts/imx8mp-tqma8mpqs-upstream.dtsi=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 | 1075 ++++++++++++++++++++
> > =C2=A0arch/arm/mach-imx/Kconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 3 +-
> > =C2=A07 files changed, 1574 insertions(+), 21 deletions(-)
> >=20
> > -static void power_init_board(void)
> > +static bool tqma_is_eeprom_valid(struct tq_eeprom *eeprom)
> > =C2=A0{
> > -	struct pbl_i2c *i2c;
> > +	int ramsize;
> > =C2=A0
> > -	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
> > -	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
> > -
> > -	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
> > -
> > -	i2c =3D imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));
> > -
> > -	pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_cfg));
> > +	if (!*eeprom->serial || !*eeprom->id)
> > +		return false;
> > +	ramsize =3D tq_vard_ramsize(&eeprom->vard) / (SZ_1G);
> > +	if (ramsize !=3D 1 && ramsize !=3D 2 && ramsize !=3D 4 && ramsize !=
=3D 8)
> > +		return false;
> > +	return true;
> > =C2=A0}
> > =C2=A0
> > -static __noreturn noinline void tqma8mpxx_start(void)
> > +static noinline void tqma8mpxx_start(void)
> > =C2=A0{
> > =C2=A0	extern char __dtb_z_imx8mp_tqma8mpql_mba8mpxl_start[];
> > +	extern char __dtb_z_imx8mp_tqma8mpqs_mba8mpxs_start[];
> > =C2=A0
> > -	setup_uart();
> > +	struct tq_eeprom *eeprom;
> > +	struct pbl_i2c *i2c;
> > +	void *boarddata;
> > +
> > +	i2c =3D tqma_i2c1_init();
> > +
> > +	/**
> > +	 * The difference for the lowlevel code between xS and xL is:
> > +	 * PMIC: xS on i2c2, xL on i2C1
> > +	 * VARD: address 0x50 on xS, address 0x53 on xL.
> > +	 *=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 offset 0x1000 on xS, offset 0x=
0 on xL
> > +	 */
> > +
> > +	eeprom =3D pbl_tq_read_eeprom(i2c, 0x50, 0x1000 | I2C_ADDR_16_BIT);
> > +	if (tqma_is_eeprom_valid(eeprom)) {
> > +		/* found xS board */
> > +		i2c =3D tqma_i2c2_init();
>=20
> Something is mixed up here. You come here when you find a valid EEPROM
> on I2C1 which according to the comment indicates you're on a xL board.
> Also i2c is set here but unused for the rest of this function.

No, the i2c is used later to setup the pmic in line 171.
The xS has the pmic on i2c2, wheras the xL has the PMIc on i2c1.

>=20
> Have you tested this on both boards? If not I would prefer that you look
> for an EEPROM on the board that you don't have first so that we can be
> sure that looking up a non existent EEPROM doesn't hang the board.

Yes, I have tested both, but did not measure the time the failed attempt to=
ok.
But I can confirm, that it did not hang.

Fabian

>=20
> > +		boarddata =3D __dtb_z_imx8mp_tqma8mpqs_mba8mpxs_start;
> > +		setup_uart(IOMEM(MX8M_UART3_BASE_ADDR),
> > +			=C2=A0=C2=A0 MX8MP_PAD_SD1_DATA6__UART3_DCE_TX,
> > +			=C2=A0=C2=A0 MX8MP_PAD_SD1_DATA7__UART3_DCE_RX);
> > +	} else {
> > +		eeprom =3D pbl_tq_read_eeprom(i2c, 0x53, 0);
> > +		if (!tqma_is_eeprom_valid(eeprom))
> > +			panic("Could not read VARD!\n");
> > +
> > +		/* found xL board */
> > +		boarddata =3D __dtb_z_imx8mp_tqma8mpql_mba8mpxl_start;
> > +		setup_uart(IOMEM(MX8M_UART4_BASE_ADDR),
> > +			=C2=A0=C2=A0 MX8MP_PAD_UART4_TXD__UART4_DCE_TX,
> > +			=C2=A0=C2=A0 MX8MP_PAD_UART4_RXD__UART4_DCE_RX);
> > +
> > +	}
> > =C2=A0
>=20
> Sascha


