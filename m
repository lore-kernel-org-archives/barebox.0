Delivery-date: Tue, 24 Mar 2026 15:36:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w52rm-004XIH-1a
	for lore@lore.pengutronix.de;
	Tue, 24 Mar 2026 15:36:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w52rl-000783-Uq
	for lore@pengutronix.de; Tue, 24 Mar 2026 15:36:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4ULIr1dm/3vMnSZxKyEf+QMmH5V7jkjo71BmLgrE9Vk=; b=Zd44Lw+TRyvCmRocyFjS/4gYJ8
	EcznEHcus5n8kwoEXbLCg2i6gzWRQoR5C6IA/r7tYvu1/s4PDYQktY/cNnqfNXtJbtcIdbHCQhz4H
	L8p+EB5VkdOBQE6qtAg22F2gPothCfs1TPAwxRAKssPzKpmbKcd6w1RHtO4CnGzDWiHajGZlnRSSa
	JgdE6uYI8o8/iZSBWH24SRQYco0pW74hdK+7Wleli0UUfqYQ4Tu33GMkiX1eFMhvhoyC+2egE3b14
	o+uy0Pks1oyJavkSUZVYAi3XfYpmd1+/ogjHemdS3SAZbkg5liQifBT/u6IByB+LD7RI7DbEbrybi
	gNO14Adw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w52rP-00000001f3u-2brN;
	Tue, 24 Mar 2026 14:35:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w52rL-00000001f2o-08Zd
	for barebox@lists.infradead.org;
	Tue, 24 Mar 2026 14:35:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w52rJ-000726-GO; Tue, 24 Mar 2026 15:35:53 +0100
Message-ID: <f466bf28-2cc2-4447-9307-f72e252f50c8@pengutronix.de>
Date: Tue, 24 Mar 2026 15:35:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>
References: <20260324-v2026-02-0-topic-sconfig_console-v6-0-f0eb6af2cc06@pengutronix.de>
 <20260324-v2026-02-0-topic-sconfig_console-v6-2-f0eb6af2cc06@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260324-v2026-02-0-topic-sconfig_console-v6-2-f0eb6af2cc06@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_073556_082659_45A13FE9 
X-CRM114-Status: GOOD (  20.26  )
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
Subject: Re: [PATCH v6 2/7] security: policy: sanity check parameters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 3/24/26 10:52 AM, Fabian Pflug wrote:
> Do a sanity check for the the is_allowed, before using it as array
> index.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  commands/sconfig.c | 7 ++++++-
>  security/policy.c  | 2 ++
>  2 files changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/commands/sconfig.c b/commands/sconfig.c
> index 02c3a6b1ed..3ca4478270 100644
> --- a/commands/sconfig.c
> +++ b/commands/sconfig.c
> @@ -37,7 +37,12 @@ static void sconfig_print(const struct security_policy *policy)
>  static int sconfig_command_notify(struct notifier_block *nb,
>  				  unsigned long opt, void *unused)
>  {
> -	bool allow = is_allowed(NULL, opt);
> +	bool allow;
> +
> +	if (opt >= SCONFIG_NUM)
> +		return 0;

Here you use >=

> +
> +	allow = is_allowed(NULL, opt);
>  
>  	printf("%s%s%s%s\n", allow ? green : red, allow ? "+" : "-", nc,
>  	       sconfig_names[opt]);
> diff --git a/security/policy.c b/security/policy.c
> index 85333d9e6f..95e7bf99a2 100644
> --- a/security/policy.c
> +++ b/security/policy.c
> @@ -52,6 +52,8 @@ static bool __is_allowed(const struct security_policy *policy, unsigned option)
>  {
>  	if (!policy)
>  		return true;
> +	if (WARN(option > SCONFIG_NUM))
> +		return false;

and here only >

I think you want both to be >= because option is an index?


Thanks,
Ahmad

>  
>  	return policy->policy[option];
>  }
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



