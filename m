Delivery-date: Mon, 12 Jan 2026 14:07:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfHdX-000X0E-1s
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 14:07:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfHdW-0004Dz-HT
	for lore@pengutronix.de; Mon, 12 Jan 2026 14:07:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vmn/VIBpkis590jNZ+y6F5IQAEMav159hMueczdGQhA=; b=d1JbuZEXj2ZoyschDysBbywDqL
	3gx+V+B0GorIvHAilnZBTblTH2yibHKC+k2HxAMC0PppWmbJTsXr2zFMHJgrjKcsqPZD+Mp4JitpR
	yZTKi7GpokhR4NSClBRWFMYhE8wP7S635pyy91Pf2MELDTc2RlW6RBJd1cdON+SAcelozM5I6hRJJ
	z7Q6I1ituP58PNLGDFjy82Mmg6suqskuz3pQuYGMi/a5e/n1HJvutyN3SXdhCo8c8qAXWdG9BlxGl
	vqDspbOqON6KPHb6sqkEQHO2Xj/6bLaColcnKagHU8zoK5X1eba3bbjb+Ro59/yQBYQ0JPc4XTrHq
	8IqzYXug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfHd4-00000005NPg-0E8x;
	Mon, 12 Jan 2026 13:06:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfHd1-00000005NOx-2EUU
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 13:06:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfHd0-00047h-2L; Mon, 12 Jan 2026 14:06:38 +0100
Message-ID: <9cd07445-9fbf-43ab-81bb-85f07b9327b0@pengutronix.de>
Date: Mon, 12 Jan 2026 14:06:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
 <20260108-pbl-load-elf-v3-9-e28c931fc179@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-9-e28c931fc179@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_050639_572908_33C0FC68 
X-CRM114-Status: GOOD (  20.88  )
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
Subject: Re: [PATCH v3 09/23] elf: create elf_open_binary_into()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 1/8/26 4:50 PM, Sascha Hauer wrote:
> elf_open_binary() returns a dynamically allocated struct elf_image *. We
> do not have malloc in the PBL, so for better PBL support create
> elf_open_binary_into() which takes a struct elf_image * as argument.

Strictly speaking, we have the <linux/mm/decompress.h> allocator and as
this runs after decompression, the early malloc area is already
allocated too, but I don't feel strongly about it.

Cheers,
Ahmad

> 
> Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/elf.c  | 26 +++++++++++++++++++-------
>  include/elf.h |  1 +
>  2 files changed, 20 insertions(+), 7 deletions(-)
> 
> diff --git a/common/elf.c b/common/elf.c
> index cba11640e52204add6cf601335b1904bd9188be0..e2e6c821cc6a673ee08d82a82176f39770e5eb42 100644
> --- a/common/elf.c
> +++ b/common/elf.c
> @@ -316,6 +316,23 @@ static void elf_init_struct(struct elf_image *elf)
>  	elf->filename = NULL;
>  }
>  
> +int elf_open_binary_into(struct elf_image *elf, void *buf)
> +{
> +	int ret;
> +
> +	memset(elf, 0, sizeof(*elf));
> +	elf_init_struct(elf);
> +
> +	elf->hdr_buf = buf;
> +	ret = elf_check_image(elf, buf);
> +	if (ret)
> +		return ret;
> +
> +	elf->entry = elf_hdr_e_entry(elf, elf->hdr_buf);
> +
> +	return 0;
> +}
> +
>  struct elf_image *elf_open_binary(void *buf)
>  {
>  	int ret;
> @@ -325,17 +342,12 @@ struct elf_image *elf_open_binary(void *buf)
>  	if (!elf)
>  		return ERR_PTR(-ENOMEM);
>  
> -	elf_init_struct(elf);
> -
> -	elf->hdr_buf = buf;
> -	ret = elf_check_image(elf, buf);
> +	ret = elf_open_binary_into(elf, buf);
>  	if (ret) {
>  		free(elf);
> -		return ERR_PTR(-EINVAL);
> +		return ERR_PTR(ret);
>  	}
>  
> -	elf->entry = elf_hdr_e_entry(elf, elf->hdr_buf);
> -
>  	return elf;
>  }
>  
> diff --git a/include/elf.h b/include/elf.h
> index 236e38fb29887315e01a165795e1bb861f738054..d0e9ae2afd36c74fa50aa0cb3dab060167ba0326 100644
> --- a/include/elf.h
> +++ b/include/elf.h
> @@ -410,6 +410,7 @@ static inline size_t elf_get_mem_size(struct elf_image *elf)
>  	return elf->high_addr - elf->low_addr;
>  }
>  
> +int elf_open_binary_into(struct elf_image *elf, void *buf);
>  struct elf_image *elf_open_binary(void *buf);
>  struct elf_image *elf_open(const char *filename);
>  void elf_close(struct elf_image *elf);
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



