Delivery-date: Fri, 13 Mar 2026 15:11:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13Ei-000EMG-1P
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 15:11:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13Eh-00018h-Pg
	for lore@pengutronix.de; Fri, 13 Mar 2026 15:11:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JaGOLsOgOUL4FerEKej/Y5wRy15WkU3OYk9kw4+aYF0=; b=hIivGwFkNeYSOZNCGXIx0rNQNP
	qOoOTMdHFJ5SNW8Aw4HhT8HbUgvEPzG5b7mroWu4k0GvJbZT20CtfZ5664BMTQ8ZEqVwituWoGuUU
	fiVZuY3/i1VMwx2rxG6aNSHNMP0MUxSYklfdCGrfIiM9Tz06xVN2stScO47z7nB0xHg99HAi2QnJq
	yRa3Na7WgdV8C8zXDUpz1ApMVsGYpszy7tSCKq0MvMruaVS7/gNMbAKnRMru5f88/r4JnYU7igqV7
	Xuuwnwf7X4Ux0vroVpID3ccAdtd3X0aqdlxbDCKnBcrRya/FCxXvhaoHiVh+JPIhNzTFVKUDkUbpH
	v4yMjjfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13E1-00000000LEO-1L8y;
	Fri, 13 Mar 2026 14:10:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13Dz-00000000LDu-2Ucu
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 14:10:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1w13Dx-0000zh-99; Fri, 13 Mar 2026 15:10:45 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1w13Dx-0005iJ-0L;
	Fri, 13 Mar 2026 15:10:45 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1w13Dx-0000000HF5n-04SD;
	Fri, 13 Mar 2026 15:10:45 +0100
Date: Fri, 13 Mar 2026 15:10:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <abQa5OokmldJNiTi@pengutronix.de>
References: <20260312-v2026-02-0-topic-sconfig_console-v1-0-4c3fccafab1e@pengutronix.de>
 <20260312-v2026-02-0-topic-sconfig_console-v1-4-4c3fccafab1e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260312-v2026-02-0-topic-sconfig_console-v1-4-4c3fccafab1e@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_071047_632842_474010B1 
X-CRM114-Status: GOOD (  29.68  )
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
Subject: Re: [PATCH 4/4] security: kernel_pinctrl: fixup pinctrl in kernel dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Mar 12, 2026 at 10:16:45AM +0100, Fabian Pflug wrote:
> Going through the kernel dts and replacing
> barebox,policy-<active_policy> with default in order to change pinctrl
> not only for barebox, but also for kernel when booting with security
> profiles.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  security/Makefile         |  1 +
>  security/kernel_pinctrl.c | 70 +++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 71 insertions(+)
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
> index 0000000000..6ad75eb113
> --- /dev/null
> +++ b/security/kernel_pinctrl.c
> @@ -0,0 +1,70 @@
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
> +	struct device_node *n;
> +	const char *names[NUM_NAMES];
> +	int num_read = of_property_read_string_array(node, "pinctrl-names", names, NUM_NAMES);
> +	struct property *prop = of_find_property(node, "pinctrl-names", NULL);
> +	int pos_default = -1, pos_policy = -1;
> +
> +	for (int i = 0; i < num_read; i++) {
> +		if (strcmp(policy_name, names[i]) == 0)
> +			pos_policy = i;
> +		if (strcmp("default", names[i]) == 0)
> +			pos_default = i;
> +	}
> +	if (pos_default >= 0 && pos_policy >= 0) {
> +		// old_default is shorter then barebox,policy-*
> +		char *val = malloc(prop->length);
> +		char *cur = val;
> +		const char *src;
> +		int len;
> +
> +		for (int i = 0; i < num_read; i++) {
> +			if (i == pos_policy)
> +				src = "default";
> +			else if (i == pos_default)
> +				src = "old_default";
> +			else
> +				src = names[i];
> +			len = strlen(src);
> +			memcpy(cur, src, len);

A multistring property in the device tree has multiple strings with '\0'
om between, so I believe you have to copy (and add to cur) len + 1 bytes to make
this work.

However, how about a of_property_write_string_array() function instead?
It might be useful elsewhere and could make this code more readable.

> +			cur += len;
> +		}
> +		of_set_property(node, "pinctrl-names", val, cur - val, false);
> +	}
> +
> +	list_for_each_entry(n, &node->children, parent_list) {
> +		kernel_of_fixup_pinctrl(n, policy_name);
> +	}

No need to do this recursively. All nodes in a device tree are on a
list, see the of_tree_for_each_node_from macro.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


