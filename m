Delivery-date: Tue, 06 Jan 2026 14:55:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd7XA-001ufK-35
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:55:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd7XA-0002VL-Bn
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:55:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CqluLQUKfn5/FKew30xdcYtDzNeuK9h0fDxd4PhEfNU=; b=jVXJtHgkcBeS+sD28A6hHotxzO
	RvVD4EjdPL/89e6LS8lbbkLbWLuqDP9guaXKx+VM9XKI5A+PTnLcA7GpY9LFBJAxqQP/Lt1wHHwFE
	GgfjnN/pLVVB/os1VNwXdYF4MFVXNYpxSivTEgse5n4Q8vsK8Q9zBVczkFfXtUXtCh1d1369bQR2+
	GOJvzEwbibfOJtUzzEouhuUysuGM1R6ULBxYA0v40Af//O9BT9Tytlq4B4MHUQfMJS8JV3msoESnQ
	tfjou+DU/c/dQPQ338ow/Iwunf08N1e6LijQFyM6BxYjWYdh64nL6N1apd4MHGnScjQCHvn3DwAaQ
	PeMrSNbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7Wh-0000000DEJE-0sLK;
	Tue, 06 Jan 2026 13:55:11 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7Wf-0000000DEId-4A9o
	for barebox@bombadil.infradead.org;
	Tue, 06 Jan 2026 13:55:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=CqluLQUKfn5/FKew30xdcYtDzNeuK9h0fDxd4PhEfNU=; b=b0+Dw2wX0Jxj25m7+jz64yBPKl
	TzawfsHqMHKPjCvZYCfjCGDnCRv9gV9eylDklKClA2EcyytV6KCgyI6iZW3V3f7VfR3/452HwrL0V
	14N8lMiRzhi5YMsaUSQzXIZVhLnmP9TMKgjdbHaxk8acRZfoaDEMU667ilGPgHGJtdOKiGBXeF4tF
	tBTk3TgX/7Quna0iHC+OQ/QIaPLO88Ck8yblp0XJMP6pF/YG4jMKrX1bhafniNvt+rVVkMWrKMjeU
	fM6UV2X5sT53/UbRGXtHyGJmDiT6cRezPTntHBY6vfWHnr4H3ica7JKBf5cEGjERGqR0hga5SWaV1
	z8z9tU9g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7Wc-0000000Bs4p-3Xus
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:55:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd7Wc-0002Q1-8t; Tue, 06 Jan 2026 14:55:06 +0100
Message-ID: <db42a1e3-077a-46a8-91c3-e08c66363db1@pengutronix.de>
Date: Tue, 6 Jan 2026 14:55:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-8-487bc760f045@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260106-pbl-load-elf-v2-8-487bc760f045@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_135506_958273_179835EE 
X-CRM114-Status: GOOD (  15.42  )
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
Subject: Re: [PATCH v2 08/21] elf: create elf_open_binary_into()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/6/26 1:53 PM, Sascha Hauer wrote:
> elf_open_binary() returns a dynamically allocated struct elf_image *. We
> do not have malloc in the PBL, so for better PBL support create
> elf_open_binary_into() which takes a struct elf_image * as argument.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks,
Ahmad

> ---
>  common/elf.c  | 26 +++++++++++++++++++-------
>  include/elf.h |  1 +
>  2 files changed, 20 insertions(+), 7 deletions(-)
> 
> diff --git a/common/elf.c b/common/elf.c
> index b3cc9b59644aa6e6e029fa44988dbdc0787c42f6..d51c99192f327abc0eb4ca68109bc88c6a451d94 100644
> --- a/common/elf.c
> +++ b/common/elf.c
> @@ -318,6 +318,23 @@ static void elf_init_struct(struct elf_image *elf)
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
> @@ -327,17 +344,12 @@ struct elf_image *elf_open_binary(void *buf)
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
> index 84b98553cff69257f8c2fbfb2e7504a4400e0f53..64574cb4836cd67f54538ad1621d7fc5fbf58f92 100644
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



