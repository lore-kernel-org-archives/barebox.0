Delivery-date: Mon, 21 Jun 2021 06:40:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvBjK-0003ik-FL
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 06:40:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvBjJ-0000ew-K3
	for lore@pengutronix.de; Mon, 21 Jun 2021 06:40:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=e7f7hyCYlSHwOgmC1lDjyAQ+d4Eti2e3iHmV97cssyw=; b=i92/udeNEGK/LYHdr6XZW8RrA7
	n6EzaebS9WnUoOIrw10rUkiqJ8HtL6MoyGz2D3QWFBq8vTBQFVObdWcnds8fHCGhAv+YISvY/7DGC
	PBv3hSGi5hHN0pbwc0XeG2ypcb4Q3NqAstzxTyI8+UeAlx6AMJwJ/WXfSzRu+OFQr4j03GugQIkk2
	2vwO7o5fWxGt32S4XRLUAFOy5OoLAonHtADtaTggopmEZ794dKjLVXxRWOZFKK7pyoluobGxdhKdV
	+Hg2S4mV4IbGLn5Tw4dZYYP2FnEx2DT3tfhQJ3yo8saoNfnEbIBu/29vkuUg1dooenIRJTxE76ETq
	3P9/ZVLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvBi8-0023XQ-Ti; Mon, 21 Jun 2021 04:39:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvBi4-0023Wn-21
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 04:38:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvBi2-0000T3-OV; Mon, 21 Jun 2021 06:38:54 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvBi2-0006x1-FF; Mon, 21 Jun 2021 06:38:54 +0200
Date: Mon, 21 Jun 2021 06:38:54 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210621043854.GH9782@pengutronix.de>
References: <20210618120557.2192098-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210618120557.2192098-1-r.czerwinski@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:38:24 up 123 days,  8:02, 89 users,  load average: 0.04, 0.10,
 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210620_213856_148010_5537AD67 
X-CRM114-Status: GOOD (  22.61  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] common: bbu: only add available handlers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 18, 2021 at 02:05:57PM +0200, Rouven Czerwinski wrote:
> A board may have multiple handlers registered:
> 
>   registered update handlers:
>     SD          -> /dev/mmc0.barebox
>   * eMMC        -> /dev/mmc1
> 
> However when using the usbgadget with the -b command line argument,
> fastboot will stat all devicefiles listed in the handlers and will fail
> if i.e. the SD card is not available:
> 
>   usbgadget -A /dev/mmc1(root) -b
>   udc0: registering UDC driver [g_multi]
>   multi_bind: creating Fastboot function
>   ERROR: g_multi udc0: failed to start g_multi: -2
>   usbgadget: No such file or directory
> 
> To fix this, check the availability of handlers before adding them to
> the list and skip those that are not available with an info level message.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  common/bbu.c | 23 +++++++++++++++++++++--
>  1 file changed, 21 insertions(+), 2 deletions(-)

Applied with some whitespace changes, thanks

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

