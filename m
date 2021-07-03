Delivery-date: Sat, 03 Jul 2021 22:09:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lzlwt-0002uy-Ni
	for lore@lore.pengutronix.de; Sat, 03 Jul 2021 22:09:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lzlws-0003Yn-Pe
	for lore@pengutronix.de; Sat, 03 Jul 2021 22:09:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UAmtlrUXm3sTIRc81OLpFSAVKxeTjASZ0epe02y3rWk=; b=wQjwcrDACnKmm0rCCEGhfQzxdk
	QPzl6XChNZzJHqLBGNGubvzS7h5j6/tFUkEecE3EVbh6F1B2o6P3WGaGgeoGnZiFnXi3V4Nj3BSSp
	wp2kkQYTt8EeRUzcjBrkUPpHZzaW0dtFtJ9H053uTLpqgmb66KDtZE4ZbbMOdWaA1PC9L1XsXqUZv
	6R2/vwUzqxsWfQAXGJfRgTepLlQv11kkErWZ219ZXJU4/xhlo20Mbm+tayZdW58nQ0oSt3X6Y/jG7
	GQ1sPT4yu51MdGW+BSPDuXTMiKyyLel/EgFTeTx4YjJxXvPxFcA1Sho7ug/SflQ8QqFKiBD7jF/En
	KCBNhMgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lzlv0-005JKM-7E; Sat, 03 Jul 2021 20:07:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lzluu-005JJt-3E
 for barebox@lists.infradead.org; Sat, 03 Jul 2021 20:07:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lzluk-0003Ng-MZ; Sat, 03 Jul 2021 22:06:58 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lzluk-0005vu-6d; Sat, 03 Jul 2021 22:06:58 +0200
Date: Sat, 3 Jul 2021 22:06:58 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210703200658.GY9782@pengutronix.de>
References: <20210629063730.7001-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210629063730.7001-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 22:06:18 up 135 days, 23:30, 103 users,  load average: 0.06, 0.23,
 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210703_130708_185164_14F2997C 
X-CRM114-Status: GOOD (  20.76  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] sandbox: ship sample environment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 29, 2021 at 08:37:30AM +0200, Ahmad Fatoum wrote:
> The idea of the stickypage was to have a 4K memory region persistent
> over resets. This region was implemented as mmap of a temporary hostfile,
> which was created on first barebox start and maintained over resets.
> 
> Usability was a bit lacking however:
>   - The temporary files weren't deleted
>   - state always showed warnings and errors on first boot. The banner
>     telling users to ignore this wasn't best user experience
>   - In the same vein, the power driver had logic to handle a fresh
>     (zeroed) stickypage and interpret that as POR boot
> 
> We can avoid all that, by just shipping a default stickypage and
> referencing that from DT. Do that.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - compile stickypage at build time instead of shipping it in binary
>     form. Sascha reports issues with binary patche handling outside git.
> ---

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

