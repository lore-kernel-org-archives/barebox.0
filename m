Delivery-date: Mon, 11 Mar 2024 09:12:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjalk-000ldA-1A
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 09:12:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjalj-0006XD-QK
	for lore@pengutronix.de; Mon, 11 Mar 2024 09:12:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bFODvHp7Cxn4vAOY7+3sizlSVG+7KScEb0v0t40feiU=; b=gXe1l1Z+9OwhPxtlOi9IfbxmC/
	mFz6YznvOpjx216iJpnnqmUHAvqVUfJMszSaj88nHKNJscdvhLn2FH2wn09wJ3KaDAh19a34FMXqq
	yBtXYa7e+uczXtJL56V28G5+S4KMuFLauzoKUePEqwamxScZo2ndcqJXaZ4s0N1IUqLUb08MprJwS
	t83rg0CTsyK8Ddkf9R57uIGvShkrA8FTS5XxZPq9/MpO76/+bqjXYgxUNLCe2Vb/JzPZhTnXC6KZa
	mC0OBjGugLazky4kgDjY3IKvPn+ro/C+LZ3wp6L3sJAEuE18axFKB3X4CyuOAZnS9n9G+AEnemBzO
	vY3zwL2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjalE-00000000Zrj-0Obe;
	Mon, 11 Mar 2024 08:11:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjalA-00000000Zq8-1Czk
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 08:11:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rjal7-00069q-Iy; Mon, 11 Mar 2024 09:11:45 +0100
Message-ID: <b937fe23-deff-4dee-ad41-877a1f0c7658@pengutronix.de>
Date: Mon, 11 Mar 2024 09:11:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, barebox@lists.infradead.org
References: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
 <20240308-v2024-02-0-topic-arasan-hs200-support-v1-6-6d50c90485f3@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-6-6d50c90485f3@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_011148_369847_A3104629 
X-CRM114-Status: GOOD (  15.81  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 06/12] include: mci: sync mci_timing with linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 08.03.24 12:17, Steffen Trumtrar wrote:
> The timings are used to check if mci_host->timing is equal to one of
> this values. Linux uses a different numbering. Adapt that for compatability.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  include/mci.h | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/include/mci.h b/include/mci.h
> index 9c9d44881d..91460b7ef6 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -411,14 +411,16 @@ enum mci_timing {
>  	MMC_TIMING_LEGACY	= 0,
>  	MMC_TIMING_MMC_HS	= 1,
>  	MMC_TIMING_SD_HS	= 2,
> -	MMC_TIMING_UHS_SDR12	= MMC_TIMING_LEGACY,
> -	MMC_TIMING_UHS_SDR25	= MMC_TIMING_SD_HS,
> -	MMC_TIMING_UHS_SDR50	= 3,
> -	MMC_TIMING_UHS_SDR104	= 4,
> -	MMC_TIMING_UHS_DDR50	= 5,
> -	MMC_TIMING_MMC_HS200	= 6,
> -	MMC_TIMING_MMC_DDR52	= 7,
> -	MMC_TIMING_MMC_HS400	= 8,
> +	MMC_TIMING_UHS_SDR12	= 3,
> +	MMC_TIMING_UHS_SDR25	= 4,
> +	MMC_TIMING_UHS_SDR50	= 5,
> +	MMC_TIMING_UHS_SDR104	= 6,
> +	MMC_TIMING_UHS_DDR50	= 7,
> +	MMC_TIMING_MMC_DDR52	= 8,
> +	MMC_TIMING_MMC_HS200	= 9,
> +	MMC_TIMING_MMC_HS400	= 10,
> +	MMC_TIMING_SD_EXP	= 11,
> +	MMC_TIMING_SD_EXP_1_2V	= 12,
>  };
>  
>  static inline bool mci_timing_is_ddr(enum mci_timing timing)
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



