Delivery-date: Fri, 21 Aug 2026 15:36:22 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wxPPx-005b21-2W
	for lore@lore.pengutronix.de;
	Fri, 21 Aug 2026 15:36:22 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CB7CB20190E
	for <lore@pengutronix.de>; Fri, 21 Aug 2026 15:36:21 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VC908LK3;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RTqg7rk/S+PAlwrRN61WttMzS3CS7HYaomFBrek7Szw=; b=VC908LK3pi8RDGfXcGLqlN+lXr
	jkywCFGpwuMOXeOJslFSAdAstBBegmuMREMBQFJWUl/4nNmqOkGBYuL9wddx2KXQ5qIeHypMYGnXj
	COphNdj+Ccyfsqul9DeObwRyEP1nXUbRJH9+maxDYFcLTllk/9VFm5gdvcpllmyDD53xvV/EDX+Nw
	fzmnENZ3MiYxXpqBucJ/mdhyVhLcyPlOccfhrd9OYbxgtftWnI5PGDI5s2YUK02s8GagYDc7u7k35
	A0QzLYLvJLgqfWZlkw5Jd7l/LILrusmdyMoUdfx7hq7jlzVBVzFIn+YBz9CrI/S7Tpjvmb8ko084K
	QBg54fpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxPOW-0000000DQuE-3S82;
	Fri, 21 Aug 2026 13:34:52 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxPOS-0000000DQtI-3lmB
	for barebox@lists.infradead.org;
	Fri, 21 Aug 2026 13:34:51 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id BAD11201B9A
	for <barebox@lists.infradead.org>; Fri, 21 Aug 2026 15:34:43 +0200 (CEST)
Message-ID: <4f5f1e06-afc6-4b9a-8dd6-5cabf0a0e5c3@pengutronix.de>
Date: Fri, 21 Aug 2026 15:34:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] bootm: remove previously deprecated CONFIG_BOOTM_OPTEE
To: BAREBOX <barebox@lists.infradead.org>
References: <20260805144855.3884397-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260805144855.3884397-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260821_063449_261181_2AFFC570 
X-CRM114-Status: GOOD (  36.62  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 8/5/26 4:48 PM, Ahmad Fatoum wrote: > Early loading
    of OP-TEE for 32-bit platforms was added in 2020 shortly > after initial
   (late) loading support was added in 2019. > > CONFIG_BOOTM_OPTEE (practi [...]
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 9z4pbatzzaz6suw7pensg8oozxs931yx
X-Spamd-Result: default: False [-7.51 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: CB7CB20190E

Hi,

On 8/5/26 4:48 PM, Ahmad Fatoum wrote:
> Early loading of OP-TEE for 32-bit platforms was added in 2020 shortly
> after initial (late) loading support was added in 2019.
> 
> CONFIG_BOOTM_OPTEE (practically OP-TEE in a FIT image alongside the
> kernel) has been documented as deprecated since 2025 as it greatly
> increases the trusted computing base by running all of barebox in
> secure monitor mode as opposed to only the prebootloader.
> 
> Additionally, a `tee =' key in the FIT is a barebox invention and the
> spec conforming way would be to reference the tee in the loadables
> property of a configuration.
> 
> For all these reasons, let's finally remove late loading.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Any objections?

Cheers,
Ahmad

> ---
>  .../migration-guides/migration-master.rst     | 13 ++++
>  Documentation/user/optee.rst                  | 12 ++--
>  Documentation/user/security.rst               |  3 -
>  arch/arm/cpu/start.c                          |  3 -
>  arch/arm/include/asm/armlinux.h               |  2 +-
>  arch/arm/lib32/Makefile                       |  1 -
>  arch/arm/lib32/armlinux.c                     | 10 +--
>  arch/arm/lib32/bootm.c                        | 64 +------------------
>  arch/arm/lib32/bootu.c                        |  2 +-
>  arch/arm/lib32/bootz.c                        |  2 +-
>  arch/arm/lib32/start-kernel-optee.S           | 16 -----
>  commands/bootm.c                              | 11 +---
>  common/bootm-android-image.c                  |  1 -
>  common/bootm-fit.c                            | 31 ++-------
>  common/bootm.c                                | 20 ++----
>  drivers/tee/optee/Kconfig                     |  2 +-
>  include/bootm.h                               |  6 --
>  include/loadable.h                            |  6 +-
>  lib/loadable.c                                |  2 -
>  security/Kconfig                              | 18 ------
>  20 files changed, 38 insertions(+), 187 deletions(-)
>  delete mode 100644 arch/arm/lib32/start-kernel-optee.S
> 
> diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
> index e28a608e53e9..68f0ef65756b 100644
> --- a/Documentation/migration-guides/migration-master.rst
> +++ b/Documentation/migration-guides/migration-master.rst
> @@ -17,3 +17,16 @@ ARCH=arm64
>  Use of ``ARCH=arm`` for 64-bit ARM builds is deprecated and now emits
>  a warning. Users should change build scripts to use ``ARCH=arm64``
>  instead when targetting ARMv8.
> +
> +Removal of deprecated CONFIG_BOOTM_OPTEE
> +----------------------------------------
> +
> +The support for late loading of OP-TEE had been deprecated and ultimately
> +removed as it greatly increased the attack surface and was only supported
> +on 32-bit ARM systems.
> +
> +OP-TEE loading is now only supported
> +:ref:`in the prebootloader <optee_early_loading>`.
> +
> +For i.MX6 boards, this can be enabled by enabling
> +``CONFIG_FIRMWARE_IMX6_OPTEE``.
> diff --git a/Documentation/user/optee.rst b/Documentation/user/optee.rst
> index 88e651ddec57..975dcdc3dbac 100644
> --- a/Documentation/user/optee.rst
> +++ b/Documentation/user/optee.rst
> @@ -39,15 +39,11 @@ main barebox start function.
>  Before Linux start
>  ^^^^^^^^^^^^^^^^^^
>  
> -.. warning:: Late loading of OP-TEE is deprecated, greatly increases the
> -   attack surface and is only supported on 32-bit ARM systems.
> -   Systems should prefer early loading OP-TEE whenever possible.
> +The support for late loading of OP-TEE had been deprecated and ultimately
> +removed as it greatly increased the attack surface and was only supported
> +on 32-bit ARM systems.
> +OP-TEE loading is now only supported :ref:`in the prebootloader <optee_early_loading>`.
>  
> -Enable the `CONFIG_BOOTM_OPTEE` configuration variable and configure the
> -`CONFIG_OPTEE_SIZE` variable. This will reserve a memory area at the end
> -of memory for OP-TEE to run, usually Barebox would relocate itself there. To
> -load OP-TEE before the kernel is started, configure the global ``bootm.tee``
> -variable to point to a valid OPTEE v1 binary.
>  
>  Communication with OP-TEE
>  -------------------------
> diff --git a/Documentation/user/security.rst b/Documentation/user/security.rst
> index 94184ab8e893..f8cd6bd090f2 100644
> --- a/Documentation/user/security.rst
> +++ b/Documentation/user/security.rst
> @@ -69,9 +69,6 @@ Firmware) should happen as early as possible, i.e., within the barebox
>  barebox will run with elevated permission, which greatly increases the attack
>  surface.
>  
> -In concrete terms, the deprecated ``CONFIG_BOOTM_OPTEE`` option should be
> -disabled in favor of :ref:`loading OP-TEE early <optee_early_loading>`.
> -
>  Ensuring the kernel is verified
>  -------------------------------
>  
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 6a9941275c12..f9f380444f81 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -192,9 +192,6 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
>  
>  	handoff_data_set(hd);
>  
> -	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
> -		of_add_reserve_entry(endmem - OPTEE_SIZE, endmem - 1);
> -
>  	pr_debug("starting barebox...\n");
>  
>  	start_barebox();
> diff --git a/arch/arm/include/asm/armlinux.h b/arch/arm/include/asm/armlinux.h
> index 871664824643..83813a5dce97 100644
> --- a/arch/arm/include/asm/armlinux.h
> +++ b/arch/arm/include/asm/armlinux.h
> @@ -63,6 +63,6 @@ struct image_data;
>  
>  void start_linux(void *adr, int swap, unsigned long initrd_address,
>  		 unsigned long initrd_size, void *oftree,
> -		 enum arm_security_state, void *optee);
> +		 enum arm_security_state);
>  
>  #endif /* __ARCH_ARMLINUX_H */
> diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile
> index 67c4f16f76ad..5598ab386052 100644
> --- a/arch/arm/lib32/Makefile
> +++ b/arch/arm/lib32/Makefile
> @@ -3,7 +3,6 @@
>  obj-$(CONFIG_ARM_LINUX)	+= armlinux.o
>  obj-$(CONFIG_CMD_BOOTZ)	+= bootz.o
>  obj-$(CONFIG_BOOTM)     += bootm.o
> -obj-$(CONFIG_BOOTM_OPTEE) += start-kernel-optee.o
>  obj-$(CONFIG_CMD_BOOTU) += bootu.o
>  obj-$(CONFIG_BOOT_ATAGS) += atags.o
>  obj-y	+= div0.o
> diff --git a/arch/arm/lib32/armlinux.c b/arch/arm/lib32/armlinux.c
> index 6890d9cb6fda..8bb3c5f9c273 100644
> --- a/arch/arm/lib32/armlinux.c
> +++ b/arch/arm/lib32/armlinux.c
> @@ -28,11 +28,9 @@
>  #include <asm/secure.h>
>  #include <asm/boot.h>
>  
> -void start_kernel_optee(void *optee, void *kernel, void *oftree);
> -
>  void start_linux(void *adr, int swap, unsigned long initrd_address,
>  		 unsigned long initrd_size, void *oftree,
> -		 enum arm_security_state state, void *optee)
> +		 enum arm_security_state state)
>  {
>  	phys_addr_t params = 0;
>  	unsigned architecture;
> @@ -79,9 +77,5 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
>  		__asm__ __volatile__("mcr p15, 0, %0, c1, c0" :: "r" (reg));
>  	}
>  
> -	if (optee && IS_ENABLED(CONFIG_BOOTM_OPTEE)) {
> -		start_kernel_optee(optee, adr, oftree);
> -	} else {
> -		__jump_to_linux(adr, architecture, params);
> -	}
> +	__jump_to_linux(adr, architecture, params);
>  }
> diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
> index e94bb979eff9..e2a80ada788b 100644
> --- a/arch/arm/lib32/bootm.c
> +++ b/arch/arm/lib32/bootm.c
> @@ -21,7 +21,6 @@
>  #include <binfmt.h>
>  #include <restart.h>
>  #include <globalvar.h>
> -#include <tee/optee.h>
>  #include <asm/byteorder.h>
>  #include <asm/setup.h>
>  #include <asm/barebox-arm.h>
> @@ -149,54 +148,6 @@ static int get_kernel_addresses(size_t image_size,
>  	return 0;
>  }
>  
> -static int optee_verify_header_request_region(struct image_data *data, struct optee_header *hdr)
> -{
> -	int ret;
> -
> -	ret = optee_verify_header(hdr);
> -	if (ret < 0) {
> -		pr_err("Could not verify header: %pe", ERR_PTR(ret));
> -		return ret;
> -	}
> -
> -	data->tee_res = request_sdram_region("TEE", hdr->init_load_addr_lo, hdr->init_size,
> -					     MEMTYPE_RESERVED, MEMATTRS_RW_DEVICE);
> -	if (!data->tee_res)
> -		return -EINVAL;
> -
> -	return 0;
> -}
> -
> -static int bootm_load_tee(struct image_data *data)
> -{
> -	int ret;
> -	struct optee_header hdr;
> -
> -	if (!data->tee)
> -		return 0;
> -
> -	ret = loadable_extract_into_buf(data->tee, &hdr, sizeof(hdr), 0,
> -					LOADABLE_EXTRACT_PARTIAL);
> -	if (ret < 0)
> -		return ret;
> -
> -	ret = optee_verify_header_request_region(data, &hdr);
> -	if (ret < 0)
> -		return ret;
> -
> -	ret = loadable_extract_into_buf(data->tee, (void *)data->tee_res->start,
> -					hdr.init_size, sizeof(hdr), 0);
> -	if (ret < 0) {
> -		release_region(data->tee_res);
> -		return ret;
> -	}
> -
> -	printf("Loaded TEE image to %pa, size 0x%08x\n",
> -	       (void *)data->tee_res->start, hdr.init_size);
> -
> -	return 0;
> -}
> -
>  static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
>  			    int swap, void *fdt)
>  {
> @@ -204,7 +155,6 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
>  	unsigned long initrd_start = 0, initrd_size = 0, initrd_end = 0;
>  	const struct resource *initrd_res, *sdram;
>  	struct resource gap;
> -	void *tee;
>  	enum arm_security_state state = bootm_arm_security_state();
>  	void *fdt_load_address = NULL;
>  	int ret;
> @@ -259,13 +209,6 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
>  			return PTR_ERR(fdt_res);
>  	}
>  
> -	if (IS_ENABLED(CONFIG_BOOTM_OPTEE)) {
> -		ret = bootm_load_tee(data);
> -		if (ret)
> -			return ret;
> -	}
> -
> -
>  	if (bootm_verbose(data)) {
>  		printf("\nStarting kernel at 0x%08lx", kernel);
>  		if (initrd_size)
> @@ -291,13 +234,8 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
>  	if (ret)
>  		return ret;
>  
> -	if (data->tee_res)
> -		tee = (void *)data->tee_res->start;
> -	else
> -		tee = NULL;
> -
>  	start_linux((void *)kernel, swap, initrd_start, initrd_size,
> -		    fdt_load_address, state, tee);
> +		    fdt_load_address, state);
>  
>  	restart_machine(0);
>  
> diff --git a/arch/arm/lib32/bootu.c b/arch/arm/lib32/bootu.c
> index 4b0f495aea5f..f7b6ccc8c651 100644
> --- a/arch/arm/lib32/bootu.c
> +++ b/arch/arm/lib32/bootu.c
> @@ -36,7 +36,7 @@ static int do_bootu(int argc, char *argv[])
>  	if (ret)
>  		return ret;
>  
> -	start_linux(kernel, 0, 0, 0, oftree, ARM_STATE_SECURE, NULL);
> +	start_linux(kernel, 0, 0, 0, oftree, ARM_STATE_SECURE);
>  
>  	return 1;
>  }
> diff --git a/arch/arm/lib32/bootz.c b/arch/arm/lib32/bootz.c
> index 5aa762b4912d..97607e43a645 100644
> --- a/arch/arm/lib32/bootz.c
> +++ b/arch/arm/lib32/bootz.c
> @@ -120,7 +120,7 @@ static int do_bootz(int argc, char *argv[])
>  	if (ret)
>  		return ret;
>  
> -	start_linux(zimage, swap, 0, 0, oftree, ARM_STATE_SECURE, NULL);
> +	start_linux(zimage, swap, 0, 0, oftree, ARM_STATE_SECURE);
>  
>  	return 0;
>  
> diff --git a/arch/arm/lib32/start-kernel-optee.S b/arch/arm/lib32/start-kernel-optee.S
> deleted file mode 100644
> index 261ab39ba7a3..000000000000
> --- a/arch/arm/lib32/start-kernel-optee.S
> +++ /dev/null
> @@ -1,16 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> -
> -#include <linux/linkage.h>
> -
> -ENTRY(start_kernel_optee)
> -	/*
> -	 * r0 = optee
> -	 * r1 = kernel
> -	 * r2 = oftree
> -	 */
> -	mov r4, r0
> -	mov r0, #0
> -	mov lr, r1
> -	mov r1, #0
> -	bx r4
> -ENDPROC(start_kernel_optee)
> diff --git a/commands/bootm.c b/commands/bootm.c
> index 24bce5ce6b64..9ff4b218fd1f 100644
> --- a/commands/bootm.c
> +++ b/commands/bootm.c
> @@ -28,7 +28,7 @@
>  #include <magicvar.h>
>  #include <asm-generic/memory_layout.h>
>  
> -#define BOOTM_OPTS_COMMON "sca:e:vo:fdt:"
> +#define BOOTM_OPTS_COMMON "sca:e:vo:fd"
>  
>  #ifdef CONFIG_BOOTM_INITRD
>  #define BOOTM_OPTS BOOTM_OPTS_COMMON "L:r:"
> @@ -88,9 +88,6 @@ static int do_bootm(int argc, char *argv[])
>  		case 'd':
>  			data.dryrun = 1;
>  			break;
> -		case 't':
> -			data.tee_file = optarg;
> -			break;
>  		default:
>  			return COMMAND_ERROR_USAGE;
>  		}
> @@ -129,9 +126,6 @@ BAREBOX_CMD_HELP_OPT ("-e OFFS\t","entry point to the image relative to start (0
>  #ifdef CONFIG_OFTREE
>  BAREBOX_CMD_HELP_OPT ("-o DTB\t","specify open firmware device tree")
>  #endif
> -#ifdef CONFIG_BOOTM_OPTEE
> -BAREBOX_CMD_HELP_OPT ("-t TEE\t","specify TEE image")
> -#endif
>  #ifdef CONFIG_BOOTM_VERBOSE
>  BAREBOX_CMD_HELP_OPT ("-v\t","verbose")
>  #endif
> @@ -150,9 +144,6 @@ BAREBOX_CMD_START(bootm)
>  #endif
>  #ifdef CONFIG_BOOTM_VERBOSE
>  					  "v"
> -#endif
> -#ifdef CONFIG_BOOTM_OPTEE
> -					  "t"
>  #endif
>  					  "] IMAGE")
>  	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
> diff --git a/common/bootm-android-image.c b/common/bootm-android-image.c
> index 6acc41c3dd66..f48c97741528 100644
> --- a/common/bootm-android-image.c
> +++ b/common/bootm-android-image.c
> @@ -54,7 +54,6 @@ static int do_bootm_aimage(struct image_data *img_data)
>  	struct bootm_data bootm_data = {
>  		.oftree_file = img_data->oftree_file,
>  		.initrd_file = img_data->initrd_file,
> -		.tee_file = img_data->tee_file,
>  		.verbose = img_data->verbose,
>  		.verify = img_data->verify,
>  		.force = img_data->force,
> diff --git a/common/bootm-fit.c b/common/bootm-fit.c
> index 995bd7181223..f7742b871785 100644
> --- a/common/bootm-fit.c
> +++ b/common/bootm-fit.c
> @@ -87,30 +87,6 @@ static bool loadable_from_fit_oftree(struct image_data *data,
>  	return true;
>  }
>  
> -/*
> - * loadable_from_fit_tee() - create tee loadable from FIT
> - * @data:		image data context
> - * @fit:		handle of FIT image
> - * @config:		config to look up kernel in
> - *
> - * This creates a loadable for the first trusted execution environment
> - * in the config.
> - *
> - * Return: true if a TEE exists or
> - *         false otherwise.
> - */
> -static bool loadable_from_fit_tee(struct image_data *data,
> -				struct fit_handle *fit,
> -				void *config)
> -{
> -	if (!fit_has_image(fit, config, "tee"))
> -		return false;
> -
> -	loadable_release(&data->tee);
> -	data->tee = loadable_from_fit(fit, config, "tee", 0, LOADABLE_TEE);
> -	return true;
> -}
> -
>  static bool bootm_fit_config_valid(struct fit_handle *fit,
>  				   struct device_node *config)
>  {
> @@ -164,6 +140,12 @@ int bootm_open_fit(struct image_data *data, bool override)
>  		goto err;
>  	}
>  
> +	if (fit_has_image(fit, fit_config, "tee")) {
> +		pr_err("Late-loaded tee is insecure and no longer supported\n");
> +		ret = -ENOSYS;
> +		goto err;
> +	}
> +
>  	loadable_from_fit_os(data, fit, fit_config);
>  	if (override)
>  		data->is_override.os = true;
> @@ -171,7 +153,6 @@ int bootm_open_fit(struct image_data *data, bool override)
>  		data->is_override.initrd = true;
>  	if (loadable_from_fit_oftree(data, fit, fit_config) && override)
>  		data->is_override.oftree = true;
> -	loadable_from_fit_tee(data, fit, fit_config);
>  
>  	data->kernel_type = bootm_fit_update_os_header(data);
>  
> diff --git a/common/bootm.c b/common/bootm.c
> index de1b87fe2072..27da1a590bf1 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -95,7 +95,6 @@ void bootm_data_init_defaults(struct bootm_data *data)
>  	data->os_address = UIMAGE_SOME_ADDRESS;
>  	data->os_entry = UIMAGE_SOME_ADDRESS;
>  	data->oftree_file = getenv_nonempty("global.bootm.oftree");
> -	data->tee_file = getenv_nonempty("global.bootm.tee");
>  	data->os_file = getenv_nonempty("global.bootm.image");
>  	getenv_ul("global.bootm.image.loadaddr", &data->os_address);
>  	if (IS_ENABLED(CONFIG_BOOTM_INITRD)) {
> @@ -117,7 +116,6 @@ void bootm_data_init_defaults(struct bootm_data *data)
>  void bootm_data_restore_defaults(const struct bootm_data *data)
>  {
>  	globalvar_set("bootm.oftree", data->oftree_file);
> -	globalvar_set("bootm.tee", data->tee_file);
>  	globalvar_set("bootm.image", data->os_file);
>  	pr_setenv("global.bootm.image.loadaddr", "0x%lx", data->os_address);
>  	if (IS_ENABLED(CONFIG_BOOTM_INITRD)) {
> @@ -495,12 +493,6 @@ static int bootm_open_files(struct image_data *data)
>  			return ret;
>  	}
>  
> -	if (data->tee_file) {
> -		data->tee = loadable_from_file(data->tee_file, LOADABLE_TEE);
> -		if (IS_ERR(data->tee))
> -			return PTR_ERR(data->tee);
> -	}
> -
>  	return 0;
>  }
>  
> @@ -545,13 +537,16 @@ struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data)
>  		return ERR_PTR(-ENOENT);
>  	}
>  
> +	if (nonempty(globalvar_get("bootm.tee"))) {
> +		pr_err("Late-loaded tee is insecure and no longer supported\n");
> +		return ERR_PTR(-ENOSYS);
> +	}
> +
>  	data = xzalloc(sizeof(*data));
>  
>  	bootm_image_name_and_part(bootm_data->os_file, &data->os_file, &data->os_part);
>  	bootm_image_name_and_part(bootm_data->oftree_file, &data->oftree_file, &data->oftree_part);
>  	bootm_image_name_and_part(bootm_data->initrd_file, &data->initrd_file, &data->initrd_part);
> -	if (bootm_data->tee_file)
> -		data->tee_file = xstrdup(bootm_data->tee_file);
>  	data->verbose = bootm_data->verbose;
>  	data->verify = bootm_data->verify;
>  	data->force = bootm_data->force;
> @@ -581,7 +576,6 @@ struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data)
>  		 */
>  		data->oftree_file = NULL;
>  		data->initrd_file = NULL;
> -		data->tee_file = NULL;
>  		if (data->image_type != filetype_fit) {
>  			pr_err("Signed boot and image is no FIT image, aborting\n");
>  			ret = -EINVAL;
> @@ -803,11 +797,9 @@ void bootm_boot_cleanup(struct image_data *data)
>  		of_del_reserve_entry(data->initrd_res->start, data->initrd_res->end);
>  	release_sdram_region(data->initrd_res);
>  	release_sdram_region(data->oftree_res);
> -	release_sdram_region(data->tee_res);
>  	loadable_release(&data->oftree);
>  	loadable_release(&data->initrd);
>  	loadable_release(&data->os);
> -	loadable_release(&data->tee);
>  	if (data->of_root_node)
>  		of_delete_node(data->of_root_node);
>  
> @@ -816,7 +808,6 @@ void bootm_boot_cleanup(struct image_data *data)
>  	free(data->os_file);
>  	free(data->oftree_file);
>  	free(data->initrd_file);
> -	free(data->tee_file);
>  	free(data);
>  }
>  
> @@ -921,7 +912,6 @@ BAREBOX_MAGICVAR(global.bootm.image.loadaddr, "bootm default boot image loadaddr
>  BAREBOX_MAGICVAR(global.bootm.initrd, "bootm default initrd");
>  BAREBOX_MAGICVAR(global.bootm.initrd.loadaddr, "bootm default initrd loadaddr");
>  BAREBOX_MAGICVAR(global.bootm.oftree, "bootm default oftree");
> -BAREBOX_MAGICVAR(global.bootm.tee, "bootm default tee image");
>  BAREBOX_MAGICVAR(global.bootm.dryrun, "bootm default dryrun level");
>  BAREBOX_MAGICVAR(global.bootm.verify, "bootm default verify level");
>  #ifdef CONFIG_EFI_LOADER
> diff --git a/drivers/tee/optee/Kconfig b/drivers/tee/optee/Kconfig
> index fcaca29a5df7..73e77d0559c4 100644
> --- a/drivers/tee/optee/Kconfig
> +++ b/drivers/tee/optee/Kconfig
> @@ -18,7 +18,7 @@ config OPTEE
>  	  For more information see: https://www.op-tee.org
>  
>  	  This driver doesn't actually load OP-TEE. For that see
> -	  CONFIG_BOOTM_OPTEE and PBL_OPTEE.
> +	  CONFIG_PBL_OPTEE.
>  
>  	  If unsure, say n here.
>  
> diff --git a/include/bootm.h b/include/bootm.h
> index 1a556e1e95b5..946713971eb5 100644
> --- a/include/bootm.h
> +++ b/include/bootm.h
> @@ -24,7 +24,6 @@ struct bootm_data {
>  	const char *os_file;
>  	const char *initrd_file;
>  	const char *oftree_file;
> -	const char *tee_file;
>  	const char *root_dev;
>  	const char *root_param;
>  	int verbose;
> @@ -130,11 +129,6 @@ struct image_data {
>  	 * it.
>  	 */
>  	void *os_header;
> -	char *tee_file;
> -	struct resource *tee_res;
> -
> -	/* Future default case: A generic loadable object */
> -	struct loadable *tee;
>  
>  	/* Type of OS image, e.g. filetype_fit or the same as kernel_type */
>  	enum filetype image_type;
> diff --git a/include/loadable.h b/include/loadable.h
> index 79b1579be291..9cc89ea4581c 100644
> --- a/include/loadable.h
> +++ b/include/loadable.h
> @@ -17,14 +17,12 @@ struct loadable;
>   * @LOADABLE_KERNEL: kernel image
>   * @LOADABLE_INITRD: initial ramdisk
>   * @LOADABLE_FDT: flattened device tree
> - * @LOADABLE_TEE: trusted execution environment
>   */
>  enum loadable_type {
>  	LOADABLE_UNSPECIFIED,
>  	LOADABLE_KERNEL,
>  	LOADABLE_INITRD,
>  	LOADABLE_FDT,
> -	LOADABLE_TEE,
>  };
>  
>  /**
> @@ -130,7 +128,7 @@ struct loadable_ops {
>  /**
>   * struct loadable - lazy-loadable boot component
>   * @name: descriptive name for debugging
> - * @type: type of component (kernel, initrd, fdt, tee)
> + * @type: type of component (kernel, initrd, fdt)
>   * @ops: operations for this loadable
>   * @priv: format-specific private data
>   * @info: cached metadata populated by get_info()
> @@ -139,7 +137,7 @@ struct loadable_ops {
>   * @chained_loadables: list of additional loadables chained to this one
>   * @list: list node for chained_loadables
>   *
> - * Represents something that can be loaded to RAM (kernel, initrd, fdt, tee).
> + * Represents something that can be loaded to RAM (kernel, initrd, fdt).
>   * Metadata can be queried without loading. Actual loading happens on extract
>   * or via mmap.
>   */
> diff --git a/lib/loadable.c b/lib/loadable.c
> index 65121a7dbf90..8c016c125d87 100644
> --- a/lib/loadable.c
> +++ b/lib/loadable.c
> @@ -31,8 +31,6 @@ const char *loadable_type_tostr(enum loadable_type type)
>  		return "initrd";
>  	case LOADABLE_FDT:
>  		return "fdt";
> -	case LOADABLE_TEE:
> -		return "tee";
>  	default:
>  		return NULL;
>  	}
> diff --git a/security/Kconfig b/security/Kconfig
> index b14803348b68..cb5cc2b92bc2 100644
> --- a/security/Kconfig
> +++ b/security/Kconfig
> @@ -156,24 +156,6 @@ config OPTEE_SHM_SIZE
>  	  mode supported by barebox anyway, but support needs to be enabled
>  	  in OP-TEE at compile-time.
>  
> -config BOOTM_OPTEE
> -	bool
> -	prompt "support booting OP-TEE"
> -	depends on BOOTM && ARM32
> -	select HAVE_OPTEE
> -	select HAS_INSECURE_DEFAULTS
> -	help
> -	  OP-TEE is a trusted execution environment (TEE). With this option
> -	  enabled barebox supports starting optee_os as part of the bootm command.
> -	  Instead of the kernel bootm starts the optee_os binary which then starts
> -	  the kernel in nonsecure mode. Pass the optee_os binary with the -t option
> -	  or in the global.bootm.tee variable.
> -
> -	  This mode of late loading OP-TEE just before the kernel is deprecated
> -	  in favor of early loading OP-TEE in the PBL (CONFIG_PBL_OPTEE).
> -	  Early-loading greatly reduces the attack surface and is the only mode
> -	  supported outside of ARMv7.
> -
>  config PBL_OPTEE
>  	bool "Enable OP-TEE early start"
>  	depends on ARM

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



