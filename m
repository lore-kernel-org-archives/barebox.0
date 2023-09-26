Delivery-date: Tue, 26 Sep 2023 12:58:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ql5mO-00Bte0-Dy
	for lore@lore.pengutronix.de; Tue, 26 Sep 2023 12:58:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ql5mM-0001Y1-CC
	for lore@pengutronix.de; Tue, 26 Sep 2023 12:58:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vcnjuFPPJUEdagUopawe5uyB1/Wax6hl0QvKWkGHgAo=; b=uhNC75Rf3EISyBdRRfy2TW7Clc
	eeCcAqHgdHIxZZpfKxxvbtzjJJiGWMAOGmsZTRbAHF9K/R2oZOgFLtnh9HaJassix6SPsq/WL/qUe
	Ip/prcYRt7Cp1FNC7gCg/qlrHB6kIzXl2mZTI2JVpp7vETmhUWdzBWzKNO+18V2qWYn7R8XNwGnS0
	3r576aUc1vUEjCBsHSsSgKYo+L5p6MgSXIbronZ6hOwnrYsvy+akhPQQBwya9VqPR+GUC/lT/Jsws
	hugFVFPSU2JyhFsROBvtlidVW8NHwztdLjuTjxLEGcshI9biJmtcMB5SrfcJ/2vvjjvP2TCr42uIF
	Qz7znxIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ql5kv-00GCuW-2X;
	Tue, 26 Sep 2023 10:57:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ql5ks-00GCtP-03
	for barebox@lists.infradead.org;
	Tue, 26 Sep 2023 10:57:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ql5kn-0000dS-2G; Tue, 26 Sep 2023 12:57:21 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ql5km-0095Iu-MB; Tue, 26 Sep 2023 12:57:20 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ql5km-00BYOm-Js; Tue, 26 Sep 2023 12:57:20 +0200
Date: Tue, 26 Sep 2023 12:57:20 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230926105720.GA637806@pengutronix.de>
References: <20230911152433.3640781-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230911152433.3640781-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230926_035726_055265_24511C41 
X-CRM114-Status: GOOD (  20.75  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/7] tlsf: use 8-byte alignment for normal malloc
 allocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Sep 11, 2023 at 05:24:26PM +0200, Ahmad Fatoum wrote:
> TLSF currently uses only 4-byte alignment on 32-bit platforms, which isn't
> enough for ldrd/strd on ARMv7. This series reworks TLSF a bit, so we always
> have at least 8 byte alignment.  dlmalloc already has 8 byte alignment
> minimum, so nothing to do there.
> 
> This has the added benefit of giving TLSF the same alignment as KASAN,
> which can make debugging easier.
> 
> v1 didn't actually manage to boot on an i.MX6, which v2 fixes. This
> also boots normally on i.MX8M. I suggest this going into next after
> v2023.09.0.
> 
> v1 -> v2:
>   - drop switch of test_ffs_fls to bselftest. This function should just
>     be replaced with barebox' own implementation in future
>   - keep block size a size_t and just ensure the block metadata is
>     correctly aligned.

Applied, thanks

Sascha

> 
> Ahmad Fatoum (7):
>   tlsf: turn static const variables into compiletime constant
>     expressions
>   tlsf: ensure malloc pool is aligned
>   tlsf: fix sizeof(size_t) == sizeof(void *) assumption
>   tlsf: give malloc 8-byte alignment on 32-bit as well
>   common: malloc: ensure alignment is always at least 8 byte
>   test: self: refactor to allow alignment check
>   test: self: malloc: fix memory leaks
> 
>  common/Kconfig         |  5 +++
>  common/dlmalloc.c      |  3 ++
>  common/dummy_malloc.c  |  2 +-
>  common/tlsf.c          | 43 ++++++++++---------
>  include/linux/bitops.h |  1 +
>  test/self/malloc.c     | 96 ++++++++++++++++++++++++++++++------------
>  6 files changed, 102 insertions(+), 48 deletions(-)
> 
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


