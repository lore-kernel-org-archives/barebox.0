Delivery-date: Tue, 12 Sep 2023 11:37:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfzqF-00CUoA-Al
	for lore@lore.pengutronix.de; Tue, 12 Sep 2023 11:37:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfzqD-00088Q-2p
	for lore@pengutronix.de; Tue, 12 Sep 2023 11:37:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DeIUIOa6IaVBDzgv5dmce0OJLVm3u4O4YTseePxKdeM=; b=hSzHV8YLNXTWwhu3I6f8lh1plY
	umUub3esAP53TLkZ9I61/SuGltcXSSyQgGWyJJ/Yf59msLCU9gcPc+/ANkvCBLk6Z5Ji0rKs6ymmA
	nsZalNo6fsLbrpDWdmucWZmgfCsFouC9KrtsmjMMNeWkt15wLwinGEI9fhFUPL1yWZRNKDEI6tSjg
	5yRPX/gUwm9CS2cXtMa9JQ0Cc2kYm+bLUShvadtZ8GX2c9ONfP/z2bBO5gWlqQhKFJ9WX2OHgRBFs
	u8B099D+XtYsIxONCVujZMzHfObBSJAVAguvCWsfIjXVvvVN67NO7OHVrNBBfajAOeoAzJ5alV1Tq
	3Eknsljg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfzp7-002le2-07;
	Tue, 12 Sep 2023 09:36:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfzp1-002lb4-2i
	for barebox@lists.infradead.org;
	Tue, 12 Sep 2023 09:36:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qfzp0-0007nY-Ky; Tue, 12 Sep 2023 11:36:38 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qfzp0-005kOr-8j; Tue, 12 Sep 2023 11:36:38 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qfzp0-005Ztp-3l; Tue, 12 Sep 2023 11:36:38 +0200
Date: Tue, 12 Sep 2023 11:36:38 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230912093638.GZ637806@pengutronix.de>
References: <20230911125619.2782229-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230911125619.2782229-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_023639_874107_9EFCD683 
X-CRM114-Status: GOOD (  16.64  )
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
Subject: Re: [PATCH 0/4] KASan: print output directly to stderr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Sep 11, 2023 at 02:56:15PM +0200, Ahmad Fatoum wrote:
> I recently hunted down a heap memory corruption and this was somewhat
> complicated by KASan and dump_stack() themselves allocating memory
> off the heap. This series switches them to directly write to the
> consoles associated with stderr, while skipping the log.
> 
> Ahmad Fatoum (4):
>   ARM: unwind: don't allocate while printing stack trace
>   ARM64: backtrace: print stacktrace to stderr
>   KASan: only print to stderr
>   KASan: don't allocate memory while printing report

Applied, thanks

Sascha

> 
>  arch/arm/lib32/unwind.c     | 20 ++++++++++----------
>  arch/arm/lib64/stacktrace.c |  6 +++---
>  lib/kasan/generic.c         |  2 --
>  lib/kasan/report.c          | 22 +++++++++++-----------
>  4 files changed, 24 insertions(+), 26 deletions(-)
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


