Delivery-date: Thu, 19 May 2022 15:19:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrg3h-00265H-Db
	for lore@lore.pengutronix.de; Thu, 19 May 2022 15:19:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrg3f-00036B-4B
	for lore@pengutronix.de; Thu, 19 May 2022 15:19:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=91+BM522vlk+jBsON+BrOfcP7xBC2o2ZtxKE8OBI1tY=; b=1ttCO2uc8Qw0dZ
	bi5AKGwS+oZPWjP2NYTe5iOp0rA/7MuLlWZxsLdfkBB7Oq2J4AzZ5uEhXxkq8fa1Ego/MmF1I9LAA
	6yl0lceOzZMp6rUHfrYwRWUtFhf8XQS1PQxZBaQik3S8vRNv+R/71h7gsdpkLEipt2rTqMwoYLI5L
	4llV8ySFECRWZJAyLV6sp+ncL5p995bEX6EiHHedUCy6c6mp4EHK0C8eFqZlJst6hWmYwEVLoSJS0
	/KGGAUd0QEbyWeL2fQlxO/WS6/7ebIsFDcZkoEqj/a5K9pBelu3YWCblbUYLIifesufxN+Z5XfdM+
	42lRGwHxQPw5+jTsdbrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrg1y-006y80-Q5; Thu, 19 May 2022 13:17:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrfv7-006uk9-Qx
 for barebox@lists.infradead.org; Thu, 19 May 2022 13:10:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nrfv2-0001Sw-BF; Thu, 19 May 2022 15:10:20 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nrfv1-0008Nb-TF; Thu, 19 May 2022 15:10:19 +0200
Date: Thu, 19 May 2022 15:10:19 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Frank Wunderlich <frank-w@public-files.de>, barebox@lists.infradead.org
Message-ID: <20220519131019.GZ25578@pengutronix.de>
References: <1694C0B0-A962-420E-BA70-8061E8E9CA7F@public-files.de>
 <20220519115450.GV25578@pengutronix.de>
 <trinity-e8816284-959b-432a-bb6a-f33a6cd573df-1652964180567@3c-app-gmx-bs49>
 <e0e7cd6c-aa14-a09c-71d2-681842575398@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e0e7cd6c-aa14-a09c-71d2-681842575398@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:07:56 up 50 days,  1:37, 49 users,  load average: 0.13, 0.15, 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_061025_921903_9D89A4BE 
X-CRM114-Status: GOOD (  31.65  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Aw: Re: Driver load order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 19, 2022 at 02:50:13PM +0200, Ahmad Fatoum wrote:
> On 19.05.22 14:43, Frank Wunderlich wrote:
> > @ahmad: thanks for your driver. Take a quick look into it...
> > 
> > it seems nearly complete, is there anything not working or was the only
> > problem the missing regmap-handling added in part1?
> 
> IIRC, Linux just has regmap_i2c_init which does the correct thing for all
> callers. While in barebox this doesn't work and I had to add a smbus specific
> regmap_init. We can always consolidate this later though, so feel free to
> add whatever you find missing, test it and send it out for upstream
> inclusion. You have my Signed-off-by.
> 
> > My current approach is only register the regulators without doing a real
> > pmic init. IO-Domain driver only needs to read out regulator voltage, i'm
> > not sure if it's enough to get the value from the DT or if it needs to be
> > really measured (to depend on complete probe/init of the pmic).
> > 
> > but the problem is that iodomain is probed before the pmic due to deep-probing
> > if i understand Sascha the right way. So i need a way to defer the iodomain driver
> > probe till rk808 is ready.
> 
> The right way with deep probe enabled is to just use regulator functions
> normally and on first access, barebox will take care to probe the regulator
> if not done yet. I am not sure if all this works as expected yet, but Sascha
> already offered to help with that.

I gave it a test with your rk808 driver. It just works \o/

regulator_get() triggers probing of the rk808 regulator driver and
returns a valid regulator.

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

