Delivery-date: Wed, 14 Jan 2026 13:04:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzcH-001DrA-24
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:04:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzcG-0000RI-Ko
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:04:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UNoulPbrRi0EtdukCz9dUh10F8vX/jlG5fVnqJsxG5M=; b=PeNCc79M3MOntMc3AR8lUvGdt6
	7YChmqMcIpW1UW4/tt8LJPgwz84eY+uv8Iif5gwN1oavTCvsOF3jnlGW9EFvfNNXLE+EjVrSuvoB5
	IjeCmP6ZDXEwpx8i1PxgtH47x2ro4oIhzCzIRGXPyt6J2juZLgHjMCIMv0dM1n4vCxtH8O2joxZCl
	oDsuvqeKE1SXZ9W3u8naM67fF2RwHRLfJkB0cK43KGtUnYCRISCQFsc5pOw5uEylkrkmj4US9oFF+
	2bho7g3ZXp1fDEc1DtK3G+E5tDOCR99aMoHEqMEO8ib71795TuCWfUAybc2636Cdr3LvcI1rD5272
	emGsbosA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzbo-0000000953h-0hhl;
	Wed, 14 Jan 2026 12:04:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzbm-0000000952n-2hDk
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:04:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfzbl-0000HI-2m; Wed, 14 Jan 2026 13:04:17 +0100
Message-ID: <2e12fb80-077d-48cf-8e4b-bc4462a87eba@pengutronix.de>
Date: Wed, 14 Jan 2026 13:04:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-3-8f0625ac5471@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-3-8f0625ac5471@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_040418_681608_6149738E 
X-CRM114-Status: GOOD (  14.55  )
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
Subject: Re: [PATCH 03/23] ARM: atf: add missing includes in atf_common.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 11/10/25 9:34 PM, Marco Felsch wrote:
> Add missing includes else atf_common.h depends on the include order.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

I split out this patch in a series that I just sent.

Cheers,
Ahmad

> ---
>  arch/arm/include/asm/atf_common.h | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm/include/asm/atf_common.h b/arch/arm/include/asm/atf_common.h
> index ab99cd3ac1428c0dda0b9d6841a721119d45e301..11d3801da1cc171cf1601163712203b3c7089c6f 100644
> --- a/arch/arm/include/asm/atf_common.h
> +++ b/arch/arm/include/asm/atf_common.h
> @@ -11,6 +11,9 @@
>  #ifndef __BL_COMMON_H__
>  #define __BL_COMMON_H__
>  
> +#include <linux/sizes.h>
> +#include <linux/types.h>
> +
>  #define ATF_PARAM_EP		0x01
>  #define ATF_PARAM_IMAGE_BINARY	0x02
>  #define ATF_PARAM_BL31		0x03
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



