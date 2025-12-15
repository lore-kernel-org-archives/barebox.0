Delivery-date: Mon, 15 Dec 2025 13:41:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV7tk-00BkES-2s
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 13:41:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV7tj-0007Os-I0
	for lore@pengutronix.de; Mon, 15 Dec 2025 13:41:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5b0yIWikwDHtOYmvfjLv8vD1vyaoLhbnOJ2//IFQA94=; b=4yvqJZxlKH1bUX6JJEOLU7bozz
	pxuXbKEOsbkgyl5ahHuJPimPPmm/fo4uTPn9EDBqVWYf/HpwGlOwzIRtiA5pr7/kzj70it0Wfr7LN
	HTsbIAn4vaCrUBKSz6toH/zD3pLKFmzhlWMvWQ3B3xanLizv0CBVEuc6WUIxAm6g3rkBuLyoKWVqu
	6gv2UNvEgL0qZLF1q10vPDv6x7ZswuXksqf76DsgRsLAUHmD1A7I22upxE4vrtTVFadQCirVQWVFe
	hlmpqEMMurkKdgag7MtCRlGcbJxLLth07vLdlx6M5EKt4DfFbEcKoS7Js+mOKLRmyRBy7tUcZJwln
	t8yH4eNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV7tI-00000003dx7-2Lfa;
	Mon, 15 Dec 2025 12:41:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV7tF-00000003dwa-2HiV
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 12:41:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV7tE-0007Jh-01; Mon, 15 Dec 2025 13:41:24 +0100
Message-ID: <2e569eaf-3747-462c-bf5b-3df7f79ed3af@pengutronix.de>
Date: Mon, 15 Dec 2025 13:41:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251203-efi-partition-refresh-v1-0-f0b6e79b5fa0@pengutronix.de>
 <20251203-efi-partition-refresh-v1-5-f0b6e79b5fa0@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251203-efi-partition-refresh-v1-5-f0b6e79b5fa0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_044125_610429_F82DF519 
X-CRM114-Status: GOOD (  30.52  )
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
Subject: Re: [PATCH 5/6] partitions: gpt: fix GPT restauration from alternate
 GPT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 12/3/25 4:19 PM, Sascha Hauer wrote:
> We read GPT headers from the device and store it in epd->gpt. When
> writing a partition table we assume that epd->gpt is read from
> the primary GPT header: We only adjust the partition_entry_lba for
> the alternate header. This assumption is wrong, in case the primary
> GPT header is corrupted epd->gpt could also come from the alternate
> GPT header. When this happens we have to set partition_entry_lba
> correctly for the primary GPT header as well.
> 
> Unfortunately this is not trivial. While we could just use LBA2 for
> the partition entries, this might overwrite a bootloader stored there (see
> [1]). Instead the following logic is applied:
> 
> When the primary GPT header was good when reading it, keep the partition
> table entries where they are. If not, take the first usable LBA and
> substract the size we need for the partition entries.
> 
> [1] https://lore.barebox.org/20250602-createnv-v1-2-c3239ff875d5@pengutronix.de
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/partitions/efi.c | 31 ++++++++++++++++++++++++++++++-
>  1 file changed, 30 insertions(+), 1 deletion(-)
> 
> diff --git a/common/partitions/efi.c b/common/partitions/efi.c
> index 1766f0123353d502065673d02e983e6cdd51b9af..0fd60c9fd0442c3c571c685a5b0b41b8f33db7bd 100644
> --- a/common/partitions/efi.c
> +++ b/common/partitions/efi.c
> @@ -762,7 +762,36 @@ static int __efi_partition_write(struct efi_partition_desc *epd, bool primary)
>  
>  	if (primary) {
>  		my_lba = 1;
> -		partition_entry_lba = le64_to_cpu(gpt->partition_entry_lba);
> +
> +		if (epd->good_pgpt) {
> +			/*
> +			 * The primary GPT was good, we can just leave the partition
> +			 * entries where they are.
> +			 */
> +			partition_entry_lba = le64_to_cpu(gpt->partition_entry_lba);
> +		} else {
> +			/*
> +			 * The primary GPT was bad. When this is not a new partition
> +			 * table, but instead read from the disk, the header is from the
> +			 * alternate GPT, meaning the partition_entry_lba also points
> +			 * to the alternate partitions. We have to find a place for the
> +			 * primary partition entries in this case. We could store them
> +			 * right after the GPT header, but this might destroy a bootloader
> +			 * stored there. Instead, substract the size we need from the
> +			 * first usable LBA.
> +			 */
> +			uint64_t first_usable_lba;
> +
> +			first_usable_lba = le64_to_cpu(gpt->first_usable_lba);
> +
> +			if (first_usable_lba < 32 + 1 + 1) {
> +				pr_err("First usable LBA is %llu which doesn't leave "
> +				       "enough space for partition entries\n",
> +					first_usable_lba);
> +				return -EINVAL;
> +			}
> +			partition_entry_lba = first_usable_lba - 32;
> +		}
>  		gpt->alternate_lba = cpu_to_le64(last_lba(blk));
>  	} else {
>  		my_lba = last_lba(blk);
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



