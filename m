Delivery-date: Fri, 20 Mar 2026 08:30:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3UJI-002wyD-19
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 08:30:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3UJH-000380-Nn
	for lore@pengutronix.de; Fri, 20 Mar 2026 08:30:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MD2Qybr8OgGQ0VW17vVWOKq/lxhetTpjXPwcgdD1OfE=; b=eFcdl1nbsgE9WB4QN0sO04L8SN
	SmeWktFLFphUS/B+XgzAMRFJtRwtAGchYr1YEvPgCIwZQ6x/aOGwhXW91xJT7p+G4Wk9LzvJ1TIAg
	8kaC44+9AwTt1Ta+GjA9tfzXn53Giqfav05ltSi37wMeBNFbvXqAa2wWzAc0WNWlf6VEsZ9yE5AmS
	WO9g+UHm0A2jW2STTA5UYw7u5pPFrjsCCcYCBxyK6E86nx+vhmw+xzN67xBn1w3SGb/enWxhMNROo
	tLDh3xi8zwi7WeKYNhtaDs0iDwOMmj6bp/NKnHtdOnCHm7P1PXgwAKjttla2vYenJHWL9tu8HNf8i
	69IGO2xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3UIq-0000000CGcd-09Nf;
	Fri, 20 Mar 2026 07:29:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3UIo-0000000CGcS-30kr
	for barebox@bombadil.infradead.org;
	Fri, 20 Mar 2026 07:29:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=MD2Qybr8OgGQ0VW17vVWOKq/lxhetTpjXPwcgdD1OfE=; b=NhcjdeToH6VfzHPiFMpUlvgy4I
	4ZArcfJnZ31ogqtotgwBW3NJ0lJlrLiPtq6bn6E19IhjPoA80r1oCLJFtL+J5sUyWrzvnK2RhnW57
	woPecCq3eRGIM7ciT+m5PKNVlVOOnpF4Mq5NRdrN/u4yjll8XRN12ItrRWTdR5skgmdulFP0TltEK
	vlLa0Kzwm6+81B5aKCdTihUahkWw1E/c5JcEs/dOznw6ox7ZS7eqKcfJJ+p6Wxwm6oNsjiuk7XRPd
	XkvJOC6lLF6yE0RzaTcgZQOvXezUsB57BvZVsrbB6rSjRCf7zjONoswZVRPe5sF73a+S1otSNDXBA
	Mq2A5EnA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3UIk-0000000F3Fm-3Xnb
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 07:29:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w3UIk-00031y-5H; Fri, 20 Mar 2026 08:29:46 +0100
Message-ID: <b61a4d62-72d3-41fd-bc51-be8c058b2618@pengutronix.de>
Date: Fri, 20 Mar 2026 08:29:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>
References: <20260320-v2026-02-0-topic-sconfig_console-v5-0-2efcaa7cb03e@pengutronix.de>
 <20260320-v2026-02-0-topic-sconfig_console-v5-3-2efcaa7cb03e@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260320-v2026-02-0-topic-sconfig_console-v5-3-2efcaa7cb03e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_072947_441666_B4F3E55A 
X-CRM114-Status: GOOD (  21.26  )
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
Subject: Re: [PATCH v5 3/7] security: policy: remove global active_policy var
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 3/20/26 08:17, Fabian Pflug wrote:
> Replace with a getter function called security_policy_get_active(), that
> automatically initializes the active_policy, if an initial policy is
> set.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>

With below point addressed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> @@ -25,9 +25,8 @@
>  #define POLICY_TAMPER		"tamper"
>  #define POLICY_FIELD_RETURN	"return"
>  
> -extern const struct security_policy *active_policy;

The definition should be made static then.

> -
>  const struct security_policy *security_policy_get(const char *name);
> +const struct security_policy *security_policy_get_active(void);
>  
>  int security_policy_activate(const struct security_policy *policy);
>  int security_policy_select(const char *name);
> diff --git a/security/Kconfig.policy b/security/Kconfig.policy
> index 9ea52e91da..e778327b0d 100644
> --- a/security/Kconfig.policy
> +++ b/security/Kconfig.policy
> @@ -49,7 +49,8 @@ config SECURITY_POLICY_INIT
>  	prompt "Initial security policy"
>  	help
>  	  The policy named here will be automatically selected the first
> -	  time a security policy is to be consulted.
> +	  time a security policy is to be consulted or the currently active
> +	  policy is queried.
>  	  It's recommended to use a restrictive policy here and remove
>  	  the restrictions if needed instead of the other way round.
>  
> diff --git a/security/policy.c b/security/policy.c
> index 95e7bf99a2..fce527df67 100644
> --- a/security/policy.c
> +++ b/security/policy.c
> @@ -60,15 +60,12 @@ static bool __is_allowed(const struct security_policy *policy, unsigned option)
>  
>  bool is_allowed(const struct security_policy *policy, unsigned option)
>  {
> -	policy = policy ?: active_policy;
> -
>  	if (WARN(option > SCONFIG_NUM))
>  		return false;
>  
> -	if (!policy && *CONFIG_SECURITY_POLICY_INIT) {
> -		security_policy_select(CONFIG_SECURITY_POLICY_INIT);
> -		policy = active_policy;
> -	}
> +	/* initialize and use active policy if none is selected */
> +	if (!policy)
> +		policy = security_policy_get_active();
>  
>  	if (policy) {
>  		bool allow = __is_allowed(policy, option);
> @@ -108,6 +105,13 @@ int security_policy_activate(const struct security_policy *policy)
>  	return 0;
>  }
>  
> +const struct security_policy *security_policy_get_active(void)
> +{
> +	if (!active_policy && *CONFIG_SECURITY_POLICY_INIT)
> +		security_policy_select(CONFIG_SECURITY_POLICY_INIT);
> +	return active_policy;
> +}
> +
>  const struct security_policy *security_policy_get(const char *name)
>  {
>  	const struct policy_list_entry *entry;
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


