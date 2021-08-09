Delivery-date: Mon, 09 Aug 2021 20:12:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mD9kp-0001jr-Qz
	for lore@lore.pengutronix.de; Mon, 09 Aug 2021 20:12:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mD9kl-0005cP-S0
	for lore@pengutronix.de; Mon, 09 Aug 2021 20:12:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GSEV8FjDZ0ntHTWzfyz5yg5Jl+W5NLg5pmQOtqQ76+A=; b=r54XL1Z4dlYvSX2s0PnNzFO8Yk
	1u1gGctTEhiCgH12f4qo3go5czybRVlbMPCetiuTXU91bShorZzQIoTBiCUU8URqXCBLrF7nqw/0u
	glqOWyMPyHz0FFq0/Iv6MA3TR+vpfdVsLNbhSpUCypJUCSwPp0KqJk21OfR52hVLYSYM4iTIIHBCo
	UrjAc/V6ZJwJa1EkhdTdlZXv8KrqEvgp2RifL6EGv6pbX7qekkZ+at5K0nqdSjOxpbD8WPCzEBR+S
	LHv1WjBcOSBDKhAcAHfuZG+GllUHBjTW20zTuV0HA8WWOq+61p1KI+8g1cdjKeT33MaW4G1yFIxxo
	t0vptiww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mD9jK-001eyh-0x; Mon, 09 Aug 2021 18:10:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mD9jC-001ex6-LU
 for barebox@lists.infradead.org; Mon, 09 Aug 2021 18:10:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mD9jB-0005Fx-DM; Mon, 09 Aug 2021 20:10:21 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mD9jB-0004ia-27; Mon, 09 Aug 2021 20:10:21 +0200
Date: Mon, 9 Aug 2021 20:10:21 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210809181021.GC11515@pengutronix.de>
References: <20210805082607.1698733-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210805082607.1698733-1-r.czerwinski@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 20:10:03 up 172 days, 21:33, 81 users,  load average: 0.11, 0.14,
 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_111022_752168_CD45CB8F 
X-CRM114-Status: GOOD (  20.06  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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
Subject: Re: [PATCH] mci: imx-esdhc-pbl: initialize fsl_esdhc_host
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Aug 05, 2021 at 10:26:07AM +0200, Rouven Czerwinski wrote:
> Since commit 56ca2c197e71 ("mci: sdhci: Get rid of many register ops")
> the core checks whether there is an explicit write function for the
> host. If the struct is not zero initialized, a bogus value is taken as
> the function, resulting in an unbootable board. Zero initialize the
> structs properly to let the PBL correctly load images. Fixes booting on
> the i.MX8M* board, tested on i.MX8MP EVK.
> 
> Fixes: 56ca2c197e71 ("mci: sdhci: Get rid of many register ops")
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  drivers/mci/imx-esdhc-pbl.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Applied to master, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

