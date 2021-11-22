Delivery-date: Mon, 22 Nov 2021 09:59:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp5AF-0003sb-FJ
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:59:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp5AE-000334-CT
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:59:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0x0KXYRMvQ1VQMffDUp2BLxOXNBced+qlNJL4bNeeUA=; b=taBABpgk4V/XvcqrL2UO0zpf/4
	z1qyspG3iotPlF4g1CTA8cK0oXlFYvov2Yd0Zq5qEykleJRSNlDZUYX2OIw0F/8ynuNXJOyxjuDZY
	2pczDL7j0S97pGzox6W2w3mhOW3OyP5pOOJF67UV8ZDeYMvmv86CDovKG/juLDtce2E4a9ovrhfrT
	m7ky7lKn17Z6tOvrpXcVxKJC9g6af5b5mZsbxDPDKjfY36l03rw4xaC/GXXkrGIOZYWmXOuwoEFsD
	v34Gf9t6tJ14m902lqbI6EQ1qQemMVJXZWc0YqnzOWqCaw77e7cC0ImLkxdO5JrIf9cnAIN5qw+pG
	/CgwiAUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp591-00FR2P-Iw; Mon, 22 Nov 2021 08:57:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp55E-00FOzr-LB
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:53:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mp55D-0001u8-A9; Mon, 22 Nov 2021 09:53:51 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mp55C-00021V-W4; Mon, 22 Nov 2021 09:53:50 +0100
Date: Mon, 22 Nov 2021 09:53:50 +0100
To: Roland Hieber <rhi@pengutronix.de>
Cc: Barebox Mailing List <barebox@lists.infradead.org>
Message-ID: <20211122085350.GT6556@pengutronix.de>
References: <20211117113851.2022669-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211117113851.2022669-1-rhi@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:53:36 up 277 days, 12:17, 141 users,  load average: 0.03, 0.11,
 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_005352_746830_AAE2A7BD 
X-CRM114-Status: GOOD (  17.25  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] drivers: mci-bcm2835: remove useless comment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Nov 17, 2021 at 12:38:49PM +0100, Roland Hieber wrote:
> The comment serves no purpose anymore since the previously following
> license blurb was migrated to an SPDX license identifier.
> 
> Fixes: 28f4a6a4df76f0f1581d (2021-10-30, "drivers: add missing SPDX-License-Identifier")
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  drivers/mci/mci-bcm2835.c | 2 --
>  1 file changed, 2 deletions(-)

Applied, thanks

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

