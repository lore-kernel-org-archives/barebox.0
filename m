Delivery-date: Mon, 22 Sep 2025 18:15:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0jC6-0060uD-0L
	for lore@lore.pengutronix.de;
	Mon, 22 Sep 2025 18:15:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0jC5-00018T-CI
	for lore@pengutronix.de; Mon, 22 Sep 2025 18:15:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/KD6SbS+dBYNB6rLd0e0wBSyFrxKkFuREe+ye8eZNUU=; b=MnOmNB2bAYGjGmcCnqthA9Mg/0
	Hjwd3hFbW2eSWjX1l6E/y2zNib8/4wT8/6YM3oM5Nh0NVtgH/w43q+OL41S4+5dRpVI54Wz1pb/VW
	OlA1KGrsANVJ338pKL6vpFO9JCO1lkJjR8n9HinOdmcI4AsarPig7h3KtLTZoIc+wO7qbv3O/glG3
	EqV+i/yhUD/xnSIH4gt+EBPGMJxjD48Lsb+prPcORaia0tBQUxoYbfeDDwVqaghIYHgu58JUFvdWS
	ZwaHML8UZUeeSujpzAg/80YTcmur62rNh4rafPNDlhyZ3G4wfpAxcbfD1KuRWOAfJ4DB8ZoGOdm9c
	wMD26W/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0jBa-0000000Ax0L-1r6b;
	Mon, 22 Sep 2025 16:14:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0jBX-0000000Awz4-2Fc5
	for barebox@lists.infradead.org;
	Mon, 22 Sep 2025 16:14:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v0jBU-0000zO-Vi; Mon, 22 Sep 2025 18:14:37 +0200
Message-ID: <3d2f3b6b-ff92-4244-bbb4-15657337f72d@pengutronix.de>
Date: Mon, 22 Sep 2025 18:14:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
 <20250917-security-policies-v2-4-f30769a3ff51@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-4-f30769a3ff51@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_091439_586520_A4CD8C86 
X-CRM114-Status: GOOD (  22.78  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 04/24] Add security policy support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 17.09.25 15:53, Sascha Hauer wrote:
> +bool is_allowed(const struct security_policy *policy, unsigned option)
> +{
> +	policy = policy ?: active_policy;
> +
> +	if (WARN(option > SCONFIG_NUM))
> +		return false;
> +
> +	if (!policy && *CONFIG_SECURITY_POLICY_INIT) {
> +		security_policy_select(CONFIG_SECURITY_POLICY_INIT);
> +		policy = active_policy;
> +	}
> +
> +	if (policy) {
> +		bool allow = __is_allowed(policy, option);
> +
> +		policy_debug(policy, option, "%s for %pS\n",
> +			 allow ? "allowed" : "denied", (void *)_RET_IP_);
> +
> +		return allow;
> +	}
> +
> +	if (IS_ENABLED(CONFIG_SECURITY_POLICY_DEFAULT_PERMISSIVE))
> +		pr_warn_once("option %s checked before security policy was set!\n",
> +			     sconfig_name(option));
> +	else
> +		return false;

Not having a security policy selected outside of permissive mode is a bug, so
I don't think silent forbidding is a good idea.

At the very least, we should print the warning outside permissive mode as well,
if only to tell people if they select the policy too late in their board code.

What's wrong with a panic though?

> +
> +	return true;
> +}
> +
> +int security_policy_activate(const struct security_policy *policy)
> +{
> +	const struct security_policy *old_policy = active_policy;
> +
> +	if (policy == old_policy)
> +		return 0;
> +
> +	active_policy = policy;
> +
> +	for (int i = 0; i < SCONFIG_NUM; i++) {
> +		if (__is_allowed(policy, i) == __is_allowed(old_policy, i))
> +			continue;
> +
> +		notifier_call_chain(&sconfig_notifier_list, i, NULL);
> +	}
> +
> +	return 0;
> +}
> +
> +const struct security_policy *security_policy_get(const char *name)
> +{
> +	const struct policy_list_entry *entry;
> +
> +	list_for_each_entry(entry, &policy_list, list) {
> +		if (!strcmp(name, entry->policy->name))
> +			return entry->policy;
> +	}
> +
> +	return NULL;
> +}
> +
> +int security_policy_select(const char *name)
> +{
> +	const struct security_policy *policy;
> +
> +	policy = security_policy_get(name);
> +	if (!policy) {
> +		policy_err("Policy '%s' not found!\n", name);
> +		return -ENOENT;
> +	}
> +
> +	return security_policy_activate(policy);
> +}
> +
> +int __security_policy_register(const struct security_policy policy[])
> +{
> +	int ret = 0;
> +
> +	do {
> +		struct policy_list_entry *entry;
> +
> +		if (security_policy_get(policy->name)) {
> +			policy_err("policy '%s' already registered\n", policy->name);
> +			ret = -EBUSY;
> +			continue;
> +		}
> +
> +		entry = xzalloc(sizeof(*entry));
> +		entry->policy = policy;
> +		list_add_tail(&entry->list, &policy_list);
> +	} while ((policy++)->chained);
> +
> +	return ret;
> +}
> +
> +#ifdef CONFIG_CMD_SCONFIG
> +void security_policy_unregister_one(const struct security_policy *policy)
> +{
> +	struct policy_list_entry *entry;
> +
> +	if (!policy)
> +		return;
> +
> +	list_for_each_entry(entry, &policy_list, list) {
> +		if (entry->policy == policy) {
> +			list_del(&entry->list);
> +			return;
> +		}
> +	}
> +}
> +#endif
> +
> +void security_policy_list(void)
> +{
> +	const struct policy_list_entry *entry;
> +
> +	list_for_each_entry(entry, &policy_list, list) {
> +		printf("%s\n", entry->policy->name);
> +	}
> +}
> +
> +static int sconfig_handler_filtered(struct notifier_block *nb,
> +				    unsigned long opt, void *data)
> +{
> +	struct sconfig_notifier_block *snb
> +		= container_of(nb, struct sconfig_notifier_block, nb);
> +	bool allow;
> +
> +	if (snb->opt != opt)
> +		return NOTIFY_DONE;
> +
> +	allow = is_allowed(NULL, opt);
> +
> +	policy_debug(active_policy, opt, "calling %pS to %s\n",
> +		     snb->cb_filtered, allow ? "allow" : "deny");
> +
> +	snb->cb_filtered(snb, opt, is_allowed(NULL, opt));
> +	return NOTIFY_OK;
> +}
> +
> +int __sconfig_register_handler_filtered(struct sconfig_notifier_block *snb,
> +					sconfig_notifier_callback_t cb,
> +					enum security_config_option opt)
> +{
> +	snb->cb_filtered = cb;
> +	snb->opt = opt;
> +	return sconfig_register_handler(&snb->nb, sconfig_handler_filtered);
> +}
> +
> +struct device security_device = {
> +	.name = "security",
> +	.id = DEVICE_ID_SINGLE,
> +};
> +
> +static char *policy_name = "";
> +
> +static int security_policy_get_name(struct param_d *param, void *priv)
> +{
> +	if (!active_policy) {
> +		policy_name = "";
> +		return 0;
> +	}
> +
> +	free_const(policy_name);
> +	policy_name = strdup(active_policy->name);
> +	return 0;
> +}
> +
> +static int security_init(void)
> +{
> +	register_device(&security_device);
> +
> +	dev_add_param_string(&security_device, "policy", param_set_readonly,
> +			     security_policy_get_name, &policy_name, NULL);
> +
> +	return 0;
> +}
> +pure_initcall(security_init);
> diff --git a/security/sconfig_names.c b/security/sconfig_names.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..c830c4eb389202403e049db6a71b70f0f18b76f5
> --- /dev/null
> +++ b/security/sconfig_names.c
> @@ -0,0 +1,18 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <security/config.h>
> +#include <string.h>
> +#include <errno.h>
> +#include <linux/kernel.h>
> +
> +#include <generated/sconfig_names.h>
> +
> +int sconfig_lookup(const char *name)
> +{
> +	for (int i = 0; i < ARRAY_SIZE(sconfig_names); i++) {
> +		if (!strcmp(name, sconfig_names[i]))
> +			return i;
> +	}
> +
> +	return -ENOENT;
> +}
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


