Delivery-date: Tue, 09 Jan 2024 10:27:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rN8Of-00A6aE-0R
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 10:27:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rN8Oe-0003HK-G7
	for lore@pengutronix.de; Tue, 09 Jan 2024 10:27:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JsJVATNcM3GcmdNRhYxCpmGDpeETrg9xJLU6HXNB7Qw=; b=UjTBA6FjM+hFEi5RRqgvufH7Bf
	9hgVPNwntJV4i9+1m3AfxrUydEDBcSVAX6wxuVeceZ+jUjNCarzzfH7AU6OsQLVwywjrJIkvFHpzO
	c/RE+jnqumSPfHXapaq6oJtty4qersmU7X2phoTliIte1eC87ipsTwXD38G7XHjrlqVvcytIgRM99
	GgzqK8e18IO5T8AuVnbBbei+S9a+OtY3Im6ALua2XYUYJk1CI2tQ4WeDn8nTjwMX+3JgynqqMmQ/g
	I84ROG5WkEpBfwCmL2RCfFDznk6OrUCAWyYA3W0gQFyoc3i1uIKfwCfTfPTRgxcegpDYLYazM6IfQ
	4IBlGUZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rN8NW-007VbK-2w;
	Tue, 09 Jan 2024 09:26:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rN8NT-007VZQ-0n
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 09:26:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rN8NQ-0002xk-AZ; Tue, 09 Jan 2024 10:26:28 +0100
Message-ID: <5c85bac3-7d08-4bf9-9728-053ccf341a40@pengutronix.de>
Date: Tue, 9 Jan 2024 10:26:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240109091603.235589-1-s.hauer@pengutronix.de>
 <20240109091603.235589-11-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240109091603.235589-11-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_012631_285153_C9D11EA4 
X-CRM114-Status: GOOD (  20.94  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 10/10] ARM: Layerscape: LS1028a: fixup psci node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 09.01.24 10:16, Sascha Hauer wrote:
> The upstream LS1028a dtsi files do not have a psci node, so add one
> in a fixup. This is necessary to bring up the secondary CPU core.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-layerscape/Kconfig |  1 +
>  arch/arm/mach-layerscape/soc.c   | 16 ++++++++++++++++
>  2 files changed, 17 insertions(+)
> 
> diff --git a/arch/arm/mach-layerscape/Kconfig b/arch/arm/mach-layerscape/Kconfig
> index 5658a63b33..97f2061eee 100644
> --- a/arch/arm/mach-layerscape/Kconfig
> +++ b/arch/arm/mach-layerscape/Kconfig
> @@ -20,6 +20,7 @@ config ARCH_LS1028
>  	select SYS_SUPPORTS_64BIT_KERNEL
>  	select ARM_ATF
>  	select FIRMWARE_LS1028A_ATF
> +	select ARM_PSCI_OF
>  
>  config ARCH_LS1046
>  	bool
> diff --git a/arch/arm/mach-layerscape/soc.c b/arch/arm/mach-layerscape/soc.c
> index 70c1dedb46..30fbb5d1bf 100644
> --- a/arch/arm/mach-layerscape/soc.c
> +++ b/arch/arm/mach-layerscape/soc.c
> @@ -3,7 +3,9 @@
>  #include <io.h>
>  #include <init.h>
>  #include <memory.h>
> +#include <linux/arm-smccc.h>
>  #include <linux/bug.h>
> +#include <asm/psci.h>
>  #include <mach/layerscape/layerscape.h>
>  #include <of.h>
>  
> @@ -84,6 +86,19 @@ static int ls1021a_init(void)
>  	return 0;
>  }
>  
> +static int ls1028a_psci_fixup(struct device_node *root, void *unused)
> +{
> +	unsigned long psci_version;
> +	struct arm_smccc_res res = {};
> +
> +	arm_smccc_smc(ARM_PSCI_0_2_FN_PSCI_VERSION, 0, 0, 0, 0, 0, 0, 0, &res);
> +	psci_version = res.a0;
> +
> +	of_psci_fixup(root, psci_version, "smc");

Do you have a restart handler registered for LS1028A? If not, you may consider
adding the same node to the barebox device tree node too, so it can use PSCI
to reset the system.

Cheers,
Ahmad

> +
> +	return 0;
> +}
> +
>  static int ls1028a_init(void)
>  {
>  	if (!IS_ENABLED(CONFIG_ARCH_LS1028))
> @@ -91,6 +106,7 @@ static int ls1028a_init(void)
>  
>  	layerscape_register_pbl_image_handler();
>  	ls1028a_setup_icids();
> +	of_register_fixup(ls1028a_psci_fixup, NULL);
>  
>  	reserve_sdram_region("tfa", LS1028A_TFA_RESERVED_START, LS1028A_TFA_RESERVED_SIZE);
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



