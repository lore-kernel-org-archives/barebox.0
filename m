Delivery-date: Fri, 14 Apr 2023 11:50:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnG4Y-003Ayw-PZ
	for lore@lore.pengutronix.de; Fri, 14 Apr 2023 11:50:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnG4Y-0000If-Hp
	for lore@pengutronix.de; Fri, 14 Apr 2023 11:50:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6f3tNOM4LDM3ucxQY5hX+IoOOZQZDkkdXyLbK+Ygn3o=; b=KVCb7Rs2A27nlawsptBJu5CkuS
	N8QG1gQ1qCeLmPfy+gNhEYE952E/TPkcH+49yH+Vgyl5IvEK4YFntjirbwmjFMGeQAkcRhRFLrDMo
	9DhHdw7lsZ2Z06JhBeEqTw3gbSlPcsHYjy7az161pXIfBFq7jvPyv0h7BYxTP9GTrlKEdKzKZv1Wx
	qpJt7ZW1Wn71UKWN+r74wo2iE0L0HWvdxcEv+FhwqP93a8fTLZAvbayBBGh8yL9wCFjj4Ez1kfPpE
	kEvZOGlSNixhAaO64Cx7Ca/xFQwx9Ie8rTX5SY7Le0M5+mIxv90I/o4oC/LNydR7UblJxmmiCTWWD
	5SGMIPmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnG3U-008ulz-2g;
	Fri, 14 Apr 2023 09:49:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnG3Q-008ulH-1v
	for barebox@lists.infradead.org;
	Fri, 14 Apr 2023 09:49:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pnG3K-0008W1-TX; Fri, 14 Apr 2023 11:49:10 +0200
Message-ID: <f454aee9-3e78-c1bc-f448-3355e3613d14@pengutronix.de>
Date: Fri, 14 Apr 2023 11:49:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Markus Burri <markus.burri@mt.com>, barebox@lists.infradead.org
References: <20230414094020.2389226-1-markus.burri@mt.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230414094020.2389226-1-markus.burri@mt.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_024916_658196_CBCB29C7 
X-CRM114-Status: GOOD (  28.75  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] Add bootchooser command option for active boot target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Markus,

On 14.04.23 11:40, Markus Burri wrote:
> Add bootchooser command option to extract and save the active target.
> The information about active target are stored into two variables
> (bootchooser.active_target and bootchooser.active_boot)
> This information may be used into scripts to do actions related to the active
> target before starting it.

Can you share an example script that depends on your new bootchooser -n feature
to aid review?

> 
> Signed-off-by: Markus Burri <markus.burri@mt.com>
> 
> Gbp-Pq: Name 0058-Add-command-for-next-boot-target.patch
> ---
>  Documentation/user/bootchooser.rst |  6 ++++++
>  commands/bootchooser.c             | 12 +++++++++++-
>  common/bootchooser.c               | 21 +++++++++++++++++++++
>  include/bootchooser.h              |  1 +
>  4 files changed, 39 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
> index 8456e11..68ec1b6 100644
> --- a/Documentation/user/bootchooser.rst
> +++ b/Documentation/user/bootchooser.rst
> @@ -168,6 +168,12 @@ options not specific to any boot target.
>    set of ``global.bootchooser.<targetname>.<variablename>`` variables must exist.
>  ``global.bootchooser.last_chosen``
>    *bootchooser* sets this to the boot target that was chosen on last boot (index).
> +``global.bootchooser.active_target``
> +  Set to the active boot target that will boot next.
> +  Call *bootchooser -n* to update the value.
> +``global.bootchooser.active_boot``
> +  Set to the boot device of the active target that will boot next. 
> +  Call *bootchooser -n* to update the value.
>  
>  .. _bootchooser,setup_example:
>  
> diff --git a/commands/bootchooser.c b/commands/bootchooser.c
> index ac763a6..20bd2d6 100644
> --- a/commands/bootchooser.c
> +++ b/commands/bootchooser.c
> @@ -59,8 +59,9 @@ static int do_bootchooser(int argc, char *argv[])
>  	int info = 0;
>  	bool done_something = false;
>  	bool last_boot_successful = false;
> +	bool active_boot_target = false;
>  
> -	while ((opt = getopt(argc, argv, "a:p:is")) > 0) {
> +	while ((opt = getopt(argc, argv, "a:p:ins")) > 0) {
>  		switch (opt) {
>  		case 'a':
>  			if (!strcmp(optarg, "default"))
> @@ -77,6 +78,9 @@ static int do_bootchooser(int argc, char *argv[])
>  		case 'i':
>  			info = 1;
>  			break;
> +		case 'n':
> +			active_boot_target = true;
> +			break;
>  		case 's':
>  			last_boot_successful = true;
>  			break;
> @@ -120,6 +124,11 @@ static int do_bootchooser(int argc, char *argv[])
>  		done_something = true;
>  	}
>  
> +	if (active_boot_target) {
> +		bootchooser_active_target(bootchooser);
> +		done_something = true;
> +	}
> +
>  	if (!done_something) {
>  		printf("Nothing to do\n");
>  		ret = COMMAND_ERROR_USAGE;
> @@ -137,6 +146,7 @@ BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT ("-a <n|default> [TARGETS]",  "set remaining attempts of given targets to 'n' or the default attempts")
>  BAREBOX_CMD_HELP_OPT ("-p <n|default> [TARGETS]",  "set priority of given targets to 'n' or the default priority")
>  BAREBOX_CMD_HELP_OPT ("-i",  "Show information about the bootchooser")
> +BAREBOX_CMD_HELP_OPT ("-n",  "Save active boot target to bootchooser.active_target and active boot device to bootchooser.active_boot")
>  BAREBOX_CMD_HELP_OPT ("-s",  "Mark the last boot successful")
>  BAREBOX_CMD_HELP_END
>  
> diff --git a/common/bootchooser.c b/common/bootchooser.c
> index c08db03..1ec29e6 100644
> --- a/common/bootchooser.c
> +++ b/common/bootchooser.c
> @@ -619,6 +619,27 @@ void bootchooser_info(struct bootchooser *bc)
>  	       bc->last_chosen->name : "unknown");
>  }
>  
> +/**
> + * bootchooser_active_target - Save information about active boot target
> + * @bc: The bootchooser
> + */
> +void bootchooser_active_target(struct bootchooser *bc)
> +{
> +	struct bootchooser_target *target;
> +
> +	list_for_each_entry(target, &bc->targets, list) {
> +		if (bootchooser_target_ok(target, NULL)) {
> +			if (bc->verbose) {
> +				pr_info("bootchooser.active_target=%s\n", target->name);
> +				pr_info("bootchooser.active_boot=%s\n", target->boot);
> +			}
> +			nvvar_add("bootchooser.active_target", target->name);
> +			nvvar_add("bootchooser.active_boot", target->boot);
> +			return;
> +		}
> +	}
> +}
> +
>  /**
>   * bootchooser_get_target - get the target that shall be booted next
>   * @bc:		The bootchooser
> diff --git a/include/bootchooser.h b/include/bootchooser.h
> index 7822c01..9825593 100644
> --- a/include/bootchooser.h
> +++ b/include/bootchooser.h
> @@ -12,6 +12,7 @@ int bootchooser_save(struct bootchooser *bootchooser);
>  int bootchooser_put(struct bootchooser *bootchooser);
>  
>  void bootchooser_info(struct bootchooser *bootchooser);
> +void bootchooser_active_target(struct bootchooser *bc);
>  
>  int bootchooser_boot(struct bootchooser *bc);
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



