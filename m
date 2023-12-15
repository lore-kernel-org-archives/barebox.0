Delivery-date: Fri, 15 Dec 2023 12:08:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE63q-003ZKp-35
	for lore@lore.pengutronix.de;
	Fri, 15 Dec 2023 12:08:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE63r-0000g5-3j
	for lore@pengutronix.de; Fri, 15 Dec 2023 12:08:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QOkVs37+0h37gZzBYwEWPNkdADo8zWy3C6702tpuHB0=; b=bfjNvenipn1WI6H8fNwot7S8qf
	sHbR92zuTGEG/zz3iqNdkEeVmDjR6mfKalEr4BJYNmFszxNjM6zNXM/40/6iRMrUSBHeoHc1FutsU
	vef4q4IuC0xVuhbocMLCv0TJcnMhri/hX6CZIMyewn7folqOaS3EWgbiG+AbmA78+Z0DGICWuXTFa
	4QNp7EIMCBD7R4RIy8NTVwxd/cxfM9Kj34Y3gf+2xwEIqf7ovXfcjmxvHjnGGy+/btfzG3wc9c/GN
	t4EJnCgM4Bt0BRclW4uF3WJWF3SczOO28dnum3JtupCogTLxFI4+YWKsepf9W/znzgoSSZpdzoUXo
	JLyTpfaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE62s-002sFF-22;
	Fri, 15 Dec 2023 11:07:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE62o-002sBr-1d
	for barebox@lists.infradead.org;
	Fri, 15 Dec 2023 11:07:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rE62n-0000Nv-9k; Fri, 15 Dec 2023 12:07:49 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rE62m-00G0WY-TO; Fri, 15 Dec 2023 12:07:48 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rE62m-0076er-R4; Fri, 15 Dec 2023 12:07:48 +0100
Date: Fri, 15 Dec 2023 12:07:48 +0100
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20231215110748.GO1318922@pengutronix.de>
References: <20231214-fix-socfpga-dram-errata-workaround-v1-1-abfab95e7f69@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231214-fix-socfpga-dram-errata-workaround-v1-1-abfab95e7f69@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_030750_544203_750556B2 
X-CRM114-Status: GOOD (  27.96  )
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
Subject: Re: [PATCH] arm: mach-socfpga: detect workaround for dram controller
 erratum
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Dec 14, 2023 at 05:10:31PM +0100, Stefan Kerkmann wrote:
> To work around an erratum, the previous booting stage may have increased the
> amount of rows to fake having 4G of RAM. In that case, we assume the previous
> booting stage will have fixed up a proper memory size into the device tree and
> don't use the calculated dram size. The erratum itself appears to be
> undocumented by Altera/Intel and the workaround was introduced in the Alteras
> fork of U-Boot back in 2014 and ported to mainline later, the linked FogBugz
> issue is unfortunately not accessible.
> 
> [1] github.com/altera-opensource/u-boot-socfpga/commit/93815696dce132ff8abc4ab2f4c195339ff821a0
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>

Applied, thanks

Sascha

> ---
> To work around an erratum in the Altera DRAM controller, the previous
> booting stage may have increased the amount of rows to fake having 4G of
> RAM. In that case, we assume the previous booting stage will have fixed
> up a proper memory size into the device tree and don't use the
> calculated dram size. The erratum itself appears to be undocumented by
> Altera/Intel and the workaround was introduced in the Alteras fork of
> U-Boot back in 2014 and ported to mainline later, the linked FogBugz
> issue is unfortunately not accessible.
> 
> [1] github.com/altera-opensource/u-boot-socfpga/commit/93815696dce132ff8abc4ab2f4c195339ff821a0
> ---
>  arch/arm/mach-socfpga/cyclone5-generic.c | 17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/mach-socfpga/cyclone5-generic.c b/arch/arm/mach-socfpga/cyclone5-generic.c
> index ae8142b31c..0cb46b51e9 100644
> --- a/arch/arm/mach-socfpga/cyclone5-generic.c
> +++ b/arch/arm/mach-socfpga/cyclone5-generic.c
> @@ -128,7 +128,8 @@ void socfpga_cyclone5_timer_init(void)
>  static int socfpga_detect_sdram(void)
>  {
>  	void __iomem *base = (void *)CYCLONE5_SDR_ADDRESS;
> -	uint32_t dramaddrw, ctrlwidth, memsize;
> +	uint32_t dramaddrw, ctrlwidth;
> +	uint64_t memsize;
>  	int colbits, rowbits, bankbits;
>  	int width_bytes;
>  
> @@ -153,12 +154,20 @@ static int socfpga_detect_sdram(void)
>  		break;
>  	}
>  
> -	memsize = (1 << colbits) * (1 << rowbits) * (1 << bankbits) * width_bytes;
> +	memsize = (1ULL << colbits) * (1ULL << rowbits) * (1ULL << bankbits) *
> +		  width_bytes;
>  
> -	pr_debug("%s: colbits: %d rowbits: %d bankbits: %d width: %d => memsize: 0x%08x\n",
> +	pr_debug(
> +		"%s: colbits: %d rowbits: %d bankbits: %d width: %d => memsize: 0x%08llx\n",
>  			__func__, colbits, rowbits, bankbits, width_bytes, memsize);
>  
> -	arm_add_mem_device("ram0", 0x0, memsize);
> +	/* To work around an erratum in the dram controller, the previous booting
> +	 * stage may have increased the amount of rows to fake having 4G of RAM. In
> +	 * that case, we assume the previous booting stage will have fixed up a
> +	 * proper memory size into the device tree and don't add a bank here */
> +	if (memsize < SZ_4G) {
> +		arm_add_mem_device("ram0", 0x0, memsize);
> +	}
>  
>  	return 0;
>  }
> 
> ---
> base-commit: 975acf1bafba2366eb40c5e8d8cb732b53f27aa1
> change-id: 20231214-fix-socfpga-dram-errata-workaround-66cae33d7eed
> 
> Best regards,
> -- 
> Stefan Kerkmann <s.kerkmann@pengutronix.de>
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


