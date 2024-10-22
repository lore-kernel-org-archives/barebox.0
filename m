Delivery-date: Tue, 22 Oct 2024 19:35:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3Imi-007Y5W-2X
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 19:35:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3Imi-0005mV-7k
	for lore@pengutronix.de; Tue, 22 Oct 2024 19:35:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zIMued17d9XTie4O7arvByFnJZgfw+lSbgTEkvO0Bas=; b=lV9IcLES8Wm9NmPd1rH2f1kr4M
	RSk5qTxhbQt3+aTRUJF4XKHlQzNAwmb1BCYVgRgyWUT/i74saAyDYaJ0V19JKvPeWNsVEtoq0qdrw
	E3J/LxG8YzdR7w7NPWWlLakf+0Szt+HZD0WcGQVVJgGS0v33xdqYqBPpkKHRLCJ4vZ/WxKJNxyZsV
	7hF59jwt/fLYpvOWyrNLL6+E7nWqYchOoVVlkVavHSh27N+5NZ4DLQq/eUAdp/YjBLjg42jPfgO8+
	RNqbMBu3er/bStwrsmOJdzvafc6S5CbwWVQaSgjKeDl/MPzJAfM4KASRZNNN3FgcBgkNn37FEtan2
	g99KR2lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Im5-0000000BfYV-47iI;
	Tue, 22 Oct 2024 17:34:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3ILS-0000000Bb1J-2CHZ
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 17:07:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t3ILQ-00040V-8N; Tue, 22 Oct 2024 19:06:56 +0200
Message-ID: <4520a624-e247-4cab-a397-efde7cd1d611@pengutronix.de>
Date: Tue, 22 Oct 2024 19:06:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>,
 s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20241022162726.166093-1-abdelrahmanyossef12@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241022162726.166093-1-abdelrahmanyossef12@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_100658_595397_F0E26F8D 
X-CRM114-Status: GOOD (  15.05  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] partitions: efi: fix GPT header size exceeding allocation
 size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Abdelrahman,

Thanks for your patch.

On 22.10.24 18:27, Abdelrahman Youssef wrote:
> The buffer gets allocated with the block device of size SECTOR_SIZE, but an

I guess you meant to say here "with the length of the block device's sector size".

> ill-formed GPT header_size may exceed it resulting in heap-overflow.

Nice catch. Been there since nearly 10 years too:

Fixes: 760689e5ccf1 ("disk: partitions: add EFI GUID Partition Table")

> Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

> ---
>  common/partitions/efi.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/common/partitions/efi.c b/common/partitions/efi.c
> index 829360da6e..9a04b7014d 100644
> --- a/common/partitions/efi.c
> +++ b/common/partitions/efi.c
> @@ -173,6 +173,9 @@ static int is_gpt_valid(struct block_device *blk, u64 lba,
>  		goto fail;
>  	}
>  
> +	if (le32_to_cpu((*gpt)->header_size) > bdev_logical_block_size(blk))
> +		goto fail;
> +
>  	/* Check the GUID Partition Table CRC */
>  	origcrc = le32_to_cpu((*gpt)->header_crc32);
>  	(*gpt)->header_crc32 = 0;


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


