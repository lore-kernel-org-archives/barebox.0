Delivery-date: Wed, 10 Jan 2024 10:18:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNUj0-00BR2y-1K
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 10:18:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNUiz-0008C0-Pg
	for lore@pengutronix.de; Wed, 10 Jan 2024 10:18:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=53VZREY4VHwQ/Dw7oaW+GXMf9qm7gD8h8z3SkG07/jo=; b=TOASuSUodjpowGaRRdDTk7i9h3
	6rweNqgxXCcL1Bzqn6HN6mrhWeYIXfRXOi9ZU0+RFyi9DEy76i5AClUn1b1ltL2O6YWqR0M+OOja3
	FUqeGCMvteeB2vTGp9ZWXPPrRxrReoJYQab3bV8Qe+GKATMKdFLxvKuSSoZxEFTN5gquspvRs/76E
	Kp8+3m+Jd+CTPBg5UW6lZhd69qFniBSd/8hFQ4daXkXaaLQ9fSrm/LIDkjFegXgFWAXKFJK7TzABB
	7CPJRbfWPUKlmhWIXzXzUa+BKuVLNjSaxh4KdpCoaocGKizKtgPgunQ9a0ZxGQgLtOZl4nOvFF4T0
	UeeePEKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNUhv-00ArT6-12;
	Wed, 10 Jan 2024 09:17:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNUhr-00ArRk-2U
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 09:17:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNUhq-00080W-KN
	for barebox@lists.infradead.org; Wed, 10 Jan 2024 10:17:02 +0100
Message-ID: <812239a7-55ae-433a-a14b-3e557342d2fc@pengutronix.de>
Date: Wed, 10 Jan 2024 10:17:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20240110091538.3130283-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240110091538.3130283-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_011703_818790_4DE77BEF 
X-CRM114-Status: GOOD (  24.52  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fixup! pblimage: pblimage: Add LS1028a support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Title is wrong (only a single pblimage: ), but shouldn't matter anyway,
as commit should be squashed.

On 10.01.24 10:15, Ahmad Fatoum wrote:
> soc_index is not only used for comparisons, but also as index into the
> socs[] array. However, the array starts with SOC_TYPE_LS1046A and the
> enum with SOC_TYPE_INVALID leading to socs[SOC_TYPE_LS1046A].soc
> == SOC_TYPE_LS1028A and socs[SOC_TYPE_LS1028A] to overflow the array.
> 
> This broke LS1046A boot and LS1028A seems to have only worked by chance,
> because the memory after socs[] happened to be zeroed.
> 
> Fix this by reordering the enum and while at it remove the redundancy in
> having both the index and the soc member be the same value.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/pblimage.c | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)
> 
> diff --git a/scripts/pblimage.c b/scripts/pblimage.c
> index 8cb473d5bcf2..ef09b0f96084 100644
> --- a/scripts/pblimage.c
> +++ b/scripts/pblimage.c
> @@ -57,30 +57,28 @@ static uint32_t pbi_crc_cmd1;
>  static uint32_t pbi_crc_cmd2;
>  
>  enum soc_type {
> -	SOC_TYPE_INVALID,
> +	SOC_TYPE_INVALID = -1,
>  	SOC_TYPE_LS1046A,
>  	SOC_TYPE_LS1028A,
>  };
>  
>  struct soc_type_entry {
>  	const char *name;
> -	enum soc_type soc;
>  	bool big_endian;
>  };
>  
>  static struct soc_type_entry socs[] = {
> -	{
> +	[SOC_TYPE_LS1046A] = {
>  		.name = "ls1046a",
> -		.soc = SOC_TYPE_LS1046A,
>  		.big_endian = true,
> -	}, {
> +	},
> +	[SOC_TYPE_LS1028A] = {
>  		.name = "ls1028a",
> -		.soc = SOC_TYPE_LS1028A,
>  		.big_endian = false,
>  	},
>  };
>  
> -static enum soc_type soc_type;
> +static enum soc_type soc_type = SOC_TYPE_INVALID;
>  
>  static char *rcwfile;
>  static char *pbifile;
> @@ -413,7 +411,7 @@ int main(int argc, char *argv[])
>  
>  	for (i = 0; i < ARRAY_SIZE(socs); i++) {
>  		if (!strcmp(socs[i].name, cputypestr)) {
> -			soc_type = socs[i].soc;
> +			soc_type = i;
>  			break;
>  		}
>  	}

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



