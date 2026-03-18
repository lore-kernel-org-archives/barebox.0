Delivery-date: Wed, 18 Mar 2026 12:39:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2pEz-002AoM-0x
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 12:39:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2pEy-0001Iz-Lh
	for lore@pengutronix.de; Wed, 18 Mar 2026 12:39:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=89OdMts6rBMIe5fZTxb6Evu+hw7IhdMQkJmUsnKVVzw=; b=iuM8X5abjedstFdNbKUVaphybD
	LiaaGdXhVxKWkbqoYYMM58N6bQyu5NgwpfkCwZpAcXrAz5azqRGvQGFpK6Gp7qtZjR62NhBRkaHei
	cv09DSeicsl8S/XkJk2YtXh7Ve+gmjpJ5QMWOyGhIEDGPNikw1TbrkD0E7Vvfylh4oL1R1xwOQsDc
	X0BiiNCpjFu+UeL1X9ywyulJ8txmbCethuwVVChmxtFUMcMukyXGdMwDN+LGeqPOkZDy4uFUVJYlD
	qsNstjq4F7IfWYHkpODlmih5bHx/zIZp91XzPRX+WVXgPS/gmnL0APvRiy/+GuGBUECkcViQJ3aZO
	k8SakR2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2pEX-00000008K9W-1Zgb;
	Wed, 18 Mar 2026 11:38:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2pEU-00000008K8N-36QM
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 11:38:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w2pES-0001BG-T0; Wed, 18 Mar 2026 12:38:36 +0100
Message-ID: <7a04e3afc4460bfb232c688470f384e413d92a94.camel@pengutronix.de>
From: Fabian Pflug <f.pflug@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, BAREBOX
	 <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Mar 2026 12:38:36 +0100
In-Reply-To: <f9d5e454-6721-4467-8a6d-2f42f8754ed8@pengutronix.de>
References: <20260318-v2026-02-0-topic-sconfig_console-v3-0-e26055294723@pengutronix.de>
	 <20260318-v2026-02-0-topic-sconfig_console-v3-3-e26055294723@pengutronix.de>
	 <f9d5e454-6721-4467-8a6d-2f42f8754ed8@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_043838_777054_CCBF039C 
X-CRM114-Status: GOOD (  28.80  )
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
Subject: Re: [PATCH v3 3/5] security: policy: set active policy on boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, 2026-03-18 at 12:28 +0100, Ahmad Fatoum wrote:
> On 3/18/26 10:22, Fabian Pflug wrote:
> > If init name has been set at compiletime and the policy is available,
> > because it is part of the path, then set the active policy to the polic=
y
> > selected by compiletime.
> > Since this is so early in the bootchain, there is no need to call
> > security_policy_activate, because there should not be any registered
> > callbacks at this moment in time.
> > If no policy could be found, then it will be filled as before by the
> > first call to is_allowed.
>=20
> The code in is_allowed is:
>=20
> if (!policy && *CONFIG_SECURITY_POLICY_INIT) {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 security_policy_select(CONFIG_=
SECURITY_POLICY_INIT);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 policy =3D active_policy;
> }
>=20
> It becomes dead code with your change here as CONFIG_SECURITY_POLICY_INIT
> is a compile-time constant, there is no filling on the first call anymore=
.

I also thought about it, but if the initial policy is not part of the compi=
letime policies, but instead gets added
during board setup code, then the change in init will not find the specifie=
d policy, resulting in policy being NULL and
this code still working.

>=20
> >=20
> > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> > ---
> > =C2=A0security/policy.c | 3 +++
> > =C2=A01 file changed, 3 insertions(+)
> >=20
> > diff --git a/security/policy.c b/security/policy.c
> > index 85333d9e6f..e2d1b10a78 100644
> > --- a/security/policy.c
> > +++ b/security/policy.c
> > @@ -235,6 +235,9 @@ static int security_init(void)
> > =C2=A0	if (*CONFIG_SECURITY_POLICY_PATH)
> > =C2=A0		security_policy_add(default);
> > =C2=A0
> > +	if (*CONFIG_SECURITY_POLICY_INIT)
> > +		active_policy =3D security_policy_get(CONFIG_SECURITY_POLICY_INIT);
> > +
>=20
> I think I decided initially against this, because there was initially
> a Sconfig option against changing the active security policy.
>=20
> I believe now a single option is too limiting, it should instead be
> a directed graph that explains which policies are reachable from a given
> policy.
>=20
> Anyways, the change here invalidates the Kconfig help text for
> SECURITY_POLICY_INIT.
>=20
> I am not fully sure if this change is a good idea, but it needs to
> be fixed to be considered. I assume you do this, because checking
> the name of the policy doesn't trigger a selection like IS_ALLOWED does?

exactly.
during device_probe, there is a need to know the current policy name, if th=
ere is a policy active.

I will have a look into it.

Fabian

>=20
> Thanks,
> Ahmad
>=20
>=20
> > =C2=A0	return 0;
> > =C2=A0}
> > =C2=A0pure_initcall(security_init);
> >=20
>=20


