Delivery-date: Wed, 22 Apr 2026 09:49:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFSLP-00F1Ky-1j
	for lore@lore.pengutronix.de;
	Wed, 22 Apr 2026 09:49:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFSLO-0001Cf-UQ
	for lore@pengutronix.de; Wed, 22 Apr 2026 09:49:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kWnd7eQmrSs3D7eZF+cQyGmuo5R2Af77iWKb7XM20mg=; b=djCms6rDqLDTCfh10Yvd3pVyiO
	uy3vI09dlfNXaOdkm5qzfn3rc5maVaQ4JI0Wu146/hIBAruLTxfY8PdJSQFDxK71bOyvXvToodzgn
	zVaTSUFXGEpuZGFG+AiGAabND3IFzact4G0dGbHZ4a9UrLH1xOtYQZ4XL3cEfqCODLn90WlN6zV17
	nNdTVn49OiQQ65WcTb6113oJI5Mys+cSaf11zpVvMV4DVDOupPgWgSHz3NqE0thLGvwmg6WLG5bMY
	lIJoanwzHIc6NxFwlzOfXh/Anm5dppSAfaEoyqIDCbCHj6koG010ZjK/iLZU6oR9hoDGw8njkptNR
	UFufmm2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFSKq-00000009k7L-3efJ;
	Wed, 22 Apr 2026 07:49:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFSKn-00000009k6j-1hzs
	for barebox@lists.infradead.org;
	Wed, 22 Apr 2026 07:49:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wFSKl-00015U-Qt; Wed, 22 Apr 2026 09:49:19 +0200
Message-ID: <8f2f329f61a52d27ecc365dfbb83986fa99e6ee5.camel@pengutronix.de>
From: Fabian Pflug <f.pflug@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Jonas Rebmann <jre@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Date: Wed, 22 Apr 2026 09:49:19 +0200
In-Reply-To: <aeh8E8taV-bxPoK_@pengutronix.de>
References: <20260415-v2026-03-0-topic-soc_bin_id-v2-0-81fab6ba5de0@pengutronix.de>
	 <20260415-v2026-03-0-topic-soc_bin_id-v2-2-81fab6ba5de0@pengutronix.de>
	 <aeh8E8taV-bxPoK_@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_004921_642466_149D8D74 
X-CRM114-Status: GOOD (  29.15  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] i.MX: HAB: update text for HABV4_CSF_UNLOCK_UID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

What about TLV data?

There to use the SOC_UID, the value printed during boot has to be reveresed=
, or if not on i.MX6/8, then I have no idea
how the field looks like, but soc_uid_hex, would always give the right valu=
e in the right format.

I can add a new version with the linux examples included, but would still l=
ike to establish the soc_uid_hex value or
change the content of soc_uid to what is currently in soc_uid_hex.

Kind regards
Fabian Pflug

On Wed, 2026-04-22 at 09:43 +0200, Sascha Hauer wrote:
> Hi Fabian,
>=20
> On Wed, Apr 15, 2026 at 01:10:22PM +0200, Fabian Pflug wrote:
> > With the establishment of global.soc_uid_hex, there is no need to look
> > for the serial number and reverse it.
> >=20
> > Also some SoC's will have 128-bit UID's, so the hint to 64-bit is not
> > correct and should be removed.
> >=20
> > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> > ---
> > =C2=A0arch/arm/mach-imx/Kconfig | 11 +++--------
> > =C2=A01 file changed, 3 insertions(+), 8 deletions(-)
> >=20
> > diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> > index 2e4d1ac80a..cb77d0d5b6 100644
> > --- a/arch/arm/mach-imx/Kconfig
> > +++ b/arch/arm/mach-imx/Kconfig
> > @@ -918,17 +918,12 @@ config HABV4_CSF_UNLOCK_UID
> > =C2=A0	depends on HABV4 && HABV4_CSF_UNLOCK_FIELD_RETURN
> > =C2=A0	string "CSF Unlock UID"
> > =C2=A0	help
> > -	=C2=A0 Device specific 64-bit UID required to unlock the field-return
> > +	=C2=A0 Device specific UID required to unlock the field-return
> > =C2=A0	=C2=A0 feature. This value must match the per device UNIQUE_ID f=
uses.
> > =C2=A0
> > =C2=A0	=C2=A0 The below example shows the expected format. The UNIQUE_I=
D is
> > -	=C2=A0 printed during boot by barebox:
> > -	=C2=A0=C2=A0=C2=A0 i.MX___ unique ID: 7766554433221100
> > -	=C2=A0 or it can be queried by Linux via:
> > -	=C2=A0=C2=A0=C2=A0 - cat /sys/devices/soc0/serial_number
> > -	=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 7766554433221100
>=20
> I don't think we should remove this. For some people it might be more
> convenient to read the SoC UID from Linux or to parse it from the
> barebox console log.
>=20
> > -
> > -	=C2=A0 So this value have to be set:
> > +	=C2=A0 stored in $global.soc_uid_hex, but must be split into bytes.
> > +	=C2=A0 The soc_uid_hex 0011223344556677 becomes:
> > =C2=A0	=C2=A0=C2=A0=C2=A0 - 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0=
x77
>=20
> By using soc_uid_hex we no longer have to reverse the byte order, but
> still have to reformat it (split into bytes, add 0x and comma). I think
> this little convenience gain is not worth the change really.
>=20
> Sascha


