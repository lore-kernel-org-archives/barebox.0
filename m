Delivery-date: Mon, 22 Nov 2021 10:23:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp5Xe-0004XI-1g
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 10:23:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp5Xc-0006UQ-DK
	for lore@pengutronix.de; Mon, 22 Nov 2021 10:23:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=64bfEJriMuIfgXFfT+XhoYtp+3JoWE5yDyRE9adJWKw=; b=nn4Moit5e3tX+LPvnZswRvXWoA
	3KBEYFygNMbLscMjuqRJdotQouLJVomfJEJq57YwJ5mn5stjtbn4AdWdzmQ7effgrtGYxhuaMQ9ob
	msE5r+gHSZeRJ+p7L7/OaKkUbhCq9rrWYZlY/Tm16l+hOugpd47v1bixwbo3nijSJTsrPxdQ66lzU
	X8RjdtAp+uV5a9jDGX/QksaEVolsz8zt4fXRPGSVpMAw/BlOk0Ge6+FxFstyXOMza5t16j3M5vb0C
	mK3WDqJoCCykBHogx3jPAhpP72g45wFIvuppIjJEI7uIfnE3lB1YZHxK6slQ/edZY8yM/0kXLXdEV
	LEtIk3RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp5W0-00FXwB-Q7; Mon, 22 Nov 2021 09:21:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp5JB-00FUMq-TZ
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 09:08:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mp5JA-0004M6-B1; Mon, 22 Nov 2021 10:08:16 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mp5J9-0004Hh-KR; Mon, 22 Nov 2021 10:08:15 +0100
Date: Mon, 22 Nov 2021 10:08:15 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20211122090815.GW6556@pengutronix.de>
References: <20211118062546.1380928-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211118062546.1380928-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:08:02 up 277 days, 12:31, 143 users,  load average: 1.34, 0.66,
 0.35
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_010818_011585_5DA45511 
X-CRM114-Status: GOOD (  20.10  )
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
Subject: Re: [PATCH] of: address: mark 64-bit PCI resources explicitly as such
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Nov 18, 2021 at 07:25:46AM +0100, Ahmad Fatoum wrote:
> Eventually, we shouldn't need this, when all code can deal with 64-bit
> addresses. For now, PCI drivers, when given the choice between 32-bit
> and 64-bit resources, should select the 32-bit one.
> 
> This patch makes the resources straight forward to compare.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
> Needed for ECAM driver on list to work despite -M virt,highmem=on
> ---
>  drivers/of/address.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

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

