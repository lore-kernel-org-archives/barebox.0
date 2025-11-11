Delivery-date: Tue, 11 Nov 2025 10:00:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIkEN-0005pz-02
	for lore@lore.pengutronix.de;
	Tue, 11 Nov 2025 10:00:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIkEM-0004Ts-E8
	for lore@pengutronix.de; Tue, 11 Nov 2025 10:00:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fy1L4mMlOpEbvSLa0cx+4WaICfwlwsxviWUxFYR/xlY=; b=lZqDSe6ZowmzhQNvsiQKzS/sSC
	XoN5Y/UtoejPHRR2cg7pFWRGvl7oIYYo5/u6UWTHm6nOioPm8WWm1DEpxVVD6av6TDHZXKuUtyGL0
	ltE+muuXYyz/N/mVRe2fSZdMHVQwehaNIyFJPYywveiXAPR1pLO7r4+usxaHt0ppnGNJ3yElDDr45
	STeiATUYFWbR0C/5TQZjh2kldonCrPeUcwCkegAtB1VLLWukpuPBsIIv0CcG+OX5bINywGpzZUBNy
	xvqOp2wMEHKyGP2XBLmdRCev2e+/zc9z+xwH1WZipB9w5vAby5V+n433sl7QMU1qomfeq90+TRckH
	i/xPlFYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIkDn-00000006ofA-3IMh;
	Tue, 11 Nov 2025 08:59:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIkDk-00000006oeN-41NG
	for barebox@lists.infradead.org;
	Tue, 11 Nov 2025 08:59:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vIkDi-0004On-Dh; Tue, 11 Nov 2025 09:59:22 +0100
Message-ID: <98968c9c-4edf-46d3-a317-01fb79b925f4@pengutronix.de>
Date: Tue, 11 Nov 2025 09:59:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>, barebox@lists.infradead.org
References: <20251110214648.2738052-1-f.pflug@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251110214648.2738052-1-f.pflug@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_005925_006601_816307FC 
X-CRM114-Status: GOOD (  20.50  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] security: policy: allow querying the active policy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Fabian,

On 11/10/25 10:46 PM, Fabian Pflug wrote:
> Sometimes it is needed from board code to not to check what is allowed,
> but what is the currently activated security policy to do some stuff.

As you know, security policies were a recent addition in the last
month's release and we are still gathering experience with how to best
use it.

May I ask what you are using the name for? I envisioned the name to be
just a descriptive string and that boards would define their own
SCONFIG_ symbols if they need to control something.


Thanks,
Ahmad

> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  include/security/policy.h | 1 +
>  security/policy.c         | 8 ++++++++
>  2 files changed, 9 insertions(+)
> 
> diff --git a/include/security/policy.h b/include/security/policy.h
> index c41220ef3b..3eedf6e5ac 100644
> --- a/include/security/policy.h
> +++ b/include/security/policy.h
> @@ -32,6 +32,7 @@ const struct security_policy *security_policy_get(const char *name);
>  int security_policy_activate(const struct security_policy *policy);
>  int security_policy_select(const char *name);
>  void security_policy_list(void);
> +bool security_policy_is_active(const char *name);
>  
>  #ifdef CONFIG_SECURITY_POLICY
>  int __security_policy_register(const struct security_policy policy[]);
> diff --git a/security/policy.c b/security/policy.c
> index 85333d9e6f..abb956014d 100644
> --- a/security/policy.c
> +++ b/security/policy.c
> @@ -225,6 +225,14 @@ static int security_policy_get_name(struct param_d *param, void *priv)
>  	return 0;
>  }
>  
> +bool security_policy_is_active(const char *name)
> +{
> +	if (!active_policy)
> +		return false;
> +
> +	return !strcmp(name, active_policy->name);
> +}
> +
>  static int security_init(void)
>  {
>  	register_device(&security_device);

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



