Delivery-date: Wed, 14 Jan 2026 13:26:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzwp-001EPq-0r
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:26:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzwo-0003pD-7K
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:26:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vi/6wZK7snIgt5/r28ppwLeybEmm3eUmn/X+9SnqGDY=; b=1yL+8MZg2q9g7YqLx9iCLstoIE
	Mva0H7CS7INoYI+Hot+phj2TeK+i5b9HJpE7nEi/NPkh47sR8cOU1N1Z0mx/Hb5V/rDEBZqtTRJ+u
	WjqJ/wEVEtFJ2XNZyTNRfXyPg6rlpPcxJcItZiKk+4J94QF33oqTVYjc3BOtk5yQYyTlIyw9/5xJh
	zkFOuY1VoAEsaznOQfEEP0yrmVocHEFxJ+Wc49MTzZmyc++f6lXsUpLJ6Gc1AadXMS4vwLr+afJ4w
	7UJBj26BhMX0YHLrdr5s6xZHzCBIALGGFplAqredax7+sW1pl0RN/uJKBfYpJRv5gIAUmvGCRFPKN
	wpbw90CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzwL-00000009ATh-3N0s;
	Wed, 14 Jan 2026 12:25:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzwJ-00000009ASv-2QJr
	for barebox@bombadil.infradead.org;
	Wed, 14 Jan 2026 12:25:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=vi/6wZK7snIgt5/r28ppwLeybEmm3eUmn/X+9SnqGDY=; b=U+cLomhKIvwOQzuNRWl4mNVi6i
	p6OxaztvdAnEyV/uT0ga4OX5TgOmZkZkN2pctFqyTPNaKWsP4d7+UERCyf4TyVmxv0BqcCeFqt0NS
	/AWVUpInsomrNhNBd010uCqEvGep8oXTxF0flpEfK3Z1ZIz7pc98mLQjujCXH+hCrgk8wuYyGd8KX
	GM/XCXFWgtpj8kbNFmCKy3LS2szn9IgOAoMToDrQhh1R+0XWnh9XTZQh9F5CPsASLCWgpU2MQVgnc
	dno+Ljck3QREgPYV4dbuHZCpE7Kj8JDAoSwPKBPlxxCASG6q7VzsZdSG3KZRHobX6ABN1z/VS7S8s
	+FIEbYDA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzwG-00000004oFk-2tSs
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:25:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfzwG-0003jm-9H; Wed, 14 Jan 2026 13:25:28 +0100
Message-ID: <fd181690-016e-4b10-a7a1-4f37220f0b1f@pengutronix.de>
Date: Wed, 14 Jan 2026 13:25:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-7-8f0625ac5471@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-7-8f0625ac5471@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_122528_782321_DDB1C47E 
X-CRM114-Status: GOOD (  18.77  )
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
Subject: Re: [PATCH 07/23] ARM: i.MX8M: imx8m_tfa_start_bl31() add support for
 bl33 and fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 11/10/25 9:34 PM, Marco Felsch wrote:
> This adds the support to pass the bl33 entry and the fdt to
> imx8m_tfa_start_bl31() which is required to pass it later on the the
> bl31 via the bl_params.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/mach-imx/atf.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
> index 531ded2c57b1f194a2f209161ea086f41fccf58f..f4d4774b9eec798dd69042560d83f7313c0cb74f 100644
> --- a/arch/arm/mach-imx/atf.c
> +++ b/arch/arm/mach-imx/atf.c
> @@ -44,6 +44,9 @@ static void imx_adjust_optee_memory(void **bl32, void **bl32_image, size_t *bl32
>   * @tfa_dest:	Place where the BL31 is copied to and executed
>   * @tee:	Pointer to the optional BL32 blob
>   * @tee_size:	Size of the optional BL32 blob
> + * @bl33:	Pointer to the already loaded BL33 blob
> + * @fdt:	Pointer to the barebox internal DT (either compressed or not
> + *		compressed)
>   *
>   * This function:
>   *
> @@ -63,7 +66,7 @@ static void imx_adjust_optee_memory(void **bl32, void **bl32_image, size_t *bl32
>  
>  static __noreturn void
>  imx8m_tfa_start_bl31(const void *tfa_bin, size_t tfa_size, void *tfa_dest,
> -		     void *tee_bin, size_t tee_size)
> +		     void *tee_bin, size_t tee_size, void *bl33, void *fdt)
>  {
>  	void __noreturn (*bl31)(void) = tfa_dest;
>  	unsigned long endmem;
> @@ -196,7 +199,7 @@ __noreturn void __imx8mm_load_and_start_image_via_tfa(void *fdt, void *bl33)
>  	}
>  
>  	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MM_ATF_BL31_BASE_ADDR,
> -			     bl32, bl32_size);
> +			     bl32, bl32_size, bl33, fdt);
>  }
>  
>  void imx8mp_load_bl33(void *bl33)
> @@ -260,7 +263,7 @@ __noreturn void __imx8mp_load_and_start_image_via_tfa(void *fdt, void *bl33)
>  	}
>  
>  	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MP_ATF_BL31_BASE_ADDR,
> -			     bl32, bl32_size);
> +			     bl32, bl32_size, bl33, fdt);
>  }
>  
>  void imx8mn_load_bl33(void *bl33)
> @@ -324,7 +327,7 @@ __noreturn void __imx8mn_load_and_start_image_via_tfa(void *fdt, void *bl33)
>  	}
>  
>  	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MN_ATF_BL31_BASE_ADDR,
> -			     bl32, bl32_size);
> +			     bl32, bl32_size, bl33, fdt);
>  }
>  
>  void imx8mq_load_bl33(void *bl33)
> @@ -382,7 +385,7 @@ __noreturn void __imx8mq_load_and_start_image_via_tfa(void *fdt, void *bl33)
>  	}
>  
>  	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MQ_ATF_BL31_BASE_ADDR,
> -			     bl32, bl32_size);
> +			     bl32, bl32_size, bl33, fdt);
>  }
>  
>  void __noreturn imx93_load_and_start_image_via_tfa(void)
> 


-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



