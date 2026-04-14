Delivery-date: Tue, 14 Apr 2026 13:05:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCbZr-00C3Ms-2G
	for lore@lore.pengutronix.de;
	Tue, 14 Apr 2026 13:05:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCbZr-000484-3v
	for lore@pengutronix.de; Tue, 14 Apr 2026 13:05:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6BC2Z66B16dSXGNiMWvjhNFLv4bV6kt/SYiOhIMHN0U=; b=bdPYCsmbgeex+e3Hit4NuTPrWV
	m652PpXkxWakoo+T6DqVotH5WOpsCkFqtn7EgRVNvoJE2RFV3Rl/6Wgdd24pZ7l8RIIDlTAFuhn+L
	AMAg436tvi0m6dWzGuQ5IF67FtSTtlI5XZFBPebCiBhro7TAmO9m+GplmKjO0LZaJMvXJ4n+jEbzW
	ShF29w+OOtQc3S+48PvR6eVtnZxwvXyEQZSPdk5wR4YcqwFuPWXbQo7C/WsfdNNZlj2WPGHNWp8nD
	P2Nql4nzoYknkuB8/2AQZEr6TuXRDzO2L1SlMry7dCY5dzMDKRQdOQBc2nfKtNdST2ZVcQJwdbVDz
	U4fFi24A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCbZL-0000000HCET-0EIw;
	Tue, 14 Apr 2026 11:04:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCbZI-0000000HCDK-1gEG
	for barebox@lists.infradead.org;
	Tue, 14 Apr 2026 11:04:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wCbZF-00042Y-CF; Tue, 14 Apr 2026 13:04:29 +0200
Message-ID: <1ebef127eee8d212ca43050aefb5b14ba098725d.camel@pengutronix.de>
From: Fabian Pflug <f.pflug@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>,  BAREBOX <barebox@lists.infradead.org>
Date: Tue, 14 Apr 2026 13:04:29 +0200
In-Reply-To: <0b4961bd-7195-4d73-8692-e6d5828ba02a@pengutronix.de>
References: <20260330-v2026-03-0-topic-soc_bin_id-v1-0-11292f75b196@pengutronix.de>
	 <20260330-v2026-03-0-topic-soc_bin_id-v1-2-11292f75b196@pengutronix.de>
	 <0b4961bd-7195-4d73-8692-e6d5828ba02a@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_040432_438051_B94017DF 
X-CRM114-Status: GOOD (  24.08  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] i.MX: HAB: update text for HABV4_CSF_UNLOCK_UID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hey,

On Mon, 2026-04-13 at 10:21 +0200, Jonas Rebmann wrote:
> On 2026-03-30 14:24, Fabian Pflug wrote:
> > With the establishment of global.soc_uid_bin, there is no need to look
> > for the serial number and reverse it.
>=20
> I don't believe reverting the byte order manually is something we were
> supposed to be doing before.

It needed to be done in order for it to work. If it was supposed to done li=
ke that I can't tell, but it is what was
needed.

>=20
> > Also some SoC's will have 128-bit UID's, so the hint to 64 bit is not
> > correct and should be removed.
> >=20
> > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> > ---
> > =C2=A0 arch/arm/mach-imx/Kconfig | 11 +++--------
> > =C2=A0 1 file changed, 3 insertions(+), 8 deletions(-)
> >=20
> > diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> > index 2e4d1ac80a..bfcb6ae402 100644
> > --- a/arch/arm/mach-imx/Kconfig
> > +++ b/arch/arm/mach-imx/Kconfig
> > @@ -918,17 +918,12 @@ config HABV4_CSF_UNLOCK_UID
> > =C2=A0=C2=A0	depends on HABV4 && HABV4_CSF_UNLOCK_FIELD_RETURN
> > =C2=A0=C2=A0	string "CSF Unlock UID"
> > =C2=A0=C2=A0	help
> > -	=C2=A0 Device specific 64-bit UID required to unlock the field-return
> > +	=C2=A0 Device specific UID required to unlock the field-return
> > =C2=A0=C2=A0	=C2=A0 feature. This value must match the per device UNIQU=
E_ID fuses.
> > =C2=A0=20
> > =C2=A0=C2=A0	=C2=A0 The below example shows the expected format. The UN=
IQUE_ID is
> > -	=C2=A0 printed during boot by barebox:
> > -	=C2=A0=C2=A0=C2=A0 i.MX___ unique ID: 7766554433221100
> > -	=C2=A0 or it can be queried by Linux via:
> > -	=C2=A0=C2=A0=C2=A0 - cat /sys/devices/soc0/serial_number
> > -	=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 7766554433221100
> > -
> > -	=C2=A0 So this value have to be set:
> > +	=C2=A0 is stored in $global.soc_uid_bin, but must be split into bytes=
.
>=20
> "The UNIQUE_ID is is stored"?

Thanks, fixed.

>=20
> > +	=C2=A0 The soc_uid_bin 0011223344556677 becomes:
> > =C2=A0=C2=A0	=C2=A0=C2=A0=C2=A0 - 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0=
x66, 0x77
>=20
> I never used this feature but is there any good reason why this should
> consume a different format from what $global.soc_uid_bin returns?

HAB_CSF_UNLOCK_UID does not like a single 64 bit value, but instead needs t=
he byte representation.
TLV on the other hand needs the single 64bi value. So either one needs to b=
e converted, or you need to introduce another
value soc_uid_hex_bytes, but at what point is it overkill?

Fabian

>=20
> > =C2=A0=C2=A0	=C2=A0 Afterwards, the `hab -p -r` command can be used to =
burn the fuse.
> >=20


