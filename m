Delivery-date: Fri, 03 Feb 2023 09:06:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNr5Q-00CQX5-De
	for lore@lore.pengutronix.de; Fri, 03 Feb 2023 09:06:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNr5N-0003cJ-MS
	for lore@pengutronix.de; Fri, 03 Feb 2023 09:06:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NJrIsE6U9JR2UGcOqQew8zzaBnMcT8tjeU3RN0OzvKs=; b=xs81pE544w8T2JeakNbl5Wm3jj
	fGXyx1W9WAedU3emKO3YeywAHwWu1CgYe+wBaPqPnq8lsUkEfm6bMhhnDHl5oQz0vIKz7Ic6k8Nrf
	KQnBtztUaSc78SU3ICZxqFw6P51FFSNUgfE1dw1JUDFH3LFOPGH2SKr2O19HnmAkdoR/9JBq2XSvW
	7mspzdvM0QEvYb5vFobcwDlRQBJx65qn67UzTNhJcRwhabjujJWKu9gSwEAT0vp3dm2KZAvO6Q8Z3
	HmlS1echBxs7TkskUj3s1M7WIF3yC5HZ9K9j+mEq7RH4lrx5gIvSZ1rDc9ePoFs1gFeL/hAIgzl+o
	uNzGPm8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNr4A-000vya-Fz; Fri, 03 Feb 2023 08:05:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNr3z-000vw0-2h
	for barebox@lists.infradead.org; Fri, 03 Feb 2023 08:04:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNr3x-0003BT-Jf; Fri, 03 Feb 2023 09:04:49 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNr3x-0006Py-CD; Fri, 03 Feb 2023 09:04:49 +0100
Date: Fri, 3 Feb 2023 09:04:49 +0100
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230203080449.GU13319@pengutronix.de>
References: <20230202132612.691206-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230202132612.691206-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_000451_137118_F0DEDDE7 
X-CRM114-Status: GOOD (  20.87  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] RISC-V: Makefile: cleanup layout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 02, 2023 at 02:26:10PM +0100, Marco Felsch wrote:
> The cflag and cppflag handling is rather complicated for this small
> Makefile. The code uses two helper variables riscv-cflags-y cflags-y
> which are assigned later to PBL_CPPFLAGS, KBUILD_CPPFLAGS and
> KBUILD_CFLAGS.
> 
> Remove this complexity by assigning the flags directly to
> KBUILD_CPPFLAGS. The variable is used during pbl/barebox compile and
> during cpp process.
> 
> While on it move the KBUILD_IMAGE to the KBUILD_BINARY to bundle the
> usage.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/riscv/Makefile | 18 ++++++------------
>  1 file changed, 6 insertions(+), 12 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index 279db046c0..b4cf5983a2 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -5,21 +5,19 @@ KBUILD_DEFCONFIG := rv64i_defconfig
>  KBUILD_CPPFLAGS += -fno-strict-aliasing
>  
>  ifeq ($(CONFIG_ARCH_RV32I),y)
> -	riscv-cflags-y += -march=rv32im -mabi=ilp32
> +	KBUILD_CPPFLAGS += -march=rv32im -mabi=ilp32
>  	riscv-ldflags-y += -melf32lriscv
>  else
> -	riscv-cflags-y += -march=rv64im -mabi=lp64
> +	KBUILD_CPPFLAGS += -march=rv64im -mabi=lp64
>  	riscv-ldflags-y += -melf64lriscv
>  endif
>  
> -riscv-cflags-y += -Wstrict-prototypes -mcmodel=medany -fpic
> -riscv-ldflags-y += -pie -static
>  
> -PBL_CPPFLAGS += $(riscv-cflags-y)
> -LDFLAGS_pbl += $(riscv-ldflags-y)
>  
> -cflags-y += $(riscv-cflags-y)
> +KBUILD_CPPFLAGS += -Wstrict-prototypes -mcmodel=medany -fpic
> +riscv-ldflags-y += -pie -static
>  
> +LDFLAGS_pbl += $(riscv-ldflags-y)
>  LDFLAGS_barebox += $(riscv-ldflags-y)
>  
>  ifndef CONFIG_MODULES
> @@ -29,6 +27,7 @@ LDFLAGS_barebox += -static --gc-sections
>  endif
>  
>  KBUILD_BINARY := barebox.bin
> +KBUILD_IMAGE := $(KBUILD_BINARY)
>  
>  archprepare: maketools
>  
> @@ -41,11 +40,6 @@ common-y += arch/riscv/boot/
>  
>  common-$(CONFIG_OFTREE) += arch/riscv/dts/
>  
> -KBUILD_CPPFLAGS += $(cflags-y)
> -KBUILD_CFLAGS += $(cflags-y)
> -
>  lds-y	:= arch/riscv/lib/barebox.lds
>  
>  CLEAN_FILES += arch/riscv/lib/barebox.lds
> -
> -KBUILD_IMAGE := $(KBUILD_BINARY)
> -- 
> 2.39.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


