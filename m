Delivery-date: Fri, 10 Nov 2023 14:32:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RcE-005tsy-1v
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:32:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RcE-0003zn-KN
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:32:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A5VkvRVOjN6mt9pJoWft+o82VbNkPvZ9pjueYTVCC/s=; b=CpQmwPJt5cOQ0sIWcH0aUDuv9R
	9Vt3rSm9eZBu/epyBooLnE5VY4ldWh1r84MlWmT5UIpRmSNcsCyVAvO0lgX/nSXQ78LOQ8qdC/U8W
	tRCzZE0aYnnSIs59fLo63Sx4yX2kva6wBkctIUO7wMFg7IDhcNL5mVi09Ojc637AL2CbmEvmGi+tc
	BNYdUsioeU550EssAyx0JnxrWaBsj7oiGnTTO0yw8Fz45seYvXIzgLg6AU82NcFHRUZR6TcSYCFXd
	mBJ+O1xVeNFhTRlFWeKAkf2P1odOg4isc9jS0E15Dkj/Ehx6aal6/FYfmY2+fKizjdUxWNjRw1N2q
	U45TnWFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RbB-008r2r-2g;
	Fri, 10 Nov 2023 13:31:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Rb8-008r23-38
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:31:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1Rb7-0003jy-KC; Fri, 10 Nov 2023 14:30:57 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1Rb7-00825h-7a; Fri, 10 Nov 2023 14:30:57 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1Rb7-001Ljl-5R; Fri, 10 Nov 2023 14:30:57 +0100
Date: Fri, 10 Nov 2023 14:30:57 +0100
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231110133057.GJ3359458@pengutronix.de>
References: <20231103155831.152488-1-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231103155831.152488-1-m.olbrich@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_053059_016228_4121257F 
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] x86: efi: add IMD data to the EFI binary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Nov 03, 2023 at 04:58:31PM +0100, Michael Olbrich wrote:
> It it currently missing so the imd command and the bareboximd tool do
> not work.
> 
> Add the .barebox_imd section to the linker script and copy it to the EFI
> binary.
> 
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> ---
>  arch/x86/Makefile                      | 2 +-
>  arch/x86/mach-efi/elf_x86_64_efi.lds.S | 2 ++
>  2 files changed, 3 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index a0ce8c17f181..019c1adb7781 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -60,7 +60,7 @@ KBUILD_LDFLAGS := --no-undefined
>  
>  OBJCOPYFLAGS_barebox.efi = \
>  	-j .text -j .sdata -j .data -j .dynamic -j .dynsym -j .rel -j .rela \
> -	-j .reloc -j .bbenv.* -j .bblogo.* --target=$(TARGET)
> +	-j .reloc -j .bbenv.* -j .bblogo.* -j .barebox_imd --target=$(TARGET)
>  
>  barebox.efi: $(KBUILD_BINARY) FORCE
>  	$(call if_changed,objcopy)
> diff --git a/arch/x86/mach-efi/elf_x86_64_efi.lds.S b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
> index ab4a9e815c00..52a0d3db2d6c 100644
> --- a/arch/x86/mach-efi/elf_x86_64_efi.lds.S
> +++ b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
> @@ -56,6 +56,8 @@ SECTIONS
>  	}
>  	_edata = .;
>  
> +	.barebox_imd : { BAREBOX_IMD }
> +
>  	. = ALIGN(4096);
>  	.dynamic : { *(.dynamic) }
>  	. = ALIGN(4096);
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


