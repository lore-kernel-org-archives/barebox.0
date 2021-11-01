Delivery-date: Mon, 01 Nov 2021 10:10:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhTKd-00075V-UV
	for lore@lore.pengutronix.de; Mon, 01 Nov 2021 10:10:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhTKc-0005RK-Sz
	for lore@pengutronix.de; Mon, 01 Nov 2021 10:10:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/LndGm9yT7DrxzJmEa9lKNRkKzzIMwCgE/xmJdsirRg=; b=Rd+whFObAGk+rNUhiWpkbYB7Qj
	TW+6Mk52xWKKOUwKE6yElii9aFCaoUSRfWRNVI1YRrj1BaUP9S1gT32HU7grCxy3wgd8B5vcD7UbU
	t5vUcQpCWE9TQ+iwKEzxFz2b99X0kKxaZbEX9jqs8Fmq3IluuYA9JqEb9DDprSMkuuzam0HtwcasM
	jhkDr9AtY23vrJuYJawaX3Q7mxMQoWS0ags5uCphXCLj2NniF7aLYRAR6IjT8oPfVZjnWEXFkBDNA
	s7h96YE9OieXdcg/AKMmX0Gg1Lr0eBmwHFyHKyn25CbsPD/X9yNafWxXInIeS9nQS9X5bPg8xDcJb
	ULc2x5sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhTJR-00FkVi-Ak; Mon, 01 Nov 2021 09:09:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhTJN-00FkVF-3D
 for barebox@lists.infradead.org; Mon, 01 Nov 2021 09:09:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mhTJL-0005HV-T9; Mon, 01 Nov 2021 10:08:59 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mhTJL-0000h2-KG; Mon, 01 Nov 2021 10:08:59 +0100
Date: Mon, 1 Nov 2021 10:08:59 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211101090859.GQ25698@pengutronix.de>
References: <20211030141739.2207431-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211030141739.2207431-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:08:44 up 256 days, 12:32, 130 users,  load average: 0.03, 0.15,
 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_020901_156415_5DCC750D 
X-CRM114-Status: GOOD (  19.40  )
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
Subject: Re: [PATCH 1/5] include: <linux/bitops.h>: discard left-over hweight
 code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Oct 30, 2021 at 04:17:35PM +0200, Ahmad Fatoum wrote:
> There are no definitions for __sw_hweight*, so no point in keeping the
> prototypes around. The scripts version of the header also ultimately
> tries to access non-existing normal headers, so fix that up as well.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/bitops.h                             | 5 -----
>  scripts/include/asm-generic/bitops/arch_hweight.h  | 1 -
>  scripts/include/asm-generic/bitops/const_hweight.h | 1 -
>  scripts/include/asm-generic/bitops/hweight.h       | 3 +--
>  scripts/include/linux/bitops.h                     | 4 ----
>  5 files changed, 1 insertion(+), 13 deletions(-)
>  delete mode 100644 scripts/include/asm-generic/bitops/arch_hweight.h
>  delete mode 100644 scripts/include/asm-generic/bitops/const_hweight.h

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

