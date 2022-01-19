Delivery-date: Wed, 19 Jan 2022 15:27:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nABvu-006ikL-Il
	for lore@lore.pengutronix.de; Wed, 19 Jan 2022 15:27:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nABvt-0004k6-2n
	for lore@pengutronix.de; Wed, 19 Jan 2022 15:27:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:Cc:To:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fYcLfHdjLwoOkF4SpYOmO3TuqspofB9R4MaA6f14TRs=; b=JB/hdU7a0fz9MSO22GBQVwwWmz
	U3pHfXpQqzp9b1lhsUISzbc4yOG/7XhHIFL7UQISig/33wqYoC5mAMcRaGNSQP5lfXpvB2IJXn24a
	ORm+ax4UsFoD/CitiKWtYpApvDAuPqV2b6l3ijc0bBS5oo4g4ey54AG8QlcST71LsgxBXGn9zfmZu
	LFzW4Qjp8UOamnWIN4jfzUM0d1RwjeXS5LQ5tI4fVEelC6Yv9zPST46+kaWdiNPsgQrZuS6t76rSD
	8SFlxzNLTK4WtibrPnJhk8gjT0/4Ilu4o/hLqqdumnYnO9HCFzoAfCaKGGbS3hxo5WlXcVOBFceRs
	vCtMO24g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nABua-005t8a-DU; Wed, 19 Jan 2022 14:26:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nABuT-005t6S-IF
 for barebox@lists.infradead.org; Wed, 19 Jan 2022 14:26:04 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nABuP-0004cf-Pb; Wed, 19 Jan 2022 15:25:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Jules Maselbas <jmaselbas@kalray.eu>, barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>,
 Yann Sionneau <ysionneau@kalray.eu>
References: <20220117221917.26970-1-jmaselbas@kalray.eu>
 <20220117221917.26970-8-jmaselbas@kalray.eu>
Message-ID: <66425937-a173-1bdc-dd3e-ca727797d52e@pengutronix.de>
Date: Wed, 19 Jan 2022 15:25:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220117221917.26970-8-jmaselbas@kalray.eu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220119_062601_651275_F68012C0 
X-CRM114-Status: GOOD (  27.76  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 07/11] watchdog: kvx: do not disable watchdog on probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 17.01.22 23:19, Jules Maselbas wrote:
> From: Louis Morhet <lmorhet@kalray.eu>
> 
> As the watchdog may be set by a lower stage in the boot chain, and for
> a good reason (precisely to ensure reliable update when something
> unexpected happens during the boot chain), it is a bad idea to always
> disable it during probe.
> 
> We should either have a mechanism to refresh it on a regular basis in
> barebox itself and set it to something bigger for Linux, or handle it
> transparently and let the previous stage set the global watchdog up to
> Linux. This patch assumes for now the latter.

The latter is preferable, because barebox execution time should be bound
and the watchdog ensures that in face of spurious bugs.

There's an autopoll mechanism that tries to ensure forward progress by
polling the watchdog in is_timeout. The idea is that loops checking for
is_timeout will either see forward progress or propagate an error. This
is more robust than explicitly littering around WATCHDOG_PING()s, but it's
not immune to all bugs, so turning on the watchdog very early is IMO
the best course of action. For development use, you can always do wd 0
or wd -x which I just sent out and CC'd you on. wd -x will disable
all watchdogs either by wd 0 if supported by the hardware and driver
or by enabling autopolling.

It's a strict development feature (like wd in general. There's
global.boot.watchdog_timeout for normal use during booting).

> Signed-off-by: Louis Morhet <lmorhet@kalray.eu>
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>

For this patch,

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

> ---
>  drivers/watchdog/kvx_wdt.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/watchdog/kvx_wdt.c b/drivers/watchdog/kvx_wdt.c
> index da19136fda..df9430769b 100644
> --- a/drivers/watchdog/kvx_wdt.c
> +++ b/drivers/watchdog/kvx_wdt.c
> @@ -73,11 +73,9 @@ static int kvx_wdt_drv_probe(struct device_d *dev)
>  	wdd->hwdev = dev;
>  	wdd->set_timeout = kvx_wdt_set_timeout;
>  
> -	/* Be sure that interrupt are disable */
> +	/* Be sure that interrupt are disabled */
>  	kvx_sfr_set_field(TCR, WIE, 0);
>  
> -	kvx_watchdog_disable();
> -
>  	return watchdog_register(wdd);
>  }
>  
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

