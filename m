Delivery-date: Fri, 15 Mar 2024 12:56:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl6Aj-007p41-2T
	for lore@lore.pengutronix.de;
	Fri, 15 Mar 2024 12:56:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl6Aj-0003Bs-6r
	for lore@pengutronix.de; Fri, 15 Mar 2024 12:56:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=086QlXNijWTau3szrQMtwAQzw+K1OtvhEs/PNRGkH/U=; b=YZdJrixUbLREBXmUgd6wzATOIv
	L4Xz25T5MUQcNf1E2gqpx/HacHv7WSliY8jjG9eb3sE3lii6HQlvmtnwUt7PKXbq7NvFKnCp8xvxs
	wGX3VLPjuKy5WvAzoh2xk7LbonnOnZfaemyGAfJDPkfg2kOf+EFYu9qA+Y7gvJDYUXm833V93ArwM
	43UFYpspGWLvVChNIKBTi4rt2lBavnoxnHM2A9SsNK8vW9VGwsSYtO8BU2PnvCMOEZUNv7qgyjuDd
	2k/4+3jNB3JvpiHD+KjxNGy0StCSt7cA4EtQiDesRv+v7w8x7g6PzOIANGi/rzK8AXKTtHxa98KED
	2MILZo8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl6AE-000000006Sw-2VtA;
	Fri, 15 Mar 2024 11:55:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl6AB-000000006Re-34MC
	for barebox@lists.infradead.org;
	Fri, 15 Mar 2024 11:55:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rl6A9-0002lT-UR; Fri, 15 Mar 2024 12:55:50 +0100
Message-ID: <13fc67d8-cd6d-4167-a6fd-61b4366d518a@pengutronix.de>
Date: Fri, 15 Mar 2024 12:55:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, barebox@lists.infradead.org
References: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-0-0386c27fe653@pengutronix.de>
 <20240314-v2024-02-0-topic-arasan-hs200-support-v2-11-0386c27fe653@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-11-0386c27fe653@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_045551_808603_31917F1C 
X-CRM114-Status: GOOD (  15.59  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 11/14] mci: mci-core: replace value with define
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 14.03.24 19:47, Steffen Trumtrar wrote:
> Use the newly introduced define for High Speed timing mode instead of
> just '1'.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/mci/mci-core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index e825c91c80..ebfd3e9fb8 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -683,7 +683,7 @@ static int mmc_change_freq(struct mci *mci)
>  
>  	cardtype = mci->ext_csd[EXT_CSD_DEVICE_TYPE] & EXT_CSD_CARD_TYPE_MASK;
>  
> -	err = mci_switch(mci, EXT_CSD_HS_TIMING, 1);
> +	err = mci_switch(mci, EXT_CSD_HS_TIMING, EXT_CSD_TIMING_HS);
>  
>  	if (err) {
>  		dev_dbg(&mci->dev, "MMC frequency changing failed: %d\n", err);
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



