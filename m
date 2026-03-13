Delivery-date: Fri, 13 Mar 2026 14:36:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12hF-000Dcf-1q
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:36:57 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12hE-0002Vj-UW
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:36:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8Le0JBy7Gc81wN1ZnRKr3QX8iiGkORDhQ88vc87sJAQ=; b=lCAb61OAbS3v5e8DFppFm3GVgE
	Y+ixapvRjzgvJqdsnD6J/3iOId8bUS/TmQNgfdrhwvJZ1nCMXhhtZILEgwQr64nc43p2lawmUEOGi
	ML3NiIPWpkfNcJX4eRpu8W9mryYKii9UqJ/WgiU5UhDjQmqacNitpnLq8vMpwQE60eQ+Ei2RobEMV
	kfRQW+rrJG+8sMpL6nZxj3ZU6dRl44HH+2BXjFsTvHc5lrwydRXOGsxUZ/+2bUTwy4Zz/yGHwHolY
	jZZHGnwlHPv0kZX0GfmRo9CEyYEdmrm0D8hr/Mc+STrEK953OSV340MjFx41x9aMieLDI5fxLw96i
	fqkTic7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12gm-00000000Hxy-3TWl;
	Fri, 13 Mar 2026 13:36:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12gk-00000000Hxn-47Ml
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:36:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=8Le0JBy7Gc81wN1ZnRKr3QX8iiGkORDhQ88vc87sJAQ=; b=WkmtFw5o3TYQxWrjr1Yulu2dFp
	oezZNOwyXpXxPi61k08UITjRFsSyVqxht1s3e0f9NlkSUA5dUVjH2IO+E+7ZBJPcEUQ7CoFJHc6oY
	jVQptSOA/z0BEzrbZvKF0qSNavUuFxXIBwyxJ6qCYpxyKM0rDtKVxkws7yd6ZNh1q/L0QZmF2oDSA
	w69EyWjH31aQxt4Db9wsPXFdA0PyG6GZBajHnrN4GKsu+wqiwRWZ0BjOK+Ql6MPhWHtJUxxgNi7+u
	OTXtQY4RnyMqtnbip5sVr6y6YoSyiW3N6bGJS7rsMQR5fNkXaBgCl1bgtfR7xJjswfGP0fGYlvGBp
	kMrESZjg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12gY-00000003PJO-3zMJ
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:36:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1w12gV-0002M2-IV; Fri, 13 Mar 2026 14:36:11 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1w12gV-0005aG-1F;
	Fri, 13 Mar 2026 14:36:11 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1w12gV-0000000HEij-1EwS;
	Fri, 13 Mar 2026 14:36:11 +0100
Date: Fri, 13 Mar 2026 14:36:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <abQSywI_nJlVD2dJ@pengutronix.de>
References: <20260312-v2026-02-0-topic-sconfig_console-v1-0-4c3fccafab1e@pengutronix.de>
 <20260312-v2026-02-0-topic-sconfig_console-v1-1-4c3fccafab1e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260312-v2026-02-0-topic-sconfig_console-v1-1-4c3fccafab1e@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133622_064316_46E6FF0C 
X-CRM114-Status: GOOD (  23.94  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] common: bootm: add policy to commandline
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Mar 12, 2026 at 10:16:42AM +0100, Fabian Pflug wrote:
> If security policies are used, then the variable bootm.provide_policy
> can be set to automatically append the currently selected security
> policy to the kernel commandline with the prefix
> barebox.security.policy=
> This allows the the system to behave different based on the selected
> security policy.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  common/bootm.c  | 23 +++++++++++++++++++++++
>  include/bootm.h |  5 +++++
>  2 files changed, 28 insertions(+)
> 
> diff --git a/common/bootm.c b/common/bootm.c
> index 6318509884..cd90aa81e1 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -22,6 +22,7 @@
>  #include <uncompress.h>
>  #include <zero_page.h>
>  #include <security/config.h>
> +#include <security/policy.h>
>  
>  static LIST_HEAD(handler_list);
>  static struct sconfig_notifier_block sconfig_notifier;
> @@ -75,6 +76,7 @@ static int bootm_dryrun;
>  static int bootm_earlycon;
>  static int bootm_provide_machine_id;
>  static int bootm_provide_hostname;
> +static int bootm_provide_policy;
>  static int bootm_verbosity;
>  static int bootm_efi_mode = BOOTM_EFI_AVAILABLE;
>  
> @@ -97,6 +99,7 @@ void bootm_data_init_defaults(struct bootm_data *data)
>  	data->appendroot = bootm_appendroot;
>  	data->provide_machine_id = bootm_provide_machine_id;
>  	data->provide_hostname = bootm_provide_hostname;
> +	data->provide_policy = bootm_provide_policy;
>  	data->verbose = bootm_verbosity;
>  	data->dryrun = bootm_dryrun;
>  	data->efi_boot = bootm_efi_mode;
> @@ -118,6 +121,7 @@ void bootm_data_restore_defaults(const struct bootm_data *data)
>  	bootm_appendroot = data->appendroot;
>  	bootm_provide_machine_id = data->provide_machine_id;
>  	bootm_provide_hostname = data->provide_hostname;
> +	bootm_provide_policy = data->provide_policy;
>  	bootm_verbosity = data->verbose;
>  	bootm_dryrun = data->dryrun;
>  	bootm_efi_mode = data->efi_boot;
> @@ -712,6 +716,20 @@ int bootm_boot(struct bootm_data *bootm_data)
>  		free(hostname_bootarg);
>  	}
>  
> +	if (IS_ENABLED(CONFIG_SECURITY_POLICY) && bootm_data->provide_policy) {
> +		char *policy_bootargs;
> +
> +		if (!active_policy->name) {

Could active_policy be NULL here?

> +			pr_err("Providing policy is enabled but policy has no name\n");
> +			ret = -EINVAL;
> +			goto err_out;
> +		}
> +
> +		policy_bootargs = basprintf("barebox.security.policy=%s", active_policy->name);
> +		globalvar_add_simple("linux.bootargs.policy", policy_bootargs);

Should be linux.bootargs.dyn.policy to make sure it gets cleared after a
boot attempt.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


