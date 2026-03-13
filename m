Delivery-date: Fri, 13 Mar 2026 15:27:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13Tt-000Eez-2L
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 15:27:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13Ts-0004W4-Ln
	for lore@pengutronix.de; Fri, 13 Mar 2026 15:27:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VDtERtUrtE0/kgy/OkoAB/yhf73W8Nj3sEHgnafarxo=; b=Jxurr/kNgNhAtMJjEbGQo+4xX9
	2+ITesWJXWKAL0NbJSCX+A268VWfbkJ/k3pmbvzSRAnGmhJNcf5fOP4rEgGzCMNNlMvb6oJS/0KCK
	Nx8NEr2rxpxorbDrJp6upDEDOWnxsdfmuzmRalC2aXDwdy0fg+LcWSSHoipdBaY3I0Oi8Hx8ol/EU
	QiqQwVlSHfpij8kK0rNlFog12X2gCmS/QQd49dY7NSZga6ZEMuZ1P5f9kXGJpk/TKzn+KLWKzVSsc
	+TzT2oLYDW47dhoJHKWDoKXT0Q8miAd6vmERyNAp3DYtlorLn4eZFTJUqzgg0dx26yBL7H+Fqon5m
	cM/dTeUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13TL-00000000O0H-26aT;
	Fri, 13 Mar 2026 14:26:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13TI-00000000Nzs-2xz9
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 14:26:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w13TH-0004Lu-1x; Fri, 13 Mar 2026 15:26:35 +0100
Message-ID: <ec2368a0a5f831df07116738da1ef02b376398b9.camel@pengutronix.de>
From: Fabian Pflug <f.pflug@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Date: Fri, 13 Mar 2026 15:26:34 +0100
In-Reply-To: <abQSywI_nJlVD2dJ@pengutronix.de>
References: <20260312-v2026-02-0-topic-sconfig_console-v1-0-4c3fccafab1e@pengutronix.de>
	 <20260312-v2026-02-0-topic-sconfig_console-v1-1-4c3fccafab1e@pengutronix.de>
	 <abQSywI_nJlVD2dJ@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_072636_750920_FA5C9943 
X-CRM114-Status: GOOD (  19.49  )
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
Subject: Re: [PATCH 1/4] common: bootm: add policy to commandline
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, 2026-03-13 at 14:36 +0100, Sascha Hauer wrote:
> On Thu, Mar 12, 2026 at 10:16:42AM +0100, Fabian Pflug wrote:
> > If security policies are used, then the variable bootm.provide_policy
> > can be set to automatically append the currently selected security
> > policy to the kernel commandline with the prefix
> > barebox.security.policy=3D
> > This allows the the system to behave different based on the selected
> > security policy.
> >=20
> > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> > ---
> > =C2=A0common/bootm.c=C2=A0 | 23 +++++++++++++++++++++++
> > =C2=A0include/bootm.h |=C2=A0 5 +++++
> > =C2=A02 files changed, 28 insertions(+)
> >=20
> > diff --git a/common/bootm.c b/common/bootm.c
> > index 6318509884..cd90aa81e1 100644
> > --- a/common/bootm.c
> > +++ b/common/bootm.c
> > @@ -22,6 +22,7 @@
> > =C2=A0#include <uncompress.h>
> > =C2=A0#include <zero_page.h>
> > =C2=A0#include <security/config.h>
> > +#include <security/policy.h>
> > =C2=A0
> > =C2=A0static LIST_HEAD(handler_list);
> > =C2=A0static struct sconfig_notifier_block sconfig_notifier;
> > @@ -75,6 +76,7 @@ static int bootm_dryrun;
> > =C2=A0static int bootm_earlycon;
> > =C2=A0static int bootm_provide_machine_id;
> > =C2=A0static int bootm_provide_hostname;
> > +static int bootm_provide_policy;
> > =C2=A0static int bootm_verbosity;
> > =C2=A0static int bootm_efi_mode =3D BOOTM_EFI_AVAILABLE;
> > =C2=A0
> > @@ -97,6 +99,7 @@ void bootm_data_init_defaults(struct bootm_data *data=
)
> > =C2=A0	data->appendroot =3D bootm_appendroot;
> > =C2=A0	data->provide_machine_id =3D bootm_provide_machine_id;
> > =C2=A0	data->provide_hostname =3D bootm_provide_hostname;
> > +	data->provide_policy =3D bootm_provide_policy;
> > =C2=A0	data->verbose =3D bootm_verbosity;
> > =C2=A0	data->dryrun =3D bootm_dryrun;
> > =C2=A0	data->efi_boot =3D bootm_efi_mode;
> > @@ -118,6 +121,7 @@ void bootm_data_restore_defaults(const struct bootm=
_data *data)
> > =C2=A0	bootm_appendroot =3D data->appendroot;
> > =C2=A0	bootm_provide_machine_id =3D data->provide_machine_id;
> > =C2=A0	bootm_provide_hostname =3D data->provide_hostname;
> > +	bootm_provide_policy =3D data->provide_policy;
> > =C2=A0	bootm_verbosity =3D data->verbose;
> > =C2=A0	bootm_dryrun =3D data->dryrun;
> > =C2=A0	bootm_efi_mode =3D data->efi_boot;
> > @@ -712,6 +716,20 @@ int bootm_boot(struct bootm_data *bootm_data)
> > =C2=A0		free(hostname_bootarg);
> > =C2=A0	}
> > =C2=A0
> > +	if (IS_ENABLED(CONFIG_SECURITY_POLICY) && bootm_data->provide_policy)=
 {
> > +		char *policy_bootargs;
> > +
> > +		if (!active_policy->name) {
>=20
> Could active_policy be NULL here?
I'm not totally sure. If you have activated security policies, then did not=
 specify any policy, it may be NULL.
Or if you have activated security policies, but never ran into a path, wher=
e 'is_allowed' is checked, because everything
that could be configured by security policies is disabled by Kconfig and yo=
u did not set an initial policy, then it
might be NULL.
Will add an extra check.
>=20
> > +			pr_err("Providing policy is enabled but policy has no name\n");
> > +			ret =3D -EINVAL;
> > +			goto err_out;
> > +		}
> > +
> > +		policy_bootargs =3D basprintf("barebox.security.policy=3D%s", active=
_policy->name);
> > +		globalvar_add_simple("linux.bootargs.policy", policy_bootargs);
>=20
> Should be linux.bootargs.dyn.policy to make sure it gets cleared after a
> boot attempt.

Will change.

Fabian

>=20
> Sascha
>=20


