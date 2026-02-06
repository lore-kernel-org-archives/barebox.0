Delivery-date: Fri, 06 Feb 2026 10:17:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voHxq-009QxP-16
	for lore@lore.pengutronix.de;
	Fri, 06 Feb 2026 10:17:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voHxp-00039U-8K
	for lore@pengutronix.de; Fri, 06 Feb 2026 10:17:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s8qhom8HuFQzujEkiNTe5dLzILrGE3LfU6iEvXdv0Gg=; b=2Y7rQzrv+oV3k+uOPSWI2cTMNX
	jK/ze43IHiz60M7Ymv7mB+8KQ7aLxIURR8VjrdV24+g0AST7QINn2tfqSDt8HMo/6uPWVB6MkFOip
	ob0WMBFpx1SYzsDOHUDSkkorEy4M/9gpWKsv6iD88aIvfWvF2soRSXcgfNaOGzlfZNIYjLnaQBksW
	5wugtWs5IJBiyL7dWpqKPhZDOZYPjVgKAGfcuWPyM7N6g0C/4bm9vJMwb+NeqP+7pLEAEhord+4+l
	yNHXliFxrMkMCLlmSnthOG+mGnZ9J9/ykPfcjLPvXiHJgrZEO7cl25tKpbNQJDFUswwJiAOyls/c1
	jpYsY9FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voHxK-0000000B5cd-24RP;
	Fri, 06 Feb 2026 09:16:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voHxI-0000000B5bh-2ToT
	for barebox@lists.infradead.org;
	Fri, 06 Feb 2026 09:16:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1voHxG-00034Y-UE; Fri, 06 Feb 2026 10:16:46 +0100
Message-ID: <80bf6c9b-765f-4bff-a362-b4c66e49f46e@pengutronix.de>
Date: Fri, 6 Feb 2026 10:16:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
 <20260204-v2025-09-0-topic-optee-of-handling-v2-5-da075e6818e0@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260204-v2025-09-0-topic-optee-of-handling-v2-5-da075e6818e0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_011648_636909_C0EE6D14 
X-CRM114-Status: GOOD (  22.35  )
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
Subject: Re: [PATCH v2 05/15] pbl: fdt: add pbl_load_fdt helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2/4/26 9:01 PM, Marco Felsch wrote:
> The helper provides a common FDT load mechanism to load the (optional
> compressed) DTB to the provided destination address in a user agnostic
> manner.
> 
> Early FDTs may be useful for other firmware binaries like TEEs (e.g.
> OP-TEE) which are loaded and started during the barebox boot phase.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  include/pbl.h |  2 ++
>  pbl/fdt.c     | 79 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 81 insertions(+)
> 
> diff --git a/include/pbl.h b/include/pbl.h
> index 14a463ef8a9f18e42a3332889ca8d9b30d8f1ceb..514f1143706785946e4190f23f95422f23df42e3 100644
> --- a/include/pbl.h
> +++ b/include/pbl.h
> @@ -31,6 +31,8 @@ fdt_device_get_match_data(const void *fdt, const char *nodepath,
>  
>  int pbl_barebox_verify(const void *compressed_start, unsigned int len,
>  		       const void *hash, unsigned int hash_len);
> +int pbl_load_fdt(const void *fdt, void *dest, int destsize);
> +
>  #endif
>  
>  void __noreturn barebox_pbl_entry(ulong, ulong, void *);
> diff --git a/pbl/fdt.c b/pbl/fdt.c
> index ac377446caeafb1beaeb211aa8bdec8767ae21fe..3c90959f8e73ea7310248f9b31359d6e8a86ae57 100644
> --- a/pbl/fdt.c
> +++ b/pbl/fdt.c
> @@ -1,8 +1,10 @@
>  // SPDX-License-Identifier: GPL-2.0
> +#include <compressed-dtb.h>
>  #include <linux/libfdt.h>
>  #include <pbl.h>
>  #include <linux/printk.h>
>  #include <stdio.h>
> +#include <uncompress.h>
>  
>  static const __be32 *fdt_parse_reg(const __be32 *reg, uint32_t n,
>  				   uint64_t *val)
> @@ -185,3 +187,80 @@ const void *fdt_device_get_match_data(const void *fdt, const char *nodepath,
>  
>  	return NULL;
>  }
> +
> +static int pbl_open_dtbz_into(const void *fdt, void *buf, int bufsize)
> +{
> +	const struct barebox_boarddata_compressed_dtb *compressed_dtb;
> +	int error;
> +
> +	if (!fdt_blob_can_be_decompressed(fdt)) {
> +		pr_warn("DTB can't be decompressed\n");
> +		return -EINVAL;
> +	}
> +
> +	compressed_dtb = fdt;
> +
> +	if (IS_ENABLED(CONFIG_IMAGE_COMPRESSION_NONE)) {
> +		error = fdt_open_into(compressed_dtb->data, buf, bufsize);
> +		if (error) {
> +			pr_warn("Failed to open uncompressed DTB with %s\n",
> +				fdt_strerror(error));
> +			return -EINVAL;
> +		}
> +		return 0;
> +	}
> +
> +	if (bufsize < compressed_dtb->datalen_uncompressed) {
> +		pr_warn("FDT buffer to small, min. %u bytes required\n",
> +			compressed_dtb->datalen_uncompressed);
> +		return -EINVAL;
> +	}
> +
> +	/*
> +	 * No error handling required, since this will hang() if uncompress
> +	 * fails.
> +	 */
> +	pbl_dtbz_uncompress(buf, (void *)compressed_dtb->data,
> +			    compressed_dtb->datalen);
> +
> +	if (!blob_is_fdt(buf)) {
> +		pr_warn("Failed to determine FDT type for uncompressed DTB\n");
> +		return -EINVAL;
> +	}
> +
> +	/* Required to setup size data structures to allow runtime adaptions */
> +	error = fdt_open_into(buf, buf, bufsize);
> +	if (error) {
> +		pr_warn("Failed to open decompressed DTB with %s\n",
> +			fdt_strerror(error));
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +int pbl_load_fdt(const void *fdt, void *dest, int destsize)
> +{
> +	if (destsize == 0 || !dest || !fdt) {
> +		pr_warn("Skip early FDT load, invalid input\n");
> +		return -EINVAL;
> +	}
> +
> +	if (blob_is_fdt(fdt)) {
> +		int error;
> +
> +		error = fdt_open_into(fdt, dest, destsize);
> +		if (error) {
> +			pr_warn("Failed to uncompressed DTB with %s\n",
> +				fdt_strerror(error));
> +			return -EINVAL;
> +		}
> +		return 0;
> +	} else if (blob_is_compressed_fdt(fdt)) {
> +		return pbl_open_dtbz_into(fdt, dest, destsize);
> +	}
> +
> +	pr_warn("FDT detection failed\n");
> +
> +	return -EINVAL;
> +}
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



