Delivery-date: Mon, 16 Jun 2025 20:29:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uREai-0080kK-1C
	for lore@lore.pengutronix.de;
	Mon, 16 Jun 2025 20:29:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uREag-0002xN-G8
	for lore@pengutronix.de; Mon, 16 Jun 2025 20:29:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=85PFM72HLQZLgzPN5Q2TBq1jT3D9i56J/MfHm99xq7A=; b=zP2B75LfTtrxMw3dUYfEo3PdTl
	pb1lCzAMcUunQJ95usSGx7v/nZG3VrTvumz0ZFieV7HWtstRxvvzlPDsEGwhj+aDxlaE3pGtwduOU
	C0VojPg3XxtA+4Y210eWn7NOSjPwgtawJjYtLn7F1Xd9Bn1ydJk1LulP9GPnHUMJezRBpl5frvaAI
	EUR+0g/xHWH08Cq2ghArHWg7L4BD7jRiX7P47k/vRpHbLoXopqcpYFrYjvMvN8GcP3Hlhwj98RFBy
	gAJH8CnRMbwNYIB5WofSmCZhOGgAotQdoIZx6KdOyh9NpdtnkGXPID2vQIYh8AY03DpDTBZeJEv0b
	/Wyqv+dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uREZu-00000005Da9-2t8h;
	Mon, 16 Jun 2025 18:29:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRBo2-00000004tQm-4697
	for barebox@bombadil.infradead.org;
	Mon, 16 Jun 2025 15:31:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=85PFM72HLQZLgzPN5Q2TBq1jT3D9i56J/MfHm99xq7A=; b=XuKjJYWYjrlBtCg7mC5bYcofk0
	VQrI+H2qKkwbofx6MPdr6g1bbIwCkhWRZiDTlSIQIl+et27XkWy49WPwYaSyfmxn60WAEV27TzebH
	URKRgtgY40c0rWYaD+w2MEbI5v2xawh4NhJvFyVwNMyvyPcmaPT+xA6epPUQizNjsCLhVKpKkoglD
	cLll6aW9/UZrYigZbxIR9myBHyiAXR1W8IJ+v6j9ecr16EjrEiWqvMEM4S+l7Dc50iT6FOVOLhOu6
	gqrlANJ8g/CC/NwO7M9ftQ1fdebr9TvahT06i26MHvrjFcapXx8ZTXzOQg8w5LV8OV2ZPFH8cxpGs
	gP0w9ZPQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRBo0-00000003cdz-21cc
	for barebox@lists.infradead.org;
	Mon, 16 Jun 2025 15:31:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uRBnx-000896-6W; Mon, 16 Jun 2025 17:31:25 +0200
Message-ID: <58295653-0b49-494f-b3e4-9fd5f1fa0558@pengutronix.de>
Date: Mon, 16 Jun 2025 17:31:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lars Schmidt <l.schmidt@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20250616-bootchooser-lock-v2-0-df1f0d118635@pengutronix.de>
 <20250616-bootchooser-lock-v2-1-df1f0d118635@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250616-bootchooser-lock-v2-1-df1f0d118635@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_163128_651019_2F5713C1 
X-CRM114-Status: GOOD (  25.31  )
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
Subject: Re: [PATCH v2 1/4] bootchooser: implement locking of attempts counter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 6/16/25 17:06, Lars Schmidt wrote:
> This this new global slot lock inhibits the remaining attempts counter
> from decreasing.
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

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/bootchooser.c | 23 ++++++++++++++++++-----
>  1 file changed, 18 insertions(+), 5 deletions(-)
> 
> diff --git a/common/bootchooser.c b/common/bootchooser.c
> index 58032a2b576284fe65ee53ee0e49aea68e09697a..50ce73682fb6bac8e4319119169dfb8334eb8762 100644
> --- a/common/bootchooser.c
> +++ b/common/bootchooser.c
> @@ -49,6 +49,7 @@ struct bootchooser {
>  	struct state *state;
>  	char *state_prefix;
>  	int refs;
> +	bool attempts_locked;
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
> @@ -397,6 +399,14 @@ struct bootchooser *bootchooser_get(void)
>  		pr_warn("using non-redundant NV instead of barebox-state\n");
>  	}
>  
> +	/* this is an optional value */
> +	bc->attempts_locked = false;
> +	ret = getenv_u32(bc->state_prefix, "attempts_locked", &locked);
> +	if (!ret && locked) {
> +		bc->attempts_locked = true;
> +		pr_debug("remaining attempt counter is locked\n");
> +	}
> +
>  	INIT_LIST_HEAD(&bc->targets);
>  
>  	freep = targets = xstrdup(available_targets);
> @@ -650,11 +660,14 @@ static struct bootchooser_target *bootchooser_get_target(struct bootchooser *bc)
>  	return ERR_PTR(-ENOENT);
>  
>  found:
> -	target->remaining_attempts--;
> -
> -	if (bc->verbose)
> -		pr_info("name=%s decrementing remaining_attempts to %d\n",
> -			target->name, target->remaining_attempts);
> +	if (!bc->attempts_locked) {
> +		target->remaining_attempts--;
> +		if (bc->verbose)
> +			pr_info("name=%s remaining_attempts %d\n", target->name,
> +				target->remaining_attempts);
> +	} else {
> +		pr_info("Attempts are locked, not decreasing remaining_attempts\n");
> +	}
>  
>  	if (bc->verbose)
>  		pr_info("selected target '%s', boot '%s'\n", target->name, target->boot);
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



