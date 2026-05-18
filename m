Delivery-date: Mon, 18 May 2026 14:36:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOxD6-0018Ia-1R
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 14:36:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOxD5-00066G-Oc
	for lore@pengutronix.de; Mon, 18 May 2026 14:36:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=HL5Cd4zo/c2a9H6O63MBWB1Fe6PySzFLF7f6HYBG6CQ=; b=GlbsYW0iz0u2AHNr2JQgg7n995
	ZQvJ4v2kLdyvvvV+bzK/dFTpmWzgUBVhaCPb5AUKe6Nb21ffNRqYS5Oc5H/JFmwLw7UxYuGSRUVHL
	l71H6bu5pFraabPOFOZV7XdaZ9kmHoEG2JVOpPe0ysntLC8/qUBsUZq04TXLhr5qGMlpOVSeftY9C
	A+kqg7gEuK43HbzFbBCPe1bxrfh4MKPFG7ksANl2N3F3J6APR2JkcySIHrm5pP3jvs4SuTB61bRlW
	5wxedU4TgvvABHtqeMpS1lTo6NeQi6ChTFomFYPU8TmkMeZF5oMGMWPJz7MOiBXoJYHpaDH80R5Ic
	IG4Tygqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOxBx-0000000Fehi-2JsY;
	Mon, 18 May 2026 12:35:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOxBv-0000000FehK-3fph
	for barebox@bombadil.infradead.org;
	Mon, 18 May 2026 12:35:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:Sender:
	Reply-To:MIME-Version:Content-ID:Content-Description:References;
	bh=HL5Cd4zo/c2a9H6O63MBWB1Fe6PySzFLF7f6HYBG6CQ=; b=gnRmlJbMo4jaRv4aP6ImF+1xRn
	RygCVMk8N7Xd2H6DVo8Ez2vaTWjKozgPVGSZ/eZtt54g7PCHWKViV8UK33oeQHWhDbtRk1tpSy4+o
	c9d1sfx8VbXxMIcWnrYAchj+entgFCj7XRd90b4mIBBnTppUBSv4dtnbf0/o/PGcJY6RBIZFhsav2
	Q73Fvyn22o8vwJTIJESqQ+EPztDqFHAKALPeXABFLBpvn7TJNip/+Ik+lERlekGEeFb+xtpXQ7IHI
	uZIAh24cQfAzB8GPrl0K9iuubnITdtBBHLH6ZGmiv7TRRv76NUumZ5gnT+yT+vwdsYtG+T2MxkgN7
	HviT78LA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOxBs-0000000B9ZA-2cVp
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 12:35:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wOxBr-0005xL-Ml; Mon, 18 May 2026 14:35:23 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wOxBr-000b0y-0G;
	Mon, 18 May 2026 14:35:23 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wOxBr-0000000EtwA-2G4Z;
	Mon, 18 May 2026 14:35:23 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <728c7f06-aec9-41a4-87e2-b4e0fe14a55f@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 12:35:23 +0000
Message-Id: <E1wOxBr-0000000EtwA-2G4Z@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_133525_060624_4EAA1458 
X-CRM114-Status: GOOD (  21.15  )
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
Subject: Re: [PATCH 04/10] mci: add HS400 mode selection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-05-18 11:36, Ahmad Fatoum wrote:
> Hello Sascha,
>=20
> On 5/11/26 2:07 PM, Sascha Hauer wrote:
> > eMMC HS400 transitions through HS and 8-bit DDR per JEDEC, on top of
> > a card already tuned in HS200. Wire that up in the core:
> >=20
> > - mmc_select_max_dtr() now records EXT_CSD_CARD_TYPE_HS400_{1_8V,1_2V}
> >   in mmc_avail_type when both the host (mmc-hs400-1_8v / mmc-hs400-1_2v
> >   in DT) and the card advertise it. HS400 reuses hs200_max_dtr (200 MHz)
> >   since it's the same SDCLK rate, just DDR-sampled.
> >=20
> > - mmc_set_bus_speed() treats HS200 and HS400 as the same rate tier.
> >=20
> > - mmc_select_hs400() implements the JEDEC sequence:
> >     1. CMD6 EXT_CSD_HS_TIMING =3D HS
> >     2. host: MMC_TIMING_MMC_HS, clock =3D hs_max_dtr
> >     3. CMD6 EXT_CSD_BUS_WIDTH =3D EXT_CSD_DDR_BUS_WIDTH_8
> >     4. CMD6 EXT_CSD_HS_TIMING =3D HS400
> >     5. host: MMC_TIMING_MMC_HS400, clock back to 200 MHz
> >=20
> >   Bails early if the card lacks HS400 capability or the bus isn't 8-bit.
> >=20
> > - mci_startup_mmc() runs mmc_select_hs400() right after a successful
> >   HS200 tuning when EXT_CSD_CARD_TYPE_HS400 is in mmc_avail_type.
> >=20
> > - mmc_card_hs400() helper added in mci.h, mirroring mmc_card_hs200().
> >=20
> > Host drivers must additionally handle MMC_TIMING_MMC_HS400 in their
> > set_ios / set_clock paths (e.g. setting the controller-specific HS400
> > bit in HOST_CONTROL2, configuring data-strobe sampling). Without that
> > the core will run the transition but the host won't sample correctly.
>=20
> This patch is missing the downgrade code. If HS400 doesn't work out, we
> should fallback to HS200.

If a switch to HS400 fails we do not know in which mode the card
actually is, so we do not have a reliable way to talk to the card. Is it
DDR or SDR? So our only chance would be to re-do the whole card
initialization.

> > @@ -1783,6 +1786,18 @@ static void mmc_select_max_dtr(struct mci *mci)
> >  		avail_type |=3D EXT_CSD_CARD_TYPE_HS200_1_2V;
> >  	}
> > =20
> > +	if ((caps2 & MMC_CAP2_HS400_1_8V) &&
>=20
> This bit is not decoded in mci_print_caps (same or _1_2V)

Ok, will add.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


