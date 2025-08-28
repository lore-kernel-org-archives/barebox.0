Delivery-date: Thu, 28 Aug 2025 20:39:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urhX9-005XUW-2D
	for lore@lore.pengutronix.de;
	Thu, 28 Aug 2025 20:39:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urhX8-0004LB-DP
	for lore@pengutronix.de; Thu, 28 Aug 2025 20:39:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RO6BoZewza10kf6TwzJc13x0FBwF8ZDAHwpnKQwlI/g=; b=Qz6k2VIy589CKl6MKyQbc2AmwN
	yvDXINK4WIwpKHMqeG9DKnigWJTc5ozebCr7e3ksvxv2Zi1cDqGh5XYov2Eaw1sjkhe91WJGNDOJO
	QrDYaMmDZ3faAAxT2n7pgHugl1JXC5ix/evIyoiW5ooxQArdn1CzN88AOUakxgK0zBc7ey4FcPiDJ
	SGxPJihWCKY0n6oZ7wVVlXIMctwTUZ5uIeY/zRESjDMSoX0C2OLMT2Yf8oqqpuSiWY7V2iiF2cJV+
	+Q71vLvD6k7y7BVoSPtsdY+vFX/G2u6g36VHsMiF/lOx1ujTOnwrSHbMYXZybXXmK8qjgVMdpGD+c
	ZeNMGnWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urhWc-00000002oYz-0Xn5;
	Thu, 28 Aug 2025 18:39:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ure0M-00000001zGQ-1a8S
	for barebox@lists.infradead.org;
	Thu, 28 Aug 2025 14:53:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ure0I-0006cw-SI; Thu, 28 Aug 2025 16:53:30 +0200
Message-ID: <1d25580b-efaa-499e-8fbb-be6f5e34c3f0@pengutronix.de>
Date: Thu, 28 Aug 2025 16:53:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20250827155307.764061-1-chalianis1@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250827155307.764061-1-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_075334_417692_DA6308F9 
X-CRM114-Status: GOOD (  25.44  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: crypto: add a check for crypto extensions support.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 27.08.25 17:53, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> In some configuration the CPU may raise an exception bacause of an
> unknown instruction if it does not support Crypto Extensions for
> example in some BCM281X (RPi3B in my case) when running barebox
> as an EFI Payload, where the EFI stops with a synchronous execption
> See bellow:
> Synchronous Exception at 0x0000000037BFF548
> SP 0x0000000037F798C0 ELR 0x0000000037BFF548
> SPSR 0x20000209 FPSR 0x00000000
> ESR 0x02000000 FAR 0x14F64325185430BF
> ESR : EC 0x00 IL 0x1 ISS 0x00000000

Thanks for your patch. It's good to have the check, but are you sure
you don't have the ARMv8.0 Crypto Extensions?

arm_cpu_lowlevel_init() enables SIMD, so maybe not calling that
is the reason you got the crash?

For EFI payloads in particular, I don't think we should call
the whole arm_cpu_lowlevel_init(), but maybe there is an argument to be made
that FP/SIMD at least should be enabled. I am not sure if that alone
could lead to issues affecting the EFI loader though.

Cheers,
Ahmad

> 
> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> ---
>  arch/arm/crypto/sha1-ce-glue.c | 7 +++++++
>  arch/arm/crypto/sha2-ce-glue.c | 9 +++++++--
>  arch/arm/include/asm/sysreg.h  | 6 ++++++
>  3 files changed, 20 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/crypto/sha1-ce-glue.c b/arch/arm/crypto/sha1-ce-glue.c
> index 5b49237573fa..fea15f295a00 100644
> --- a/arch/arm/crypto/sha1-ce-glue.c
> +++ b/arch/arm/crypto/sha1-ce-glue.c
> @@ -14,6 +14,7 @@
>  #include <linux/linkage.h>
>  #include <asm/byteorder.h>
>  #include <asm/neon.h>
> +#include <asm/sysreg.h>
>  
>  MODULE_DESCRIPTION("SHA1 secure hash using ARMv8 Crypto Extensions");
>  MODULE_AUTHOR("Ard Biesheuvel <ard.biesheuvel@linaro.org>");
> @@ -88,6 +89,12 @@ static struct digest_algo m = {
>  
>  static int sha1_ce_mod_init(void)
>  {
> +	uint64_t isar0;
> +
> +	isar0 = read_sysreg(ID_AA64ISAR0_EL1);
> +	if (!(isar0 & ID_AA64ISAR0_EL1_SHA1_MASK))
> +		return -EOPNOTSUPP;
> +
>  	return digest_algo_register(&m);
>  }
>  coredevice_initcall(sha1_ce_mod_init);
> diff --git a/arch/arm/crypto/sha2-ce-glue.c b/arch/arm/crypto/sha2-ce-glue.c
> index 88cbc7993dac..8479b3c60cb3 100644
> --- a/arch/arm/crypto/sha2-ce-glue.c
> +++ b/arch/arm/crypto/sha2-ce-glue.c
> @@ -14,8 +14,7 @@
>  #include <linux/linkage.h>
>  #include <asm/byteorder.h>
>  #include <asm/neon.h>
> -
> -#include <asm/neon.h>
> +#include <asm/sysreg.h>
>  
>  MODULE_DESCRIPTION("SHA-224/SHA-256 secure hash using ARMv8 Crypto Extensions");
>  MODULE_AUTHOR("Ard Biesheuvel <ard.biesheuvel@linaro.org>");
> @@ -116,6 +115,12 @@ static struct digest_algo sha256 = {
>  
>  static int sha256_ce_digest_register(void)
>  {
> +	uint64_t isar0;
> +
> +	isar0 = read_sysreg(ID_AA64ISAR0_EL1);
> +	if (!(isar0 & ID_AA64ISAR0_EL1_SHA2_MASK))
> +		return -EOPNOTSUPP;
> +
>  	return digest_algo_register(&sha256);
>  }
>  coredevice_initcall(sha256_ce_digest_register);
> diff --git a/arch/arm/include/asm/sysreg.h b/arch/arm/include/asm/sysreg.h
> index 7d567e08d8b7..6f47016e54e8 100644
> --- a/arch/arm/include/asm/sysreg.h
> +++ b/arch/arm/include/asm/sysreg.h
> @@ -12,6 +12,12 @@
>  #include <asm/system.h>
>  #include <linux/stringify.h>
>  
> +/*
> + *	ARM64 registers
> + */
> +#define ID_AA64ISAR0_EL1_SHA1_MASK      0xF00UL
> +#define ID_AA64ISAR0_EL1_SHA2_MASK      0xF000UL
> +
>  /*
>   * Unlike read_cpuid, calls to read_sysreg are never expected to be
>   * optimized away or replaced with synthetic values.


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


