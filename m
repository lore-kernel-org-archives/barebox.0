Delivery-date: Wed, 18 Mar 2026 12:53:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2pSx-002B64-2u
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 12:53:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2pSx-0003TE-6Y
	for lore@pengutronix.de; Wed, 18 Mar 2026 12:53:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wj3hGxdF4bNMD1se8qYhh+tC6UuJcLVaGwglGum666Q=; b=SLeeDyMoY66Mh8Q8KoPt0DAmbZ
	56lkUdgizCcxYgbkmfNlhZ7HArPCM7HghSuc+cr6kdUg5ByeGDqZbJmSJWYe2kU9ISDPYTaAPZ2Wm
	D8lu05O1o/edZCegmmUbR4iqtHbaNH9Rm5nUHHBmemeoYljwkx5r+lbRBm1A+aAFs24BJuB5uWA2K
	USquyUNu+ZIdr8/512Cg+wrjdg7K2U0aVpb2T+jwo9pm3S9fthfkovTIK066DF1XYmv0733SMWo7I
	9d7qnb50df1iIQCcjgBcinPu1xKs1YuDJ0PZ390iWVNdhb0xj7hUttGYpClQbvWq2nsTWxfEBh5+Y
	CFKTxA7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2pST-00000008LZb-1NOJ;
	Wed, 18 Mar 2026 11:53:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2pSR-00000008LYc-19ZE
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 11:53:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w2pSP-0003NN-IF; Wed, 18 Mar 2026 12:53:01 +0100
Message-ID: <35566519-8f6a-4610-9c13-4dc46634cbd8@pengutronix.de>
Date: Wed, 18 Mar 2026 12:53:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>
References: <20260318-v2026-02-0-topic-sconfig_console-v3-0-e26055294723@pengutronix.de>
 <20260318-v2026-02-0-topic-sconfig_console-v3-5-e26055294723@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260318-v2026-02-0-topic-sconfig_console-v3-5-e26055294723@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_045303_317962_98D09A0F 
X-CRM114-Status: GOOD (  25.73  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 5/5] security: kernel_pinctrl: fixup pinctrl in kernel
 dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 3/18/26 10:22, Fabian Pflug wrote:
> Going through the kernel dts and replacing
> barebox,policy-<active_policy> with default in order to change pinctrl
> not only for barebox, but also for kernel when booting with security
> profiles.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  security/Makefile         |  1 +
>  security/kernel_pinctrl.c | 56 +++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 57 insertions(+)
> 
> diff --git a/security/Makefile b/security/Makefile
> index 1096cbfb9b..2e8cdfe7c2 100644
> --- a/security/Makefile
> +++ b/security/Makefile
> @@ -2,6 +2,7 @@
>  
>  obj-$(CONFIG_SECURITY_POLICY)		+= policy.o
>  obj-$(CONFIG_SECURITY_POLICY_NAMES)	+= sconfig_names.o
> +obj-$(CONFIG_SECURITY_POLICY_PINCTRL)	+= kernel_pinctrl.o
>  obj-$(CONFIG_CRYPTO_KEYSTORE)	+= keystore.o
>  obj-$(CONFIG_JWT)		+= jwt.o
>  obj-pbl-$(CONFIG_HAVE_OPTEE)	+= optee.o
> diff --git a/security/kernel_pinctrl.c b/security/kernel_pinctrl.c
> new file mode 100644
> index 0000000000..01ccac3ec3
> --- /dev/null
> +++ b/security/kernel_pinctrl.c
> @@ -0,0 +1,56 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <common.h>
> +#include <linux/printk.h>
> +#include <pinctrl.h>
> +#include <security/policy.h>
> +#include <security/config.h>
> +
> +/* Maximun number of names to be available in pinctrl-names. Best guess.*/
> +#define MAX_NAMES	10
> +
> +
> +/**
> + * Replace 'default' with 'old_default' and 'barebox,policy-<active_policy>'
> + * with 'default', if both are found in pinctrl.
> + */
> +static void kernel_of_fixup_pinctrl(struct device_node *root_node, char *policy_name)
> +{
> +	struct device_node *node;
> +
> +	list_for_each_entry(node, &root_node->list, list) {

I am surprised of.h didn't have a macro for that.

> +		const char *names[MAX_NAMES];
> +		int num_read, pos_default = -1, pos_policy = -1;
> +
> +		num_read = of_property_read_string_array(node, "pinctrl-names", names, MAX_NAMES);
> +
> +		for (int i = 0; i < num_read; i++) {
> +			if (strcmp(policy_name, names[i]) == 0)
> +				pos_policy = i;
> +			if (strcmp("default", names[i]) == 0)
> +				pos_default = i;
> +		}
> +
> +		if (pos_default >= 0 && pos_policy >= 0) {
> +			names[pos_default] = "old_default";
> +			names[pos_policy] = "default";
> +			of_property_write_string_array(node, "pinctrl-names", names, num_read);
> +		}

Wouldn't it be simpler to use of_property_for_each_string()?

> +	}
> +}
> +
> +static int kernel_of_fixup_pinctrl_start(struct device_node *root, void *unused)
> +{
> +	char *policy_pinctrl;
> +
> +	policy_pinctrl = basprintf("barebox,policy-%s", active_policy->name);
> +	kernel_of_fixup_pinctrl(root, policy_pinctrl);
> +	free(policy_pinctrl);
> +	return 0;
> +}

What's the point of this intermediary function?

> +
> +static int policy_console_pinctrl_init(void)
> +{
> +	return of_register_fixup(kernel_of_fixup_pinctrl_start, NULL);
> +}
> +late_initcall(policy_console_pinctrl_init);
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


