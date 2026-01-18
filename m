Delivery-date: Sun, 18 Jan 2026 20:10:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhY9x-002lZH-2y
	for lore@lore.pengutronix.de;
	Sun, 18 Jan 2026 20:10:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhY9v-0007LE-EG
	for lore@pengutronix.de; Sun, 18 Jan 2026 20:10:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K/dajMd3mXyBWUKzy7F5/aKGMfeF8dzB3bv6vmR0mK8=; b=lxIVWgY8BJxwPcMVm9p5mvIO+d
	J3c80AB+QEdAx6bVr69fpBZrdC3H9bBAJhHb2x1JOiisolWH4iAPRVmovCU5krBO4igia7o4kFAsV
	otWqhz4mRJpgeonaLEl3o7vOr966uU3md0YUwUxNbuP3R0r9xmTn45uYGsYI2rOY0GSxpejw42h5d
	0EpoNuXu0ZLHT0FvNsfKUce1YuWWf9wl4OS8QPsWWT6m8N+r+9QKxcd3TULb/NsCI3DGdAppN9ld6
	easR2TwQn3SYP7RQWqBhim6Rom3ThgLCotsujdmEdU28vkMlMT6oQ4/9P1uPs0KTNW0GqEeu+VKTO
	Mod8TE0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhY9E-00000000mGN-1Sfk;
	Sun, 18 Jan 2026 19:09:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhY9B-00000000mFh-0FNH
	for barebox@lists.infradead.org;
	Sun, 18 Jan 2026 19:09:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhY99-0007Db-9E; Sun, 18 Jan 2026 20:09:11 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhY99-001Hua-2U;
	Sun, 18 Jan 2026 20:09:11 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhY98-001cCz-37;
	Sun, 18 Jan 2026 20:09:10 +0100
Date: Sun, 18 Jan 2026 20:09:10 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20260118190910.kz45bwlaujcq6bxz@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-4-8f0625ac5471@pengutronix.de>
 <df2aa615-ac27-42d9-a1f2-38d0d6dd5b50@pengutronix.de>
 <20260115132628.6ot2ph7auhq3ezfw@pengutronix.de>
 <2c560076-4767-4bd1-b420-8f1d4c505a20@pengutronix.de>
 <50ee3a64-a59f-42fc-a26b-cf8ff3176142@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <50ee3a64-a59f-42fc-a26b-cf8ff3176142@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_110913_126326_1C9DC1FF 
X-CRM114-Status: GOOD (  28.02  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/23] ARM: i.MX8M: add support to pass DT via
 imx8m{m,n,q,p}_load_and_start_image_via_tfa()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 26-01-15, Ahmad Fatoum wrote:
> Hi,
> 
> On 1/15/26 3:01 PM, Ahmad Fatoum wrote:
> > I have grown to dislike the boilerplate nature of our PBL entry points.
> > I want to rework this fully in the coming months, so I would prefer not
> > to add intermediate breakage till then, so users can switch at once to
> > the new model.
> 
> I think I need to clarify this a little:
> 
> It's fine to break out-of-tree code. If it's some breakage that may
> easily be missed by users, we add a migration guide entry.
> That's why we have the guides in the first place.

Good point, I missed to add an entry for it.

> In this case, I believe handover is a good solution on its own merits
> and not introducing unnecessary breakage right now is a good side-effect.

I get your point regarding the unnecessary breakage. It would have been
nice if we could have a TF-A loading abstraction within the PBL since
loading the TF-A and (opt. OP-TEE OS) is mostly the same on each and
every ARMv8-A SoC and we tend to adapt barebox rather than adapting the
TF-A binary.

However I would like to mention that handover data was meant to be
passing data between the PBL and barebox. We would repurpose the
handover mechanism if we would use the handover data. In this case it
could be re-used in several other places. Therefore I'm not a fan of
this idea.

What do you think about adding the 'fdt' support only to the 'lowlevel'
APIs:
  - __imx8mp_load_and_start_image_via_tfa()
  - __imx8mm_load_and_start_image_via_tfa()
  - __imx8mn_load_and_start_image_via_tfa()
?

These APIs are most certainly not used by anyone who is using the
current standard way of booting OP-TEE for these platforms. Of course we
could also add helpers like:

imx8mn_load_and_start_image_via_tfa_with_fdt()

but the naming is becoming very clunky.

> if it turns out to not work out of the box or complicate things in an
> disproportionate manner, please let me know and we can re-evaluate.

Please see my above points.

Regards,
  Marco

> 
> Thanks,
> Ahmad
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


