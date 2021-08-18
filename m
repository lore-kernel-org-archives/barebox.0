Delivery-date: Wed, 18 Aug 2021 06:48:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGDV4-0001Az-1m
	for lore@lore.pengutronix.de; Wed, 18 Aug 2021 06:48:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGDUz-0004JC-Ik
	for lore@pengutronix.de; Wed, 18 Aug 2021 06:48:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HQjDDdMVGwa1gWUea211loLOW7Q3+74uRREk8zx8qn8=; b=WmT+9+HDqXnTHPrmeXbq4fLZ/u
	T2Z+edEFYOHyVpkN9Crnbir3DsKlILBWBfYUa8k5FwBqFBc4QCluIoD6WGVPCYZblmtj6+GGklt7w
	hFFd1tTpJqJxnZJXTrSmjC2+42f3GBpUHMsC7G3oo1cOJGuEsJD1eVaJqrM9rouRWD56gjVGi7Ias
	EJPyVszSUGumzd3+v/hD3vdlEupEjsoelvZEmo2AcboRcbpRpHDT1bEwFxsWuWs88CwMR/FER9u7N
	2LD3v7qS6ggoEBDE58vbEzmbOVwenJjNavS/ajrFvnoSnNMGSGENB0kNDBvaOfz/UEpMiwoDsQ7xI
	ofgcUilw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGDT9-004APR-Il; Wed, 18 Aug 2021 04:46:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGDSq-004ALb-Aa
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 04:46:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mGDSm-00041Q-3R; Wed, 18 Aug 2021 06:46:04 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mGDSl-0007WH-Px; Wed, 18 Aug 2021 06:46:03 +0200
Date: Wed, 18 Aug 2021 06:46:03 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210818044603.GC24834@pengutronix.de>
References: <20210812121944.4419-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210812121944.4419-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:45:01 up 181 days,  8:08, 84 users,  load average: 0.12, 0.20,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_214608_403465_CE1FFDE7 
X-CRM114-Status: GOOD (  18.11  )
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
Subject: Re: [PATCH 1/5] net: drop Calxeda Highbank xgmac driver support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Aug 12, 2021 at 02:19:40PM +0200, Ahmad Fatoum wrote:
> Support for MACH_HIGHBANK was removed in f0f96c3322d5
> ("ARM: remove Calxeda Highbank support"). There are no device trees
> either barebox or upstream using this network controller, so remove
> the driver as well.
> 
> Fixes: f0f96c3322d5 ("ARM: remove Calxeda Highbank support")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/net/Kconfig  |   4 -
>  drivers/net/Makefile |   1 -
>  drivers/net/xgmac.c  | 734 -------------------------------------------
>  3 files changed, 739 deletions(-)
>  delete mode 100644 drivers/net/xgmac.c

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

