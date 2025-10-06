Delivery-date: Mon, 06 Oct 2025 13:40:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5jZo-004sKA-2i
	for lore@lore.pengutronix.de;
	Mon, 06 Oct 2025 13:40:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5jZo-00029Z-8H
	for lore@pengutronix.de; Mon, 06 Oct 2025 13:40:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b28AquZgfQ8jev/GCkADHiXr/xVsp2V4m71q9K78Wuo=; b=K5CuyjgBSoVURs1sph+c4wy0L9
	A02r3nJW/2UIgJ2yeN3O/i3BA119E1bFvQhWYmw3AENYW775gUI5fHYDYVCwY9Xu5a0nkK9ELJ8Q4
	eA+nwgBxFOfaKzc/kUrthZvTBZyjRo8YcLwDuhlPHJeW8jFStSz1nFAUASiS9R1Dr09wdQmLoiM9s
	Cy/K4CQ9yjqUqR2dWzwFIyQWyFAIOVNcJTz03kBYJ1AInADySrzw+G9hpGo5XAhGcmgLBnad6Tb9i
	synPtBdqUKb5Xhj7XuXG2ZdQJTfMR89Z1ga5a8GNfqfZ6761O/wwO53vl257U+/V4tpDhHW11IeTu
	0d5xrbyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5jZQ-0000000HVGj-2Fpy;
	Mon, 06 Oct 2025 11:40:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5jZO-0000000HVGA-0An4
	for barebox@lists.infradead.org;
	Mon, 06 Oct 2025 11:39:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v5jZM-00023s-IP; Mon, 06 Oct 2025 13:39:56 +0200
Message-ID: <22c78351-ad50-43d0-bb6a-80b1de547588@pengutronix.de>
Date: Mon, 6 Oct 2025 13:39:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20251006041512.1360284-1-chalianis1@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251006041512.1360284-1-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_043958_085926_3260A36F 
X-CRM114-Status: GOOD (  20.25  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 01/11] common: filetype: add detection for x86 Linux
 kernel images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 10/6/25 6:15 AM, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> Introduce a new filetype for x86 Linux kernel images by checking for
> the "HdrS" magic (0x53726448) at offset 0x202 in the setup header.
> 
> Signed-off-by: Chali Anis <chalianis1@gmail.com>

This introduces intermittent breakage, which can complicate e.g. git
bisect. I suggest this patch be squashed into patch 07/11.

Alternatively, the hunk registering the binfmt and bootm handlers
need to be moved into this patch here.

Cheers,
Ahmad

> ---
>  common/filetype.c  | 3 +++
>  include/filetype.h | 6 ++++++
>  2 files changed, 9 insertions(+)
> 
> diff --git a/common/filetype.c b/common/filetype.c
> index eb397a175cb6..72f84442cae9 100644
> --- a/common/filetype.c
> +++ b/common/filetype.c
> @@ -87,6 +87,7 @@ static const struct filetype_str filetype_str[] = {
>  	[filetype_zstd_compressed] = { "ZSTD compressed", "zstd" },
>  	[filetype_rockchip_rkss_image] = { "Rockchip signed boot image",
>  					   "rk-image" },
> +	[filetype_x86_linux_image] = { "x86 Linux image", "x86-linux" },
>  };
>  
>  static const char *file_type_to_nr_string(enum filetype f)
> @@ -435,6 +436,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
>  		return is_dos_exe(buf8) ? filetype_riscv_efi_linux_image : filetype_riscv_linux_image;
>  	if (is_riscv_linux_bootimage(buf) && !memcmp(&buf[12], "barebox", 8))
>  		return filetype_riscv_barebox_image;
> +	if (bufsize > 0x206 && is_x86_linux_bootimage(buf))
> +		return filetype_x86_linux_image;
>  
>  	if (le32_to_cpu(buf[5]) == 0x504d5453)
>  		return filetype_mxs_bootstream;
> diff --git a/include/filetype.h b/include/filetype.h
> index 6f4a103df304..ff4d54ee3c45 100644
> --- a/include/filetype.h
> +++ b/include/filetype.h
> @@ -67,6 +67,7 @@ enum filetype {
>  	filetype_nxp_fspi_image,
>  	filetype_zstd_compressed,
>  	filetype_rockchip_rkss_image,
> +	filetype_x86_linux_image,
>  	filetype_max,
>  };
>  
> @@ -150,4 +151,9 @@ static inline bool is_riscv_linux_bootimage(const void *header)
>  	return le32_to_cpup(header + 56) == 0x05435352;
>  }
>  
> +static inline bool is_x86_linux_bootimage(const void *header)
> +{
> +	return le32_to_cpup(header + 0x202) == 0x53726448;
> +}
> +
>  #endif /* __FILE_TYPE_H */

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



