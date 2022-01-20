Delivery-date: Thu, 20 Jan 2022 09:33:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nASsj-007U63-N3
	for lore@lore.pengutronix.de; Thu, 20 Jan 2022 09:33:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nASsi-0006y7-JH
	for lore@pengutronix.de; Thu, 20 Jan 2022 09:33:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=02N1mu9qecTb0TzaFQXi8YnIwocNL5jVZ8KuRORlI1w=; b=ImJiSJkZvcfcjhn+LQ4wE3JM/T
	GIcAH3Ebd6km+IvHGLvsqcFFM+Jl/l24R6j4JTTZIDHXusTzfofpCON49odD6+ilXBYeJ41cIAotf
	gaEwr6NAQ2I3WEPzM2MWcBf/Mn8H8EZF9pBm8z3YRxM6nw0FBe7/kFAIajWLsN8febDyOeaNuM2cX
	Z5S5QJKbxl6+uc0UGlM4YL7BiBNIlJY9XRQzpJhTVTqlV+ol1qub8qJamXw4+7Om6UksjpgL4Yzl2
	qFPu2uEoXf9xsPTjD0f3gx7AzqiWk52Ou5I0LUKDgg76aksZ/AFn7sT0iyJjiIF4mAh4WJavcHU1m
	IgpoymwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nASrX-009mCh-NG; Thu, 20 Jan 2022 08:32:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nASrT-009mB8-2A
 for barebox@lists.infradead.org; Thu, 20 Jan 2022 08:32:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nASrR-0006ht-QK; Thu, 20 Jan 2022 09:32:01 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nASrR-0005VI-HH; Thu, 20 Jan 2022 09:32:01 +0100
Date: Thu, 20 Jan 2022 09:32:01 +0100
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220120083201.GK23490@pengutronix.de>
References: <20220118140453.1860909-1-s.trumtrar@pengutronix.de>
 <20220118140453.1860909-7-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220118140453.1860909-7-s.trumtrar@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:30:57 up 40 days, 17:16, 75 users,  load average: 0.34, 0.25, 0.29
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220120_003203_134639_803D67F4 
X-CRM114-Status: GOOD (  17.70  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/6] ata: sata_mv: try probing multiple times
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 18, 2022 at 03:04:53PM +0100, Steffen Trumtrar wrote:
> In case of an un-recoverable probe error, try the whole sequence again,
> starting with the hard-reset of the core.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
> No need to look at this patch. It is awesome. Better look at this nice
> chocolate:
> 
>   ___  ___  ___  ___  ___.---------------.
> .'\__\'\__\'\__\'\__\'\__,`   .  ____ ___ \
> |\/ __\/ __\/ __\/ __\/ _:\   |`.  \  \___ \
>  \\'\__\'\__\'\__\'\__\'\_`.__|""`. \  \___ \
>   \\/ __\/ __\/ __\/ __\/ __:                \
>    \\'\__\'\__\'\__\ \__\'\_;-----------------`
>     \\/   \/   \/   \/   \/ :               hh|
>      \|______________________;________________|

This patch is really great, I know that without even looking at it ;)

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

