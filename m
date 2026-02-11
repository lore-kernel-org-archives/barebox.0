Delivery-date: Wed, 11 Feb 2026 10:59:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vq70O-000UWm-2s
	for lore@lore.pengutronix.de;
	Wed, 11 Feb 2026 10:59:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vq70P-00042J-4e
	for lore@pengutronix.de; Wed, 11 Feb 2026 10:59:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BSbTh+3RWR2CU+Nl8tdAqvwddAYWFlYxwWsesBrn36g=; b=GpyPlxO8Kf0V/BCWoy7n11Pf9y
	DB5azyoxVL4yhDEwbWkII7YYigrTqf/90NFzkbYGZdXcGCtp8bCowWhhdA0EImJjtswgZhFr7OkiT
	vvCJGaU04EClcbJ9GgApcbfBtbRBaJiFGyt2p+NZZVssHt71cYWa2AcZ0TLOWxciVOSYihav6S7eE
	hKaQ75rN2gKmj0Zvaq0ToaouIvTuBw6cdAefsSoES56FhqYnjZtiX5zVQEjE2kdkP8qtgyrLofT9V
	K0/jKykyspdtuDqAGW7RRby9iRJ1jl77fuaR37WOHr2VrY5MoXvW7BbBcvj1xWI0OWydIyQojTHT2
	thZdP+Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq6zw-00000000T63-04nP;
	Wed, 11 Feb 2026 09:59:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq6zt-00000000T5i-17YO
	for barebox@lists.infradead.org;
	Wed, 11 Feb 2026 09:59:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vq6zr-0003vx-8o; Wed, 11 Feb 2026 10:58:59 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vq6zp-000DuL-2N;
	Wed, 11 Feb 2026 10:58:59 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vq6zq-00BqcU-38;
	Wed, 11 Feb 2026 10:58:58 +0100
Date: Wed, 11 Feb 2026 10:58:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <aYxS4sCnx5fYS8fG@pengutronix.de>
References: <20260210221343.3431882-1-m.felsch@pengutronix.de>
 <aYw1kgLBfDsrVpx_@pengutronix.de>
 <1672b0e8-65ac-4f92-afb7-e5c9eb798537@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1672b0e8-65ac-4f92-afb7-e5c9eb798537@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_015901_307642_46EA6E3E 
X-CRM114-Status: GOOD (  33.33  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH] ARM: dts: i.MX8MP: remove barebox environment
 handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Feb 11, 2026 at 10:37:18AM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 2/11/26 8:53 AM, Sascha Hauer wrote:
> > On Tue, Feb 10, 2026 at 11:13:40PM +0100, Marco Felsch wrote:
> >> While specifying the barebox environment within the barebox dts is very
> >> helpful for standalone barebox development it's difficult for BSPs which
> >> use this development platform and want to use the GPT mechanism.
> >> As a result BSPs had to manually delete the nodes via a external
> >> provided dts, because we wanted to keep the comfort for the standalone
> >> development flow.
> >>
> >> Lucky commit 86531d4bf7aa ("commands: create createnv command")
> >> introduced a convenient helper to create a barebox environemnt on
> >> demand exactly for this purpose:
> >>
> >> | "We want to move away from describing the barebox environment explicitly
> >> | in the device tree and instead motivate usage of GPT partitions.."
> >>
> >> So start with the i.MX8MP-EVK to encourage the use of GPT partitions and
> >> to make the BSP integration for these development platforms easier.
> > 
> > Generally I like this idea, but it breaks the existing users
> > environment and doing this sharp cut might be annoying for the phase
> > where you switch between different barebox versions which could be quite
> > common for development boards.
> > 
> > Would be great to have a grace period in which we prefer the UUID
> > environment over the device tree environment (we might do this already)
> > and warn in case we still use the latter. We could stick the warning to
> > a device tree property like "warn-deprecated-env" and remove the
> > environment once they carry this property for a year or so.
> > 
> > Just the ideas from the top of my head. Thoughts?
> 
> Here's my opinion from a year back:
> https://lore.barebox.org/barebox/1ff0f545-effa-4b87-81b7-524919333777@pengutronix.de/
> 
> I am interested to hear thoughts on it.
> Compared to our suggestion, there will be no eventual removal of the node.

Seems to match mostly what I said, only that instead of a
warn-deprecated-env property you suggest a different compatible which
I think better matches what we are doing. Whether or not we remove the
fallback nodes in future is something our future-selves can discuss.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


