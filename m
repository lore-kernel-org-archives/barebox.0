Delivery-date: Wed, 22 Apr 2026 10:14:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFSjR-00F1ur-0G
	for lore@lore.pengutronix.de;
	Wed, 22 Apr 2026 10:14:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFSjQ-000604-Eh
	for lore@pengutronix.de; Wed, 22 Apr 2026 10:14:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UdSXwO9DSwLGGS4CHtXDpmmqe6dquggnbQI01BUybW0=; b=VcCtmXdNLh9bCKyWgF+gQSIIbm
	bteYw0MWgu0NCF8tMLZqLCbduNVxZIyiIJJ07yq58I6MY90VMjM/PJJKF5FyiRIafEyJoDNf0MOhg
	027QrOXbYb6j/KCGVTLWa5/r2rDvzlNcMNhr20JUy2Fbm1E96KTn5W/CMlOIUjfGDrbRrNiOt54bi
	xyif1GwCVIEr62yWhP1q9YhsIu6P72Fx5Ckv2bpOZIpcloXJt0S2Z06JoZRB3AF99YtQEd10BrIUh
	t+mHdfDrqcxDwh1ujBy7//pPxY7Ctfw75ucBl5Z3BNqcY88l8dZHQDLXSjH5cQomGYMgVpgrTiEmP
	x+IL9Ptw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFSiv-00000009lUj-278S;
	Wed, 22 Apr 2026 08:14:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFSir-00000009lUH-28cA
	for barebox@lists.infradead.org;
	Wed, 22 Apr 2026 08:14:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wFSip-0005qX-TD; Wed, 22 Apr 2026 10:14:11 +0200
Message-ID: <479b96ec421925a887ad63f65a5c00478caac431.camel@pengutronix.de>
From: Fabian Pflug <f.pflug@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Jonas Rebmann <jre@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Date: Wed, 22 Apr 2026 10:14:11 +0200
In-Reply-To: <aeh_ExzusLb9PCX3@pengutronix.de>
References: <20260415-v2026-03-0-topic-soc_bin_id-v2-0-81fab6ba5de0@pengutronix.de>
	 <20260415-v2026-03-0-topic-soc_bin_id-v2-1-81fab6ba5de0@pengutronix.de>
	 <aeh_ExzusLb9PCX3@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_011413_919389_AC1E43D6 
X-CRM114-Status: GOOD (  29.39  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] common: misc: add soc_uid_hex to globalvar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, 2026-04-22 at 09:56 +0200, Sascha Hauer wrote:
> On Wed, Apr 15, 2026 at 01:10:21PM +0200, Fabian Pflug wrote:
> > uidstr and uidbuf could be the same, but don't have to be. This results
> > in uncertainty on what exactly is the current UID used for
> > machine_set_hashable and to compare against with TLV.
> >=20
> > Add an additional global var, that encodes SoC-UID registers in a
> > manner uniform across SoCs/manufacturers.
> >=20
> > This can now be used to feed as data for bound-soc-uid into
> > `bareboxtlv-generator.py` or as the value for
> > `CONFIG_HABV4_CSF_UNLOCK_UID`
> >=20
> > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> > ---
> > =C2=A0common/misc.c | 9 +++++++--
> > =C2=A01 file changed, 7 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/common/misc.c b/common/misc.c
> > index ecf9574f7a..be896706d6 100644
> > --- a/common/misc.c
> > +++ b/common/misc.c
> > @@ -268,6 +268,7 @@ const uuid_t *barebox_get_product_uuid(void)
> > =C2=A0BAREBOX_MAGICVAR(global.product.uuid, "SMBIOS-reported product UU=
ID");
> > =C2=A0
> > =C2=A0static char *soc_uid_str;
> > +static char *soc_uid_bin_str;
> > =C2=A0static void *soc_uid;
> > =C2=A0static size_t soc_uid_len;
> > =C2=A0
> > @@ -295,18 +296,22 @@ void barebox_set_soc_uid(const char *uidstr, cons=
t void *uidbuf, size_t len)
> > =C2=A0	soc_uid =3D xmemdup(uidbuf, len);
> > =C2=A0	soc_uid_len =3D len;
> > =C2=A0
> > +	soc_uid_bin_str =3D xzalloc(len * 2 + 1);
> > +	bin2hex(soc_uid_bin_str, uidbuf, len);
> > +
> > =C2=A0	if (uidstr) {
> > =C2=A0		soc_uid_str =3D xstrdup(uidstr);
> > =C2=A0	} else {
> > -		soc_uid_str =3D xzalloc(len * 2 + 1);
> > -		bin2hex(soc_uid_str, uidbuf, len);
> > +		soc_uid_str =3D soc_uid_bin_str;
> > =C2=A0	}
> > =C2=A0
> > =C2=A0	machine_id_set_hashable(uidbuf, len);
> > =C2=A0
> > =C2=A0	globalvar_add_simple_string("soc_uid", &soc_uid_str);
> > +	globalvar_add_simple_string("soc_uid_hex", &soc_uid_bin_str);
>=20
> barebox_set_soc_uid() takes two arguments, the raw SoC UID data and a
> SoC specific string representation of that data. It's unfortunate that
> you need two different interpretations of the raw data on i.MX, one to
> match the Linux /sys/ format and one to put into the CSF file.
>=20
> Anyway, just adding a second string representation not only for i.MX,
> but also for all other SoCs is rather confusing. For the i.MX field
> return case we could also add a hab command option or a i.MX specific
> globalvar which is exactly described as "SoC UID in the format the CSF
> needs"

Please don't get confused. This is an additional benefit for the CSF in i.M=
X. The main focus here is to have a string
representation, that can be used in TLV generation, with the script in=20
https://github.com/barebox/barebox/blob/master/scripts/bareboxtlv-generator=
/bareboxtlv-generator.py

The value=20
0x0024, bound-soc-uid, "Reject TLV if supplied binary data does not match U=
ID SoC register"
https://github.com/barebox/barebox/blob/v2026.04.0/common/tlv/barebox.c#L20=
0

Needs this representation for all vendors, not just i.MX.
And since the values for soc_bin and uidstr can differ greatly, it is very =
soc specific on what value to use in the
https://github.com/barebox/barebox/blob/master/scripts/bareboxtlv-generator=
/data-example.yaml

This patch tries to fix it, by giving a value, that can just be copied to T=
LC data.yaml

Kind regards
Fabian Pflug

>=20
> Sascha


