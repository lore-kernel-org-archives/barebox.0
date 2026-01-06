Delivery-date: Tue, 06 Jan 2026 12:43:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd5TW-001sQk-1w
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 12:43:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd5TW-0001dx-1h
	for lore@pengutronix.de; Tue, 06 Jan 2026 12:43:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bTLhKqZMU+flVWIulXSSeclGDQZ2SIj2eJWuNsdtk6A=; b=y7bU9SOeu0ZKjfuic5WN/Uu1/y
	JEm6g9kpYbGSt2VikQ+78SB8CJVc4EMe0GJYlifN68XsOuYDIwb4nMbo3oThCVT70uKQ8OblQMPIr
	iLGjooWv/XUmNWJLD4igfE3BjFcUSNIjusZt9ALZVN755nWHQ2myLSaDSblX5VlBqPdz+2xXEgvaJ
	OvByLN96Ua8DjgR6mzVVmcpPU7pmVMhKxW+I2vv0Ppfz4gaDuqM9EQzx/b6OrKhzN4kwzX1HPCQk6
	G8Ir2q2GTxxRw4fLHtqHz+iw7bDF6Tu+aM/AQKf/0iukysVD8SMsz2/EQGd0r+nybSwZqM1fQ4pfc
	bYKU7scA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd5T5-0000000CuqL-3uhD;
	Tue, 06 Jan 2026 11:43:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd5T4-0000000Cuq1-1P9D
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 11:43:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd5T2-0001Yd-7A; Tue, 06 Jan 2026 12:43:16 +0100
Message-ID: <234ea2b9-d45a-4751-ad9f-f8e95aa7103f@pengutronix.de>
Date: Tue, 6 Jan 2026 12:43:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
References: <20260106081659.3491945-1-a.fatoum@barebox.org>
 <20260106081659.3491945-2-a.fatoum@barebox.org>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260106081659.3491945-2-a.fatoum@barebox.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_034318_403480_D6646CB0 
X-CRM114-Status: GOOD (  14.66  )
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
Subject: Re: [PATCH 2/2] ARM: cpu: common: define generic relocate_image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/6/26 9:16 AM, Ahmad Fatoum wrote:
> -	__memset(dynsym, 0, (unsigned long)dynend - (unsigned long)dynsym);
> +	/* Optional: not required for correctness */
> +	if (dynend)
> +		__memset(dynsym, 0, (unsigned long)dynend - (unsigned long)dynsym);

Unexpected revelation: We don't have any R_ARM_ABS32 relocations any
longer. Maybe because ARM32 is now always relocatable?

This will allow us to simplify some things.

Cheers,
Ahmad

>  #else
>  #error "Architecture not specified"
>  #endif
> +}
> +
> +void __prereloc relocate_to_current_adr(void)
> +{
> +	relocate_image(get_runtime_offset(),
> +		       runtime_address(__rel_dyn_start),
> +		       runtime_address(__rel_dyn_end),
> +		       runtime_address(__dynsym_start),
> +		       runtime_address(__dynsym_end));
>  
>  	sync_caches_for_execution();
>  }
> @@ -196,4 +193,3 @@ void print_pbl_mem_layout(ulong membase, ulong endmem, ulong barebox_base)
>  	printf("membase               = 0x%08lx+0x%08lx\n",
>  	       membase, endmem - membase);
>  }
> -
> diff --git a/arch/arm/include/asm/reloc.h b/arch/arm/include/asm/reloc.h
> index 2d7411ab5284..62c07932fad4 100644
> --- a/arch/arm/include/asm/reloc.h
> +++ b/arch/arm/include/asm/reloc.h
> @@ -30,6 +30,9 @@ static inline __prereloc unsigned long global_variable_offset(void)
>  }
>  #define global_variable_offset() global_variable_offset()
>  
> +void relocate_image(unsigned long offset,
> +		    void *dstart, void *dend,
> +		    long *dynsym, long *dynend);
>  void relocate_to_current_adr(void);
>  void relocate_to_adr(unsigned long target);
>  void relocate_to_adr_full(unsigned long target);

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



