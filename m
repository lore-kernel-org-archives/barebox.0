Delivery-date: Thu, 21 Aug 2025 09:18:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uozYn-002tN3-1J
	for lore@lore.pengutronix.de;
	Thu, 21 Aug 2025 09:18:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uozYm-0002rO-1z
	for lore@pengutronix.de; Thu, 21 Aug 2025 09:18:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2mSlS1EuBpR/2pPj4sZecIZROBAmRQZsiA3RoJy6RsM=; b=tXJ+0rKNcNNVNV5/kU0MCoDD0z
	HRKi1cBvyKfzcLmvMN1Ls38J13Rp//Bq60MTtc8flWCe3qDdoP54vYJBiQINlW1RgU/lZFN7tL+Oe
	0Yn46eK+aYxXs5RDl0nKh/4P3I0/dEUZjJGzFsrYzcy1xOTyd20RGma3UkVLQbQ6HD0ZFLsEzNV36
	aE3XtHSIRRJCR7lh+bMK0/lXz1UtY9HLfiP88D2IMpKxfhrC3kzzHf4Qg59MtkWfOLVyWDku3s7KL
	5W82qg0lgdaGshv4d7LMhxpB1ThPgtuYRmPfn79hWVC+Ty+i9RFsozUg4WqIAc9fNg0QAl3JRdeA3
	aeKYaq3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uozY7-0000000G4kl-35aZ;
	Thu, 21 Aug 2025 07:17:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uozEW-0000000G1Ut-1bBz
	for barebox@lists.infradead.org;
	Thu, 21 Aug 2025 06:57:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uozET-0000Vm-Ta; Thu, 21 Aug 2025 08:57:09 +0200
Message-ID: <227a5210-f01f-48ce-9908-50ebc01931a8@pengutronix.de>
Date: Thu, 21 Aug 2025 08:57:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
References: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
 <20250820-security-policies-v1-15-76fde70fdbd8@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250820-security-policies-v1-15-76fde70fdbd8@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_235712_428105_BAD8DE87 
X-CRM114-Status: GOOD (  20.51  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 15/24] boards: qemu-virt: add security policies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 8/20/25 15:17, Sascha Hauer wrote:
> From: Ahmad Fatoum <a.fatoum@barebox.org>
> 
> To make it easier to experiment with security policies, add four example
> configurations, two via the build system and two "externally".

The configs need a make security_olddefconfig due to the addition of the
new symbols in later commits.

Cheers,
Ahmad

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/configs/virt32_secure_defconfig           |  1 +
>  common/boards/qemu-virt/Makefile                   |  3 +++
>  common/boards/qemu-virt/board.c                    |  8 ++++++++
>  common/boards/qemu-virt/qemu-virt-factory.sconfig  | 24 ++++++++++++++++++++++
>  common/boards/qemu-virt/qemu-virt-lockdown.sconfig | 24 ++++++++++++++++++++++
>  security/qemu-virt-devel.sconfig                   | 24 ++++++++++++++++++++++
>  security/qemu-virt-tamper.sconfig                  | 24 ++++++++++++++++++++++
>  7 files changed, 108 insertions(+)
> 
> diff --git a/arch/arm/configs/virt32_secure_defconfig b/arch/arm/configs/virt32_secure_defconfig
> index 34cc49405495b33b4f78e078dfbcd951c433fcd8..09c98e5e4dc88aa22b3aa10db38efd7b7cac2310 100644
> --- a/arch/arm/configs/virt32_secure_defconfig
> +++ b/arch/arm/configs/virt32_secure_defconfig
> @@ -292,6 +292,7 @@ CONFIG_FS_UBOOTVARFS=y
>  CONFIG_SECURITY_POLICY=y
>  CONFIG_SECURITY_POLICY_INIT="lockdown"
>  CONFIG_SECURITY_POLICY_DEFAULT_PANIC=y
> +CONFIG_SECURITY_POLICY_PATH="security/qemu-virt-devel.sconfig security/qemu-virt-tamper.sconfig"
>  CONFIG_BUG_ON_DATA_CORRUPTION=y
>  CONFIG_DIGEST_SHA1_ARM=y
>  CONFIG_DIGEST_SHA256_ARM=y
> diff --git a/common/boards/qemu-virt/Makefile b/common/boards/qemu-virt/Makefile
> index 30bf4f1955ee9d306b46523863e247e4cf94ab75..2caa6a20c522ac68fd629f38e51fdf1423db4b09 100644
> --- a/common/boards/qemu-virt/Makefile
> +++ b/common/boards/qemu-virt/Makefile
> @@ -9,5 +9,8 @@ ifeq ($(CONFIG_ARM),y)
>  DTC_CPP_FLAGS_qemu-virt-flash.dtbo := -DCONFIG_ARM
>  endif
>  
> +policy-y += qemu-virt-factory.sconfig
> +policy-y += qemu-virt-lockdown.sconfig
> +
>  clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
>  clean-files += *.dtbo *.dtbo.S .*.dtso
> diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
> index 9882b0c31a3cf9a97ef0e963653c85a3ead961bb..6f88f24b0690c2562b3b3718a56c9f5c46a4455a 100644
> --- a/common/boards/qemu-virt/board.c
> +++ b/common/boards/qemu-virt/board.c
> @@ -7,6 +7,7 @@
>  #include <init.h>
>  #include <of.h>
>  #include <deep-probe.h>
> +#include <security/policy.h>
>  #include "qemu-virt-flash.h"
>  
>  #ifdef CONFIG_64BIT
> @@ -83,6 +84,13 @@ static int virt_board_driver_init(void)
>  
>  	/* of_probe() will happen later at of_populate_initcall */
>  
> +	security_policy_add(qemu_virt_factory);
> +	security_policy_add(qemu_virt_lockdown);
> +	/*
> +	 * qemu_virt_devel & qemu_virt_tamper intentionally not added here,
> +	 * so the test suite can exercise CONFIG_SECURITY_POLICY_PATH.
> +	 */
> +
>  	return 0;
>  }
>  postcore_initcall(virt_board_driver_init);
> diff --git a/common/boards/qemu-virt/qemu-virt-factory.sconfig b/common/boards/qemu-virt/qemu-virt-factory.sconfig
> new file mode 100644
> index 0000000000000000000000000000000000000000..b19d02b37f7c308e8e93da17349981301902d851
> --- /dev/null
> +++ b/common/boards/qemu-virt/qemu-virt-factory.sconfig
> @@ -0,0 +1,24 @@
> +#
> +# Automatically generated file; DO NOT EDIT.
> +# Barebox/arm Security Configuration
> +#
> +SCONFIG_POLICY_NAME="factory"
> +SCONFIG_SECURITY_POLICY_SELECT=y
> +
> +#
> +# General Settings
> +#
> +SCONFIG_RATP=y
> +# end of General Settings
> +
> +#
> +# Boot Policy
> +#
> +# SCONFIG_BOOT_UNSIGNED_IMAGES is not set
> +# end of Boot Policy
> +
> +#
> +# Command Policy
> +#
> +# SCONFIG_CMD_GO is not set
> +# end of Command Policy
> diff --git a/common/boards/qemu-virt/qemu-virt-lockdown.sconfig b/common/boards/qemu-virt/qemu-virt-lockdown.sconfig
> new file mode 100644
> index 0000000000000000000000000000000000000000..e11e5e069c61f6b968716b75a836bfda2676057e
> --- /dev/null
> +++ b/common/boards/qemu-virt/qemu-virt-lockdown.sconfig
> @@ -0,0 +1,24 @@
> +#
> +# Automatically generated file; DO NOT EDIT.
> +# Barebox/arm Security Configuration
> +#
> +SCONFIG_POLICY_NAME="lockdown"
> +SCONFIG_SECURITY_POLICY_SELECT=y
> +
> +#
> +# General Settings
> +#
> +# SCONFIG_RATP is not set
> +# end of General Settings
> +
> +#
> +# Boot Policy
> +#
> +# SCONFIG_BOOT_UNSIGNED_IMAGES is not set
> +# end of Boot Policy
> +
> +#
> +# Command Policy
> +#
> +# SCONFIG_CMD_GO is not set
> +# end of Command Policy
> diff --git a/security/qemu-virt-devel.sconfig b/security/qemu-virt-devel.sconfig
> new file mode 100644
> index 0000000000000000000000000000000000000000..4513917a95cca07d415fcc856589dca92a289707
> --- /dev/null
> +++ b/security/qemu-virt-devel.sconfig
> @@ -0,0 +1,24 @@
> +#
> +# Automatically generated file; DO NOT EDIT.
> +# Barebox/arm Security Configuration
> +#
> +SCONFIG_POLICY_NAME="devel"
> +SCONFIG_SECURITY_POLICY_SELECT=y
> +
> +#
> +# General Settings
> +#
> +SCONFIG_RATP=y
> +# end of General Settings
> +
> +#
> +# Boot Policy
> +#
> +SCONFIG_BOOT_UNSIGNED_IMAGES=y
> +# end of Boot Policy
> +
> +#
> +# Command Policy
> +#
> +SCONFIG_CMD_GO=y
> +# end of Command Policy
> diff --git a/security/qemu-virt-tamper.sconfig b/security/qemu-virt-tamper.sconfig
> new file mode 100644
> index 0000000000000000000000000000000000000000..f2453a9936c19fe8a31879d1ee48cd0ce6655d5e
> --- /dev/null
> +++ b/security/qemu-virt-tamper.sconfig
> @@ -0,0 +1,24 @@
> +#
> +# Automatically generated file; DO NOT EDIT.
> +# Barebox/arm Security Configuration
> +#
> +SCONFIG_POLICY_NAME="tamper"
> +# SCONFIG_SECURITY_POLICY_SELECT is not set
> +
> +#
> +# General Settings
> +#
> +# SCONFIG_RATP is not set
> +# end of General Settings
> +
> +#
> +# Boot Policy
> +#
> +# SCONFIG_BOOT_UNSIGNED_IMAGES is not set
> +# end of Boot Policy
> +
> +#
> +# Command Policy
> +#
> +# SCONFIG_CMD_GO is not set
> +# end of Command Policy
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



