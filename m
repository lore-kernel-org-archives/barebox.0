Delivery-date: Wed, 14 Jan 2026 13:29:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg00D-001ESP-2C
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:29:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg00C-0004Jd-LN
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:29:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4+7dkXKiy5p8mj0cH/5ykVv84+zZsRDsDDPEbbPWHMk=; b=W1qv6RMVR8xc9cRqA+tnUs2q9w
	lX6e26jSpsgWaEyMr8eCEzuO4xK5Lh8bxO5zm2uIXiXPdwbdAqJju+MTBaxcO2FJz4kjfMfCXuS4p
	YsoFZG1TAUIpg9XMmJEnus6ENuYhM46+caqsOuJnzLQEvU/WUAPx/PmXXsWYwW5L2+f3ZpzP9RnRE
	aDDMAJ+46RRqzaiMGtRBNR8KdwmSzEk3u9FLd8fa/b5aob9Z9aNa5MfuSySOUgT6Mg8OJB/FtRjkv
	bNOxb9M0FsfQxiE9Bs0ZuuS8HIo2cKXLOpJOX2945Bq2EvUckbcYgtoOAH6xnB9CP3DosnCrubKZe
	ONbVpNWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzzY-00000009AyL-101g;
	Wed, 14 Jan 2026 12:28:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzzV-00000009Axt-370Y
	for barebox@bombadil.infradead.org;
	Wed, 14 Jan 2026 12:28:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=4+7dkXKiy5p8mj0cH/5ykVv84+zZsRDsDDPEbbPWHMk=; b=CIPmowOeM4UcDaW3QFeqiQ+diF
	QJN46CyurRHGA4AmBPsyJABDQCQRR80dtyOr0+mYvOyN9sze57AMy6DK2xlgQFhmcHUCNvh5E5J3g
	HoAZvI4jqwmfeC5LkqRMr9Vz0cA7oWhV+D611ceRot0UELCCCdZsHRulJrRoO36tE9pIGnp0nebu2
	LfxSS2cqm5gs/ehJOCeYBn8vP6ZLrxcFbLMQB56/3Vhts34vclNLGNhl7BfzqRXpX+rM+0dmKxdsP
	K6POxiB+GqkhXmZyDgQDc3XCrJTMdV0knYX8ONu6zgPKQgcWljPpcBu9UQHECeO/9kFo6MUhOloPk
	bNTONn2w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzzS-00000004oay-2lXB
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:28:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfzzS-0004B6-0X; Wed, 14 Jan 2026 13:28:46 +0100
Message-ID: <bdbbcad2-30b8-473d-a3dc-2ce216c52b20@pengutronix.de>
Date: Wed, 14 Jan 2026 13:28:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-8-8f0625ac5471@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-8-8f0625ac5471@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_122846_871935_77BD49B0 
X-CRM114-Status: GOOD (  18.31  )
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
Subject: Re: [PATCH 08/23] pbl: decomp: add pbl_dtbz_uncompress helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 11/10/25 9:34 PM, Marco Felsch wrote:
> Add a pbl uncompress helper since uncompress() can't be used directly
> within pbl.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  include/pbl.h |  1 +
>  pbl/decomp.c  | 12 ++++++++++++
>  2 files changed, 13 insertions(+)
> 
> diff --git a/include/pbl.h b/include/pbl.h
> index b330010562c4aba5fccbb4c421bb95291fa0bea1..9db4652e833bf5e82fd42a1cae19e94c4f2f868f 100644
> --- a/include/pbl.h
> +++ b/include/pbl.h
> @@ -15,6 +15,7 @@ extern unsigned long free_mem_ptr;
>  extern unsigned long free_mem_end_ptr;
>  
>  void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len);
> +int pbl_dtbz_uncompress(void *dest, void *compressed_start, unsigned long len);
>  
>  void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsize);
>  int fdt_fixup_mem(void *fdt, unsigned long membase[], unsigned long memsize[], size_t num);
> diff --git a/pbl/decomp.c b/pbl/decomp.c
> index ebdf81ddfbe5af65a382b7221c7102dcc791e5b9..4d50ea15555ba96bdc2fcac4c48708c6e1261d4d 100644
> --- a/pbl/decomp.c
> +++ b/pbl/decomp.c
> @@ -51,6 +51,12 @@ static void noinline errorfn(char *error)
>  	while (1);
>  }
>  
> +static noinline void errorfn_nohang(char *error)
> +{
> +	puts_ll("ERROR: ");
> +	puts_ll(error);
> +}

This way we won't have error message for CONFIG_PBL_CONSOLE without
DEBUG_LL, see:

https://lore.kernel.org/barebox/20260112085617.2952747-3-a.fatoum@barebox.org/T/#u

I am not sure why this is needed though. Failing to decompress a
compressed device tree that was linked into barebox means there is
runtime memory corruption. We should panic/hang in this case.

Cheers,
Ahmad


> +
>  extern unsigned char sha_sum[];
>  extern unsigned char sha_sum_end[];
>  
> @@ -110,3 +116,9 @@ void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len
>  			NULL, NULL,
>  			dest, NULL, errorfn);
>  }
> +
> +int pbl_dtbz_uncompress(void *dest, void *compressed_start, unsigned long len)
> +{
> +	return decompress(compressed_start, len, NULL, NULL, dest, NULL,
> +			  errorfn_nohang);
> +}
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



