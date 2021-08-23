Delivery-date: Mon, 23 Aug 2021 15:54:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIAPZ-0008MT-4f
	for lore@lore.pengutronix.de; Mon, 23 Aug 2021 15:54:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIAPU-00011U-ME
	for lore@pengutronix.de; Mon, 23 Aug 2021 15:54:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wz7j2LKZw3GtjJOje6IzDaa6GffN36I5lGJIRjLW9Cs=; b=O4POhWU0/tEYIz3FiyDHuILNWG
	BtO5CKCw52ZjUl7en+9Sk9gIHtqqKyp8pLU8UwOTcvGBTDp3Ht3RIxqt5X8+WGjpnhADywqs21A6d
	UvNdThknOZunNWrODxPRT8hGcOoDRGqcR6ABnkiT0TqPrBalg/oe1j3Kl/7zagkKfZK3IVIzbE/qY
	ACo6pIBCOhxC+fvKl6hT53F0Bfvw+GLwhiLaujC2AgaOivGdJ74FaeylLvyTy9cjCPPLap98vmO91
	hUa08fKUnOTNOaFU/UByrOCDr+rJGsQBmNtiaSU/WpoH5NwJam+m5bbSae6Iu3sT8Cci6oFIpL3EC
	4qMTbEGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIANy-00H8w4-Bf; Mon, 23 Aug 2021 13:53:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIANq-00H8uP-Av
 for barebox@lists.infradead.org; Mon, 23 Aug 2021 13:53:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mIANp-0000cV-3E; Mon, 23 Aug 2021 15:53:01 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mIANo-0005yd-QB; Mon, 23 Aug 2021 15:53:00 +0200
Date: Mon, 23 Aug 2021 15:53:00 +0200
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210823135300.GM24834@pengutronix.de>
References: <20210818125848.560293-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210818125848.560293-1-m.tretter@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:52:42 up 186 days, 17:16, 113 users,  load average: 0.19, 0.18,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_065302_419220_75B64796 
X-CRM114-Status: GOOD (  19.14  )
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
Subject: Re: [PATCH] ARM: zynqmp: use std_file_update as update handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Aug 18, 2021 at 02:58:48PM +0200, Michael Tretter wrote:
> The update handler for zynqmp copies the boot.bin file into an existing
> fat partition. There is already a better implementation by
> bbu_register_std_file_update(). Drop the custom implementation.
> 
> Keep the previous functions with its signature to have an obvious common
> update handler for all ZynqMP boards.
> 
> Suggested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  arch/arm/mach-zynqmp/zynqmp-bbu.c | 40 +++----------------------------
>  1 file changed, 3 insertions(+), 37 deletions(-)

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

