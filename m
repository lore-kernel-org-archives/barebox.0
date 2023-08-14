Delivery-date: Mon, 14 Aug 2023 15:05:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVXGa-003lpl-42
	for lore@lore.pengutronix.de; Mon, 14 Aug 2023 15:05:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVXGX-0005Ix-Si
	for lore@pengutronix.de; Mon, 14 Aug 2023 15:05:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=53j44oARQHbRVMQjLS+WNBbglYFpR5oBbx+15bR70yA=; b=Om4cZeTqJq5z6eesC1GWvkOYnK
	prz1gTS+KHcvPVYIm9/gRFgiN4pEqKx83VWOk+m2/CcyUF081Q21ADoo3Z7/fy1+P1LZZds4lrvvA
	w2DalLW61sqIFdlVj6ITzVS01YfZMPIxGjrCbv3rF6eA5sjUm9O2tgmt/v99ePoH2AOcY5wUccOSl
	f4+lpsnhBgkZBcEPpYa7UaR1ZItId0EZ+8dvSjYc4qMEExP5oFgdYpr2gZMkT0bWuoZ2wV1Wo7hD7
	bYT7vW/ErAa3bC9zZ24a3SEBZqVTFeDRfbrHMYmRnxbJ5VVloiebHEAhCUusQOM0607cHptecm5gJ
	+Q0jsJbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVXFZ-00H6eu-20;
	Mon, 14 Aug 2023 13:04:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVXFW-00H6e6-0w
	for barebox@lists.infradead.org;
	Mon, 14 Aug 2023 13:04:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qVXFU-00051Z-S6; Mon, 14 Aug 2023 15:04:44 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qVXFU-0001Sx-Kg; Mon, 14 Aug 2023 15:04:44 +0200
Date: Mon, 14 Aug 2023 15:04:44 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230814130444.GD26314@pengutronix.de>
References: <20230814053229.2311097-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230814053229.2311097-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230814_060446_326615_F1B1D1E4 
X-CRM114-Status: GOOD (  15.85  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/5] net: designware: eqos: fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 14, 2023 at 07:32:24AM +0200, Oleksij Rempel wrote:
> changes v2:
> - spelling fixes in the "initialize MAC address" patch
> 
> Oleksij Rempel (5):
>   net: designware: eqos: initialize MAC address specific DMA channel
>     configuration
>   net: designware: eqos: fix non-working promisc mode when set before
>     interface start
>   net: designware: eqos: add comment about external clock dependencies
>     for the soft reset
>   net: designware: eqos: fix NULL pointer dereference on LLDP packets
>   net: designware: eqos: do not receive pause frames

Applied, thanks

Sascha

> 
>  drivers/net/designware_eqos.c | 78 +++++++++++++++++++++++++----------
>  drivers/net/designware_eqos.h |  7 ++++
>  2 files changed, 63 insertions(+), 22 deletions(-)
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


