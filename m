Delivery-date: Fri, 01 Apr 2022 15:03:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1naGw4-001ZJE-RS
	for lore@lore.pengutronix.de; Fri, 01 Apr 2022 15:03:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1naGw2-00086W-EO
	for lore@pengutronix.de; Fri, 01 Apr 2022 15:03:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eQtfDP86ZmBG3HJVADK/YgTW1puQK3dswjAyg76SLXw=; b=00fC1L6qbj/EPE
	g3nJDP73GBMki3xlZNpWrhUa8pjLu9nXyS8IphBPCNWvzKQnDJP+yynxSy6cHDRJ3j766AbCwqmqC
	LSL4cuExB+T+ZWDQbr/v2/dQrEin9x6uF69RivxTtofSb9UWAmj9BEKOX6YiKDqOzUIsphTSy5V2y
	1AWw2fMxPV/PWniXcAH20zm45YerIKqEBueDKXX9odr8hjAVs5EVurijNhZ9T1zPQ5TiDJSDuKc+3
	sOJpzFx9zOCMqtGbj4qUGY+eMHONmwSFQnx6RA38neGvlcSw+uqF6ly2GG7ZrZ2XctdmsYaitDYxE
	C4T4nQNpUxzTEPQiY2GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naGuM-005hUM-6Y; Fri, 01 Apr 2022 13:01:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naGuH-005hTd-5n
 for barebox@lists.infradead.org; Fri, 01 Apr 2022 13:01:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1naGuF-0007rU-IS; Fri, 01 Apr 2022 15:01:35 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1naGuF-0003Ws-9P; Fri, 01 Apr 2022 15:01:35 +0200
Date: Fri, 1 Apr 2022 15:01:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220401130135.GN4012@pengutronix.de>
References: <20220329073218.10656-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220329073218.10656-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:01:22 up 2 days, 1:31, 54 users, load average: 0.65, 0.32, 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_060137_249204_1D00B611 
X-CRM114-Status: GOOD (  20.66  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ata: ide-sff: fix integer overflow in ata_wait_busy()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 29, 2022 at 10:32:18AM +0300, Denis Orlov wrote:
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> ---
>  drivers/ata/ide-sff.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/ata/ide-sff.c b/drivers/ata/ide-sff.c
> index 7884b62bab..69055e0585 100644
> --- a/drivers/ata/ide-sff.c
> +++ b/drivers/ata/ide-sff.c
> @@ -96,7 +96,7 @@ static int ata_wait_busy(struct ide_port *ide, unsigned timeout)
>  {
>  	uint8_t status;
>  	uint64_t start = get_time_ns();
> -	uint64_t toffs = timeout * 1000 * 1000;
> +	uint64_t toffs = timeout * MSECOND;
>  
>  	do {
>  		status = ata_rd_status(ide);
> -- 
> 2.20.1
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

