Delivery-date: Tue, 25 May 2021 06:59:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llPAZ-0006tu-Pd
	for lore@lore.pengutronix.de; Tue, 25 May 2021 06:59:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llPAY-0003tA-S4
	for lore@pengutronix.de; Tue, 25 May 2021 06:59:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y7AMDB9sxVrDaU4MdGCDNvtHP3wefNCuGx5sASqGCuk=; b=fHZus3St52jts+9RfjnPDJJt+5
	1XyCnEG+U5OCUBXrcdiAW8qsXfxYryxPJsSIv4ENDcNPF/rd+W9sg+PCnQmNhP5CCXRujsRZ40fA6
	srhEs/0zy0ygzCpTw+XWFeTk2am6x3Ho+IQ7yjtKwpXHkC7mp0a8zsTiWK4hBbc/LohCsTWVEUaua
	BzutwwJouUMa19sPHbA4zREs6z440HKz+G6d+Vp2vBnYsCuVfbPmhmrKcImeV0ly/KXIMoML/LDBr
	9Mz30Q+TTxG8dG96vBT5boJZq49GNGUbYop9/zb8eLBzorYri+4eBDYYWq5N3G54zeiQM3np7E/v8
	ti+yJkeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1llP8t-003Nah-Qm; Tue, 25 May 2021 04:58:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1llP8o-003Na1-DY
 for barebox@lists.infradead.org; Tue, 25 May 2021 04:58:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llP8k-0003oI-Fy; Tue, 25 May 2021 06:58:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llP8j-0004Ui-A4; Tue, 25 May 2021 06:58:01 +0200
Date: Tue, 25 May 2021 06:58:01 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, Robin van der Gracht <robin@protonic.nl>
Message-ID: <20210525045801.GI19819@pengutronix.de>
References: <20210518083707.15428-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210518083707.15428-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:57:46 up 96 days,  8:21, 75 users,  load average: 0.35, 0.21, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210524_215806_483859_59996A02 
X-CRM114-Status: GOOD (  22.09  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] ARM: protonic: vicut1: disable on-die termination to
 fix PHY bootstrapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 18, 2021 at 10:37:07AM +0200, Oleksij Rempel wrote:
> If on-die termination is enabled, the RXC pin of iMX6 will be pulled
> high. Since we already have an 10K pull-down on board, the RXC level on
> PHY reset will be ~800mV, which is mostly interpreted as 1. On some
> reboots we get 0 instead and kernel can't detect the PHY properly.
> 
> Since the default 0x020e07ac value is 0, it is sufficient to remove this
> entry from the affected imxcfg files.
> 
> Since we get stable 0 on pin PHYADDR[2], the PHY address is changed from
> 4 to 0.
> 
> Reported-by: Robin van der Gracht <robin@protonic.nl>
> Fixes: 00adc1e33ef8 ("ARM: add imx6 based Protonic boads")
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg | 1 -
>  1 file changed, 1 deletion(-)

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

