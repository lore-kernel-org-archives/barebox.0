Delivery-date: Mon, 16 May 2022 10:38:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqWFa-00FNVU-4r
	for lore@lore.pengutronix.de; Mon, 16 May 2022 10:38:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqWFY-0004aS-VY
	for lore@pengutronix.de; Mon, 16 May 2022 10:38:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SqmB5aNA6OC/Fwgzl7LvP2i9+FsOIjPtQwPWT1e893c=; b=r/yyuziIawVUtE
	Y24BFzFdAKnAaHMvq5Awijy0I4V84FrZPfkpbw7dbZXgMLeJegUloU4uOueT4iNWPkgB9U6Qraixy
	rW3WdftUe1Qp1x1dHh8l1qztT8uJLJT7GYUvb91OE86ugcCJOdw6ImQxoVOyq/MOJUGTcL79gZiAd
	h5f6kejYJha+LzyWIPu4vWkeVO9VaPr1hUZ2xZjEsK2R898lnC2NyDafJFd8XQwa9Kg2vhbJrP+Xg
	7KKGHfvDGHXIRFpXw/hTv1/1phS6JobYFEEZ+AzF2AFhbECjuAorbPVHH5LdKyUbia+nPcpEzPdEa
	quwfKwpjFB18zOz0OkpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqWEF-006hCo-KQ; Mon, 16 May 2022 08:37:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqWE8-006hAv-C3
 for barebox@lists.infradead.org; Mon, 16 May 2022 08:37:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nqWE6-0004IW-WB; Mon, 16 May 2022 10:37:15 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nqWE6-0004NF-9A; Mon, 16 May 2022 10:37:14 +0200
Date: Mon, 16 May 2022 10:37:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Frank Wunderlich <linux@fw-web.de>
Cc: barebox@lists.infradead.org, Frank Wunderlich <frank-w@public-files.de>
Message-ID: <20220516083714.GK25578@pengutronix.de>
References: <20220514155609.8306-1-linux@fw-web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220514155609.8306-1-linux@fw-web.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:37:04 up 46 days, 21:06, 77 users,  load average: 0.11, 0.20, 0.36
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_013716_444538_24AA6F16 
X-CRM114-Status: GOOD (  26.57  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [urgent] ARM: rockchip: fix iodomain for r2pro V1.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, May 14, 2022 at 05:56:09PM +0200, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Current code sets vccio4 and vccio6 both to 1v8. R2Pro v1.0 needs 3v3
> setting on vccio4, else gmac0 (switch for lan-ports) will be damaged.
> 
> IO-domain is per default 3v3 so only vccio6 needs to be set to 1v8 and
> clear this bit in the 3v3 register.
> 
> Fixes: 8ba96c5942d6 ("ARM: rockchip: add BPI-R2-Pro V00 board")
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c | 9 ++++++---
>  arch/arm/mach-rockchip/include/mach/rockchip.h       | 3 +++
>  2 files changed, 9 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
> index 4c5b4751b3fb..2a6e0700233a 100644
> --- a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
> +++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
> @@ -17,10 +17,13 @@ static noinline void rk3568_start(void *fdt_blob_fixed_offset)
>  	void *fdt;
>  
>  	/*
> -	 * Enable vccio4 1.8V and vccio6 1.8V
> -	 * Needed for GMAC to work.
> +	 * set iodomain vccio6 to 1.8V needed for GMAC1 to work.
> +	 * vccio4 (gmac0/switch) needs to stay at 3v3 (default)
>  	 */
> -	writel(RK_SETBITS(0x50), 0xfdc20140);
> +	//set bit 6 in PMU_GRF_IO_VSEL0 for vccio6 1v8
> +	writel(RK_SETBITS(BIT(6)), PMU_GRF_IO_VSEL0);
> +	//clear bit 6 for 3v3 as it was set to 1v8
> +	writel(RK_CLRBITS(BIT(6)), PMU_GRF_IO_VSEL1);
>  
>  	fdt = fdt_blob_fixed_offset;
>  
> diff --git a/arch/arm/mach-rockchip/include/mach/rockchip.h b/arch/arm/mach-rockchip/include/mach/rockchip.h
> index f24db36f0161..ff8b1109f858 100644
> --- a/arch/arm/mach-rockchip/include/mach/rockchip.h
> +++ b/arch/arm/mach-rockchip/include/mach/rockchip.h
> @@ -23,6 +23,9 @@ static inline int rk3288_init(void)
>  
>  #ifdef CONFIG_ARCH_RK3568
>  int rk3568_init(void);
> +#define PMU_GRF		0xfdc20000
> +#define PMU_GRF_IO_VSEL0	(PMU_GRF + 0x140)
> +#define PMU_GRF_IO_VSEL1	(PMU_GRF + 0x144)
>  #else
>  static inline int rk3568_init(void)
>  {
> -- 
> 2.25.1
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

