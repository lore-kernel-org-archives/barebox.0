Delivery-date: Mon, 11 May 2026 14:50:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMQ60-000Yaf-1a
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 14:50:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMQ5v-0000IT-O6
	for lore@pengutronix.de; Mon, 11 May 2026 14:50:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:Cc:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WqDgQBOJ+T6okZHRsOWfJtZYiHCA3b4n78Xs0KZtakk=; b=jkofdd1Y+KpoP9veH0oVkyT8kf
	aOhuYPdGjAoZpbOM/pZmnEp45hcjqjBEZcqf/6INTuKRK9urIX2J7m2YTaKbTZbjIeIimLDS4iZat
	3R9jd1+z/pBlYDwYN2eLhXzeO+3Oq5S64pNUMKugjq08GY+eCW7Ni/AUmHDTLqwkkn7H3nFQdKjbI
	HurYCldG897fM7EXrSfrmgokO2PqCiE1J35UJTvnu/h9XlouPTyFWum73L0dvigTjMGaNtgeelWC5
	GyB9EE+e2xXJ7lqlnbhKgF/0/6tCrodov1EWelegAA6WOYobUUacGxaWe4Ap/mF3kvtWeOdOIVhFG
	YEVzLffA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMQ4b-0000000DcbT-3dtY;
	Mon, 11 May 2026 12:49:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMQ4X-0000000Dca1-2vKx
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 12:49:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wMQ4T-0008Ok-GR; Mon, 11 May 2026 14:49:17 +0200
Message-ID: <ac277f5b-8a1b-4325-bf3e-5ed73d9733ab@pengutronix.de>
Date: Mon, 11 May 2026 14:49:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
 <20260511-rockchip-emmc-hs400-v1-2-515fb6d20e12@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Michael Tretter <m.tretter@pengutronix.de>,
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20260511-rockchip-emmc-hs400-v1-2-515fb6d20e12@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_054921_783813_4857970C 
X-CRM114-Status: GOOD (  17.90  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 02/10] mci: mmc_send_tuning: actually point data.dest at
 the buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 5/11/26 2:07 PM, Sascha Hauer wrote:
> mmc_send_tuning() allocates a tuning-block-sized buffer with calloc()
> but never assigns it to data.dest, so the host transfers the tuning
> block to wherever data.dest happened to be (uninitialised — typically
> NULL). The subsequent memcmp against the expected pattern then always
> mismatches, so any caller would observe -EIO regardless of the
> controller actually receiving the block correctly.
> 
> Fix by setting data.dest to the buffer.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

But ouch. Apparently, I had added this, but it remained unused until
Steffen added cadence-sdhci as first user.

I recall there were issues with that driver, so Cc'ing Steffen and
Michael to make them aware of this change.

Cheers,
Ahmad

> ---
>  drivers/mci/mci-core.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 33934a6a35..23b9117869 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1684,6 +1684,7 @@ int mmc_send_tuning(struct mci *mci, u32 opcode)
>  	mci_setup_cmd(&cmd, opcode, 0, MMC_RSP_R1 | MMC_CMD_ADTC);
>  
>  	cmd.data = xzalloc(sizeof(struct mci_data));
> +	cmd.data->dest = data_buf;
>  	cmd.data->blocksize = size;
>  	cmd.data->blocks = 1;
>  	cmd.data->flags = MMC_DATA_READ;
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



