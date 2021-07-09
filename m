Delivery-date: Fri, 09 Jul 2021 22:57:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m1xZO-0006Nz-IT
	for lore@lore.pengutronix.de; Fri, 09 Jul 2021 22:57:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m1xZN-00028O-OY
	for lore@pengutronix.de; Fri, 09 Jul 2021 22:57:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7BRLXEwkqTICgzNhMiff//AKswd9QTG8DGWkz+HqzR0=; b=4gV2I6T7L2InJVkG92NIewrV69
	5GRMmBIRdXl9O9HTD7TOUNuNFaScLIw4QJ1ibCK6RM8lGTW2c0Nc6KH3XEntjySKtmB1Mj0jzvTWi
	+VW1Iz+gKjJe/Jk31Eum0+l4psxQQDdn6ygoJ1IHMYB86J7mWe8Dp5eTcKwrSUy1l3vUcc1G8gjyi
	jvcMkPZ5liJKktLjkqBckKdYOVuimSzOKV5YW9fEpTX1uOpb1kv8KRAaO9fmomR8X6WPWgF3SFdER
	E5CnJQA8OJ+fV3hydg6FkGXHl+8vBnMV/1/J1rrKqqv4IOYKhD6Db2tCNh+/r5BFkZ9LUIoHPeg/O
	NIBM5Wpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1xYA-002U3s-4I; Fri, 09 Jul 2021 20:56:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1xY4-002U2e-GQ
 for barebox@lists.infradead.org; Fri, 09 Jul 2021 20:56:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1m1xY3-000233-9Y; Fri, 09 Jul 2021 22:56:35 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1m1xY3-00062Y-09; Fri, 09 Jul 2021 22:56:35 +0200
Date: Fri, 9 Jul 2021 22:56:34 +0200
To: Enrico Jorns <ejo@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210709205634.GD9782@pengutronix.de>
References: <20210708112629.19243-1-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210708112629.19243-1-ejo@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 22:56:19 up 142 days, 20 min, 118 users, load average: 0.18, 0.16, 
 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210709_135636_591940_4C70AF51 
X-CRM114-Status: GOOD (  17.50  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mtd: nand: provide helpful error message when trying
 disabled ecc mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jul 08, 2021 at 01:26:29PM +0200, Enrico Jorns wrote:
> We know the reason to return -ENOSYS, thus let the user know.
> This will give him a much better hint why his NAND is not working than
> only getting the generic
> 
> | probe failed: Function not implemented
> 
> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
> ---
>  drivers/mtd/nand/nand_base.c | 1 +
>  1 file changed, 1 insertion(+)

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

