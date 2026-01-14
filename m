Delivery-date: Wed, 14 Jan 2026 13:04:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzby-001DqA-25
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:04:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzbx-0000Lq-M7
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:04:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rk3PV4D0VfwM0QJoc1jaHGJek/9waDufjBvGDTQ1Dvk=; b=PH4JKJzYCq7Xy5XIcGIcf6W4zN
	WQwHIm0YFWsJXC8KN4S1ggOqFXbSWQvW/LW8y1iQnUxYLIUy8p5STUM/FWuB6a0iwZ0if/NsNR8Ho
	UILFSXR0xZVKv8IP9NlHbyKw0NVWypLuw8aed/iPaVIp34qH/0NiJrkCM4jDQA7Qyh1IXWyZd0sSB
	KCVhKCfxsKvgQuv8TEXgL/o3anBFJjG4zOUCH6VzBSSVdFSJGlHFE+Eb5/LiKPeOgZXWpzMsozezM
	5kg2IXpc4oM7DUZDTJKPCySqa498diPff5sZD4H3xiY5c5bRgkAQJxdrsTN9rwKc4+6DiaWYthFyx
	ajcX5Trw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzbX-000000094xO-04mp;
	Wed, 14 Jan 2026 12:04:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzbU-000000094wo-46lS
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:04:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfzbT-0000Dc-GG; Wed, 14 Jan 2026 13:03:59 +0100
Message-ID: <9d713960-8e94-43e4-acd7-c8fa910dad61@pengutronix.de>
Date: Wed, 14 Jan 2026 13:03:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-1-8f0625ac5471@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-1-8f0625ac5471@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_040401_022576_7BC1FBD7 
X-CRM114-Status: GOOD (  14.28  )
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
Subject: Re: [PATCH 01/23] pbl: compressed-dtb: add missing includes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 11/10/25 9:34 PM, Marco Felsch wrote:
> Add missing includes else compressed-dtb.h depends on the include order.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

I split out this patch in a series that I just sent.

Cheers,
Ahmad

> ---
>  include/compressed-dtb.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/include/compressed-dtb.h b/include/compressed-dtb.h
> index cc5fbb2769847c0338a6e462e2d4bdd0d77f0174..ff7c932f5b01145cdad39e9d59f222b724b9f9d1 100644
> --- a/include/compressed-dtb.h
> +++ b/include/compressed-dtb.h
> @@ -2,9 +2,11 @@
>  #ifndef COMPRESSED_DTB_H_
>  #define COMPRESSED_DTB_H_
>  
> +#include <linux/align.h>
>  #include <linux/types.h>
>  #include <linux/sizes.h>
>  #include <asm/unaligned.h>
> +#include <fdt.h>
>  
>  struct barebox_boarddata_compressed_dtb {
>  #define BAREBOX_BOARDDATA_COMPRESSED_DTB_MAGIC 0x7b66bcbd
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



