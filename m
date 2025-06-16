Delivery-date: Mon, 16 Jun 2025 13:58:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR8UB-007uVW-0M
	for lore@lore.pengutronix.de;
	Mon, 16 Jun 2025 13:58:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR8UA-0007Xo-DX
	for lore@pengutronix.de; Mon, 16 Jun 2025 13:58:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sTEkeNhKRuA2nDb7WxdtRrir6eIwwtCQ0c25OsJ7pNw=; b=cUVGuuOIDhf52DVnep9NxAb0VB
	/we3j5ZA53/U7aYkp9Hys/Dlwsg936FCcJLOrW99ACz/ThvL6GceX6lNWyt7fJLmZ87ly8A6nWXcY
	FwlW9mIHXEF7yRDTEH6EPjb1f+GW0zFzczOXdH9NExGXkMevqgMmkNNR3WdyGXPOfJa7D5b8RkEoi
	5SlvEPhX4CHpFWTl56Hw6rjdWkhVeSwyOeaQv298KOngDzSmnzfFyIFPwnMjsFb1i3Zwd25kd0C7m
	HfcF+gAoOrRnsriN+StmKSSYxolcD/JLbU133OL6BBPfPk6ASAIcH46yZAmubQEepF++oKXrS68re
	MLtqrUlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR8Tj-00000004GjV-32Hg;
	Mon, 16 Jun 2025 11:58:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR7KO-000000046cn-3wxk
	for barebox@lists.infradead.org;
	Mon, 16 Jun 2025 10:44:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uR7KN-0006l8-PL; Mon, 16 Jun 2025 12:44:35 +0200
Message-ID: <02876a3b-c129-41d2-b0ff-f2d06025b595@pengutronix.de>
Date: Mon, 16 Jun 2025 12:44:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lars Schmidt <l.schmidt@pengutronix.de>, barebox@lists.infradead.org
References: <20250613140805.1229525-1-l.schmidt@pengutronix.de>
 <20250613140805.1229525-2-l.schmidt@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250613140805.1229525-2-l.schmidt@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_034436_986943_8C48BFEE 
X-CRM114-Status: GOOD (  27.17  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] bootchooser: implement locking of boot slots
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

FTR, this is meant to be exercised by RAUC with the PR being here:
https://github.com/rauc/rauc/pull/1732

On 6/13/25 16:08, Lars Schmidt wrote:
> This this new global slot lock inhibits the remaining attempts counter
> from decreasing.

It turns out, the RAUC developers tell me, that slots is a RAUC concept
and indeed there is no mention of slots anywhere in
common/bootchooser.c. Bootchooser instead has targets.

> There are ways around this, but both come with a disadvantage:
>   - If we mark the old slot as bad after a good update, we lose the
>     distinction between old slots that are unbootable and ones that
>     are bootable. Maintaining this distinction allows a health monitor
>     to explicitly boot an old slot while preventing the bootloader
>     from doing it automatically
>   - If we set the maximum attempts to a very high number, we keep
>     writing the storage every boot, even if we don't do
> In both cases, by not decreasing and increasing the remaining attempts
> counter constantly the number of write cycles is also lowered.
> 
> Signed-off-by: Lars Schmidt <l.schmidt@pengutronix.de>
> ---
>  common/bootchooser.c | 27 ++++++++++++++++++++++-----
>  1 file changed, 22 insertions(+), 5 deletions(-)
> 
> diff --git a/common/bootchooser.c b/common/bootchooser.c
> index 58032a2b57..a50f757791 100644
> --- a/common/bootchooser.c
> +++ b/common/bootchooser.c
> @@ -49,6 +49,7 @@ struct bootchooser {
>  	struct state *state;
>  	char *state_prefix;
>  	int refs;
> +	bool slots_locked;

rename to attempts_locked.

>  
>  	int verbose;
>  	int dryrun;
> @@ -353,6 +354,7 @@ struct bootchooser *bootchooser_get(void)
>  	int ret = -EINVAL, id = 1;
>  	uint32_t last_chosen;
>  	static int attempts_resetted;
> +	uint32_t locked;
>  
>  	if (bootchooser) {
>  		bootchooser->refs++;
> @@ -397,6 +399,18 @@ struct bootchooser *bootchooser_get(void)
>  		pr_warn("using non-redundant NV instead of barebox-state\n");
>  	}
>  
> +	ret = getenv_u32(bc->state_prefix, "slots_locked", &locked);

attempts_locked.

> +	if (!ret) {
> +		bc->slots_locked = locked ? true : false;

Needlessly verbose. Just initialize attempts_locked to false and then here:

if (!ret && locked) {
	bc->attempts_locked = true;
        pr_debug(...);
}
> +		if (bc->slots_locked)
> +			pr_debug("Global slots locking is enabled\n");

"boot attempt counting is locked\n" ?

> +	} else {
> +		/* this is an optional value, so if it doesn't exist,
> +		 * we assume it's not locked
> +		 */
> +		bc->slots_locked = false;
> +	}

Can be dropped with above suggested change.

> +
>  	INIT_LIST_HEAD(&bc->targets);
>  
>  	freep = targets = xstrdup(available_targets);
> @@ -650,11 +664,14 @@ static struct bootchooser_target *bootchooser_get_target(struct bootchooser *bc)
>  	return ERR_PTR(-ENOENT);
>  
>  found:
> -	target->remaining_attempts--;
> -
> -	if (bc->verbose)
> -		pr_info("name=%s decrementing remaining_attempts to %d\n",
> -			target->name, target->remaining_attempts);
> +	if (!bc->slots_locked) {

attempts_locked

> +		target->remaining_attempts--;
> +		if (bc->verbose)
> +			pr_info("name=%s remaining_attempts %d\n", target->name,
> +				target->remaining_attempts);
> +	} else {
> +		pr_info("Slots locking is enabled, not decreasing remaining_attempts\n");
> +	}
>  
>  	if (bc->verbose)
>  		pr_info("selected target '%s', boot '%s'\n", target->name, target->boot);

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



