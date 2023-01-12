Delivery-date: Thu, 12 Jan 2023 14:15:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFxQK-009oiv-1I
	for lore@lore.pengutronix.de; Thu, 12 Jan 2023 14:15:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFxQI-0006m0-19
	for lore@pengutronix.de; Thu, 12 Jan 2023 14:15:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CFZA7Qor8YZvUWsXRFMDxKuu4izudC015cEICM6yL2E=; b=THEY9lmFFjjQDFVmndcQmQpeKD
	cGCh2grGie+UxGUg8kTbgj/5ZgtFyfxT4k6MsOh8v9a0+TjgWPTL3bGkiYHN2pzcjP88em6OHyibc
	hE9epzcuNL9l36TCuKoqZtISTSL+9bGTNDn90jA9tHFSpKiRdHzM3D54IEm5YIpmSzxgePmu/ZmMq
	R9MUrwa3+C6PRc8rzMnispbPokpGMANLbs3yBauahncHFhpdEavNeSkOkHIrD5ENK+mj+ydMqObi3
	IopEkz18WlP2P5fQTZ/zORxQ/S0lGGtUCttNOzEK3QQddNIrkkvxFfzJLChKf5uvTgbdKWNH9/O9V
	TtAFGyMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFxOv-00F6Jc-4Q; Thu, 12 Jan 2023 13:13:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFxOq-00F6Iv-Gf
	for barebox@lists.infradead.org; Thu, 12 Jan 2023 13:13:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFxOn-0006cx-CI; Thu, 12 Jan 2023 14:13:41 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFxOm-0005E0-T2; Thu, 12 Jan 2023 14:13:40 +0100
Date: Thu, 12 Jan 2023 14:13:40 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Johannes Schneider <johannes.schneider@leica-geosystems.com>
Message-ID: <20230112131340.GQ24755@pengutronix.de>
References: <20230112125528.2936698-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230112125528.2936698-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_051344_571416_F657949D 
X-CRM114-Status: GOOD (  18.22  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] firmware: Kconfig: unify whitespace used for indentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jan 12, 2023 at 01:55:28PM +0100, Ahmad Fatoum wrote:
> File has a mixture of tabs, spaces and even both in the same line.
> Use tabs throughout.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  firmware/Kconfig | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/firmware/Kconfig b/firmware/Kconfig
> index b466c2aea818..b0a120346909 100644
> --- a/firmware/Kconfig
> +++ b/firmware/Kconfig
> @@ -7,22 +7,22 @@ config EXTRA_FIRMWARE_DIR
>  	default "firmware"
>  
>  config FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> -       	bool
> +	bool
>  
>  config FIRMWARE_IMX_DDR4_PMU_TRAIN
> -       	bool
> +	bool
>  
>  config FIRMWARE_IMX8MM_ATF
> -        bool
> +	bool
>  
>  config FIRMWARE_IMX8MN_ATF
> -        bool
> +	bool
>  
>  config FIRMWARE_IMX8MP_ATF
> -        bool
> +	bool
>  
>  config FIRMWARE_IMX8MQ_ATF
> -        bool
> +	bool
>  
>  config FIRMWARE_CCBV2_OPTEE
>  	bool
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


