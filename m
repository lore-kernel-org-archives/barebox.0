Delivery-date: Mon, 15 Dec 2025 13:39:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV7rN-00BkCU-2Q
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 13:39:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV7rN-000778-6H
	for lore@pengutronix.de; Mon, 15 Dec 2025 13:39:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ov5S6lPJXkkaOaJFOLZAUQiI6hLRIA1KlUAdgDVRqHU=; b=j0Gl3zhXlojraqH+0cpKxhVYQB
	VteiKeFqClhr2UaxGbcZHKr0HDJAkD6GULzgkjHnEKKeaUXD+KnVZ6BUnEni1Cis4Kovty4ooiCdA
	gfhP1deGUQKPguLKw1otmQ9sGpEJTkqdfA1VtZllMQnQmiVE0ZCeBsCkGQEStkj87WeSmoOMyG33a
	y2Yc7OH9kdRUBU3tjCiG8tPWuNHlPB6iwN8GnHnQTi6PA4xex2ZiP9i/14tYN5h2IJsOfin//eRju
	06cD7usA5xe9A1hVzkVdayS6cbk8RYKSn/xDO1IAzkVBNmCONjKh9lLvlhVn/2LX0QButtObEoIVC
	6zBQfAAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV7qu-00000003dk2-2RvN;
	Mon, 15 Dec 2025 12:39:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV7qr-00000003dj5-3gmK
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 12:38:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV7qq-0006yc-7h; Mon, 15 Dec 2025 13:38:56 +0100
Message-ID: <c75631cd-dfbc-4654-82e4-dfb6c2720826@pengutronix.de>
Date: Mon, 15 Dec 2025 13:38:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251203-efi-partition-refresh-v1-0-f0b6e79b5fa0@pengutronix.de>
 <20251203-efi-partition-refresh-v1-4-f0b6e79b5fa0@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251203-efi-partition-refresh-v1-4-f0b6e79b5fa0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_043857_969638_FBF7B974 
X-CRM114-Status: GOOD (  21.55  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/6] partitions: gpt: write inactive GPT first
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 12/3/25 4:19 PM, Sascha Hauer wrote:
> There are two GPT partition tables on a device, the primary at the
> beginning of a device and the alternate at the end of the device.
> 
> For the sake of being more robust against power failures let's write the
> inactive GPT first and the currently active one afterwards. This always
> leaves us a usable GPT on the device when updating the partition table.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>


> ---
>  common/partitions/efi.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/common/partitions/efi.c b/common/partitions/efi.c
> index 8da62acf36646b62ff2fac25673adbc48650d299..1766f0123353d502065673d02e983e6cdd51b9af 100644
> --- a/common/partitions/efi.c
> +++ b/common/partitions/efi.c
> @@ -27,6 +27,8 @@ struct efi_partition_desc {
>  	gpt_header *gpt;
>  	gpt_entry *ptes;
>  	struct param_d *param_guid;
> +	bool good_pgpt;
> +	bool good_agpt;
>  };
>  
>  struct efi_partition {
> @@ -424,6 +426,9 @@ static int find_valid_gpt(struct efi_partition_desc *epd, void *buf)
>  	if (IS_ENABLED(CONFIG_PARTITION_DISK_EFI_GPT_COMPARE))
>  		compare_gpts(blk->dev, pgpt, agpt, lastlba);
>  
> +	epd->good_pgpt = good_pgpt;
> +	epd->good_agpt = good_agpt;
> +
>  	/* The good cases */
>  	if (good_pgpt) {
>  		epd->gpt  = pgpt;
> @@ -810,11 +815,11 @@ static __maybe_unused int efi_partition_write(struct partition_desc *pd)
>  	if (ret)
>  		return ret;
>  
> -	ret = __efi_partition_write(epd, true);
> +	ret = __efi_partition_write(epd, !epd->good_pgpt);
>  	if (ret)
>  		goto err_block_write;
>  
> -	ret = __efi_partition_write(epd, false);
> +	ret = __efi_partition_write(epd, epd->good_pgpt);
>  	if (ret)
>  		goto err_block_write;
>  
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



