Delivery-date: Thu, 07 May 2026 11:21:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKuuq-001upD-01
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 11:21:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKuuk-00070x-UV
	for lore@pengutronix.de; Thu, 07 May 2026 11:21:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=syJqTup49iJPOHWvYeSvf0OCyMf9HAAqbisA0AcZ8bk=; b=J9l+UzkIiOeBJUyfsDA/YEc+ch
	ka/kIeszUFf0zK7N/UsnEMQG8tcQ5fHGMl50fEhreufF/0YJGLQBuO245+GXzpXY2fcS0pxJR03/6
	j6wWEkn3ljX4qTejPYaxLx98k0LIxtB+SAlCz7aGcQN8DJ9wwYZRIxck9N37RCrXRf9NjdysQs4/v
	EYQGkkzqZR/CE68rr/wvOaOsGGyySJNhCE9GxVcGP1hbxwEMZShX7moDfwRula25igJLHJ1yjxXC2
	MsG3JEE6Dhapls2BYOWEw9PgzVr7sVwUQ7Q4K8PxPsSMl6fu/PbCnLRK/4tDezNDAiAWu6zXB2E9d
	XFtd7rLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKtqh-0000000378Y-2YOp;
	Thu, 07 May 2026 08:12:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKtqe-0000000377k-4A2J
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 08:12:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wKtqd-0002RH-HP; Thu, 07 May 2026 10:12:43 +0200
Message-ID: <22e3ae1c-3308-49e6-8430-e4225b4c850f@pengutronix.de>
Date: Thu, 7 May 2026 10:12:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20260507-rockchip-emmc-v1-0-5e8109e8059d@pengutronix.de>
 <20260507-rockchip-emmc-v1-4-5e8109e8059d@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260507-rockchip-emmc-v1-4-5e8109e8059d@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_011245_033666_A043E2A2 
X-CRM114-Status: GOOD (  16.07  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/6] mci: sdhci: rockchip: Update pre-change delay for
 rockchip platform
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 5/7/26 9:02 AM, Sascha Hauer wrote:
> This is an adoption from Linux commit b75a52b0dda35 ("mmc: sdhci-of-dwcmshc:
> Update DLL and pre-change delay for rockchip platform"). We already have
> most of it, this only adds the pre-change delay part.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/mci/rockchip-dwcmshc-sdhci.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
> index 2605a1368f..9ffd52e7e0 100644
> --- a/drivers/mci/rockchip-dwcmshc-sdhci.c
> +++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
> @@ -206,7 +206,7 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
>  	}
>  
>  	extra = 0x1 << 16 | /* tune clock stop en */
> -		0x2 << 17 | /* pre-change delay */
> +		0x3 << 17 | /* pre-change delay */
>  		0x3 << 19;  /* post-change delay */
>  	sdhci_write32(&host->sdhci, DWCMSHC_EMMC_ATCTRL, extra);
>  
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



