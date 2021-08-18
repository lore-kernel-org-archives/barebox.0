Delivery-date: Wed, 18 Aug 2021 06:49:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGDWU-0001Ej-S3
	for lore@lore.pengutronix.de; Wed, 18 Aug 2021 06:49:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGDWQ-0004Px-D2
	for lore@pengutronix.de; Wed, 18 Aug 2021 06:49:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VyCO4yuaXvwy1x8olIwz8vdAUaq/rutgKnlyM1nnn6U=; b=2bWal38QGQ3UjHRtqcvRbLuQXB
	9z6+XGkGTsXTaBdNCYFaNgS6jUrhriMAjQunM0q6xeRyU/r5ddVdBuyNnpGDrjUUN3ff1N2NgvU77
	T/Aa/K/rZCgU5/818f+M3bkFYnOHvcaVUWBm353w95yzqILbvkP2BlbitLuSmNKzVqsuVBVvq/bVF
	lhdhcbrnZyUUp+ccHO2vS8fsmoCiOlZ1ZbZGgEDqJTs721Tf8aQvih+d8HFONmnKigyL7DhzFSDZv
	MN5EIePptPNQjsJvGA7lKziDblIQ7GUKAlve97Q4bQxJDmFH76aYtgV3jsh3zERHzRa06mHHPvbOb
	dWWuZq1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGDV0-004As1-BS; Wed, 18 Aug 2021 04:48:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGDUs-004AqZ-7i
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 04:48:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mGDUq-0004Ic-UA; Wed, 18 Aug 2021 06:48:12 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mGDUq-0007Xa-L2; Wed, 18 Aug 2021 06:48:12 +0200
Date: Wed, 18 Aug 2021 06:48:12 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210818044812.GD24834@pengutronix.de>
References: <20210813083221.31763-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210813083221.31763-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:47:55 up 181 days,  8:11, 84 users,  load average: 0.11, 0.15,
 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_214814_335320_3F401A3B 
X-CRM114-Status: GOOD (  18.41  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fastboot net: add setter for global.fastboot.net.autostart
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Aug 13, 2021 at 10:32:21AM +0200, Marco Felsch wrote:
> Without this change the only possible way to start the
> fastboot.net.autostart mechanism is by using the nv storage. Split
> fastboot_on_boot() into two functions:
>  - a globalvar setter fastboot_net_autostart_set() and
>  - a the globalvar init function fastboot_net_init_globalvar().
> This allows init scripts to start the autostart mechanism as well.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  net/fastboot.c | 19 +++++++++++++------
>  1 file changed, 13 insertions(+), 6 deletions(-)

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

