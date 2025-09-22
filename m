Delivery-date: Mon, 22 Sep 2025 18:45:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0jfl-0061Ss-2s
	for lore@lore.pengutronix.de;
	Mon, 22 Sep 2025 18:45:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0jfl-0005nH-6t
	for lore@pengutronix.de; Mon, 22 Sep 2025 18:45:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6KAIwOd74f3h5KvfxFICXCEUMdmV5sILI1HxKgOOtYg=; b=cvii92thkwH6dDrZNFVzvVC4D5
	JiJd9/GZPpBwkrI4TN1Tv2HNQT5pwRyBzeKsKDf5834WQrplXR/q1knP7ao9ronL6EhDaeZkO2K6d
	LwQ6zE4JdnTym1JgkgaK0FI6zkQg3/sLA1OgQA9gH/M2MD8j2VK/zcl/Ynm3+c4kRyb2h0v9eCY8U
	3sASViZqQ+M1wLPYm5JgJgzQxASBUYuqKDGaJaHVBIFUxuCS5EakBSvsYglzRk4xsuKdHECnwm1a9
	8p5uoZTTZxvTwnET8NSVtBo5HVSYJdm6PB9YitzGW5ULE/BoXezRSoW5WL/XJ1S0u+GuOYfFw+Q3j
	FrluwwfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0jf8-0000000B17A-30g2;
	Mon, 22 Sep 2025 16:45:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0jf5-0000000B16P-3knB
	for barebox@lists.infradead.org;
	Mon, 22 Sep 2025 16:45:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v0jf2-0005du-Se; Mon, 22 Sep 2025 18:45:08 +0200
Message-ID: <b0b1d755-8bf0-4200-8015-871a04b31e35@pengutronix.de>
Date: Mon, 22 Sep 2025 18:45:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20250922141613.2626411-1-a.fatoum@pengutronix.de>
From: Jonas Rebmann <jre@pengutronix.de>
Content-Language: en-US
In-Reply-To: <20250922141613.2626411-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_094511_944588_FCA3D5EC 
X-CRM114-Status: GOOD (  19.04  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] crypto: ecc: drop unused curve25519 definitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 2025-09-22 16:16, Ahmad Fatoum wrote:
> ecc_get_curve25519 is used in the kernel only to support the hisilicon
> hpre driver and can't be used for general purpose like the NIST curves
> defined in ecc_curve_defs.h.
> 
> In barebox, the function is fully unused, so drop it to prevent
> confusion.

Confusing indeed :)

> 
> Reported-by: Jonas Rebmann<jre@pengutronix.de>
> Signed-off-by: Ahmad Fatoum<a.fatoum@pengutronix.de>

Reviewed-by: Jonas Rebmann <jre@pengutronix.de>

Thanks,
Jonas

> ---
>   crypto/ecc.c               |  7 -------
>   crypto/ecc_curve_defs.h    | 18 ------------------
>   include/crypto/ecc_curve.h |  7 -------
>   3 files changed, 32 deletions(-)
> 
> diff --git a/crypto/ecc.c b/crypto/ecc.c
> index b90fe0e74809..c3d71627a64a 100644
> --- a/crypto/ecc.c
> +++ b/crypto/ecc.c
> @@ -38,13 +38,6 @@ typedef struct {
>   	u64 m_high;
>   } uint128_t;
>   
> -/* Returns curv25519 curve param */
> -const struct ecc_curve *ecc_get_curve25519(void)
> -{
> -	return &ecc_25519;
> -}
> -EXPORT_SYMBOL(ecc_get_curve25519);
> -
>   const struct ecc_curve *ecc_get_curve(unsigned int curve_id)
>   {
>   	switch (curve_id) {
> diff --git a/crypto/ecc_curve_defs.h b/crypto/ecc_curve_defs.h
> index 0ecade7d02f5..6867fe50e81b 100644
> --- a/crypto/ecc_curve_defs.h
> +++ b/crypto/ecc_curve_defs.h
> @@ -134,22 +134,4 @@ static struct ecc_curve nist_p521 = {
>   	.b = nist_p521_b
>   };
>   
> -/* curve25519 */
> -static u64 curve25519_g_x[] = { 0x0000000000000009, 0x0000000000000000,
> -				0x0000000000000000, 0x0000000000000000 };
> -static u64 curve25519_p[] = { 0xffffffffffffffed, 0xffffffffffffffff,
> -				0xffffffffffffffff, 0x7fffffffffffffff };
> -static u64 curve25519_a[] = { 0x000000000001DB41, 0x0000000000000000,
> -				0x0000000000000000, 0x0000000000000000 };
> -static const struct ecc_curve ecc_25519 = {
> -	.name = "curve25519",
> -	.nbits = 255,
> -	.g = {
> -		.x = curve25519_g_x,
> -		.ndigits = 4,
> -	},
> -	.p = curve25519_p,
> -	.a = curve25519_a,
> -};
> -
>   #endif
> diff --git a/include/crypto/ecc_curve.h b/include/crypto/ecc_curve.h
> index 7d90c5e82266..4ffb9fd8d228 100644
> --- a/include/crypto/ecc_curve.h
> +++ b/include/crypto/ecc_curve.h
> @@ -52,11 +52,4 @@ struct ecc_curve {
>    */
>   const struct ecc_curve *ecc_get_curve(unsigned int curve_id);
>   
> -/**
> - * ecc_get_curve25519() - get curve25519 curve;
> - *
> - * Returns curve25519
> - */
> -const struct ecc_curve *ecc_get_curve25519(void);
> -
>   #endif
> -- 2.47.3
> 

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |



