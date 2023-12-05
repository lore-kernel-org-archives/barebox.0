Delivery-date: Tue, 05 Dec 2023 09:05:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQRG-003vbV-24
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 09:05:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQRG-0003ei-Lz
	for lore@pengutronix.de; Tue, 05 Dec 2023 09:05:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=igH3lEIGFN1iJTooPPFmIBsKEq0uv0jiIdAXCbChMkQ=; b=xCH9y+e91GWXXK9dvW2rcQQkFo
	VgycdNF3F+8lkh41X/wUrngey+SV1Q/GYYQK5eEHRVlIU7eyGxQkPiErSpQSr3sMqME1iOjduDAZu
	9upS82XP7a6FTgFRfo+97zgY4jGw1CfcpVe9xvJSiJ6KnwjZBkOuvZLz2/OwBpjSguX23x0sZ7M3U
	poxVZJhPoPe1KaMAtTyn51rCS0I4BH0DpFWhKVLZSDVqqmqGnerQCQ1BaAxM5ojvrIeFP5dUjD+dA
	lWTslAeCN8nm+IbBnxU5D6yMaRpbtYrY4Vbp+Vj2y1cSj2meAH5s+YijT0mlTSvh7Sg7NlVTHxda1
	CUqpWvwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQQ3-006aEW-34;
	Tue, 05 Dec 2023 08:04:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQPp-006aAm-1X
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 08:04:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQPo-0003F1-9G; Tue, 05 Dec 2023 09:04:24 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQPn-00DhTp-TG; Tue, 05 Dec 2023 09:04:23 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQPn-005LtX-Qo; Tue, 05 Dec 2023 09:04:23 +0100
Date: Tue, 5 Dec 2023 09:04:23 +0100
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20231205080423.GP1057032@pengutronix.de>
References: <20231201-v2023-08-0-topic-macb-v4-0-b4f5d64de1ad@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231201-v2023-08-0-topic-macb-v4-0-b4f5d64de1ad@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_000425_602057_E049D737 
X-CRM114-Status: GOOD (  17.54  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v4 0/3] net: macb: fix dma usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Dec 01, 2023 at 02:51:26PM +0100, Steffen Trumtrar wrote:
> The rx_buffer is only dma_alloc'ed but never properly flushed.
> Fix that.
> 
> While at it, also use proper volatile access instead of sw barriers.
> 
> Also, redefine PKTSIZE to a sensible multiple of 64 bytes.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
> Changes in v4:
> - align PKTSIZE with cacheline size
> - minor style changes
> - Link to v3: https://lore.barebox.org/20231129-v2023-08-0-topic-macb-v3-0-65ad6db834dc@pengutronix.de
> 
> Changes in v3:
> - fix dma_unmap_single direction
> - dma_map_single packet in macb_send()
> - Link to v2: https://lore.barebox.org/20231129-v2023-08-0-topic-macb-v2-0-4dc2cb4d5d25@pengutronix.de
> 
> Changes in v2:
> - change dma_map_single to DMA_FROM_DEVICE
> - drop (unsigned long) casts in dma_sync_*
> - rework writel/setbits/clearbits to keep semantics
> - Link to v1: https://lore.barebox.org/20231128-v2023-08-0-topic-macb-v1-0-9faff73bc990@pengutronix.de
> 
> ---
> Steffen Trumtrar (3):
>       net: macb: fix dma_alloc for rx_buffer
>       net: macb: convert to volatile accesses
>       include: net: align PKTSIZE to 64 bytes
> 
>  drivers/net/macb.c | 132 +++++++++++++++++++++++++++++------------------------
>  include/net.h      |   4 +-
>  2 files changed, 75 insertions(+), 61 deletions(-)

Applied, thanks

Sascha

> ---
> base-commit: 5f200dd534c848dfa5d948334b6373f0310b8f73
> change-id: 20231128-v2023-08-0-topic-macb-0c13ed91179d
> 
> Best regards,
> -- 
> Steffen Trumtrar <s.trumtrar@pengutronix.de>
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


