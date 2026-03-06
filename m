Delivery-date: Fri, 06 Mar 2026 11:36:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vySY4-008eEV-0n
	for lore@lore.pengutronix.de;
	Fri, 06 Mar 2026 11:36:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vySY4-0000P2-HA
	for lore@pengutronix.de; Fri, 06 Mar 2026 11:36:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gTDTRbJsiVm/BwZHItrz7nSexhGUJCtczjYg7PNGE0Y=; b=VfF9IZlYcrhNNJK6DqEmhMPA30
	Pa6mc8dPIKSl51SbWen7eFw5JQz7WbGeJj5sD9bA03xY5jFGRmM/t6vDCUIy/qXytp4nXdrsWqqUn
	KAoEMj2Ylxzp+n6pVQxgGGuS7U7QJcoEm4ytQw5iL4aw7Kkbh665aq4bEqGR71lOvMqSM/5zc07V/
	0XyDNnYmUennksuwMWD171kjQ/yCC/gKB0Bo6zTR8PKRFve1LG1M9W+hX4ps2MQQJ/mxrN8bnC3/l
	ZmUlSGtfXEhHzBQucOL8ihM7gLBSbpU1DgGICT6ynZDr+0/OqhUifDzoBaIaB4QKDzILuPos+dPYn
	wgKKy/Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySXi-00000003U3q-09W8;
	Fri, 06 Mar 2026 10:36:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySXf-00000003U3T-1wuF
	for barebox@lists.infradead.org;
	Fri, 06 Mar 2026 10:36:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vySXd-0000GA-UL; Fri, 06 Mar 2026 11:36:21 +0100
Message-ID: <89985270f1e92a39d25ec096b9999b0a159ecdc5.camel@pengutronix.de>
From: Fabian Pflug <f.pflug@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, uol@pengutronix.de
Date: Fri, 06 Mar 2026 11:36:21 +0100
In-Reply-To: <ulfwp773ltirh4dbvcllje5sy7cxd2lolao6m4muqmn7lldcsq@zscclgrl3jso>
References: <20260306102038.4065007-1-f.pflug@pengutronix.de>
	 <ulfwp773ltirh4dbvcllje5sy7cxd2lolao6m4muqmn7lldcsq@zscclgrl3jso>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_023623_528086_5EFBA65A 
X-CRM114-Status: GOOD (  22.45  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] i.MX: hab: write srk lock with hab command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

the C APi already does it, if you give it this flag.

It is device dependen on which fuse to burn, so have a look at:


static int imx6_hab_write_srk_hash_ocotp(const u8 *newsrk, unsigned flags)
{
	int ret;

	ret =3D imx_hab_write_srk_hash_ocotp(newsrk);
	if (ret)
		return ret;

	if (flags & IMX_SRK_HASH_WRITE_LOCK) {
		ret =3D imx_ocotp_write_field(OCOTP_SRK_LOCK, 1);
		if (ret < 0)
			return ret;
	}

	return 0;
}

static int imx8m_hab_write_srk_hash_ocotp(const u8 *newsrk, unsigned flags)
{
	int ret;

	ret =3D imx_hab_write_srk_hash_ocotp(newsrk);
	if (ret)
		return ret;

	if (flags & IMX_SRK_HASH_WRITE_LOCK) {
		ret =3D imx_ocotp_write_field(MX8M_OCOTP_SRK_LOCK, 1);
		if (ret < 0)
			return ret;
	}

	return 0;
}

which get called by=20
int imx_hab_write_srk_hash(const void *buf, unsigned flags)
Which is the C API.

I don't believe it is good to always write the lock bit in the C API, as th=
is could be used to write partial hashes.

Kind regards
Fabian

On Fri, 2026-03-06 at 11:26 +0100, Marco Felsch wrote:
> Hi Fabian,
>=20
> On 26-03-06, Fabian Pflug wrote:
> > The write_srk_hash functions already support the flag to write the SRK
> > lock, but it is never used in barebox. To prevent an attacker from
> > calculating an SRK hash that has the same bits set as the current SRK
> > hash, but with maybe more, we lock the SRK hash to prevent turning bits=
.
> >=20
> > Writing the lock twice will probably result in unusable garbage and the
> > hab command itself already is written in a way to write the complete
> > hash and not parts of it.
> >=20
> > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> > ---
> > =C2=A0commands/hab.c | 2 +-
> > =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/commands/hab.c b/commands/hab.c
> > index 8ae943a4c8..b8ef770066 100644
> > --- a/commands/hab.c
> > +++ b/commands/hab.c
> > @@ -14,7 +14,7 @@ static int do_hab(int argc, char *argv[])
> > =C2=A0{
> > =C2=A0	int opt, ret, i;
> > =C2=A0	char *srkhashfile =3D NULL, *srkhash =3D NULL;
> > -	unsigned flags =3D 0;
> > +	unsigned flags =3D IMX_SRK_HASH_WRITE_LOCK;
>=20
> This would fix only the hab cmd, not the C-API. Instead we should fix
> the C-API to write the LOCK after the SRK was burned/fused.
>=20
> Regards,
> =C2=A0 Marco
>=20
> > =C2=A0	u8 srk[SRK_HASH_SIZE];
> > =C2=A0	int lockdown =3D 0, info =3D 0;
> > =C2=A0
> > --=20
> > 2.47.3
> >=20
> >=20
> >=20


