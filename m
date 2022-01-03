Delivery-date: Mon, 03 Jan 2022 09:09:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4IPC-009eOk-Re
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 09:09:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4IPB-0000br-LL
	for lore@pengutronix.de; Mon, 03 Jan 2022 09:09:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PbAq+B54ReRIe7TETRvWU08kml+69vkWzsmSxPJhjpQ=; b=fSo9K4dzBTpzKH7LeoNuYAR+sa
	BeGNpvUOi4at3bLYXoilsob5kcrfqt4C0NlH2DyRvc0hqYLhvbtKkW0ihdXsfbasE26SLi7MYUvo+
	5idAVY65wRNhAds6gnCLS0h9DngoUiLixD00S7Qk9T46h4NSpDimJb+K33fdogkBcnnZxQvotNFxQ
	v6vYq2VahYtiC8lehbvnCTza3xq4H4RKAjfA7467psK77ReaVasKEdym9rhVGBdq8Oyx8o/vYp9A+
	W0NTu4KgZUwUFP+JmZACkr5/0b5n31PL6xlFMm1ORu4qOLCrlrARhZmUgOg5JZ3QIS4hIQBGUf3fw
	cdB1ahAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4INs-008ZKZ-H2; Mon, 03 Jan 2022 08:08:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4INn-008ZK2-Ro
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 08:07:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n4INm-0000Vq-AU; Mon, 03 Jan 2022 09:07:54 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n4INm-0003F5-1o; Mon, 03 Jan 2022 09:07:54 +0100
Date: Mon, 3 Jan 2022 09:07:54 +0100
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Roland Hieber <rhi@pengutronix.de>
Message-ID: <20220103080754.GE6003@pengutronix.de>
References: <20211230143145.68650-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211230143145.68650-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:07:07 up 23 days, 16:52, 50 users,  load average: 1.09, 1.20, 1.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_000755_927596_BC791C52 
X-CRM114-Status: GOOD (  16.87  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: mvebu: Replace license and copyright boilerplate by
 SPDX identifiers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Dec 30, 2021 at 03:31:45PM +0100, Uwe Kleine-K=F6nig wrote:
> Converts the files that licensecheck can determine to be licensed under
> GPL-2.0-only or GPL-2.0-or-later and also convert their copyright
> statements to SPDX.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/mach-mvebu/armada-370-xp.c           | 17 ++---------------
>  arch/arm/mach-mvebu/common.c                  | 19 +++----------------
>  arch/arm/mach-mvebu/dove.c                    | 17 ++---------------
>  .../include/mach/armada-370-xp-regs.h         | 17 ++---------------
>  arch/arm/mach-mvebu/include/mach/common.h     | 19 +++----------------
>  arch/arm/mach-mvebu/include/mach/debug_ll.h   | 17 ++---------------
>  arch/arm/mach-mvebu/include/mach/dove-regs.h  | 17 ++---------------
>  .../mach-mvebu/include/mach/kirkwood-regs.h   | 17 ++---------------
>  arch/arm/mach-mvebu/include/mach/lowlevel.h   | 19 +++----------------
>  arch/arm/mach-mvebu/include/mach/socid.h      | 17 +++--------------
>  arch/arm/mach-mvebu/kirkwood.c                | 16 ++--------------
>  11 files changed, 26 insertions(+), 166 deletions(-)

Applied, thanks

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

