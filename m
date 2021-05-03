Delivery-date: Mon, 03 May 2021 12:53:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldWCF-0002sS-JM
	for lore@lore.pengutronix.de; Mon, 03 May 2021 12:53:03 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldWCE-0001j5-RV
	for lore@pengutronix.de; Mon, 03 May 2021 12:53:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ThuefO/xUBrFeJeWs/PKFbmnKH+sFH6Q57A3w000XSU=; b=ZSl9yjbqOK998vyF6H1Ecu8+g
	agg13ptm/JnEppzew3wxFJiwp/dGCgwMsfD20rxEZzpmN9MckY+gQSJO+aOfgekNGhlnGR9brjl7/
	dBFzm8dGgsOYzK/kpRtSURYtmzydgFmX9L/PijAQu31NTXuk7X3uHCcBRdT7p5ri1X7yqUBFd9Qnk
	DNbXtX2DPqiVpZEPkdxiXSs4LMFsROe3qXByD3kJmKEwf2daqo+V3wq1kexxwaX6itFi22Lca6KVE
	JWC7w8xX3kB0FqfnxkrAHlb3ed31bKMG1i/bDDjRA3ZgT0y21yIe3JRiwa31eSo0vVPCyY8r5WLFl
	yNyzb7ebw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldWBA-00DhmZ-9q; Mon, 03 May 2021 10:51:56 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldWB5-00DhmE-84
 for barebox@desiato.infradead.org; Mon, 03 May 2021 10:51:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=rwPSqHBT94IOeLL6bPI65Me99A+4PgDLSGPOZrvFXpA=; b=FDDyiLalxB169AsuQoWy1x0UDh
 NqUDsfdW8VsYArpRECQ4hcNeDvQ1nPjsGxYS4/nwNGfpKBcUapOKKQWuRnHCGRuwSyCKM61jSE9Bt
 hmq25IKNb1FZfHBLTeX0IL75AdRLSq/JHR/8NR+RhdzmGjICQozz7+5mw6JOqLQXYhcYWUMdxzTrz
 HmJJIcs/tytjG3Tf7KIOKyg5T1JY1t0sQ/DvNYaIBrCDeIJmBbS6Fn21VMBtcEl6yu+P0ogbCMqg+
 A7HcoAccGNjijOuFWA93dJMGY8rtXAvCqn/RSBV99TLybr4YLZ2zf6R5NpA+Qlp1DXzMSkvZbvSIO
 tZ7CJyHQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldWB2-002zLC-Od
 for barebox@lists.infradead.org; Mon, 03 May 2021 10:51:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldWB1-0001Wm-I2; Mon, 03 May 2021 12:51:47 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldWB1-0006t6-8P; Mon, 03 May 2021 12:51:47 +0200
Date: Mon, 3 May 2021 12:51:47 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210503105147.GX19819@pengutronix.de>
References: <20210423142829.29468-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210423142829.29468-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:51:36 up 74 days, 14:15, 103 users,  load average: 0.03, 0.06,
 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_035148_822352_F8AE57D3 
X-CRM114-Status: GOOD (  21.76  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/6] add multiimage support for sama5d3 based
 microchip-ksz9477-evb board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 23, 2021 at 04:28:23PM +0200, Oleksij Rempel wrote:
> changes v2:
> - add proper sanity check for atmci_instances array size
> - add comment about initial MCI state and reason why reconfiguration is
>   needed.
> 
> This patch series provide multiimage support for the microchip-ksz9477-evb.
> The main work was done to make atmel_mci driver reusable for the
> pbl/xloader.
> 
> With this patches it is possible to build first and second stages in one
> run with one defconfig.
> 
> Oleksij Rempel (6):
>   mci: atmel_mci: add PBL support
>   ARM: at91: xload-mmc: add sama5d3_atmci_start_image() helper
>   ARM: at91: ddramc: add sama5d3_barebox_entry() handler
>   ARM: at91: add __sama5d3_stashed_bootrom_r4 helper
>   ARM: at91: add sama5d3_lowlevel_init() helpers
>   ARM: at91: sama5d3: add multiimage support for the
>     microchip-ksz9477-evb

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

