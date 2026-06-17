Delivery-date: Wed, 17 Jun 2026 12:53:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZntQ-006suH-2N
	for lore@lore.pengutronix.de;
	Wed, 17 Jun 2026 12:53:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZntP-0008O9-W7
	for lore@pengutronix.de; Wed, 17 Jun 2026 12:53:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7hyaKMvdKSNkgxqumbm+9x6RKFzbZPW8Sekv5DY9J10=; b=g6hwphMqYjs/8otdJn+Mgg5Qlu
	uW2Burt6mQv85/1tRkj5yMlkeady3JnkUtVgs5iwsYDRIAGpisuLb/f2ddngBA0h4sgQnWSDtOTJ9
	zBmYIJNcRCgbgEDpsAEARoLEgrIvt9K7YomDRxKYQSZLilDMMbjA66VKnU+uUPIA/9a5Ciz5Aay4y
	PFUjFb1ZDk9oLQSYqkT9DbGOvQMSh2td9S9ZlKe6lXj2A0QozI8UZCBSfHTqPkCrJuFkz3wLHAklp
	rN3ZtcJWl83DgFm7NLVOewK5MacNJ5Fx0OMbGBMb9N22tHJA3MbSveHz1ySGmUhUVX035rFmG5WK7
	s0meQ9DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZnsM-0000000HBMe-3Zq7;
	Wed, 17 Jun 2026 10:52:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZnsJ-0000000HBMJ-2mQO
	for barebox@lists.infradead.org;
	Wed, 17 Jun 2026 10:52:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wZnsG-0007qP-AB; Wed, 17 Jun 2026 12:52:00 +0200
Message-ID: <a02281e5-7a8c-46ee-b9e4-17f541703767@pengutronix.de>
Date: Wed, 17 Jun 2026 12:51:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
 barebox@lists.infradead.org
References: <20260617103448.1563040-1-johannes.schneider@leica-geosystems.com>
 <20260617103448.1563040-2-johannes.schneider@leica-geosystems.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260617103448.1563040-2-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260617_035203_700057_AF343B65 
X-CRM114-Status: GOOD (  17.20  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 2/2] commands: mmc_extcsd: fix enhanced-area / GPP size
 display arithmetic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 6/17/26 12:34 PM, Johannes Schneider wrote:
> Per JEDEC eMMC 5.1 (JESD84-B51, February 2015), the displayed byte
> size for the enhanced user data area and for each general-purpose
> partition is the product of the SIZE_MULT bytes, the write-protect
> group size, the erase group size, and 512 KiB:
> 
>   §7.4.90 ENH_SIZE_MULT [142:140] (p. 219):
>     Enhanced User Data Area x Size =
>        (ENH_SIZE_MULT_2 * 2^16 + ENH_SIZE_MULT_1 * 2^8
>         + ENH_SIZE_MULT_0 * 2^0)
>        * HC_WP_GRP_SIZE * HC_ERASE_GRP_SIZE * 512 kBytes
> 
>   §7.4.89 GP_SIZE_MULT_GP0..GP3 [154:143] (p. 218):
>     General_Purpose_Partition_X Size =
>        (GP_SIZE_MULT_X_2 * 2^16 + GP_SIZE_MULT_X_1 * 2^8
>         + GP_SIZE_MULT_X_0 * 2^0)
>        * HC_WP_GRP_SIZE * HC_ERASE_GRP_SIZE * 512 kBytes
> 
> The displayed-size code in mmc_extcsd.c for ENH_SIZE_MULT and for
> all four GP_SIZE_MULT[0..3] cases instead *added* HC_WP_GRP_SIZE
> and HC_ERASE_GRP_SIZE before multiplying by the SIZE_MULT and
> SZ_512K factors, producing nonsensical values. The neighbouring
> MAX_ENH_SIZE_MULT case already uses the correct multiplication.
> Bring the five buggy cases in line.
> 
> Assisted-by: Claude:claude-opus-4-7
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  commands/mmc_extcsd.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/commands/mmc_extcsd.c b/commands/mmc_extcsd.c
> index e7b0fd82ee..b898bd8515 100644
> --- a/commands/mmc_extcsd.c
> +++ b/commands/mmc_extcsd.c
> @@ -1342,7 +1342,7 @@ static int print_field(u8 *reg, int index)
>  
>  	case EXT_CSD_ENH_SIZE_MULT:
>  		tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
> -		tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
> +		tmp = tmp * get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
>  		tmp64 *= tmp;
>  		tmp64 *= SZ_512K;
>  		printf("\tEnhanced User Data Area %i Size: %llu B\n",
> @@ -1351,7 +1351,7 @@ static int print_field(u8 *reg, int index)
>  
>  	case EXT_CSD_GP_SIZE_MULT3:
>  		tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
> -		tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
> +		tmp = tmp * get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
>  		tmp64 *= tmp;
>  		tmp64 *= SZ_512K;
>  		printf("\tGeneral_Purpose_Partition_3 Size: %llu B\n", tmp64);
> @@ -1359,7 +1359,7 @@ static int print_field(u8 *reg, int index)
>  
>  	case EXT_CSD_GP_SIZE_MULT2:
>  		tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
> -		tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
> +		tmp = tmp * get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
>  		tmp64 *= tmp;
>  		tmp64 *= SZ_512K;
>  		printf("\tGeneral_Purpose_Partition_2 Size: %llu B\n", tmp64);
> @@ -1367,7 +1367,7 @@ static int print_field(u8 *reg, int index)
>  
>  	case EXT_CSD_GP_SIZE_MULT1:
>  		tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
> -		tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
> +		tmp = tmp * get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
>  		tmp64 *= tmp;
>  		tmp64 *= SZ_512K;
>  		printf("\tGeneral_Purpose_Partition_1 Size: %llu B\n", tmp64);
> @@ -1375,7 +1375,7 @@ static int print_field(u8 *reg, int index)
>  
>  	case EXT_CSD_GP_SIZE_MULT0:
>  		tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
> -		tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
> +		tmp = tmp * get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
>  		tmp64 *= tmp;
>  		tmp64 *= SZ_512K;
>  		printf("\tGeneral_Purpose_Partition_0 Size: %llu B\n", tmp64);

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



