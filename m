Delivery-date: Tue, 24 Mar 2026 15:58:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w53Cl-004XdW-2h
	for lore@lore.pengutronix.de;
	Tue, 24 Mar 2026 15:58:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w53Cl-0001iK-5y
	for lore@pengutronix.de; Tue, 24 Mar 2026 15:58:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yUtXlMgrgxIr3Yl0qJHA/VD77KWfB9m72V8ljvMrSK8=; b=2+GrpdIRU4zCGmCQQoHx6k/Esk
	DZbis8TSILSWZwFx+wBv18JjGg0uhxDdhoPlipxdsyNciEt5iaU9l3kdNplQEKUfg6o2BaYf+6n6L
	aMkXycwIdi1j5iApDZ9OTAjrS9F5NFTHje7w66jgu2Z+rhcEBtnnE1PMKt8INvYIFzXWcSWvhiXMF
	lKiAJbmzjM4XCaMFMC6O281S+SI2UDxMTnNldI1CwK0xceMjKmYRvYetiIHiNpL256mUVu+mYNzPi
	Q6NSExbQ+7DSwPmOJ2V3esI/rgLDfIp72cFIukOQoigLIr38Q6fge038E6B4owCz73afyiudDvOG/
	JdhNyVKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w53CD-00000001hau-0KJA;
	Tue, 24 Mar 2026 14:57:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w53C8-00000001hZh-36Hw
	for barebox@lists.infradead.org;
	Tue, 24 Mar 2026 14:57:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w53C7-0001aX-2D; Tue, 24 Mar 2026 15:57:23 +0100
Message-ID: <89039dbc-8439-412a-8f72-82b6fce75446@pengutronix.de>
Date: Tue, 24 Mar 2026 15:57:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>
References: <20260324-v2026-02-0-topic-sconfig_console-v6-0-f0eb6af2cc06@pengutronix.de>
 <20260324-v2026-02-0-topic-sconfig_console-v6-7-f0eb6af2cc06@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260324-v2026-02-0-topic-sconfig_console-v6-7-f0eb6af2cc06@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_075724_780745_12C12F49 
X-CRM114-Status: GOOD (  29.09  )
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
Subject: Re: [PATCH v6 7/7] security: kernel_pinctrl: fixup pinctrl in kernel
 dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 3/24/26 10:52 AM, Fabian Pflug wrote:
> Going through the kernel dts and replacing
> barebox,policy-<active_policy>-<name> with <name> and <name> with
> old_<name> if a policy pinctrl has ben found in order to change pinctrl

been

> not only for barebox, but also for kernel when booting with security
> profiles.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  security/Makefile         |  1 +
>  security/kernel_pinctrl.c | 67 +++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 68 insertions(+)
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
> index 0000000000..f02acdfd55
> --- /dev/null
> +++ b/security/kernel_pinctrl.c
> @@ -0,0 +1,67 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <common.h>
> +#include <linux/printk.h>
> +#include <pinctrl.h>
> +#include <security/policy.h>
> +#include <security/config.h>
> +
> +/* Maximun number of names to be available in pinctrl-names. Best guess.*/

Maximum

> +#define MAX_NAMES	10
> +
> +
> +/**
> + * Replace 'default' with 'old_default' and 'barebox,policy-<active_policy>-default'
> + * with 'default', if both are found in pinctrl.
> + * Same for every other name, that starts with barebox,policy-<active_policy>- and
> + * has another name without the prefix.
> + */
> +static int kernel_of_fixup_pinctrl(struct device_node *root, void *unused)
> +{
> +	char *basename;
> +	int base_len;
> +	struct device_node *node;
> +	const struct security_policy *active_policy = security_policy_get_active();
> +
> +	if (!active_policy || !active_policy->name)
> +		return -EINVAL;
> +	basename = basprintf("barebox,policy-%s-", active_policy->name);
> +	base_len = strlen(basename);
> +
> +	list_for_each_entry(node, &root->list, list) {
> +		const char *names[MAX_NAMES];
> +		int num_read;
> +		bool changed = false;
> +
> +		num_read = of_property_read_string_array(node, "pinctrl-names", names, MAX_NAMES);

I haven't seen a device with 10 pincontrol groups, but it would be good
to emit a warning message here if it happens.

You can use of_property_count_strings() to count the strings.

> +
> +		for (int i = 0; i < num_read; i++) {
> +			if (strncmp(basename, names[i], base_len) == 0) {
> +				const char *name = names[i] + base_len;
> +
> +				for (int ii = 0; ii < num_read; ii++) {
> +					if (strcmp(name, names[ii]) == 0) {
> +						/* this never gets freed,
> +						 * but we are starting the kernel,
> +						 * so there should be no problem.
> +						 */
> +						names[ii] = basprintf("old_%s", name);
> +						names[i] = name;
> +						changed = true;
> +						break;
> +					}
> +				}
> +			}
> +		}
> +		if (changed)
> +			of_property_write_string_array(node, "pinctrl-names", names, num_read);
> +	}
> +	free(basename);
> +	return 0;
> +}
> +
> +static int policy_console_pinctrl_init(void)

Misleading name

> +{
> +	return of_register_fixup(kernel_of_fixup_pinctrl, NULL);
> +}
> +late_initcall(policy_console_pinctrl_init);
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



