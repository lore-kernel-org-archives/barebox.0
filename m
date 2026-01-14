Delivery-date: Wed, 14 Jan 2026 14:18:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg0lh-001FLk-2K
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 14:18:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg0lg-0003Nm-JH
	for lore@pengutronix.de; Wed, 14 Jan 2026 14:18:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rrh8Q1Yx8LaCJk4AHhQytTJem7/IEuEunp5c8BdAF3U=; b=SP6tnGN/LZTV9gNO9KYx3cE91h
	KHdYsER9af5UbEFMwNqVXiOKVy3pUlk9wRN8v290mtMq87Vd/LSJIqY5BZ0rgpXz8v53x/QIirv+/
	RwxCBOoT396z1txkjD5cmmrQUjdXgipVZfXs116Ql0BW6TNd39j+OzvAGns8l4pKet7K084dOGsvu
	Em546ubCHjaFGaQBmzwM510jaABEXoxroJ65Sf3L2y0896Qq9KmD6aXPGJf0mAiyaAvkk6AzJ+EH8
	jphpBIjEDCiEaR95VoE7ccLzXKb1/Wn5fLyLMaBK3QAR9kwvnAd4xKOLFm+ZV+322SXsG+cBjAkRo
	7YHBa0dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg0l5-00000009Ije-0jps;
	Wed, 14 Jan 2026 13:17:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg0l2-00000009Ij9-3TUg
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 13:17:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vg0l0-0003Fw-MB; Wed, 14 Jan 2026 14:17:54 +0100
Message-ID: <72c4dd73-0285-49e6-90f6-6bb67eb6a146@pengutronix.de>
Date: Wed, 14 Jan 2026 14:17:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-22-8f0625ac5471@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-22-8f0625ac5471@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_051756_899426_A33FC0C7 
X-CRM114-Status: GOOD (  28.99  )
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
Subject: Re: [PATCH 22/23] pbl: add support to disable/remove the
 /secure-chosen/stdout-path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 11/10/25 9:35 PM, Marco Felsch wrote:
> Add helpers to disable the /secure-chosen/stdout-path property from a
> FDT to keep the secure-OS silent. This is useful to keep the console on
> for development purpose and off for the release case. For the later
> case, the board code also needs to ensure that no /chosen/stdout-path
> exsits, else the secure-OS may fallback to this node.
> 
> The API is very specific to make clear that only the
> /secure-chosen/stdout-path is patched on demand.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  include/pbl.h |  4 ++++
>  pbl/console.c | 18 ++++++++++++++++++
>  pbl/fdt.c     | 26 ++++++++++++++++++++++++++
>  3 files changed, 48 insertions(+)
> 
> diff --git a/include/pbl.h b/include/pbl.h
> index 0961b6b91e585a59a3e8facb1af261857cb6f57e..7e64a9d200ade522ebeb6394c730b608abc6d2bf 100644
> --- a/include/pbl.h
> +++ b/include/pbl.h
> @@ -17,6 +17,9 @@ extern unsigned long free_mem_end_ptr;
>  void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len);
>  int pbl_dtbz_uncompress(void *dest, void *compressed_start, unsigned long len);
>  
> +void pbl_set_disable_secure_chosen_stdout(void);
> +int pbl_disable_secure_chosen_stdout(void);
> +
>  void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsize);
>  int fdt_fixup_mem(void *fdt, unsigned long membase[], unsigned long memsize[], size_t num);
>  
> @@ -34,6 +37,7 @@ int fdt_copy_node(const void *src_fdt, void *dest_fdt, const char *path,
>  int pbl_barebox_verify(const void *compressed_start, unsigned int len,
>  		       const void *hash, unsigned int hash_len);
>  int pbl_load_fdt(const void *fdt, void *dest, int destsize);
> +int fdt_remove_secure_chosen_stdout(void *fdt);
>  
>  #endif
>  
> diff --git a/pbl/console.c b/pbl/console.c
> index 66652320149db5cdb9d365c5b05a9ac0903935d2..b3f2ac60b5e23b487c0d098d5c2ac5c3f2c8acdc 100644
> --- a/pbl/console.c
> +++ b/pbl/console.c
> @@ -4,6 +4,7 @@
>  #include <debug_ll.h>
>  #include <asm/sections.h>
>  #include <linux/err.h>
> +#include <pbl.h>
>  
>  /*
>   * Put these in the data section so that they survive the clearing of the
> @@ -12,6 +13,23 @@
>  static __attribute__ ((section(".data"))) ulong putc_offset;
>  static __attribute__ ((section(".data"))) void *putc_ctx;
>  
> +/*
> + * No special segment handling required, since the value doesn't need to survive.
> + * The secure-os is loaded only once very early. Therefore this variable is
> + * checked only once too.
> + */
> +static int disable_secure_chosen_stdout;
> +
> +void pbl_set_disable_secure_chosen_stdout(void)
> +{
> +	disable_secure_chosen_stdout = 1;
> +}
> +
> +int pbl_disable_secure_chosen_stdout(void)
> +{
> +	return disable_secure_chosen_stdout;
> +}

What are these for? fdt_remove_secure_chosen_stdout() uses none of the
three symbols defined above.

> +
>  /**
>   * pbl_set_putc() - setup UART used for PBL console
>   * @putc: The putc function.
> diff --git a/pbl/fdt.c b/pbl/fdt.c
> index fa61c3c71298a2e036e0d324c09d452d8f0f7bbe..d8160e4a09867aab91dc89de5dc7b00dd08a4155 100644
> --- a/pbl/fdt.c
> +++ b/pbl/fdt.c
> @@ -342,3 +342,29 @@ int fdt_copy_node(const void *src_fdt, void *dest_fdt, const char *path,
>  
>  	return _fdt_copy_node(src_fdt, src_node, dest_fdt, dest_node);
>  }
> +
> +int fdt_remove_secure_chosen_stdout(void *fdt)
> +{
> +	int sec_chosen;
> +	int ret;
> +
> +	if (!fdt)
> +		return 0;
> +
> +	sec_chosen = fdt_path_offset(fdt, "/secure-chosen");
> +	/* No secure-chosen node found, nothing to do */
> +	if (sec_chosen < 0)
> +		return 0;
> +
> +	ret = fdt_delprop(fdt, sec_chosen, "stdout-path");
> +	if (ret) {
> +		if (ret == -FDT_ERR_NOTFOUND)
> +			return 0;
> +
> +		pr_warn("Failed to delete /secure-chosen/stdout-path with:%s\n",
> +			fdt_strerror(ret));
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



