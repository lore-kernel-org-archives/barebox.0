Delivery-date: Tue, 12 Apr 2022 10:15:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neBgn-00Gyp2-R0
	for lore@lore.pengutronix.de; Tue, 12 Apr 2022 10:15:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neBgk-0006Vx-M7
	for lore@pengutronix.de; Tue, 12 Apr 2022 10:15:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bzPgCg1HVbYrALB0HbM3uBb0JV7RtAzxtePYMaB88QA=; b=Lgf1DVENRMRmZLoA0jNcYrNxwC
	ywAAlRfQwoVmrYFBxxbwJQaDXhJIXwcWcmobNJHCST+OnwRqdhpWiOY8kE4b58oBSPxmvgCUy49Lw
	5YszxErhx0y2dRs283AlFsDXuonsATHvHsutX6byvg8/N8cdOgWW52oTSDv2AiaTeiKcnq54uv8Yx
	KFsyeINaz35DtzGRzlBZ2PxJ/KRqFS+uaONkNFxM8Wv9bESVsHCtjhs1qKokz+2FDGvXoVBFUwzOk
	JharePjhuW1Qz0ZTaFtqP9PfstkiJAYKjvjPPyFmC3iRVNPIINIA8EfMECnNCxxPALZWUYgbHYAs5
	NJRmRA2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neBfT-00CUGw-59; Tue, 12 Apr 2022 08:14:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neBfN-00CUFr-VR
 for barebox@lists.infradead.org; Tue, 12 Apr 2022 08:14:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1neBfM-0006Eq-NH; Tue, 12 Apr 2022 10:14:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1neBfM-0001A1-EL; Tue, 12 Apr 2022 10:14:24 +0200
Date: Tue, 12 Apr 2022 10:14:24 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220412081424.GB2387@pengutronix.de>
References: <20220407091604.956577-1-o.rempel@pengutronix.de>
 <20220407091604.956577-4-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220407091604.956577-4-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:12:05 up 12 days, 20:41, 66 users,  load average: 0.08, 0.18, 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_011426_048349_41A2762C 
X-CRM114-Status: GOOD (  21.26  )
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
Subject: Re: [PATCH v3 03/12] net: add DSA framework to support basic switch
 functionality
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Apr 07, 2022 at 11:15:55AM +0200, Oleksij Rempel wrote:
> Add DSA based port multiplexing functionality for barebox. With this
> framework we will be able to use different ports of as switch
> separately.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/Kconfig  |   4 +
>  drivers/net/Makefile |   1 +
>  drivers/net/dsa.c    | 460 +++++++++++++++++++++++++++++++++++++++++++
>  include/dsa.h        |  90 +++++++++
>  4 files changed, 555 insertions(+)
>  create mode 100644 drivers/net/dsa.c
>  create mode 100644 include/dsa.h
> 
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index 65c93bbe84..8d76fe66f2 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -17,6 +17,10 @@ config HAS_MACB
>  config PHYLIB
>  	bool
>  
> +config DSA
> +	bool
> +	select PHYLIB

Hm, DSA will likely depend on NET in one way or the other. This means
DSA depends on other options and thus can't be selected by DSA client
drivers. DSA should be actively selected by the user and the client
drivers should depend on DSA rather than selecting it.

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

