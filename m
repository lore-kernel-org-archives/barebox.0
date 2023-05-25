Delivery-date: Thu, 25 May 2023 17:32:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2Cwt-00DwV3-Od
	for lore@lore.pengutronix.de; Thu, 25 May 2023 17:32:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2Cwq-0008G2-Ts
	for lore@pengutronix.de; Thu, 25 May 2023 17:32:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Yhn3ZmX4X0W3ApEIT2C8KiBVzbqvwMKdaOi90Otjo0o=; b=i/CaBhSY1ve/RykBTlmCfowR9D
	zs0YMEpBx95YDkm27Dx8b9F3OyYkpyCPO+OO7cqeT2aXVtGpNO4DXljX+m8eC/A93F2vHMdONp7re
	U+ZfDsBGwfK8zPPJS0vKxhZVB/2ectD41TXMzy0fYx3G5ZI//H+h1yVlh0/+BGT8rjuNi/UDzbMex
	iFBP2CatUcWLXKus7eZ32amCgRfqn836N8c81luG+HDMvJ+eewrBYtbmibocBDI+51ckUAM9A3wWd
	i01B/2+e98hVA8Cos3wpT7tGNMOBW2+5b5mv8adS2SNcGb5kxZwr37LB/ThcMsZwiYIy9WQ49eI+n
	jnuuuEgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Cvu-00GyS3-0B;
	Thu, 25 May 2023 15:31:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Cvq-00GyRN-0A
	for barebox@lists.infradead.org;
	Thu, 25 May 2023 15:31:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1q2Cvo-000879-SK
	for barebox@lists.infradead.org; Thu, 25 May 2023 17:31:12 +0200
Received: from rhi by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1q2Cvo-0007Qu-Kj
	for barebox@lists.infradead.org; Thu, 25 May 2023 17:31:12 +0200
Date: Thu, 25 May 2023 17:31:12 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Message-ID: <20230525153112.ihldfs3bpolhox5a@pengutronix.de>
References: <20230525152934.4127575-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230525152934.4127575-1-rhi@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_083114_085951_C2D4EB0B 
X-CRM114-Status: GOOD (  18.59  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
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

As far as I could see, ethlog was the only (non-trivial) command without
a help text.

 - Roland

> 
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  commands/ethlog.c | 1 +
>  1 file changed, 1 insertion(+)
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

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |


