Delivery-date: Wed, 29 Oct 2025 10:06:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vE28m-00CzQh-1l
	for lore@lore.pengutronix.de;
	Wed, 29 Oct 2025 10:06:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vE28l-0003au-Us
	for lore@pengutronix.de; Wed, 29 Oct 2025 10:06:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0uOQIEhXqM6aa4lU7vCgy2UJq9SumEbGY7ujko8LEdE=; b=ZTrQN/hyN5TaXSu7zYsavy5xG0
	3q5cuIar9X9iRzBFATLzwEkNvr3eDV/A1KTU3fVHc0Mx+Vzi5I1TPi8RVzhHxbm3Gu/WVJEhcTYjl
	2X9JA2BWoA/X8Cc5+YbXEkuXi4WRrY0D9yqnx8y2Da89XpLupiJ3ahY2s/QWrKsKJEqHGeyEiMGty
	jaUC5SZJGdbz3DbhmU8iIRrC2iqew6uet9gFPQaeNC6QrQE6M/HqKgB/3XX2nQvUDArMP21/Y0ZC/
	LLKuuYpDrdeTW8d2AkZK60ui5m5bQ24FwI8ruwYFHmrgEkP+c7K23jzCI2GcL5gTMQ70muemlbQDp
	XUxSIrNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE285-00000000QXM-1UJP;
	Wed, 29 Oct 2025 09:06:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE282-00000000QWI-3OtB
	for barebox@lists.infradead.org;
	Wed, 29 Oct 2025 09:06:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vE280-0003Oe-P4; Wed, 29 Oct 2025 10:06:00 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vE280-0061AU-0o;
	Wed, 29 Oct 2025 10:06:00 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vE280-006v7U-0W;
	Wed, 29 Oct 2025 10:06:00 +0100
Date: Wed, 29 Oct 2025 10:06:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aQHY-GhxsmTacEnJ@pengutronix.de>
References: <20251028154453.2990491-1-f.pflug@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251028154453.2990491-1-f.pflug@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_020602_874948_885E650C 
X-CRM114-Status: GOOD (  28.23  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/3] startup: check for console before showing menu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 28, 2025 at 04:43:24PM +0100, Fabian Pflug wrote:
> If there is no input available or possible due to policy settings, it
> does not make sense to show a menu and ask for input.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
> v2:
> Remove CONSOLE_DISABLE_INPUT from check
>  common/startup.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/common/startup.c b/common/startup.c
> index 8d36ffceb4..4313435f05 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -45,6 +45,7 @@
>  #include <pbl/handoff-data.h>
>  #include <libfile.h>
>  #include <fuzz.h>
> +#include <security/config.h>
>  
>  extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
>  		  __barebox_initcalls_end[];
> @@ -361,14 +362,15 @@ static int run_init(void)
>  		run_shell();
>  	}
>  
> -	do {
> -		/*
> -		 * Let's run the command once at least, so an error
> -		 * message is printed if the file doesn't exist
> -		 */
> -		run_command(MENUFILE);
> -	} while (stat(MENUFILE, &s) == 0);
> -
> +	if(IS_ALLOWED(SCONFIG_CONSOLE_INPUT)) {
> +		do {
> +			/*
> +			* Let's run the command once at least, so an error
> +			* message is printed if the file doesn't exist
> +			*/
> +			run_command(MENUFILE);
> +		} while (stat(MENUFILE, &s) == 0);
> +	}

When console input is not allowed then there's no point in calling
run_shell() right above, also calling eth_open_all() likely isn't
useful.

I think the last useful thing we do with console input disabled is this:

	if (autoboot == AUTOBOOT_BOOT)
		run_command("boot");

After that point there's nothing left to do, so we could directly
do a

	if (!IS_ALLOWED(SCONFIG_CONSOLE_INPUT))
		hang();

This only misses one point that is currently not handled: autoboot could
have been interrupted because console_countdown_abort() has been called,
for example by fastboot in which case we don't want to hang() but
instead sleep forever.

So the whole logic would be:

	if (autoboot == AUTOBOOT_BOOT)
                run_command("boot");

	if (!IS_ALLOWED(SCONFIG_CONSOLE_INPUT)) {
		if (autoboot == AUTOBOOT_BOOT) {
			hang();
		} else {
			while (true) {
				sleep(1);
			}
		}
	}

	... run_shell(), call menu, ...

Maybe this needs some refactoring for readability.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


