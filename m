Delivery-date: Mon, 03 May 2021 13:21:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldWeE-0002vb-UF
	for lore@lore.pengutronix.de; Mon, 03 May 2021 13:21:58 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldWeE-00051E-5C
	for lore@pengutronix.de; Mon, 03 May 2021 13:21:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RK09nMaffieSRv3Eso+rpBi+LCedfU6fRL/HtP1h65A=; b=IQra+OKitmO0mxXhL/Z86yklt
	jupeqaQazxTPSRDB0Ld24Aa0rLX8umLY3ZjJCJr+H72ZVmKG6TppKYbFfFnxX+9xpdlcaGD2Vq0Y4
	ikiheGI5UBJ3kwhxjbA6mP4F3ulPE8+RHf2Du0cLBYtX5sJL4DInS8YG6768AsPDeTdVUM+Wn63vG
	pPTZVDKAy2hHqe/9FvaoPI2ybOoI3L5ZEiwA/O0bksU/NG2siITq7K9CFfbUiSde7EBUCCDysems4
	u3AWlfGqAL4PFqXcqnBrVz+M9HRVE4sGbTWxzZ36gWVSJzDBV2UyubM/BB3pwriV7BNppc4NEodRl
	w6+naqXxw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldWd0-00Djvf-CV; Mon, 03 May 2021 11:20:42 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldWav-00Djjh-51
 for barebox@desiato.infradead.org; Mon, 03 May 2021 11:19:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ggRTDXDGctlqGxrUY4Y2EUhsG5tEIaa3Z3bPQ+bhuT0=; b=ORaDGvuVSYd6/sWp5FTehs/Hu5
 31gFt9vroIsBnpP8JHoW07L1QHo+w5+2OVgqu44ezXQajmn47EOnHnRqbCzBhc7TJAkiETNIdYfce
 kCJ3aGY0p208Xrci5Mjcr19n9z/BVvXASxX8KHNwrkVdLHAlbFixcEWPtZwbloR8vBiD1OWUFurll
 i6JFh+zLWhhgKIqF/ybHHKv5m4ojIdgpxDM336EFxMtgbJdjCJxru1ds45cKaiedG2J1Bl1AFVuWJ
 jCW+ZOU1nhhNLwIGa7Eccr4h7p5tcooH9/vHTH9m9eO2iAzNERQraiAfdDm8wWGotehRYLweR0Au6
 967mDY8g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldWas-0030Tg-Ig
 for barebox@lists.infradead.org; Mon, 03 May 2021 11:18:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldWar-0004L8-BQ; Mon, 03 May 2021 13:18:29 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldWar-000109-1u; Mon, 03 May 2021 13:18:29 +0200
Date: Mon, 3 May 2021 13:18:29 +0200
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210503111829.GA19819@pengutronix.de>
References: <20210422110849.1556472-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210422110849.1556472-1-l.stach@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:18:16 up 74 days, 14:42, 100 users,  load average: 0.05, 0.15,
 0.24
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_041830_663221_B2C8F5E9 
X-CRM114-Status: GOOD (  25.41  )
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
Subject: Re: [PATCH] ARM: i.MX: demote reset reason print to debug level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Apr 22, 2021 at 01:08:49PM +0200, Lucas Stach wrote:
> The i.MX reset reason is not really helpful on its own, as it needs
> to be augmented with other information like the watchdog state to get
> the real system reset reason. As it stands this log is more confusing
> than answering any questions a user might have.
> 
> Demote the log to debug level to stop this confusion.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
> index 3d8c55c54ecd..bd7e9ac42320 100644
> --- a/arch/arm/mach-imx/imx.c
> +++ b/arch/arm/mach-imx/imx.c
> @@ -209,6 +209,6 @@ void imx_set_reset_reason(void __iomem *srsr,
>  
>  	reset_source_set_prinst(type, RESET_SOURCE_DEFAULT_PRIORITY, instance);
>  
> -	pr_info("i.MX reset reason %s (SRSR: 0x%08x)\n",
> -		reset_source_to_string(type), reg);
> +	pr_debug("i.MX reset reason %s (SRSR: 0x%08x)\n",
> +		 reset_source_to_string(type), reg);
>  }
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

