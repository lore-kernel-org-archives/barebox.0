Delivery-date: Fri, 11 Jun 2021 13:31:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrfOF-0005Lh-7j
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 13:31:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrfOE-0000rV-AN
	for lore@pengutronix.de; Fri, 11 Jun 2021 13:31:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RmqewVG+yz3uQGuRb3DuW5rhIrRCsif4vTxgB33Kvro=; b=hV+gn5/Ihug9wXtqRfF7hn2no/
	PcFlGiLarjqjJZaXrM59o+EWSPngHYI4r2jgYC1AVFf80uFD/rlOdeW2TcnnodkhCWMHIs3IPrfeb
	xfU9bsgQfxPlO/p5HlDyzmSslBPuUCFanQj95qEv55BGYw3TbRRKyHy0Z1lUA3YBBUuqhNLNbzjuq
	GvpZL3SilNEeuOqN/q3mGQ75cN9USEUd9BSCbZKR/eJlkrTUdbP5WXwI6lv/OBF+fR4suaYIfmPR7
	Y8Eoe6FRmZHvvZqQPRkQTqTOV2hzj3qzzlTmH5OkhwvBm05nso+s8mDS/rs0+59VmvOwV2wkncsKW
	gb3UIWsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrfMy-0052iw-Aw; Fri, 11 Jun 2021 11:30:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrfMs-0052ht-Oc
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 11:30:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrfMr-0000Xq-BP; Fri, 11 Jun 2021 13:30:29 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrfMq-0005eo-L5; Fri, 11 Jun 2021 13:30:28 +0200
Date: Fri, 11 Jun 2021 13:30:28 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210611113028.GC20470@pengutronix.de>
References: <20210611080155.3555976-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210611080155.3555976-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:30:06 up 113 days, 14:53, 122 users,  load average: 0.09, 0.09,
 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_043030_819795_09BB8493 
X-CRM114-Status: GOOD (  17.85  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] include: <io.h>: define (read|write)[bwlq]_relaxed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 11, 2021 at 10:01:55AM +0200, Ahmad Fatoum wrote:
> For Linux, It's always correct to substitute any of the read or
> write _relaxed functions with their non relaxed counterpart.
> Define functions that do this.
> 
> Unlike with Linux, they doesn't per se affect performance: barebox
> writel doesn't imply memory barriers, instead it depends on
> the architecture support to map IO memory regions as non-bufferable.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/clk/rockchip/clk.h        |  3 ---
>  drivers/gpio/gpio-davinci.c       |  3 ---
>  drivers/regulator/stm32-vrefbuf.c |  4 +---
>  drivers/spi/atmel-quadspi.c       |  3 ---
>  include/io.h                      | 32 +++++++++++++++++++++++++++++++
>  5 files changed, 33 insertions(+), 12 deletions(-)

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

