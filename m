Delivery-date: Fri, 14 Oct 2022 10:57:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojGV1-008KiO-OB
	for lore@lore.pengutronix.de; Fri, 14 Oct 2022 10:57:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojGUz-0004Dk-Ge
	for lore@pengutronix.de; Fri, 14 Oct 2022 10:56:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gdc4mMRIhAG2Lt9lGrY4S4mn/61EYUV20aNfd0Edads=; b=xdo8OZNi1HeVZpJ0wkqhDM6LOf
	6VlyMHry63gRvkzB/iK06+tM4BsRmyjYzMlyYcG1/5iwWL16DvMfB2sKLyK3Ktjx9N1vMzDxbX1MJ
	9zbMIjbXg6/WPAhtiNz7RtSTM4y2jiG36Z9BvtvuFZ3LR8x0a9VpNlck1RH+H/gSowey7W4Q7w1QT
	02mXseIRt0EUWt1gxLKvltEGDUM2fEe4b2ACwpVek/5IKwQnv1ECIrui3u41C03AT6/4e8EEXnZ2E
	hWqI39XMTRcgZv3sqJD8LLhU+bOnz9QUntTUuGlN6LtMts0udl1tyGkWFzWlvkM6pchxlk+ZfTQe8
	IIqXgvQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojGTJ-00EAWc-Ji; Fri, 14 Oct 2022 08:55:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojGTE-00EAUX-Ki
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 08:55:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ojGT0-0003ur-5y; Fri, 14 Oct 2022 10:54:54 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ojGSz-00015c-8Z; Fri, 14 Oct 2022 10:54:53 +0200
Date: Fri, 14 Oct 2022 10:54:53 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Message-ID: <20221014085453.GJ6702@pengutronix.de>
References: <20221004155405.3458479-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221004155405.3458479-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_015508_700065_7C2D853A 
X-CRM114-Status: GOOD (  18.40  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/9] tlsf: use 8-byte alignment for normal malloc
 allocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Oct 04, 2022 at 05:53:58PM +0200, Ahmad Fatoum wrote:
> TLSF currently uses only 4-byte alignment on 32-bit platforms, which isn't
> enough for ldrd/strd on ARMv7. This series reworks TLSF a bit, so we always
> have at least 8 byte alignment.  dlmalloc already has 8 byte alignment
> minimum, so nothing to do there.
> 
> While this fixes real issues like what Enrico ran into, I'd suggest we only
> this be taken into next only after v2022.10.0 is tagged, so this can get
> some more testing exposure in the mean time.
> 
> Ahmad Fatoum (9):
>   test: include <linux/printk.h>
>   tlsf: use bselftest for testing ffs/fls
>   tlsf: ensure malloc pool is aligned
>   tlsf: fix sizeof(size_t) == sizeof(void *) assumption
>   tlsf: decouple maximum allocation size from sizeof(size_t)
>   tlsf: use 8-byte alignment for normal malloc allocations
>   common: malloc: ensure alignment is always at least 8 byte
>   test: self: refactor to allow alignment check
>   test: self: malloc: fix memory leaks

Applied, thanks

Sascha

> 
>  common/Kconfig        |  5 +++
>  common/dlmalloc.c     |  3 ++
>  common/dummy_malloc.c |  2 +-
>  common/tlsf.c         | 72 ++++++++++++++++-----------------
>  include/bselftest.h   |  1 +
>  test/self/malloc.c    | 92 ++++++++++++++++++++++++++++++++-----------
>  6 files changed, 114 insertions(+), 61 deletions(-)
> 
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


