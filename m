Delivery-date: Mon, 18 May 2026 15:07:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOxh8-0018iL-1M
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 15:07:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOxh7-0001eZ-JU
	for lore@pengutronix.de; Mon, 18 May 2026 15:07:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=aqKoyBnfXztpBUofbUid24vyPd7LHZD+us5vmuZtd6A=; b=CaOdZ8cirQ9tgIEAhlZg4p7wmi
	aZ/1WAeYzfoP0ToEVf43JNX+kBZ0yn3gvWH4KwHuTDjxYFmot8rcAHQviGYi+zXHDswC62EqU3Mrz
	MukSpJCYPQ3yo28LY2wmEAF6JJ9NqVU3CZNhbtacCPlVN8w8nneD98aTJJ/UNT9JkwSHWpn1qx+OT
	p6YP9DUiwwQtSSQB5ynNetxADHal4skP9W24zP5KdQXpujPmi1It4HghA1NNoRFZmsN4qBv/m9gVn
	2SvuRgblx8TPKtUFQ4uGsAghx5cMzKsXi3IK5Vycslhqxp0bJGgrnKYjpVUr6HYwytDfiWbRmzFzK
	46+o94Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOxfh-0000000FklR-1HXo;
	Mon, 18 May 2026 13:06:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOxfe-0000000FkkR-0avi
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 13:06:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wOxfc-0001Nq-Ap; Mon, 18 May 2026 15:06:08 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wOxfb-000b9u-2A;
	Mon, 18 May 2026 15:06:08 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wOxfc-0000000EuG7-0XXj;
	Mon, 18 May 2026 15:06:08 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <4a67d330-a2a7-47f4-a43a-a2e444c47f55@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 13:06:08 +0000
Message-Id: <E1wOxfc-0000000EuG7-0XXj@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_060610_184275_72E7B59A 
X-CRM114-Status: GOOD (  33.69  )
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
Cc: BAREBOX <barebox@lists.infradead.org>, "Claude
 Opus 4.7" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 05/10] mci: add HS400 Enhanced Strobe (HS400ES)
 selection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-05-18 11:54, Ahmad Fatoum wrote:
> Hi,
>=20
> On 5/11/26 2:08 PM, Sascha Hauer wrote:
> > HS400ES bypasses HS200 tuning entirely: the eMMC drives a data strobe
> > line which the controller samples on, so the read path doesn't need
> > software-tuned phase. It still ends up in MMC_TIMING_MMC_HS400.
> >=20
> > Detection: a card advertises HS400ES via EXT_CSD_STROBE_SUPPORT[184],
> > which sits outside DEVICE_TYPE; record it as a synthetic
> > EXT_CSD_CARD_TYPE_HS400ES bit in mmc_avail_type when the host
> > declares MMC_CAP2_HS400_ES (mmc-hs400-enhanced-strobe in DT) and the
> > card has both STROBE_SUPPORT set and one of the HS400 voltage variants.
> >=20
> > Transition (mmc_select_hs400es):
> >   1. Negotiate 8-bit bus in HS mode (HS400 needs 8-bit).
> >   2. CMD6 EXT_CSD_HS_TIMING =3D HS, host to HS rate.
> >   3. CMD6 EXT_CSD_BUS_WIDTH =3D 8-bit DDR | STROBE bit, so the card
> >      starts driving the strobe line.
> >   4. CMD6 EXT_CSD_HS_TIMING =3D HS400, host to HS400 timing at
> >      hs200_max_dtr (200 MHz, DDR-sampled =3D> 400 MT/s).
> >   5. Call host->ops.hs400_enhanced_strobe so the controller enables
> >      enhanced strobe sampling.
> >=20
> > mmc_select_timing prefers HS400ES over HS200 + HS400; on any failure
> > it clears the flag and falls back to HS200. mci_startup_mmc returns
> > early when mmc_select_timing already landed us in HS400 (HS400ES has
> > no follow-up tuning step).
> >=20
> > mci_ops gains an optional hs400_enhanced_strobe hook for the
> > controller's enhanced-strobe enable.
> >=20
> > Assisted-by: Claude Opus 4.7 <noreply@anthropic.com>
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/mci/mci-core.c | 108 +++++++++++++++++++++++++++++++++++++++++=
+++++++-
> >  include/mci.h          |   4 ++
> >  2 files changed, 111 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> > index 58b28ec653..0cfddb8d43 100644
> > --- a/drivers/mci/mci-core.c
> > +++ b/drivers/mci/mci-core.c
> > @@ -1798,6 +1798,16 @@ static void mmc_select_max_dtr(struct mci *mci)
> >  		avail_type |=3D EXT_CSD_CARD_TYPE_HS400_1_2V;
> >  	}
> > =20
> > +	/*
> > +	 * HS400ES capability is reported in EXT_CSD_STROBE_SUPPORT (byte 184=
),
> > +	 * not in DEVICE_TYPE. Combine with one of the HS400 voltage variants;
> > +	 * which voltage is used follows the same negotiation as HS400.
> > +	 */
> > +	if ((caps2 & MMC_CAP2_HS400_ES) &&
> > +	    mci->ext_csd[EXT_CSD_STROBE_SUPPORT] &&
>=20
> Please add to mci_print_caps()

ok.

>=20
> Also, please extend mci_timing_tostr() to return "HS400ES" for enhanced
> strobe.

There is no separate mode for HS400ES, it is still MMC_TIMING_MMC_HS400,
that's why it's decoded separately by the caller.

> > +
> > +	/* Step 4: 8-bit DDR with strobe enabled */
> > +	val =3D EXT_CSD_DDR_BUS_WIDTH_8 | EXT_CSD_BUS_WIDTH_STROBE;
> > +	err =3D mci_switch(mci, EXT_CSD_BUS_WIDTH, val);
> > +	if (err) {
> > +		dev_err(&mci->dev, "switch to DDR8 with strobe failed: %d\n", err);
> > +		return err;
> > +	}
> > +> +	/* Step 5: switch card to HS400 */
> > +	val =3D EXT_CSD_TIMING_HS400 | (host->drive_strength << EXT_CSD_DRV_S=
TR_SHIFT);
>=20
> The drive_strength is initialized by mmc_select_driver_type() and it
> seems no one will have called it for HS400ES?

Ok, will add it at the same place the kernel has it.

>=20
> > +	err =3D mci_switch(mci, EXT_CSD_HS_TIMING, val);
> > +	if (err) {
> > +		dev_err(&mci->dev, "switch to HS400 for HS400ES failed: %d\n", err);
> > +		return err;
> > +	}
> > +
> > +	/* Step 6: host to HS400 timing and final clock */
> > +	mci_set_timing(mci, MMC_TIMING_MMC_HS400);
> > +	mmc_set_bus_speed(mci);
> > +
> > +	err =3D mci_switch_status(mci, true);
> > +	if (err)
> > +		return err;
>=20
> Should this not be _after_ the enhanced strobe setting, so we are able
> to propagate an error on issues?

Ok.

> > @@ -2698,7 +2803,8 @@ static void mci_info(struct device *dev)
> >  		bw =3D 1;
> >
> >  	printf("  current buswidth: %d\n", bw);
> > -	printf("  current timing: %s\n", mci_timing_tostr(host->ios.timing));
> > +	printf("  current timing: %s%s\n", mci_timing_tostr(host->ios.timing),
> > +	       host->ios.enhanced_strobe ? " (Enhanced Strobe)" : "");
>=20
> I would just append an ES suffix.

Ok.

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


