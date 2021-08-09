Delivery-date: Mon, 09 Aug 2021 20:54:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDAPa-0002zX-H7
	for lore@lore.pengutronix.de; Mon, 09 Aug 2021 20:54:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mDAPW-0002O6-1j
	for lore@pengutronix.de; Mon, 09 Aug 2021 20:54:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nZSlYA2W9J5RXYfqnqYgB9pCWBH1tzL3HGWaCk698J8=; b=EX8GqCc6Icx9vwZFbHFWZ2fSiu
	vHcBktccCkZc4oWcNfDctaq5gb5xLN3VVhxIM6bQVRrzOA7MTcM/gFdIFB27CxH1AVDgTLW9HlmEn
	+R36OIsJvHtHZ0UHa+qN1+ui7gvEsf9XLjy/AttuuNjDJVbfpIINd1IsIN8RGDV8AIazew4ng2KZ/
	TXXJdEIDuq3u7vHI/WHG2/Q5I6UdtoRBIHo3/g716YnscNHuZClvr29fezDSBWnwMS+97S5UvLC9Z
	pQ9EBiqnDtaJNSSH+x2s6oyCtTgk+k0s4hKnFnsft3yaQkyy/VXFePfxfvao/exDli3bxeThZ3wYH
	6s7R4TjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDAO0-001led-7x; Mon, 09 Aug 2021 18:52:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDANe-001lav-BF
 for barebox@lists.infradead.org; Mon, 09 Aug 2021 18:52:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mDANd-0002AQ-45; Mon, 09 Aug 2021 20:52:09 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mDANc-0006Uo-Qr; Mon, 09 Aug 2021 20:52:08 +0200
Date: Mon, 9 Aug 2021 20:52:08 +0200
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210809185208.GA24834@pengutronix.de>
References: <20210611080233.15141-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210611080233.15141-1-s.trumtrar@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 20:51:48 up 172 days, 22:15, 81 users,  load average: 0.04, 0.06,
 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_115210_428288_A1D615FA 
X-CRM114-Status: GOOD (  19.84  )
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
Subject: Re: [PATCH] scripts: socfpga_import_preloader: make sdk optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 11, 2021 at 10:02:33AM +0200, Steffen Trumtrar wrote:
> The commit a9b2e6089d82686564220013f14e9f0ffcc725e2 allowed generating
> everything needed in one step. This was however a bit too ambitious.
> The script now requires that the Altera Embedded SDK is always
> installed. There are situations where this is unwanted.
> 
> Beef up the code a little bit to allow having the SDK as an optional
> argument and make the other input parameters location independent.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  Documentation/boards/socfpga.rst |  2 +-
>  scripts/socfpga_import_preloader | 88 ++++++++++++++++++++++++++++----
>  2 files changed, 78 insertions(+), 12 deletions(-)

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

