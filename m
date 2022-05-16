Delivery-date: Mon, 16 May 2022 10:10:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqVoC-00FLlU-CK
	for lore@lore.pengutronix.de; Mon, 16 May 2022 10:10:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqVoB-00019z-3H
	for lore@pengutronix.de; Mon, 16 May 2022 10:10:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+wT4zcSXKltojMgQOrRPPZ1FbVNMj+LjuhEoaWdmE+s=; b=ltD0Lw6JpdzJiB8qUPRit+ts/P
	VvbjZTN6yoT2RZnIsVune1OlRNK31SyfOkO3HRUYboaYzmccRAvyO8eom88Coqqowwl6gTmJZjp7W
	Rey5K4UJg6gLjZazMR4nwC+r0B86FCkQE5T8ZCUtogBIFf2uAJvWqryiFzlKybdn1OCeMS19FYy93
	pVBM1xpFKsoB3KmONQT6+qRDMA9kkuV7Zv5HNZ/NSlwCPdSaymg5Qbxsyl+Zvg8e9S8cAIwsGRLap
	CvTMuvlH7W5iNVcsdP0LXUhlrOXnLf1psqSwTbzo0OL5Kk+5O/4fpOIZ4lJFokGzF+lKyGcEHAthj
	7tB4D3VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqVmy-006bIz-Et; Mon, 16 May 2022 08:09:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqVmt-006bIN-7R
 for barebox@lists.infradead.org; Mon, 16 May 2022 08:09:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nqVms-0000zk-0z; Mon, 16 May 2022 10:09:06 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nqVmn-00024h-Qy; Mon, 16 May 2022 10:09:01 +0200
Date: Mon, 16 May 2022 10:09:01 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
 Joacim Zetterling <joacim.zetterling@westermo.com>
Message-ID: <20220516080901.GH25578@pengutronix.de>
References: <20220513135352.2061026-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220513135352.2061026-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:08:51 up 46 days, 20:38, 76 users,  load average: 0.18, 0.41, 0.41
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_010907_308850_E74C78D1 
X-CRM114-Status: GOOD (  26.07  )
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
Subject: Re: [PATCH v2] ARM: i.MX7: esdctl: fix out-of-bounds read on memory
 size calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 13, 2022 at 03:53:52PM +0200, Ahmad Fatoum wrote:
> addrmap[] has 9 elements on i.MX8M platforms and 7 elements on i.MX7.
> Checking unconditionally for addrmap[8] is thus out-of-bounds on the
> i.MX7. Get both arrays to the same size to fix this. This is ok,
> because an addrmap of 0 is a no-op.
> 
> Fixes: 42d45ef380c5 ("ARM: imx: Add imx8 support for SDRAM with two or more bank groups")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - Just align array sizes to reduce surprise. No functional change
>  arch/arm/mach-imx/esdctl.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> index d3dbfff423da..c1ed2f0b2fd4 100644
> --- a/arch/arm/mach-imx/esdctl.c
> +++ b/arch/arm/mach-imx/esdctl.c
> @@ -350,6 +350,8 @@ static int vf610_ddrmc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
>  #define DDRC_ADDRMAP8_BG_B1			GENMASK(13,  8)
>  #define DDRC_ADDRMAP8_BG_B0			GENMASK(4,  0)
>  
> +#define DDRC_ADDRMAP_LENGTH			9
> +
>  static unsigned int
>  imx_ddrc_count_bits(unsigned int bits, const u8 config[],
>  		     unsigned int config_num)
> @@ -365,7 +367,7 @@ imx_ddrc_count_bits(unsigned int bits, const u8 config[],
>  }
>  
>  static resource_size_t
> -imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
> +imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[DDRC_ADDRMAP_LENGTH],
>  		    u8 col_max, const u8 col_b[], unsigned int col_b_num,
>  		    u8 row_max, const u8 row_b[], unsigned int row_b_num,
>  		    bool reduced_adress_space, bool is_imx8)
> @@ -446,7 +448,7 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
>  
>  static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc)
>  {
> -	const u32 addrmap[] = {
> +	const u32 addrmap[DDRC_ADDRMAP_LENGTH] = {
>  		readl(ddrc + DDRC_ADDRMAP(0)),
>  		readl(ddrc + DDRC_ADDRMAP(1)),
>  		readl(ddrc + DDRC_ADDRMAP(2)),
> @@ -498,7 +500,7 @@ static int imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
>  
>  static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
>  {
> -	const u32 addrmap[] = {
> +	const u32 addrmap[DDRC_ADDRMAP_LENGTH] = {
>  		readl(ddrc + DDRC_ADDRMAP(0)),
>  		readl(ddrc + DDRC_ADDRMAP(1)),
>  		readl(ddrc + DDRC_ADDRMAP(2)),
> -- 
> 2.30.2
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

