Delivery-date: Mon, 15 Sep 2025 10:40:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uy4lK-003G2x-1r
	for lore@lore.pengutronix.de;
	Mon, 15 Sep 2025 10:40:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uy4lK-0002Du-1O
	for lore@pengutronix.de; Mon, 15 Sep 2025 10:40:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=99SrpjzD7CUft3hpgHmYFOEffviupdzsyBn546kwWgw=; b=kBE4Or/F4dwummUinJWQOzQtlm
	m0VtWJVBEzuB1M7u76N5bpsA5yk75E2wj6gYROeYTEAt+bh8gDOSlceZ1s82/uO/6PEasmwbL7gzO
	804xTkshcs8VE9kQNvpumUGRS5RvOEuStTfoJo7YaNE5TFOGTFJnoEYaPq7X6bc1I1rO+AzWHmvC3
	tBX8lD/xwjQe26g98SheRu9bq3pAxaBsIfH62ADMLW/X5DINuGWhYIadgHXMeDo0MRZg4Y213bQh3
	lx9MoMcAZ2bhlLlgG5ofUfeZjNDE5BfVyzIikkEZhXgzS1Ob0WZ/VPP2N6IG/oQFchDONMq88VvV9
	gkVp6vbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy4kg-00000003Fnw-1rUF;
	Mon, 15 Sep 2025 08:39:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy4kd-00000003FmX-3MDk
	for barebox@lists.infradead.org;
	Mon, 15 Sep 2025 08:39:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uy4kZ-00027D-Pw; Mon, 15 Sep 2025 10:39:51 +0200
Message-ID: <77b5ac7d-278a-4759-bebd-234a0db6de4c@pengutronix.de>
Date: Mon, 15 Sep 2025 10:39:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20250914192531.14494-1-chalianis1@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250914192531.14494-1-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_013955_843010_003FC83C 
X-CRM114-Status: GOOD (  17.33  )
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
Subject: Re: [PATCH] efi: payload: entry-single: memory need to be alloccated
 as data.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 9/14/25 9:25 PM, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> The entry single is used in x86, this memory allocation need to be set to
> data since it is used to initialise the malloc memory. set all this region
> to loader code could represent a security issue since we autorise memory
> execution.
> 
> Fixes: 7497c86c5032 ("efi: payload: early-mem: add memory type on early mem allocation")
> Signed-off-by: Chali Anis <chalianis1@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks,
Ahmad

> ---
>  efi/payload/entry-single.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/efi/payload/entry-single.c b/efi/payload/entry-single.c
> index b7171bb24bfa..8600bd845c49 100644
> --- a/efi/payload/entry-single.c
> +++ b/efi/payload/entry-single.c
> @@ -37,7 +37,7 @@ void efi_main(efi_handle_t image, struct efi_system_table *sys_table)
>  		BS->handle_protocol(efi_loaded_image->device_handle,
>  				&efi_device_path_protocol_guid, (void **)&efi_device_path);
>  
> -	mem = efi_earlymem_alloc(sys_table, &memsize, EFI_LOADER_CODE);
> +	mem = efi_earlymem_alloc(sys_table, &memsize, EFI_LOADER_DATA);
>  
>  	mem_malloc_init(mem, mem + memsize - 1);
>  

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



