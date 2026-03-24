Delivery-date: Tue, 24 Mar 2026 15:35:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w52qv-004XHF-39
	for lore@lore.pengutronix.de;
	Tue, 24 Mar 2026 15:35:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w52qv-0006wq-Dq
	for lore@pengutronix.de; Tue, 24 Mar 2026 15:35:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=krvbge6pcBBZR+ABpPV+vaGvgDjwaMPztMts7g4GBxY=; b=VGH5AfGzWeHx1649XviH6lkkLR
	qpw+P4WQK3694L/pyEO+DbGSltE+tkbxrEtxz9cOudvkOYvrVnxHbBrW2/BAyOjA7YrQTxl+rfZ+V
	iWLlUpEKtXZKG7qFzh2ZRc7cl/l3xvv+WNBbDSe02i/jSw7TdPrk+Sf3Q5OV2VUmHYOvrmws49pQB
	V+t/4FphBCQNTdyXhGahAwlhMb79ve+PUsIsv7+p/Ryw6fqgnnnb6RI6UEwSe/Xj2TNqYY5Ac7oVo
	qo5i+4UfiMjGbiRptNQe1qhUhyarlSuCF4HpUYOu9dQ1rgDhZpYe8Zz5/Ua7Gevu0Piq3qkzcd2nZ
	Fen60KuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w52qH-00000001eqR-2fGZ;
	Tue, 24 Mar 2026 14:34:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w52qE-00000001epp-1gbV
	for barebox@lists.infradead.org;
	Tue, 24 Mar 2026 14:34:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w52qB-0006q8-B8; Tue, 24 Mar 2026 15:34:43 +0100
Message-ID: <910fdfd7-ba2d-4863-95be-c85741a6ad7d@pengutronix.de>
Date: Tue, 24 Mar 2026 15:34:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>
References: <20260324-v2026-02-0-topic-sconfig_console-v6-0-f0eb6af2cc06@pengutronix.de>
 <20260324-v2026-02-0-topic-sconfig_console-v6-5-f0eb6af2cc06@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260324-v2026-02-0-topic-sconfig_console-v6-5-f0eb6af2cc06@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_073446_442748_50272E0E 
X-CRM114-Status: GOOD (  12.10  )
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
Subject: Re: [PATCH v6 5/7] common: bootm: add policy to commandline
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 3/24/26 10:52 AM, Fabian Pflug wrote:
> +	if (IS_ENABLED(CONFIG_SECURITY_POLICY) && bootm_data->provide_policy) {
> +		char *policy_bootargs;
> +		const struct security_policy *active_policy = security_policy_get_active();

if active_policy is set to NULL here

> +
> +		if (active_policy && !active_policy->name) {

This is skipped

> +			pr_err("Providing policy is enabled but policy has no name\n");
> +			ret = -EINVAL;
> +			goto err_out;
> +		}
> +
> +		policy_bootargs = basprintf("barebox.security.policy=%s", active_policy->name);

and here you have a NULL pointer dereference.

Instead you likely want to have

  if (!active_policy || !active_policy->name)

Although, I find the active_policy->name check unnecessary as there is
always a name, because sconfigpost always emits one.

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



