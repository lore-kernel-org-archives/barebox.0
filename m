Delivery-date: Fri, 14 Nov 2025 21:09:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vK06q-0011PN-2D
	for lore@lore.pengutronix.de;
	Fri, 14 Nov 2025 21:09:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vK06q-0002A5-56
	for lore@pengutronix.de; Fri, 14 Nov 2025 21:09:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q4j5a26v5qtgW4RmeJfn6aJCims54kN9Y+n4yq/18kg=; b=SUU8H9Qee33Maq8imkotoaI1j0
	Pbz3xSptuFCVjnPWR0M0vJM+jZpt/CtTBXkGHXMXIrgz4AevgFRUGV//1y2A3wgNMdBRp6WroXLtK
	auGfBb3dOXtWj5B+ELsLfx2ZpMMX5LWMevU11p3BE48Blt9NkB5g1rUaK0HOT/yC/nM5boH2suizB
	RlXNFVdwJiFD7my+vKgWJMrnoallfHbnkTG4+Rs0pdXWnjP0Wt+oY/6ysYgUEAw7HVrHX/z/2Ya5L
	8L2mRVg7nRYhCYrjWn/ZD9eXjpge4uORiDyHSKtFUBWGhWLAU+tVWpvuj3nqO2hSp+FgfscWxhQFk
	5MAZZ1/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK06F-0000000D46c-1Q4G;
	Fri, 14 Nov 2025 20:08:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK06C-0000000D461-2bd8
	for barebox@lists.infradead.org;
	Fri, 14 Nov 2025 20:08:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vK069-00022w-6z; Fri, 14 Nov 2025 21:08:45 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vK069-000Toc-06;
	Fri, 14 Nov 2025 21:08:45 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vK068-002mC7-2w;
	Fri, 14 Nov 2025 21:08:44 +0100
Date: Fri, 14 Nov 2025 21:08:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aReMTCIwWptYn8HH@pengutronix.de>
References: <20251113-soc-uid-v1-0-29a256e07144@pengutronix.de>
 <20251113-soc-uid-v1-2-29a256e07144@pengutronix.de>
 <20251114162213.tweck3zgcgot3t6t@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251114162213.tweck3zgcgot3t6t@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_120848_658929_FB44FFE3 
X-CRM114-Status: GOOD (  22.10  )
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
Subject: Re: [PATCH 2/9] soc: imx8mp: Soc ID is 128bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Nov 14, 2025 at 05:22:13PM +0100, Marco Felsch wrote:
> Hi Sascha,
> 
> On 25-11-13, Sascha Hauer wrote:
> > On i.MX8MP the SoC ID has 128 bits instead of 64 bits as on other i.MX8M
> > SoCs. Read the remaining 64 bits which so far haven't been included in
> > the SoC ID.
> 
> Linux fixed this as well in a non-backward compatible way. Don't get me
> wrong this is the correct fix and we should fix it, but this change will
> certainly influence in-field systems badly which rely on the the current
> behavior e.g. to set the `systemd.machine` or which make use of the UID
> to construct a hostname which is later on passed to the kernel cmdline
> via `systemd.hostname`.
> 
> These systems now need to revert this change to archieve the same system
> behavior. Can we add a Kconfig option or some function which can set the
> soc_uid limit to keep these systems working.

Yes, I've written about it in the cover letter.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


