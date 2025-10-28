Delivery-date: Tue, 28 Oct 2025 14:43:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDjzL-00ChYG-0e
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 14:43:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDjzK-0004q7-Je
	for lore@pengutronix.de; Tue, 28 Oct 2025 14:43:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=47BDGleCbG0XEvCNQf2MtsTKZJDjo/zgJ7UldmAp1XQ=; b=QF1J7SMHBNYzfJl600pFsBoma4
	TSxnfdOP7ZO4YFDozOLx1HREqMDTspMWsIqen5SdT9bdZvvA09Ijo6a6aWSs+OVSCdSi27nMGcqs5
	tURdmmjZx90PhoZ59raGa1ImKlvePRauElmqBpcUTwmGphN2K+QjPKOvm+9e8MvyZ4VDVv2Nndtrd
	kG1+++fWhjQzHr+7hk8eRuqccSr5RRZ/RmgGhDPNa/Wf1kqfEBdzwq7eCqf7RJ+A7pNTGXU/8p60x
	I+sHMmRiWS1nT0Colk68Q/uzFK2mP6DTTvcx5+wReIuin2nVum940giWvtYFo11BHbvo6MPRy3yEB
	xNrt0ilQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDjyj-0000000G10a-1S2c;
	Tue, 28 Oct 2025 13:43:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDjyg-0000000G0zr-0fA3
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 13:43:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vDjyd-0004iG-Al; Tue, 28 Oct 2025 14:43:07 +0100
Message-ID: <e23500c84662501cf43a2269d72539415da5211a.camel@pengutronix.de>
From: Fabian Pflug <f.pflug@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Tue, 28 Oct 2025 14:43:06 +0100
In-Reply-To: <2fc02718-032e-4ad4-89a5-e780836c430d@pengutronix.de>
References: <20251028121820.1242298-1-f.pflug@pengutronix.de>
	 <2fc02718-032e-4ad4-89a5-e780836c430d@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_064310_225920_378425FB 
X-CRM114-Status: GOOD (  25.80  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] startup: check for console before showing menu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

On Tue, 2025-10-28 at 13:39 +0100, Ahmad Fatoum wrote:
> Hi Fabian,
>=20
> On 10/28/25 1:18 PM, Fabian Pflug wrote:
> > If there is no input available or possible due to policy settings, it
> > does not make sense to show a menu and ask for input.
> >=20
> > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> > ---
> > =C2=A0common/startup.c | 18 ++++++++++--------
> > =C2=A01 file changed, 10 insertions(+), 8 deletions(-)
> >=20
> > diff --git a/common/startup.c b/common/startup.c
> > index 8d36ffceb4..3bc2609006 100644
> > --- a/common/startup.c
> > +++ b/common/startup.c
> > @@ -45,6 +45,7 @@
> > =C2=A0#include <pbl/handoff-data.h>
> > =C2=A0#include <libfile.h>
> > =C2=A0#include <fuzz.h>
> > +#include <security/config.h>
> > =C2=A0
> > =C2=A0extern initcall_t __barebox_initcalls_start[], __barebox_early_in=
itcalls_end[],
> > =C2=A0		=C2=A0 __barebox_initcalls_end[];
> > @@ -361,14 +362,15 @@ static int run_init(void)
> > =C2=A0		run_shell();
> > =C2=A0	}
> > =C2=A0
> > -	do {
> > -		/*
> > -		 * Let's run the command once at least, so an error
> > -		 * message is printed if the file doesn't exist
> > -		 */
> > -		run_command(MENUFILE);
> > -	} while (stat(MENUFILE, &s) =3D=3D 0);
> > -
> > +	if(!IS_ENABLED(CONFIG_CONSOLE_DISABLE_INPUT) && IS_ALLOWED(SCONFIG_CO=
NSOLE_INPUT)) {
>=20
> CONFIG_CONSOLE_DISABLE_INPUT only influences the default, it can still
> be changed later at runtime, so this is not necessarily correct.
>=20
> > +		do {
>=20
> Move the IS_ALLOWED(SCONFIG_CONSOLE_INPUT) check here?
>=20
> Feels more natural to do it in the loop than outside. Extra benefit: We
> could use it for testing purposes (Menu entry that locks the console..)

I see the extra benefit for testing the console, but at this point, if ther=
e is no input possible, then we cannot enter
something into the console. The menu is a new screen on the device, which m=
akes it hard to read the possible error
messages before going to console here, because the security policy did some=
thing during development, that was not
intended. I would love to have the system hang here instead and tell me as =
much.

I will not stop you in implementing it differently, but I will not do that.

Kind regards
Fabian

>=20
> Cheers,
> Ahmad
>=20
> > +			/*
> > +			* Let's run the command once at least, so an error
> > +			* message is printed if the file doesn't exist
> > +			*/
> > +			run_command(MENUFILE);
> > +		} while (stat(MENUFILE, &s) =3D=3D 0);
> > +	}
> > =C2=A0	hang();
> > =C2=A0}
> > =C2=A0


