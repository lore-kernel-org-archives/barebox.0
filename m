Delivery-date: Wed, 03 Mar 2021 15:05:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHS7t-00085D-IJ
	for lore@lore.pengutronix.de; Wed, 03 Mar 2021 15:05:21 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHS7s-0007Oy-Nz
	for lore@pengutronix.de; Wed, 03 Mar 2021 15:05:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jNuPVIe67u5b3s1FpwD7FJD9lrp3i703hr1inaT6djE=; b=C5+qRJ1kaK6LwBwnZi5T7HZA+
	iWsTLmyCJ1RYyoekFCZRQ3FLjCk9u81d2u21VygZOjbk3Ht2Wl8SAEvzO23TN1fteBjt/ENs9nl2L
	weKzufU/SATpsdqZdGpOeJr5wc7NfodwKlyabUZ0o5nlNRilwfseZMIcbwoBTizpEdMtd1cAkemEK
	HB2yvuKDwQydoZIrWgy0z1dHIOVO8WI1fAh8HZSxpD6ysXxnA4tTLRqu8WDlUmlfVkDyqYmhvVVVL
	IMP+6yPr31PoLonACx7bfJF03yi5r6oE0gBN6geS5tB4kOFbKu3vtgTKVurI1yR37WypXlLScp8xo
	+yV5OmTzA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHS6b-0052Wu-IX; Wed, 03 Mar 2021 14:04:02 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHS3u-0051t0-1Y
 for barebox@desiato.infradead.org; Wed, 03 Mar 2021 14:01:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=8L2WeoOHpwwV2XQ1hIzoMwJRg5EHG1ydBKFxqcmhIXA=; b=SKefiW9cRU7s6qK1UT/25Uqk+C
 tsMiP2uzvS5C/aSSQytSmz3wlv9Z+uJ9F0yX9UNQhwoXrQgDV8rVvFZHo+dJwgVO1iOn5wAef1mSK
 6+1pJoe/Vy9HGbaPHkdCztsWlNO3Xb+4F1KesC0N/HzXAxJqT+xmQCRURBOGhYoDtQU+ltiZzzCqN
 N10ofxHPSLgFjd2i9QVkyW0RD1uztlyp5lx1AIrCbDj+fpbVMemXWZOkanBs+ZuLnEytZ6kafDg9z
 boFMRhD448IFq0bKBNf7+cWjYdqRMJT0t/vUHvRbkVvrOwLarbByUOawdBQ7SnDH423ZCtu+ADWU9
 ENeC3ovQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHQIo-002TeB-7z
 for barebox@lists.infradead.org; Wed, 03 Mar 2021 12:08:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lHQIS-0002sC-5k; Wed, 03 Mar 2021 13:08:08 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lHQIO-0006sH-2R; Wed, 03 Mar 2021 13:08:04 +0100
Date: Wed, 3 Mar 2021 13:08:04 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210303120804.GK4207@pengutronix.de>
References: <20210228190836.1451663-1-ahmad@a3f.at>
 <20210228190836.1451663-4-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210228190836.1451663-4-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:06:21 up 13 days, 15:30, 78 users,  load average: 0.12, 0.25, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_120830_841157_D9BE80EE 
X-CRM114-Status: GOOD (  12.77  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/9] dma: move dma_map/unmap_single from ARM to common code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Sun, Feb 28, 2021 at 08:08:31PM +0100, Ahmad Fatoum wrote:
> There's nothing ARM specific about these functions. Move them to a
> common location, so other arches can use them as well.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/arm/cpu/mmu-common.c | 41 +-------------------------------------
>  drivers/dma/Makefile      |  1 +
>  drivers/dma/map.c         | 42 +++++++++++++++++++++++++++++++++++++++
>  3 files changed, 44 insertions(+), 40 deletions(-)
>  create mode 100644 drivers/dma/map.c

This breaks several arm configs:

drivers/dma/map.c:26:12: error: redefinition of 'dma_map_single'
   26 | dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
      |            ^~~~~~~~~~~~~~
In file included from include/dma.h:13,
                 from drivers/dma/map.c:4:
/ptx/work/WORK_EIHEI/sha/backup/barebox/barebox-maintainer-utils/barebox/arch/arm/include/asm/dma.h:35:26: note: previous definition of 'dma_map_single' was here
   35 | static inline dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
      |                          ^~~~~~~~~~~~~~
drivers/dma/map.c:36:6: error: redefinition of 'dma_unmap_single'
   36 | void dma_unmap_single(struct device_d *dev, dma_addr_t dma_addr, size_t size,
      |      ^~~~~~~~~~~~~~~~
In file included from include/dma.h:13,
                 from drivers/dma/map.c:4:
/ptx/work/WORK_EIHEI/sha/backup/barebox/barebox-maintainer-utils/barebox/arch/arm/include/asm/dma.h:41:20: note: previous definition of 'dma_unmap_single' was here
   41 | static inline void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
      |                    ^~~~~~~~~~~~~~~~

This happens for example in dss11_defconfig, but several others as well.

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

