Delivery-date: Tue, 22 Oct 2024 08:21:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t38Gd-007MEr-2A
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 08:21:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t38Gc-0006iS-P9
	for lore@pengutronix.de; Tue, 22 Oct 2024 08:21:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/2/bK9jIl7erseOkz9BWel1YJ7UTKiK7b4ud5DfR+Ho=; b=sDYuhA4XW4j14ERlQlw/Dmk8nS
	u2J69hvVS0wtL+G0jSFrXzIx4VWZftpb6PY54meGTi0I41vn9SJnx/h3l2FOgD42PcRfK/YYboBKK
	BIP1IJQktG1YCTxr51HVtU8Ay70+lNncZzw1vlQkWX+FhwtvaRtQSbbPg4M73NSi1JF8ts0k1QmdB
	9fxZw/VzG9PfaEL0CLeU/Nk+U3HveNm9d1qX0O2VGNVUp8Jl4rTwUSvYFfxiUvwwpOmpv8hYqLYPS
	v4Ka0Cc5BcGot8WFg874Sqnkavh9PEYef6ffDzPRwiOkd9uHLncM3K+tefpJOQqzBw1Ku0beZenjw
	AUvnJgow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t38Fv-00000009nSi-1uJr;
	Tue, 22 Oct 2024 06:20:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t38FM-00000009nPK-047T
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 06:20:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t38FK-0006Ic-Dw; Tue, 22 Oct 2024 08:19:58 +0200
Message-ID: <aa01e75a-5398-4ac6-a411-da01d283ea85@pengutronix.de>
Date: Tue, 22 Oct 2024 08:19:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, bst@pengutronix.de
References: <20241021175507.3529332-1-a.fatoum@pengutronix.de>
 <20241022061839.vxdlbf6yo6ct5xl3@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241022061839.vxdlbf6yo6ct5xl3@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_232000_096614_6956FA91 
X-CRM114-Status: GOOD (  27.21  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] startup: add new AUTOBOOT_HALT state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 22.10.24 08:18, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 24-10-21, Ahmad Fatoum wrote:
>> To make the barebox shell more convenient to use, barebox executes some
>> actions only when dropping to an interactive shell:
>>
>>   - If dropping due to global.autoboot=abort, all watchdogs are
>>     automatically quiesced
>>   - In every case, network interfaces are brought up, so link
>>     negotiation happens in parallel to waiting for user input
>>
>> This is useful for development and debugging, but bad for automatic
>> tests as the system behaves differently when automatic test aborts
>> barebox to set e.g. a boot argument and when barebox is left to boot
>> uninterrupted.
>>
>> For use in such scenarios, let's introduce a new AUTOBOOT_HALT state.
>> This will not do any automatic interactive magic and can be entered by
>> either setting nv.autoboot=halt or by aborting the boot with ctrl+d.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>> Thoughts?
>>
>> Alternatively, we could make only aborting the boot via e.g. enter
>> enable the network interfaces.
> 
> To have a more fine grained option we could use
> global.autoboot.skip_eth_auto_enable instead of making use of new
> autoboot state the user need to check first to know the differences
> between 'abort' and 'halt'. Of course this comes with the drawback of
> having a new parameter the user need to set but IMHO is more future
> proof e.g. if autoboot does more automagic in the future which can be
> controlled via global.autoboot.* params as well.

We still need a way for a test suite to abort boot without bringing
up network interfaces automatically - and without writing the environment.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>> ---
>>  common/startup.c  | 11 ++++++++---
>>  include/barebox.h |  3 +++
>>  2 files changed, 11 insertions(+), 3 deletions(-)
>>
>> diff --git a/common/startup.c b/common/startup.c
>> index 47b70a7756cb..5d0ac116b98c 100644
>> --- a/common/startup.c
>> +++ b/common/startup.c
>> @@ -28,6 +28,7 @@
>>  #include <linux/stat.h>
>>  #include <envfs.h>
>>  #include <magicvar.h>
>> +#include <readkey.h>
>>  #include <linux/reboot-mode.h>
>>  #include <asm/sections.h>
>>  #include <uncompress.h>
>> @@ -103,6 +104,7 @@ static int global_autoboot_timeout = 3;
>>  static const char * const global_autoboot_states[] = {
>>  	[AUTOBOOT_COUNTDOWN] = "countdown",
>>  	[AUTOBOOT_ABORT] = "abort",
>> +	[AUTOBOOT_HALT] = "halt",
>>  	[AUTOBOOT_MENU] = "menu",
>>  	[AUTOBOOT_BOOT] = "boot",
>>  };
>> @@ -176,7 +178,8 @@ enum autoboot_state do_autoboot_countdown(void)
>>  		return autoboot_state;
>>  
>>  	if (!console_get_first_active() &&
>> -	    global_autoboot_state != AUTOBOOT_ABORT) {
>> +	    global_autoboot_state != AUTOBOOT_ABORT &&
>> +	    global_autoboot_state != AUTOBOOT_HALT) {
>>  		printf("\nNon-interactive console, booting system\n");
>>  		return autoboot_state = AUTOBOOT_BOOT;
>>  	}
>> @@ -215,6 +218,8 @@ enum autoboot_state do_autoboot_countdown(void)
>>  		autoboot_state = AUTOBOOT_BOOT;
>>  	else if (menu_exists && outkey == 'm')
>>  		autoboot_state = AUTOBOOT_MENU;
>> +	else if (outkey == CTL_CH('d'))
>> +		autoboot_state = AUTOBOOT_HALT;
>>  	else
>>  		autoboot_state = AUTOBOOT_ABORT;
>>  
>> @@ -310,7 +315,7 @@ static int run_init(void)
>>  	if (autoboot == AUTOBOOT_BOOT)
>>  		run_command("boot");
>>  
>> -	if (IS_ENABLED(CONFIG_NET))
>> +	if (IS_ENABLED(CONFIG_NET) && autoboot != AUTOBOOT_HALT)
>>  		eth_open_all();
>>  
>>  	if (autoboot == AUTOBOOT_MENU)
>> @@ -400,7 +405,7 @@ void shutdown_barebox(void)
>>  }
>>  
>>  BAREBOX_MAGICVAR(global.autoboot,
>> -                 "Autoboot state. Possible values: countdown (default), abort, menu, boot");
>> +                 "Autoboot state. Possible values: countdown (default), abort, halt, menu, boot");
>>  BAREBOX_MAGICVAR(global.autoboot_abort_key,
>>                   "Which key allows to interrupt autoboot. Possible values: any, ctrl-c");
>>  BAREBOX_MAGICVAR(global.autoboot_timeout,
>> diff --git a/include/barebox.h b/include/barebox.h
>> index 45e95f187462..b3d34b7b739b 100644
>> --- a/include/barebox.h
>> +++ b/include/barebox.h
>> @@ -22,6 +22,8 @@ extern int (*barebox_main)(void);
>>   * enum autoboot_state - autoboot action after init
>>   * @AUTOBOOT_COUNTDOWN: Count down to automatic boot action
>>   * @AUTOBOOT_ABORT: Abort boot and drop to barebox shell
>> + * @AUTOBOOT_HALT: Halt boot and drop to barebox shell, _without_ running
>> + *                 any interactive hooks (e.g. bringing up network)
>>   * AUTOBOOT_MENU: Show main menu directly
>>   * @AUTOBOOT_BOOT: Boot right away without an interruptible countdown
>>   * @AUTOBOOT_UNKNOWN: Boot right away without an interruptible countdown
>> @@ -32,6 +34,7 @@ extern int (*barebox_main)(void);
>>  enum autoboot_state {
>>  	AUTOBOOT_COUNTDOWN,
>>  	AUTOBOOT_ABORT,
>> +	AUTOBOOT_HALT,
>>  	AUTOBOOT_MENU,
>>  	AUTOBOOT_BOOT,
>>  	AUTOBOOT_UNKNOWN,
>> -- 
>> 2.39.5
>>
>>
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


