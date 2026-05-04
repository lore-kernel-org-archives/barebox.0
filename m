Delivery-date: Mon, 04 May 2026 16:55:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJui5-000veB-0O
	for lore@lore.pengutronix.de;
	Mon, 04 May 2026 16:55:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJui3-0001lo-Il
	for lore@pengutronix.de; Mon, 04 May 2026 16:55:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6rZeVKaWr2o2wHF9XOxvGstRuzHzbunpphpFIZnlgzU=; b=ZaIVbDWZIqTDPqELk+SfOl5x8v
	iSnKQLobYlHJgPl2cIWTCfknV083nMjODVLt+DB/Ve77D8R5PJjgiT3O9PLJnNTVEl7DJxTsYZUe2
	QwZMzn/bA5l4GtClspraR/Pr9u7Mjgt38UH7PY7x7/dA9HPldn4rJxzfzLpmvRkmOZSqX8ND6VtQ4
	BPznSM7oJz2UfhXpBU++xQGy+f8vmKwrdDcs47IyR93eq7RD2NrTGZWBJZidqutnfTHdLeOHCqkYK
	CJt/NF0m1KhHY3hwVWWfs/IsuaceSIbfibbno0vNHdIezk3TYon/LwrKCN1f0KpiCon2Bwewhvopp
	jkwcnsRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJuhQ-0000000DWpp-1RYd;
	Mon, 04 May 2026 14:55:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJuhM-0000000DWp9-2JvY
	for barebox@lists.infradead.org;
	Mon, 04 May 2026 14:55:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wJuhK-0001We-2s; Mon, 04 May 2026 16:55:02 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wJuhJ-000Qcj-1T;
	Mon, 04 May 2026 16:55:01 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wJuhJ-0000000GdlX-3K29;
	Mon, 04 May 2026 16:55:01 +0200
Date: Mon, 4 May 2026 16:55:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>
Message-ID: <afizRZ1xyXjZKcw_@pengutronix.de>
References: <20260428-env-autoprobe-v1-0-9cdedfa0752e@pengutronix.de>
 <20260428-env-autoprobe-v1-3-9cdedfa0752e@pengutronix.de>
 <rx3wbvvlr3x5iaaojqzqi34cpjrxbweo6y5ijkgiruqoq344ty@lpxohuiqqvwr>
 <12eb5638-f580-4b3b-9099-9d72ddeb4f16@pengutronix.de>
 <afihfJ4kqXP34y0i@pengutronix.de>
 <92783e4d-4d50-4af1-a32e-92202cbe1d89@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <92783e4d-4d50-4af1-a32e-92202cbe1d89@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_075504_617276_A7066095 
X-CRM114-Status: GOOD (  49.49  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] environment: add explicit option to allow searching
 for environment devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, May 04, 2026 at 03:52:42PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 5/4/26 3:39 PM, Sascha Hauer wrote:
> > On Mon, May 04, 2026 at 02:02:16PM +0200, Ahmad Fatoum wrote:
> >> Hello,
> >>
> >> On 5/4/26 1:35 PM, Marco Felsch wrote:
> >>> Hi Sascha,
> >>>
> >>> On 26-04-28, Sascha Hauer wrote:
> >>>> Add an explicit Kconfig option to allow searching the environment storage path
> >>>> based on the barebox environment partition GUID.
> >>>>
> >>>> So far this depended on CONFIG_INSECURE being set. First of all loading the
> >>>> barebox environment from storage is always insecure as the barebox environment
> >>>> doesn't have any security measures.
> >>
> >> It's possible to only allow environment loading after having verified
> >> that the system is in development mode for example.
> >>
> >> Autoloading the environment can't be secured as you note.
> >>
> >>
> >>>> The difference that comes with loading
> >>>> the environment from an explicitly specified storage device and autoprobing
> >>>> it from the available block devices is that with the former an attacker would
> >>>> need access to the internal storage whereas with the latter barebox could
> >>>> be tricked into loading an environment from an external SD card.
> >>>>
> >>>> Whether or not this is acceptable depends on the case, so ask the user for it.
> >>>>
> >>>> Real security can only be provided by not loading an environment from storage
> >>>> at all, but that can be controlled at compile time by disabling CONFIG_ENV_HANDLING
> >>>> or at runtime by security policies.
> >>>
> >>> TBH I actually don't see why this option can't follow the
> >>> CONFIG_INSECURE.
> >>>
> >>> Since ENV handling is enabled you do pull the HAS_INSECURE_DEFAULTS=y.
> >>> As you written above env handling is always insecure as of now.
> >>>
> >>> So it seems that you want to get rid of the CONFIG_INSECURE=y in your
> >>> setup. The only users of this CONFIG switch are global_env_autoprobe and
> >>> lib/random.c. Therefore my question, that I don't see why we can't stick
> >>> with the CONFIG_INSECURE switch.
> >>
> >> I also don't understand Sascha's motivation here.
> >>
> >> You can add global.env.autoprobe=1 to your environment to opt-in despite
> >> CONFIG_INSECURE being disabled. What's the new Kconfig option needed for?
> > 
> > Maybe I was confused by that because it's evaluated in the wrong order.
> > global.env.autoprobe is evaluated in default_environment_path_get() which
> > is executed before the default environment is loaded. We could fix that
> > with the cost of calling nvvar_load() twice, once with the default
> > environment loaded and once again with the persistent environment
> > loaded.
> 
> Ah.. Should load_environment() be changed, so defaultenv_load() happens
> before default_environment_path = default_environment_path_get(); ?

As said, that's not enough. We would have to call nvvar_load() before
default_environment_path_get() as well.

> 
> > That said, I think whether or not we load the environment by part UUID
> > deserves its own decision, it shouldn't be hidden behind a generic
> > option.
> 
> It has its own decision though, it's called global.env.autoprobe if it
> were made to work...

That could leak in unintended into a bsp during development while
thinking about development convenience and not about security. I thought
that was the point of having HAS_INSECURE_DEFAULTS: To have a marker
that says: Look at every option selecting this option and think about
its security implications.

> 
> 
> > Also it's not consistent to claim that loading environment by
> > part UUID is insecure, but allowing it to be bypassed by setting
> > global.env.autoprobe=1, as if that would make it secure.
> 
> I disagree. There is a difference:
> 
> - Enabling the config option on boot up is always insecure

It isn't, as it's guarded by SCONFIG_ENVIRONMENT_LOAD in my case.

> 
> - Setting global.env.autoprobe=1 after verifying a runtime condition can
> be secure if e.g. an unlock token has been verified
> 
> > ENV_HANDLING_AUTOPROBE depends on ENV_HANDLING which itself selects
> > HAS_INSECURE_DEFAULTS which indicates that an option is selected that
> > has "potentially insecure defaults". Sounds consistent to me.
> 
> Just pointing out we already have a magicvar for that.
> 
> I am not against adding ENV_HANDLING_AUTOPROBE in principle, but I think
> the commit needs a better rationale why we need it when CONFIG_INSECURE
> and global.env.autoprobe are already there...

Ok.

As CONFIG_INSECURE_DEFAULTS and CONFIG_INSECURE predates security
policies we might want to rethink these options anyway. Should they be
there at all? It seems there are many ways to configure an insecure
system with CONFIG_INSECURE_DEFAULTS disabled and at the same time what
it covers is in parts redundant to what we have in security policies.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


