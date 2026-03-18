Delivery-date: Wed, 18 Mar 2026 09:12:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2m1F-0026yH-1x
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 09:12:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2m1E-00014N-V3
	for lore@pengutronix.de; Wed, 18 Mar 2026 09:12:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TZltTPnrOVHaX/Kiq2zAbh5LUX4czdiZ6UZnZ1li/58=; b=XXNe/rK+wIi7tdfJtKu0s7kGjR
	P6AGIBhNnzE/z1cpT4Ik0zw+K3dL+0hxlbYDuwa6KtQA88D/mZSryabrkBzAGcm4TZs9FfMIQ5nXc
	7ibV7udRXvaFUAFyoTJh88Zy/HoSPQVUvB5BJ1EUYXzEs2IBY9U9R72MTTZuL3mXFttLD0Kas67Y6
	vOoeaugl3RhkQ8sTTJc0Agkim6y8J2OOVb4mieg+E4DKNA9NT3+ywJfuG6tJfF4FqIw/hf7m2eFHs
	V7SnyAkHUnqa5P6we22RJA6Syvhqc7ZSqYNoos7hQ5Y1vCnBfFLCwa78EE8uQfs5fL+tsulvl/cEm
	0rN5HMiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2m0o-0000000813S-0zc1;
	Wed, 18 Mar 2026 08:12:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2m0l-0000000812c-3CFK
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 08:12:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1w2m0j-0000us-W4; Wed, 18 Mar 2026 09:12:14 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1w2m0j-000sRP-2Z;
	Wed, 18 Mar 2026 09:12:13 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1w2m0j-000000097AH-2xmz;
	Wed, 18 Mar 2026 09:12:13 +0100
Date: Wed, 18 Mar 2026 09:12:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <abpeXYhQNkb102YL@pengutronix.de>
References: <20260312144325.2157379-1-a.fatoum@pengutronix.de>
 <20260312144325.2157379-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260312144325.2157379-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_011215_800218_9B43FF7E 
X-CRM114-Status: GOOD (  24.84  )
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
Subject: Re: [PATCH 2/2] globalvar: add helpers for stashing global variables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Mar 12, 2026 at 03:43:16PM +0100, Ahmad Fatoum wrote:
> Configuring a FIT image boot with overlays involves setting not only
> global.bootm.* variables, but also global.of.overlay.* variables.
> 
> For use in custom boot entry functions, provide functions for stashing
> and restoring a set of variables. This allows dry run and boot fallback
> behavior to not affect later boot attempts.

Looks generally good. I assume this is to replace the .dyn. type
variables, right?

Can we the a user before applying this?

Sascha

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/globalvar.c  | 77 +++++++++++++++++++++++++++++++++++++++++++++
>  include/globalvar.h |  3 ++
>  2 files changed, 80 insertions(+)
> 
> diff --git a/common/globalvar.c b/common/globalvar.c
> index c2b0d5b4bbad..e168d6055347 100644
> --- a/common/globalvar.c
> +++ b/common/globalvar.c
> @@ -461,6 +461,83 @@ int globalvar_set(const char *name, const char *val)
>  	return dev_set_param(&global_device, name, val);
>  }
>  
> +struct globalvar_stashed {
> +	const char *key;
> +	const char *value;
> +	struct list_head list;
> +};
> +
> +static void globalvar_stashed_free(struct globalvar_stashed *elem)
> +{
> +	list_del(&elem->list);
> +	free_const(elem->key);
> +	free_const(elem->value);
> +	free(elem);
> +}
> +
> +int globalvar_stash_push(struct list_head *stash, ...)
> +{
> +	struct globalvar_stashed *elem, *safe;
> +	const char *name;
> +	int ret = -ENOMEM;
> +	va_list args;
> +	LIST_HEAD(tmp);
> +
> +	va_start(args, stash);
> +
> +	while ((name = va_arg(args, const char *))) {
> +		const char *value;
> +
> +		elem = calloc(1, sizeof(*elem));
> +		if (!elem)
> +			goto out;
> +
> +		list_add_tail(&elem->list, &tmp);
> +
> +		elem->key = strdup_const(name);
> +		if (!elem->key)
> +			goto out;
> +
> +		value = globalvar_get(name);
> +		if (!value) {
> +			ret = -EINVAL;
> +			goto out;
> +		}
> +
> +		elem->value = strdup_const(value);
> +		if (!elem->value)
> +			goto out;
> +	}
> +
> +	list_splice_tail(&tmp, stash);
> +
> +	ret = 0;
> +out:
> +	va_end(args);
> +
> +	if (ret) {
> +		list_for_each_entry_safe(elem, safe, &tmp, list)
> +			globalvar_stashed_free(elem);
> +	}
> +
> +	return ret;
> +}
> +
> +int globalvar_stash_pop(struct list_head *stash)
> +{
> +	struct globalvar_stashed *elem, *tmp;
> +	int err = 0;
> +
> +	list_for_each_entry_safe(elem, tmp, stash, list) {
> +		int ret = globalvar_set(elem->key, elem->value);
> +		if (ret)
> +			err = ret;
> +		globalvar_stashed_free(elem);
> +	}
> +
> +	return err;
> +}
> +
>  static int globalvar_simple_set(struct bobject *bobj, struct param_d *p,
>  				const char *val)
>  {
> diff --git a/include/globalvar.h b/include/globalvar.h
> index 413cf72002a0..1d39849ddbab 100644
> --- a/include/globalvar.h
> +++ b/include/globalvar.h
> @@ -24,6 +24,9 @@ char *globalvar_get_match(const char *match, const char *separator);
>  void globalvar_set_match(const char *match, const char *val);
>  int globalvar_set(const char *name, const char *val);
>  
> +int globalvar_stash_push(struct list_head *stash, ...) __attribute__((sentinel));
> +int globalvar_stash_pop(struct list_head *stash);
> +
>  int globalvar_add_simple_string(const char *name, char **value);
>  int globalvar_add_simple_int(const char *name, int *value,
>  			     const char *format);
> -- 
> 2.47.3
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


