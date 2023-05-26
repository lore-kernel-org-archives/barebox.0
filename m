Delivery-date: Fri, 26 May 2023 08:35:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2R37-00EiBA-KS
	for lore@lore.pengutronix.de; Fri, 26 May 2023 08:35:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2R35-0006VV-DI
	for lore@pengutronix.de; Fri, 26 May 2023 08:35:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ohZ4QgQ/rFH3kCphX/qw1TAM/QhnFxc8yZp1Ugr8aH4=; b=zNyU400J1NB/T2WRNsB+NdTBWU
	loJzx83W5+k4zgcASy0W7Ym3khtbvBqbbta0Nsw6PKgsGr2DawDgVIwYOeLyRhUblWr2kK69E0OjZ
	wNjT1kywcU6YrCfmd0FFGX4EkVEAaJqFGh/bw38ghxF3pc6jnpBDA7hG+Td7oTFW1pZS6ItMq2X9f
	cEMPJhEdGijlyGIZ6nPnxN/crGg7EGbhbbjfwiRw4RTHt5+09QrayNVy0KAeMXCAzdknsqEWbEzFw
	XoKx3EzEwYSz6C3o4gxbYrZYsomTkCL3Dqhk5JXmXvXTkS/yD1wu9dv08mLkxxJLcF9Zd0OC7dBjP
	Xi/wiVCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2R27-001GoH-1b;
	Fri, 26 May 2023 06:34:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2R24-001GnV-2m
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 06:34:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q2R23-0005yx-KH; Fri, 26 May 2023 08:34:35 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q2R23-0006pA-EN; Fri, 26 May 2023 08:34:35 +0200
Date: Fri, 26 May 2023 08:34:35 +0200
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230526063435.GP17518@pengutronix.de>
References: <20230525152934.4127575-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230525152934.4127575-1-rhi@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_233436_899760_AA821917 
X-CRM114-Status: GOOD (  20.15  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] commands: ethlog: wire up help text
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 25, 2023 at 05:29:35PM +0200, Roland Hieber wrote:
> The help text for ethlog currently contains only the short synopsis, but
> no explanation what all the options actually do, although that info is
> available a few lines further up. It was probably just forgotten to be
> included in the command definition.
> 
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  commands/ethlog.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/commands/ethlog.c b/commands/ethlog.c
> index 7885d32c6b47..21d88bf1cbfb 100644
> --- a/commands/ethlog.c
> +++ b/commands/ethlog.c
> @@ -90,4 +90,5 @@ BAREBOX_CMD_START(ethlog)
>  	BAREBOX_CMD_OPTS("[-rp] [device]")
>  	BAREBOX_CMD_GROUP(CMD_GRP_NET)
>  	BAREBOX_CMD_COMPLETE(eth_complete)
> +	BAREBOX_CMD_HELP(cmd_ethlog_help)
>  BAREBOX_CMD_END
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


