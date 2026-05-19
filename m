Delivery-date: Tue, 19 May 2026 16:26:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPLP5-001WYN-02
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 16:26:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPLP4-0004Sy-Aj
	for lore@pengutronix.de; Tue, 19 May 2026 16:26:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EzbhViq/P3Xxsbd1hdAVHPMXhmTwymK1f6oeF4muBJ4=; b=whIYC4Liv5HR1L3xgDhU0Rer7p
	jo/GAcXKP0LWi1wA6UR1xqOaeiRDvg5s9pyPSjsLC0UHexSZUKXTzV2kJrrC/P9+FyosLpCj9DeUO
	5kyoN6IT8rF6IcZVCCZDKf9qdpD/OUKiR1W7M4ByoSYUMNZx6Y5D5heL8WmwdbkvBACRfI0Vt2rp8
	qIFPhetDi2OfU9lb3iG+DWPrqex8cRkIlxiRXqyUudJbnDT826yu0tl13bT2ZGhG350YzN6ofh3gA
	BzLGdKW8IK9sVNfj5FGAZWsv9P6P42sMRxVrfRs4wWK7MOBe+7e0W/2wezORsQl5RA3SbjBVrJwmz
	Ya8vQ6Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPLNv-00000001p3L-2beh;
	Tue, 19 May 2026 14:25:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPLNt-00000001p2U-16T6
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 14:25:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wPLNr-0004Hz-Pk; Tue, 19 May 2026 16:25:23 +0200
Message-ID: <93837ea2-3db2-41a8-852d-7e30f4bf96c3@pengutronix.de>
Date: Tue, 19 May 2026 16:25:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: Sascha Hauer <sascha@saschahauer.de>
References: <20260519141502.1427529-1-s.hauer@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260519141502.1427529-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_072525_306878_57AAB0ED 
X-CRM114-Status: GOOD (  17.87  )
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
Subject: Re: [PATCH 1/2] mci: sdhci: propagate tuning failures from
 sdhci_execute_tuning()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 5/19/26 4:15 PM, Sascha Hauer wrote:
> From: Sascha Hauer <sascha@saschahauer.de>
> 
> sdhci->tuning_err is set but never used. Drop it and return the tuning
> error directly from sdhci_execute_tuning(). With this we can actually
> return tuning errors instead of silently ignoring them.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/mci/sdhci.c | 2 +-
>  drivers/mci/sdhci.h | 1 -
>  2 files changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
> index f7172347e1..1b13df8583 100644
> --- a/drivers/mci/sdhci.c
> +++ b/drivers/mci/sdhci.c
> @@ -353,7 +353,7 @@ int sdhci_execute_tuning(struct sdhci *sdhci, u32 opcode)
>  
>  	sdhci_start_tuning(sdhci);
>  
> -	sdhci->tuning_err = __sdhci_execute_tuning(sdhci, opcode);
> +	err = __sdhci_execute_tuning(sdhci, opcode);
>  
>  	sdhci_end_tuning(sdhci);
>  out:
> diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
> index 8d21febd7a..4a326f9d84 100644
> --- a/drivers/mci/sdhci.h
> +++ b/drivers/mci/sdhci.h
> @@ -280,7 +280,6 @@ struct sdhci {
>  
>  	unsigned int		tuning_count;	/* Timer count for re-tuning */
>  	unsigned int		tuning_mode;	/* Re-tuning mode supported by host */
> -	unsigned int		tuning_err;	/* Error code for re-tuning */
>  #define SDHCI_TUNING_MODE_1	0
>  #define SDHCI_TUNING_MODE_2	1
>  #define SDHCI_TUNING_MODE_3	2

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



