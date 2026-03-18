Delivery-date: Wed, 18 Mar 2026 12:43:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2pJW-002Awz-1q
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 12:43:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2pJV-0002CI-Ru
	for lore@pengutronix.de; Wed, 18 Mar 2026 12:43:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4QjQ+rKuThZ3LJXVer+XB7iEmlz/Foll0rnMXB/YPBk=; b=wKeC+/yTX96K9dkc1jvG6jrPEv
	871ibaXurynLdLhADUeaA6qbepMVk+Im/UVVGv7vHfoA/8tKxGWoBo5DCopyT/h94MndiiogH9ASh
	mzpBlbZObpFxE/7CaRSWW01vKh9N9iWKsrTXqa0kp1FoLRNCwsEYQzT5/C8YgKw1kmQDfvf7cO46c
	HLx0ovemhV3Fw2GuzoSLjQ8vBB4yb1l4rrIqSbo9TD2Mt0Y881ykIqcpTkC1Zln4fodgXQkYd/YZ3
	PWLYPmRCbsXbdjQyn8POezVLwJIltAYC6BGWPQKr1wzyT8bVwGP+bqVL0d6KY3lvQD4oQHeAWVXb9
	bvZ/lhEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2pJ7-00000008KTJ-1JNy;
	Wed, 18 Mar 2026 11:43:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2pJ5-00000008KSo-0MvY
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 11:43:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w2pJ3-00027I-DC; Wed, 18 Mar 2026 12:43:21 +0100
Message-ID: <810b68c0-35fe-479e-8b62-a517ee2a50cf@pengutronix.de>
Date: Wed, 18 Mar 2026 12:43:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>
References: <20260318-v2026-02-0-topic-sconfig_console-v3-0-e26055294723@pengutronix.de>
 <20260318-v2026-02-0-topic-sconfig_console-v3-4-e26055294723@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260318-v2026-02-0-topic-sconfig_console-v3-4-e26055294723@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_044323_130091_72F3DF79 
X-CRM114-Status: GOOD (  30.09  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 4/5] security: configure pinctrl based on policy name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 3/18/26 10:22, Fabian Pflug wrote:
> When using security policies to disable console input on the default
> console, it might be more advantagous to also disable the RX pin hard
> in pinctrl, so that if there is a software error with the security
> policy implementation input does not reach to system and cannot be
> exploited.
> 
> An example devicetree could look like this:
> / {
> 	chosen {
> 		stdout-path = &uart3;
> 	};
> };
> 
> &uart3 {
> 	pinctrl-names = "default", "barebox,policy-devel";
> 	pinctrl-0 = <&pinctrl_uart3_tx_only>;
> 	pinctrl-1 = <&pinctrl_uart3_interactive>;
> 	status = "okay";
> };
> 
> &iomuxc {
> 	pinctrl_uart3_interactive: uart3ingrp {
> 		fsl,pins = <MX8MP_IOMUXC_SD1_DATA6__UART3_DCE_TX	0x140>,
> 			   <MX8MP_IOMUXC_SD1_DATA7__UART3_DCE_RX	0x140>;
> 	};
> 
> 	pinctrl_uart3_tx_only: uart3txgrp {
> 		fsl,pins = <MX8MP_IOMUXC_SD1_DATA6__UART3_DCE_TX	0x140>,
> 			   <MX8MP_IOMUXC_SD1_DATA7__GPIO2_IO09		0x140>;
> 	};
> };
> 
> This would apply the devel pinmux on selecting the devel config and the
> default on every other configuration.

The barebox,policy- pattern should be documented in Documentation/devicetree/bindings/

> -	pinctrl_select_state_default(dev);
> +
> +	if (IS_ENABLED(CONFIG_SECURITY_POLICY_PINCTRL)) {
> +		char *policy_pinctrl;
> +
> +		policy_pinctrl = basprintf("barebox,policy-%s", active_policy->name);
> +		if (IS_ERR(pinctrl_get_select(dev, policy_pinctrl)))
> +			pinctrl_select_state_default(dev);
> +		free(policy_pinctrl);
> +	} else
> +		pinctrl_select_state_default(dev);

I think this logic should go somewhere so that pinctrl_select_state_default
can make use of it as there are drivers that call
pinctrl_select_state_default() tha would be unaffected.

Also kernel coding stye is to use braces in else if the if clause
has them.

>  	of_clk_set_defaults(dev->of_node, false);
>  
>  	list_add(&dev->active, &active_device_list);
> diff --git a/security/Kconfig.policy b/security/Kconfig.policy
> index 9ea52e91da..8ddb67ac2d 100644
> --- a/security/Kconfig.policy
> +++ b/security/Kconfig.policy
> @@ -68,6 +68,14 @@ config SECURITY_POLICY_DEFAULT_PERMISSIVE
>  	  A security policy should always be selected, either early on by
>  	  board code or via CONFIG_SECURITY_POLICY_INIT.
>  
> +config SECURITY_POLICY_PINCTRL
> +	bool "Update pinctrl based on policy-name"
> +	help
> +	  Changing the security policy, will look for a pinctrl with the name
> +	  barebox,policy-<policyname>. If there is one, it will change the
> +	  pinctrl for this. This could be used to disable the RX (and TX)
> +	  Pin in lockdown mode for the console or disable the usage of SPI.

"for example".

> +
>  config SECURITY_POLICY_PATH
>  	string
>  	depends on SECURITY_POLICY
> diff --git a/security/policy.c b/security/policy.c
> index e2d1b10a78..4d51af63e7 100644
> --- a/security/policy.c
> +++ b/security/policy.c
> @@ -7,6 +7,7 @@
>  #include <linux/bitmap.h>
>  #include <param.h>
>  #include <device.h>
> +#include <pinctrl.h>
>  #include <stdio.h>
>  
>  #include <security/policy.h>
> @@ -90,12 +91,23 @@ bool is_allowed(const struct security_policy *policy, unsigned option)
>  int security_policy_activate(const struct security_policy *policy)
>  {
>  	const struct security_policy *old_policy = active_policy;
> +	struct device *dev;
> +	char *policy_pinctrl;
>  
>  	if (policy == old_policy)
>  		return 0;
>  
>  	active_policy = policy;
>  
> +	if (IS_ENABLED(CONFIG_SECURITY_POLICY_PINCTRL)) {
> +		policy_pinctrl = basprintf("barebox,policy-%s", active_policy->name);
> +		list_for_each_entry(dev, &active_device_list, active) {
> +			if (IS_ERR(pinctrl_get_select(dev, policy_pinctrl)))
> +				pinctrl_select_state_default(dev);
> +		}
> +		free(policy_pinctrl);
> +	}

This breaks HS200 on i.MX. Reverting the default state on error is not
a safe fallback.

I am thinking maybe, we should change the binding a bit and make it:

barebox,policy-lockdown-default for example and then a lookup
for "default" also does a lookup for "barebox,policy-${policy}-default".

That way, we will have something generically usable.

In any case, it's not acceptable to change pinctrl settings of devices
that did not have security policy specific pinctrl groups.

Thanks,
Ahmad

> +
>  	for (int i = 0; i < SCONFIG_NUM; i++) {
>  		if (__is_allowed(policy, i) == __is_allowed(old_policy, i))
>  			continue;
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


