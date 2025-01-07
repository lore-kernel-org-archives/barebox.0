Delivery-date: Tue, 07 Jan 2025 13:54:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV96f-000JwS-0X
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 13:54:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV96b-0000uu-Dm
	for lore@pengutronix.de; Tue, 07 Jan 2025 13:54:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ucuDUyeKLon/mhcq355rtDyfDSzGDYb9TdYEDRw7w/4=; b=y6RAiGPtE7hfgKdMSNjCjiELwB
	M6ij4GAqUzkmQuYFO8IDy//ti03nlSG7ZCBIj7iyrt5oDhwRR3ZTVES091WVrURkmrtcsM1a4mm+G
	OTZHvmVz26O7ufwixsChf3fvXVo519Sm4RW+gDAHO8aoIh/j8oV1hGVpTli2O+DsWZhk4g1RsK08A
	HkXxQW6JBS/Rzcs2GyxaJ4aGK70KlD3LQLDn3L3Gffz9KWV3oj1srF+hp0AvZ83HodLZQ5NTt+att
	6AQiBmT1fV22NoSWVzln52qa6f4Qe9+l1zHAvrB0C+00uPFo+3y+jnatIflo/7M4Nr7jZ8lyHTGai
	OlfcdwIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV95v-00000004r1b-0VUF;
	Tue, 07 Jan 2025 12:54:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV95p-00000004r0E-3a5P
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 12:54:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV95o-0000h5-K7; Tue, 07 Jan 2025 13:53:56 +0100
Message-ID: <a6361370-fafe-43e5-93b9-a4f8d75fc89d@pengutronix.de>
Date: Tue, 7 Jan 2025 13:53:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de
References: <20241021175507.3529332-1-a.fatoum@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241021175507.3529332-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_045357_897290_C5395FF7 
X-CRM114-Status: GOOD (  28.60  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] startup: add new AUTOBOOT_HALT state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 21.10.24 19:55, Ahmad Fatoum wrote:
> To make the barebox shell more convenient to use, barebox executes some
> actions only when dropping to an interactive shell:
> 
>   - If dropping due to global.autoboot=abort, all watchdogs are
>     automatically quiesced
>   - In every case, network interfaces are brought up, so link
>     negotiation happens in parallel to waiting for user input
> 
> This is useful for development and debugging, but bad for automatic
> tests as the system behaves differently when automatic test aborts
> barebox to set e.g. a boot argument and when barebox is left to boot
> uninterrupted.
> 
> For use in such scenarios, let's introduce a new AUTOBOOT_HALT state.
> This will not do any automatic interactive magic and can be entered by
> either setting nv.autoboot=halt or by aborting the boot with ctrl+d.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Thoughts?

Any thoughts on this patch?

> 
> Alternatively, we could make only aborting the boot via e.g. enter
> enable the network interfaces.

Thanks,
Ahmad

> ---
>  common/startup.c  | 11 ++++++++---
>  include/barebox.h |  3 +++
>  2 files changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/common/startup.c b/common/startup.c
> index 47b70a7756cb..5d0ac116b98c 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -28,6 +28,7 @@
>  #include <linux/stat.h>
>  #include <envfs.h>
>  #include <magicvar.h>
> +#include <readkey.h>
>  #include <linux/reboot-mode.h>
>  #include <asm/sections.h>
>  #include <uncompress.h>
> @@ -103,6 +104,7 @@ static int global_autoboot_timeout = 3;
>  static const char * const global_autoboot_states[] = {
>  	[AUTOBOOT_COUNTDOWN] = "countdown",
>  	[AUTOBOOT_ABORT] = "abort",
> +	[AUTOBOOT_HALT] = "halt",
>  	[AUTOBOOT_MENU] = "menu",
>  	[AUTOBOOT_BOOT] = "boot",
>  };
> @@ -176,7 +178,8 @@ enum autoboot_state do_autoboot_countdown(void)
>  		return autoboot_state;
>  
>  	if (!console_get_first_active() &&
> -	    global_autoboot_state != AUTOBOOT_ABORT) {
> +	    global_autoboot_state != AUTOBOOT_ABORT &&
> +	    global_autoboot_state != AUTOBOOT_HALT) {
>  		printf("\nNon-interactive console, booting system\n");
>  		return autoboot_state = AUTOBOOT_BOOT;
>  	}
> @@ -215,6 +218,8 @@ enum autoboot_state do_autoboot_countdown(void)
>  		autoboot_state = AUTOBOOT_BOOT;
>  	else if (menu_exists && outkey == 'm')
>  		autoboot_state = AUTOBOOT_MENU;
> +	else if (outkey == CTL_CH('d'))
> +		autoboot_state = AUTOBOOT_HALT;
>  	else
>  		autoboot_state = AUTOBOOT_ABORT;
>  
> @@ -310,7 +315,7 @@ static int run_init(void)
>  	if (autoboot == AUTOBOOT_BOOT)
>  		run_command("boot");
>  
> -	if (IS_ENABLED(CONFIG_NET))
> +	if (IS_ENABLED(CONFIG_NET) && autoboot != AUTOBOOT_HALT)
>  		eth_open_all();
>  
>  	if (autoboot == AUTOBOOT_MENU)
> @@ -400,7 +405,7 @@ void shutdown_barebox(void)
>  }
>  
>  BAREBOX_MAGICVAR(global.autoboot,
> -                 "Autoboot state. Possible values: countdown (default), abort, menu, boot");
> +                 "Autoboot state. Possible values: countdown (default), abort, halt, menu, boot");
>  BAREBOX_MAGICVAR(global.autoboot_abort_key,
>                   "Which key allows to interrupt autoboot. Possible values: any, ctrl-c");
>  BAREBOX_MAGICVAR(global.autoboot_timeout,
> diff --git a/include/barebox.h b/include/barebox.h
> index 45e95f187462..b3d34b7b739b 100644
> --- a/include/barebox.h
> +++ b/include/barebox.h
> @@ -22,6 +22,8 @@ extern int (*barebox_main)(void);
>   * enum autoboot_state - autoboot action after init
>   * @AUTOBOOT_COUNTDOWN: Count down to automatic boot action
>   * @AUTOBOOT_ABORT: Abort boot and drop to barebox shell
> + * @AUTOBOOT_HALT: Halt boot and drop to barebox shell, _without_ running
> + *                 any interactive hooks (e.g. bringing up network)
>   * AUTOBOOT_MENU: Show main menu directly
>   * @AUTOBOOT_BOOT: Boot right away without an interruptible countdown
>   * @AUTOBOOT_UNKNOWN: Boot right away without an interruptible countdown
> @@ -32,6 +34,7 @@ extern int (*barebox_main)(void);
>  enum autoboot_state {
>  	AUTOBOOT_COUNTDOWN,
>  	AUTOBOOT_ABORT,
> +	AUTOBOOT_HALT,
>  	AUTOBOOT_MENU,
>  	AUTOBOOT_BOOT,
>  	AUTOBOOT_UNKNOWN,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


