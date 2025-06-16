Delivery-date: Mon, 16 Jun 2025 14:05:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR8at-007uaH-2G
	for lore@lore.pengutronix.de;
	Mon, 16 Jun 2025 14:05:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR8as-00039t-Vf
	for lore@pengutronix.de; Mon, 16 Jun 2025 14:05:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+9s7DXNA5k2OZjUVZAUXP3dSVjUlpw6HH0HGCxKSkwo=; b=0YnptEhmWNXUR82clmoY28Gf/Z
	dMYS9CWd/hIdGlcrXowREwlcglUf+Vabxzj/fgDenJC2Q3p9mhezpcksWzmilWo4S6qBT54W9CRht
	cKdiCW6Y4lHcf1vGAnu/BVEPSFI8yQXJt7Wi0ALtgmIsr8QDmSbjzZPCyhRiZv4HoPLeLVdClrchB
	wuM+xdASoNn+8l8n3/dXumHcebeQblg3WgaQseJ54zevnzccC+k9qIz555YcuIvyDTQkFRYVftRWA
	NxnWeXSh8g+9UzheOmSfOrTNftk9RmqntTWF6VimEm2RQ2Kc1IjKC8njsbfHxx065AacDEOnZ1Bx7
	i6vYlRjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR8aN-00000004Iur-3hei;
	Mon, 16 Jun 2025 12:05:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR7P9-000000047c6-1vmX
	for barebox@lists.infradead.org;
	Mon, 16 Jun 2025 10:49:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uR7P8-0005np-7B; Mon, 16 Jun 2025 12:49:30 +0200
Message-ID: <8fab826f-e8d5-49d5-aceb-4471c3f6c6f3@pengutronix.de>
Date: Mon, 16 Jun 2025 12:49:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lars Schmidt <l.schmidt@pengutronix.de>, barebox@lists.infradead.org
References: <20250613140805.1229525-1-l.schmidt@pengutronix.de>
 <20250613140805.1229525-3-l.schmidt@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250613140805.1229525-3-l.schmidt@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_034931_507027_9EC439AC 
X-CRM114-Status: GOOD (  27.30  )
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
Subject: Re: [PATCH 2/4] bootchooser: extend cmd tool by option to set slot
 locking
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 6/13/25 16:08, Lars Schmidt wrote:

Please write a commit message.

> Signed-off-by: Lars Schmidt <l.schmidt@pengutronix.de>
> ---
>  commands/bootchooser.c | 16 +++++++++++++++-
>  common/bootchooser.c   | 28 ++++++++++++++++++++++++++++
>  include/bootchooser.h  |  1 +
>  3 files changed, 44 insertions(+), 1 deletion(-)
> 
> diff --git a/commands/bootchooser.c b/commands/bootchooser.c
> index 46b063e027..497427eaf0 100644
> --- a/commands/bootchooser.c
> +++ b/commands/bootchooser.c
> @@ -48,8 +48,9 @@ static int do_bootchooser(int argc, char *argv[])
>  	int info = 0;
>  	bool done_something = false;
>  	bool last_boot_successful = false;
> +	int lock_state = -1;
>  
> -	while ((opt = getopt(argc, argv, "a:p:is")) > 0) {
> +	while ((opt = getopt(argc, argv, "a:p:islL")) > 0) {
>  		switch (opt) {
>  		case 'a':
>  			if (!strcmp(optarg, "default"))
> @@ -69,6 +70,12 @@ static int do_bootchooser(int argc, char *argv[])
>  		case 's':
>  			last_boot_successful = true;
>  			break;
> +		case 'l':
> +			lock_state = true;
> +			break;
> +		case 'L':
> +			lock_state = false;
> +			break;
>  		default:
>  			return COMMAND_ERROR_USAGE;
>  		}
> @@ -109,6 +116,11 @@ static int do_bootchooser(int argc, char *argv[])
>  		done_something = true;
>  	}
>  
> +	if (lock_state >= 0) {
> +		ret = bootchooser_lock_slots(bootchooser, lock_state);

s/slots/attempts/

> +		done_something = true;
> +	}
> +
>  	if (!done_something) {
>  		printf("Nothing to do\n");
>  		ret = COMMAND_ERROR_USAGE;
> @@ -126,6 +138,8 @@ BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT ("-a <n|default> [TARGETS]",  "set remaining attempts of given targets to 'n' or the default attempts")
>  BAREBOX_CMD_HELP_OPT ("-p <n|default> [TARGETS]",  "set priority of given targets to 'n' or the default priority")
>  BAREBOX_CMD_HELP_OPT ("-i",  "Show information about the bootchooser")
> +BAREBOX_CMD_HELP_OPT ("-l",  "Enable global slots lock")
> +BAREBOX_CMD_HELP_OPT ("-L",  "Disable global slots lock")

s/slots/attempts/

>  BAREBOX_CMD_HELP_OPT ("-s",  "Mark the last boot successful")
>  BAREBOX_CMD_HELP_END
>  
> diff --git a/common/bootchooser.c b/common/bootchooser.c
> index a50f757791..b25ce3681d 100644
> --- a/common/bootchooser.c
> +++ b/common/bootchooser.c
> @@ -635,6 +635,9 @@ void bootchooser_info(struct bootchooser *bc)
>  
>  	printf("\nlast booted target: %s\n", bc->last_chosen ?
>  	       bc->last_chosen->name : "unknown");
> +
> +	printf("Locking of boot slots: %s",

s/boot slots/boot attempt counter/

> +	       bc->slots_locked ? "enabled" : "disabled");
>  }
>  
>  /**
> @@ -821,6 +824,31 @@ struct bootchooser_target *bootchooser_get_last_chosen(struct bootchooser *bc)
>  	return bc->last_chosen;
>  }
>  
> +/**
> + * bootchooser_locks_slots - sets the state of the slots_locked

bootchooser_lock_attempts - lock bootchooser attempt counter

> + * @bc:		The bootchooser
> + * @locked: Set slots_locked to true or false

whether attempt counter is locked or not

> + *
> + * Bootchooser stores the value if states are locked globally.

Instruct bootchooser to lock the boto attempts counter.

> + * This means remaining_attempts will not be counted down, when slots are
> + * locked
> + *
> + * Return: 0 for success, negative error code otherwise
> + */
> +int bootchooser_lock_slots(struct bootchooser *bc, bool locked)
> +{
> +	uint32_t not_needed;
> +	/* We just need to check here, if the value exists in the device tree
> +	 * So if it doesn't exist, we can inform user about it for easier debugging
> +	 */
> +	if (getenv_u32(bc->state_prefix, "slots_locked", &not_needed))
> +		pr_warn("Could not find value in device tree\n");
> +	else
> +		bc->slots_locked = locked;
> +
> +	return 0;

Return error code, bootchooser -l without support should be an error,
but there is no point in printing that error code here, when we just
chose one ourselves.

Cheers,
Ahmad

> +}
> +
>  static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain)
>  {
>  	char *system;
> diff --git a/include/bootchooser.h b/include/bootchooser.h
> index 31989163b2..d63868abe4 100644
> --- a/include/bootchooser.h
> +++ b/include/bootchooser.h
> @@ -17,6 +17,7 @@ void bootchooser_info(struct bootchooser *bootchooser);
>  int bootchooser_boot(struct bootchooser *bc);
>  
>  struct bootchooser_target *bootchooser_get_last_chosen(struct bootchooser *bootchooser);
> +int bootchooser_lock_slots(struct bootchooser *bc, bool locked);
>  const char *bootchooser_target_name(struct bootchooser_target *target);
>  struct bootchooser_target *bootchooser_target_by_name(struct bootchooser *bootchooser,
>  						      const char *name);

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



