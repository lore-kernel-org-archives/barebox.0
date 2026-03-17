Delivery-date: Tue, 17 Mar 2026 11:08:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2RLP-001lU4-0a
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 11:08:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2RLO-0007AM-J6
	for lore@pengutronix.de; Tue, 17 Mar 2026 11:08:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e8cEdpQnHjdMfnOrvPMlGDflPh/mKw4PPnD9vHSJBVs=; b=Ns519o7/q53aErb4GYspPd9oEF
	aD4PEqcO11p8oV2k4ACpVQBvpG0kRvpG+H8RNCYcfC0mBQmxPFn366AMFGK5lh7o0esW8T7p0o6Hn
	AicbITB+XYXzC7kppYjVgXKH/hpdU70UqOYNH0fwPQVgsB+tYhueX2QQMo5vxc+mlK50mPcd1QnYA
	6QLe85OP2fNuD2kSMpBN+T4l9UdjqM/Ccq70jy+J/FYXHpZmDeRM2cjDwg5JjH6FAkTLUW/ZYbjeH
	Fb4WKB2TfFOf1q9ZP/i5v55mEPz4otvQjB90U34JkTzRsIUnGABH2/3Qy0YpxiLSyZy+dcRfVha2x
	ufIOjxDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2RKu-00000005x8d-23Y4;
	Tue, 17 Mar 2026 10:07:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2RKs-00000005x7m-0FoR
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 10:07:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1w2RKq-0006si-Dn; Tue, 17 Mar 2026 11:07:36 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1w2RKq-000iru-0m;
	Tue, 17 Mar 2026 11:07:36 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1w2RKq-00000007HKb-0dGF;
	Tue, 17 Mar 2026 11:07:36 +0100
Date: Tue, 17 Mar 2026 11:07:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <abkn6JHOXG59eBOh@pengutronix.de>
References: <20260316-v2026-02-0-topic-sconfig_console-v2-0-1eee8c762beb@pengutronix.de>
 <20260316-v2026-02-0-topic-sconfig_console-v2-5-1eee8c762beb@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260316-v2026-02-0-topic-sconfig_console-v2-5-1eee8c762beb@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_030738_102301_47F2AFAC 
X-CRM114-Status: GOOD (  26.08  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 5/5] security: kernel_pinctrl: fixup pinctrl in kernel
 dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Mar 16, 2026 at 12:36:32PM +0100, Fabian Pflug wrote:
> Going through the kernel dts and replacing
> barebox,policy-<active_policy> with default in order to change pinctrl
> not only for barebox, but also for kernel when booting with security
> profiles.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  security/Makefile         |  1 +
>  security/kernel_pinctrl.c | 58 +++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 59 insertions(+)
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
> index 0000000000..af65961bbc
> --- /dev/null
> +++ b/security/kernel_pinctrl.c
> @@ -0,0 +1,58 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <common.h>
> +#include <linux/printk.h>
> +#include <pinctrl.h>
> +#include <security/policy.h>
> +#include <security/config.h>
> +
> +#define NUM_NAMES	10
> +
> +
> +/**
> + * Replace 'default' with 'old_default' and 'barebox,policy-<active_policy>'
> + * with 'default', if both are found in pinctrl.
> + */
> +static void kernel_of_fixup_pinctrl(struct device_node *node, char *policy_name)
> +{
> +	const char *names[NUM_NAMES];
> +	int num_read, pos_default, pos_policy;

You could reduce the scope of these variables.

> +	struct device_node *next;
> +
> +	while (node) {

list_for_each_entry(np, &node->list, list)

Or move the of_tree_for_each_node_from macro to include/of.h

> +		num_read = of_property_read_string_array(node, "pinctrl-names", names, NUM_NAMES);
> +
> +		pos_default = -1;
> +		pos_policy = -1;
> +		for (int i = 0; i < num_read; i++) {
> +			if (strcmp(policy_name, names[i]) == 0)
> +				pos_policy = i;
> +			if (strcmp("default", names[i]) == 0)
> +				pos_default = i;
> +		}
> +		if (pos_default >= 0 && pos_policy >= 0) {
> +			names[pos_default] = "old_default";
> +			names[pos_policy] = "default";
> +			of_property_write_string_array(node, "pinctrl-names", names, num_read);
> +		}
> +
> +		next = list_first_entry(&node->list, struct device_node, list);
> +		node = next->parent ? next : NULL;
> +	}
> +}

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


