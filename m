Delivery-date: Thu, 11 Mar 2021 10:54:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKI1k-0002pa-WE
	for lore@lore.pengutronix.de; Thu, 11 Mar 2021 10:54:45 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKI1k-0000Lp-7O
	for lore@pengutronix.de; Thu, 11 Mar 2021 10:54:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3r7ooRadwhbT0+F/gJdSLw2c6/J95VrBRFGt1V4Bz3w=; b=ZHUDYj1N9gpp0U5KXGR9ExVrm
	leZ5m4fi9PhMIwzWZZS647lzhNZ1e69qyPu2TDt8BTp5ygTu2a5+Ot+rfvkHSwZx82X6JS5YxAjNi
	TbXQrZqxSVXgkpWtCPQZHo99wXErxQx3DWT53zyXrjYeHCjGDjiwt+D6t3duk4cGSPF6Y5MVUvTuN
	dbXtKbw7r+3SpJNukyGdPXaUJZPw8UysenBn1duq9W1bCJ5UuvKOJ/UWUb/LuKbWHbSMtapsJu26D
	FgDsf2JrsxU/ZAqtcaky85NvGqCMx4DmB+IXDUGM81JlrD9Ns/ia6RQlYAR61pTGcPWm+l7e/Ln5v
	YQAgru+6g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKI0f-008nCF-V6; Thu, 11 Mar 2021 09:53:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKI0Z-008nBT-Gy
 for barebox@lists.infradead.org; Thu, 11 Mar 2021 09:53:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lKI0Y-00005g-Jp; Thu, 11 Mar 2021 10:53:30 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lKI0Y-0005nG-Ad; Thu, 11 Mar 2021 10:53:30 +0100
Date: Thu, 11 Mar 2021 10:53:30 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210311095330.GC23724@pengutronix.de>
References: <20210308193214.32573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210308193214.32573-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:53:21 up 21 days, 13:17, 81 users,  load average: 0.44, 0.47, 0.26
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_095331_767931_C235EDBC 
X-CRM114-Status: GOOD (  24.71  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] ARM64: qemu-virt64: remove dead CPU identification
 code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 08, 2021 at 08:32:11PM +0100, Ahmad Fatoum wrote:
> cpu_is_arm(cpu) masks the read_cpuid_id() return value and compares with
> a CPU-specific value. The used masks for the Cortex A53/57 zeroes bits
> that are set in the value, so the comparison will never return true.
> 
> In fact the compiler already optimizes it away completely, because
> read_cpuid_id() is only implemented for ARM32 anyway.
> 
> Drop the dead code.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/boards/qemu-virt64/init.c |  5 -----
>  arch/arm/include/asm/system_info.h | 11 -----------
>  2 files changed, 16 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/qemu-virt64/init.c b/arch/arm/boards/qemu-virt64/init.c
> index 19cfcae1f0d8..c2e7af77bba1 100644
> --- a/arch/arm/boards/qemu-virt64/init.c
> +++ b/arch/arm/boards/qemu-virt64/init.c
> @@ -51,11 +51,6 @@ static int virt_core_init(void)
>  {
>  	char *hostname = "virt64";
>  
> -	if (cpu_is_cortex_a53())
> -		hostname = "virt64-a53";
> -	else if (cpu_is_cortex_a57())
> -		hostname = "virt64-a57";
> -
>  	barebox_set_model("ARM QEMU virt64");
>  	barebox_set_hostname(hostname);
>  
> diff --git a/arch/arm/include/asm/system_info.h b/arch/arm/include/asm/system_info.h
> index a27b79e6dd08..1e3dfc845c8d 100644
> --- a/arch/arm/include/asm/system_info.h
> +++ b/arch/arm/include/asm/system_info.h
> @@ -42,12 +42,6 @@
>  #define CPU_IS_CORTEX_A15	0x410fc0f0
>  #define CPU_IS_CORTEX_A15_MASK	0xff0ffff0
>  
> -#define CPU_IS_CORTEX_A53	0x410fd034
> -#define CPU_IS_CORTEX_A53_MASK	0xff0ffff0
> -
> -#define CPU_IS_CORTEX_A57	0x411fd070
> -#define CPU_IS_CORTEX_A57_MASK	0xff0ffff0
> -
>  #define CPU_IS_PXA250		0x69052100
>  #define CPU_IS_PXA250_MASK	0xfffff7f0
>  
> @@ -125,11 +119,6 @@
>  #else
>  #define ARM_ARCH CPU_ARCH_ARMv8
>  #endif
> -#define cpu_is_cortex_a53() cpu_is_arm(CORTEX_A53)
> -#define cpu_is_cortex_a57() cpu_is_arm(CORTEX_A57)
> -#else
> -#define cpu_is_cortex_a53() (0)
> -#define cpu_is_cortex_a57() (0)
>  #endif
>  
>  #ifndef __ASSEMBLY__
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

