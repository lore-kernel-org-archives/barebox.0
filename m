Delivery-date: Fri, 12 May 2023 19:22:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxWTp-00FKdq-Oo
	for lore@lore.pengutronix.de; Fri, 12 May 2023 19:22:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxWTn-0002oQ-QE
	for lore@pengutronix.de; Fri, 12 May 2023 19:22:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h647HUnRIM1GCFoz8yMPCR5oJiEYSdRQ6y4LHTQuwpQ=; b=L6YpTw9xg1LwQBzkEm72exwPLo
	jf89u0Cgak1q/tYgTu7RsLkoZSMlUMj8+I8tn+ItAAwGG35X0o+CQk4M1zgxFdOkR1X6odgeQZmJt
	aN6on61Vj2xJDgAs684PQ+KCqB447jrkgx0t5K+1SuwKFwR/dPN3M2CWm2jF65Kv3VHDi8ruhvXBU
	3u7UGMxKtRRc7dfxBDV4el9k0nQsKsp/f4ANN2+lr2ewWi30A8sMc2155cF+YVDDdE9095J6VB2SJ
	S07qIX12nUq5/YD1shLDHR/OEgzZOG6rpXYaKrm1Qq0n0/m6SCWFogqoi9tb9susbmMv3+7FZJvEK
	Iq6YP5Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxWSo-00CZhR-2K;
	Fri, 12 May 2023 17:21:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxWSl-00CZh0-2y
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 17:21:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pxWSk-0002fV-F0; Fri, 12 May 2023 19:21:50 +0200
Message-ID: <df7140b1-6d1d-97e7-6ade-c10bc706abea@pengutronix.de>
Date: Fri, 12 May 2023 19:21:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
 <20230512111008.1120833-4-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230512111008.1120833-4-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_102151_961039_9C70FB95 
X-CRM114-Status: GOOD (  20.07  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 03/27] ARM: Add _32 suffix to aarch32 specific filenames
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 12.05.23 13:09, Sascha Hauer wrote:
> Several files in arch/arm/cpu/ have 32bit and 64bit versions. The
> 64bit versions have a _64 suffix, but the 32bit versions have none.
> This can be confusing sometimes as one doesn't know if a file is
> 32bit specific or common code.
> 
> Add a _32 suffix to the 32bit files to avoid this confusion.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/Makefile                             |  5 ++++-
>  arch/arm/cpu/Makefile                         | 20 +++++++++----------
>  arch/arm/cpu/{cache.c => cache_32.c}          |  0
>  arch/arm/cpu/{entry_ll.S => entry_ll_32.S}    |  0
>  .../arm/cpu/{exceptions.S => exceptions_32.S} |  0
>  .../arm/cpu/{interrupts.c => interrupts_32.c} |  0
>  arch/arm/cpu/{lowlevel.S => lowlevel_32.S}    |  0
>  arch/arm/cpu/{mmu-early.c => mmu-early_32.c}  |  0
>  arch/arm/cpu/{mmu.c => mmu_32.c}              |  0
>  arch/arm/cpu/{setupc.S => setupc_32.S}        |  0
>  .../arm/cpu/{smccc-call.S => smccc-call_32.S} |  0
>  11 files changed, 14 insertions(+), 11 deletions(-)
>  rename arch/arm/cpu/{cache.c => cache_32.c} (100%)
>  rename arch/arm/cpu/{entry_ll.S => entry_ll_32.S} (100%)
>  rename arch/arm/cpu/{exceptions.S => exceptions_32.S} (100%)
>  rename arch/arm/cpu/{interrupts.c => interrupts_32.c} (100%)
>  rename arch/arm/cpu/{lowlevel.S => lowlevel_32.S} (100%)
>  rename arch/arm/cpu/{mmu-early.c => mmu-early_32.c} (100%)
>  rename arch/arm/cpu/{mmu.c => mmu_32.c} (100%)
>  rename arch/arm/cpu/{setupc.S => setupc_32.S} (100%)
>  rename arch/arm/cpu/{smccc-call.S => smccc-call_32.S} (100%)
> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index a506f1e3a3..cb88c7b330 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -78,10 +78,13 @@ endif
>  ifeq ($(CONFIG_CPU_V8), y)
>  KBUILD_CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y)
>  KBUILD_AFLAGS   += -include asm/unified.h
> -export S64 = _64
> +export S64_32 = 64
> +export S64 = 64
>  else
>  KBUILD_CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y) $(CFLAGS_THUMB2)
>  KBUILD_AFLAGS   += -include asm/unified.h -msoft-float $(AFLAGS_THUMB2)
> +export S64_32 = 32
> +export S32 = 32
>  endif
>  
>  # Machine directory name.  This list is sorted alphanumerically
> diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> index 7674c1464c..fef2026da5 100644
> --- a/arch/arm/cpu/Makefile
> +++ b/arch/arm/cpu/Makefile
> @@ -2,15 +2,15 @@
>  
>  obj-y += cpu.o
>  
> -obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions$(S64).o interrupts$(S64).o
> -obj-$(CONFIG_MMU) += mmu$(S64).o mmu-common.o
> -obj-pbl-y += lowlevel$(S64).o
> -obj-pbl-$(CONFIG_MMU) += mmu-early$(S64).o
> +obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions_$(S64_32).o interrupts_$(S64_32).o
> +obj-$(CONFIG_MMU) += mmu_$(S64_32).o mmu-common.o
> +obj-pbl-y += lowlevel_$(S64_32).o
> +obj-pbl-$(CONFIG_MMU) += mmu-early_$(S64_32).o
>  obj-pbl-$(CONFIG_CPU_32v7) += hyp.o
>  AFLAGS_hyp.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
>  AFLAGS_hyp.pbl.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
>  
> -obj-y += start.o entry.o entry_ll$(S64).o
> +obj-y += start.o entry.o entry_ll_$(S64_32).o
>  KASAN_SANITIZE_start.o := n
>  
>  pbl-$(CONFIG_CPU_64) += head_64.o
> @@ -18,7 +18,7 @@ pbl-$(CONFIG_CPU_64) += head_64.o
>  pbl-$(CONFIG_BOARD_ARM_GENERIC_DT) += board-dt-2nd.o
>  pbl-$(CONFIG_BOARD_ARM_GENERIC_DT_AARCH64) += board-dt-2nd-aarch64.o
>  
> -obj-pbl-y += setupc$(S64).o cache$(S64).o
> +obj-pbl-y += setupc_$(S64_32).o cache_$(S64_32).o
>  
>  obj-$(CONFIG_ARM_PSCI_CLIENT) += psci-client.o
>  
> @@ -35,9 +35,9 @@ endif
>  
>  obj-$(CONFIG_ARM_PSCI) += psci.o
>  obj-$(CONFIG_ARM_PSCI_OF) += psci-of.o
> -obj-pbl-$(CONFIG_ARM_SMCCC) += smccc-call$(S64).o
> -AFLAGS_smccc-call$(S64).o :=-Wa,-march=armv$(if $(S64),8,7)-a
> -AFLAGS_smccc-call$(S64).pbl.o :=-Wa,-march=armv$(if $(S64),8,7)-a
> +obj-pbl-$(CONFIG_ARM_SMCCC) += smccc-call_$(S64_32).o
> +AFLAGS_smccc-call_$(S64_32).o :=-Wa,-march=armv$(if $(S64),8,7)-a
> +AFLAGS_smccc-call_$(S64_32).pbl.o :=-Wa,-march=armv$(if $(S64),8,7)-a
>  obj-$(CONFIG_ARM_SECURE_MONITOR) += sm.o sm_as.o
>  AFLAGS_sm_as.o		:=-Wa,-march=armv7-a
>  
> @@ -52,7 +52,7 @@ obj-pbl-$(CONFIG_CPU_64v8) += cache-armv8.o
>  AFLAGS_cache-armv8.o       :=-Wa,-march=armv8-a
>  AFLAGS-cache-armv8.pbl.o   :=-Wa,-march=armv8-a
>  
> -pbl-y += entry.o entry_ll$(S64).o
> +pbl-y += entry.o entry_ll_$(S64_32).o
>  pbl-y += uncompress.o
>  pbl-$(CONFIG_ARM_ATF) += atf.o
>  
> diff --git a/arch/arm/cpu/cache.c b/arch/arm/cpu/cache_32.c
> similarity index 100%
> rename from arch/arm/cpu/cache.c
> rename to arch/arm/cpu/cache_32.c
> diff --git a/arch/arm/cpu/entry_ll.S b/arch/arm/cpu/entry_ll_32.S
> similarity index 100%
> rename from arch/arm/cpu/entry_ll.S
> rename to arch/arm/cpu/entry_ll_32.S
> diff --git a/arch/arm/cpu/exceptions.S b/arch/arm/cpu/exceptions_32.S
> similarity index 100%
> rename from arch/arm/cpu/exceptions.S
> rename to arch/arm/cpu/exceptions_32.S
> diff --git a/arch/arm/cpu/interrupts.c b/arch/arm/cpu/interrupts_32.c
> similarity index 100%
> rename from arch/arm/cpu/interrupts.c
> rename to arch/arm/cpu/interrupts_32.c
> diff --git a/arch/arm/cpu/lowlevel.S b/arch/arm/cpu/lowlevel_32.S
> similarity index 100%
> rename from arch/arm/cpu/lowlevel.S
> rename to arch/arm/cpu/lowlevel_32.S
> diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early_32.c
> similarity index 100%
> rename from arch/arm/cpu/mmu-early.c
> rename to arch/arm/cpu/mmu-early_32.c
> diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu_32.c
> similarity index 100%
> rename from arch/arm/cpu/mmu.c
> rename to arch/arm/cpu/mmu_32.c
> diff --git a/arch/arm/cpu/setupc.S b/arch/arm/cpu/setupc_32.S
> similarity index 100%
> rename from arch/arm/cpu/setupc.S
> rename to arch/arm/cpu/setupc_32.S
> diff --git a/arch/arm/cpu/smccc-call.S b/arch/arm/cpu/smccc-call_32.S
> similarity index 100%
> rename from arch/arm/cpu/smccc-call.S
> rename to arch/arm/cpu/smccc-call_32.S

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



