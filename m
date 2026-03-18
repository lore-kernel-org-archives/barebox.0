Delivery-date: Wed, 18 Mar 2026 12:28:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2p4z-002Af4-2n
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 12:28:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2p4z-00087s-8g
	for lore@pengutronix.de; Wed, 18 Mar 2026 12:28:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=83TvV+3PYpriF+QsJC7Fv60oExClYtwxXBJWJtD7ic8=; b=ZoWruCS2QAI6N18sx+/0JnNkw0
	nhKJ6t5KyzDGq8uKLIGWmnHoOzQ417KqBHoFp98CvjaktBNeGn59+bd1nVaK69QWf4I+m2Q7+cB4z
	sOrwphNRoLWLdU/GuwYWtMn7WU4NdFaELYmRx+OdT3mBPM6Vpl64ropqS9R9lZkK/RCBgndeL1cpE
	QzDmDWliy8D1VgAg8BrOn6866VusuFHRb9bkKi2slNZBc0mrH7G0IteH2aijVRRYdjCRB/sKcjfnq
	fHvIQP9tS12sKx1AnyHAtdONZfl6vs78EXYyoHfF6o7XPBmX2dVN7tvdKi9yjQvBMTmcFrogTF0v+
	rmZ8lG0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2p4X-00000008JIr-2NiW;
	Wed, 18 Mar 2026 11:28:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2p4T-00000008JIP-1G2a
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 11:28:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w2p4R-00080m-MZ; Wed, 18 Mar 2026 12:28:15 +0100
Message-ID: <f9d5e454-6721-4467-8a6d-2f42f8754ed8@pengutronix.de>
Date: Wed, 18 Mar 2026 12:28:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>
References: <20260318-v2026-02-0-topic-sconfig_console-v3-0-e26055294723@pengutronix.de>
 <20260318-v2026-02-0-topic-sconfig_console-v3-3-e26055294723@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260318-v2026-02-0-topic-sconfig_console-v3-3-e26055294723@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_042817_346101_C7CF0E3C 
X-CRM114-Status: GOOD (  25.40  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 3/5] security: policy: set active policy on boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 3/18/26 10:22, Fabian Pflug wrote:
> If init name has been set at compiletime and the policy is available,
> because it is part of the path, then set the active policy to the policy
> selected by compiletime.
> Since this is so early in the bootchain, there is no need to call
> security_policy_activate, because there should not be any registered
> callbacks at this moment in time.
> If no policy could be found, then it will be filled as before by the
> first call to is_allowed.

The code in is_allowed is:

if (!policy && *CONFIG_SECURITY_POLICY_INIT) {
        security_policy_select(CONFIG_SECURITY_POLICY_INIT);
        policy = active_policy;
}

It becomes dead code with your change here as CONFIG_SECURITY_POLICY_INIT
is a compile-time constant, there is no filling on the first call anymore.

> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  security/policy.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/security/policy.c b/security/policy.c
> index 85333d9e6f..e2d1b10a78 100644
> --- a/security/policy.c
> +++ b/security/policy.c
> @@ -235,6 +235,9 @@ static int security_init(void)
>  	if (*CONFIG_SECURITY_POLICY_PATH)
>  		security_policy_add(default);
>  
> +	if (*CONFIG_SECURITY_POLICY_INIT)
> +		active_policy = security_policy_get(CONFIG_SECURITY_POLICY_INIT);
> +

I think I decided initially against this, because there was initially
a Sconfig option against changing the active security policy.

I believe now a single option is too limiting, it should instead be
a directed graph that explains which policies are reachable from a given
policy.

Anyways, the change here invalidates the Kconfig help text for
SECURITY_POLICY_INIT.

I am not fully sure if this change is a good idea, but it needs to
be fixed to be considered. I assume you do this, because checking
the name of the policy doesn't trigger a selection like IS_ALLOWED does?

Thanks,
Ahmad


>  	return 0;
>  }
>  pure_initcall(security_init);
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


