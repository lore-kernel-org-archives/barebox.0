Delivery-date: Fri, 13 Mar 2026 15:31:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13Xm-000EjQ-1n
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 15:31:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13Xl-0005R5-Tv
	for lore@pengutronix.de; Fri, 13 Mar 2026 15:31:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kqo9C98jcnYfkuONiHtrga1xkWKTpksl01tLTbrUGow=; b=SM/GVUklco5+DM9nbythOrX1AD
	MIJpfO/9JiezkOjT9y5d8FYOZpa9RYeav5kUvSDmUonK1j6D77YiQm5Vcaevlekwdx2zWsgt4oqqw
	uq8dN99pH5/UPhmqKS+iE4EaVqosrTBszWt9Yr+4siradbOWjfvMCWBfUrS8/idRbv81TV4dhzkij
	34AnVgZmpJDsnFnauAflrkKHk5YUkL2llWY0FF++vnL9G36o2ygkl139jKbGvi6iCE13i/MmzOcEW
	J+iPgVJNL+gYe4I1lv+2BHEKO3b739nu7zLtaPXnDiFwgNwUAtPmczPsUPNTsZww7M6V7ycmCJwc3
	Ue9K5BTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13XE-00000000OSY-3Kau;
	Fri, 13 Mar 2026 14:30:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13XB-00000000ORM-3NYN
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 14:30:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1w13X9-0005HO-Vv; Fri, 13 Mar 2026 15:30:36 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1w13X9-0005w7-2b;
	Fri, 13 Mar 2026 15:30:35 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1w13X9-0000000HFRJ-2zqw;
	Fri, 13 Mar 2026 15:30:35 +0100
Date: Fri, 13 Mar 2026 15:30:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <abQfi4YFHpNhaVY8@pengutronix.de>
References: <20260312-v2026-02-0-topic-sconfig_console-v1-0-4c3fccafab1e@pengutronix.de>
 <20260312-v2026-02-0-topic-sconfig_console-v1-1-4c3fccafab1e@pengutronix.de>
 <abQSywI_nJlVD2dJ@pengutronix.de>
 <ec2368a0a5f831df07116738da1ef02b376398b9.camel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ec2368a0a5f831df07116738da1ef02b376398b9.camel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_073037_846674_76440AE2 
X-CRM114-Status: GOOD (  28.25  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] common: bootm: add policy to commandline
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Mar 13, 2026 at 03:26:34PM +0100, Fabian Pflug wrote:
> On Fri, 2026-03-13 at 14:36 +0100, Sascha Hauer wrote:
> > On Thu, Mar 12, 2026 at 10:16:42AM +0100, Fabian Pflug wrote:
> > > If security policies are used, then the variable bootm.provide_policy
> > > can be set to automatically append the currently selected security
> > > policy to the kernel commandline with the prefix
> > > barebox.security.policy=
> > > This allows the the system to behave different based on the selected
> > > security policy.
> > > 
> > > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> > > ---
> > >  common/bootm.c  | 23 +++++++++++++++++++++++
> > >  include/bootm.h |  5 +++++
> > >  2 files changed, 28 insertions(+)
> > > 
> > > diff --git a/common/bootm.c b/common/bootm.c
> > > index 6318509884..cd90aa81e1 100644
> > > --- a/common/bootm.c
> > > +++ b/common/bootm.c
> > > @@ -22,6 +22,7 @@
> > >  #include <uncompress.h>
> > >  #include <zero_page.h>
> > >  #include <security/config.h>
> > > +#include <security/policy.h>
> > >  
> > >  static LIST_HEAD(handler_list);
> > >  static struct sconfig_notifier_block sconfig_notifier;
> > > @@ -75,6 +76,7 @@ static int bootm_dryrun;
> > >  static int bootm_earlycon;
> > >  static int bootm_provide_machine_id;
> > >  static int bootm_provide_hostname;
> > > +static int bootm_provide_policy;
> > >  static int bootm_verbosity;
> > >  static int bootm_efi_mode = BOOTM_EFI_AVAILABLE;
> > >  
> > > @@ -97,6 +99,7 @@ void bootm_data_init_defaults(struct bootm_data *data)
> > >  	data->appendroot = bootm_appendroot;
> > >  	data->provide_machine_id = bootm_provide_machine_id;
> > >  	data->provide_hostname = bootm_provide_hostname;
> > > +	data->provide_policy = bootm_provide_policy;
> > >  	data->verbose = bootm_verbosity;
> > >  	data->dryrun = bootm_dryrun;
> > >  	data->efi_boot = bootm_efi_mode;
> > > @@ -118,6 +121,7 @@ void bootm_data_restore_defaults(const struct bootm_data *data)
> > >  	bootm_appendroot = data->appendroot;
> > >  	bootm_provide_machine_id = data->provide_machine_id;
> > >  	bootm_provide_hostname = data->provide_hostname;
> > > +	bootm_provide_policy = data->provide_policy;
> > >  	bootm_verbosity = data->verbose;
> > >  	bootm_dryrun = data->dryrun;
> > >  	bootm_efi_mode = data->efi_boot;
> > > @@ -712,6 +716,20 @@ int bootm_boot(struct bootm_data *bootm_data)
> > >  		free(hostname_bootarg);
> > >  	}
> > >  
> > > +	if (IS_ENABLED(CONFIG_SECURITY_POLICY) && bootm_data->provide_policy) {
> > > +		char *policy_bootargs;
> > > +
> > > +		if (!active_policy->name) {
> > 
> > Could active_policy be NULL here?
> I'm not totally sure. If you have activated security policies, then did not specify any policy, it may be NULL.
> Or if you have activated security policies, but never ran into a path, where 'is_allowed' is checked, because everything
> that could be configured by security policies is disabled by Kconfig and you did not set an initial policy, then it
> might be NULL.

I agree that in a sanely configured system it shouldn't be NULL.

> Will add an extra check.

Ok.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


