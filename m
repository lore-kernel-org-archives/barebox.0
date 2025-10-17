Delivery-date: Fri, 17 Oct 2025 13:18:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v9iTd-008nwI-2G
	for lore@lore.pengutronix.de;
	Fri, 17 Oct 2025 13:18:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v9iTd-0004T8-2R
	for lore@pengutronix.de; Fri, 17 Oct 2025 13:18:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UIn1RpiiAA6STwq2Z39u17Bbi0BRstbLhnGuECSmxBw=; b=G1Tg1mq8HLkMZQTqGQN3lsspnA
	I4EVbW8zF49lnl7JISMXvJEkFCj7UGS0a8ZNqtTNhV/eRtDpz/mS+Gz4i2mRXM3cpcEWDOea+7SSb
	6zOZy+i7/SBRihl1Wi3taNlXOPKUzdKQOIY+LvsHFas9YIx2I9kSHv88V8hcSoxZBIuONJ95KEVAY
	O8ji9lzSr6xMusFOn/ZsKymWZGd9kfYVvDhGGXVRlMn6K7jJbueVr1yoD0fLI1a4FvfT6tFURWTTw
	6UO5sJJ5/lSKs2ZlQkaTrk2Agkpfr8xwnXS484L+tK000TIlbFjEpGQCOpvgrx06vkMxe6wDBQvxl
	Z8f1qhqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9iTA-00000007eJM-27JJ;
	Fri, 17 Oct 2025 11:18:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9iT7-00000007eIt-1dCZ
	for barebox@lists.infradead.org;
	Fri, 17 Oct 2025 11:17:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v9iT5-0004Om-QM; Fri, 17 Oct 2025 13:17:55 +0200
Message-ID: <06af30e5-077d-4a4c-95ce-b6abc0530b72@pengutronix.de>
Date: Fri, 17 Oct 2025 13:17:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251017-dmesg-v1-1-ac9c2fb021f6@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251017-dmesg-v1-1-ac9c2fb021f6@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_041757_454593_CC108372 
X-CRM114-Status: GOOD (  27.54  )
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
Subject: Re: [PATCH] commands: dmesg: clear logbuffer fully if not requested
 otherwise
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 10/17/25 1:04 PM, Jonas Rebmann wrote:
> Previously, `dmesg -c` would clear the logbuffer except for the last 10
> lines. This comes with a fair amount of surprise given linux `dmesg -c`
> clears the whole logbuffer.
> 
> Clear the complete logbuffer given `dmesg -c` but with an optional
> argument `dmesg -c [<num>]` to keep <num> lines.
> 
> While at it, move the deleteion of log lines to the log_print function

deletion

> to prevent a corner case of lost log message if they arrive between the
> log_print() and log_clean() in dmesg.
> 
> If loglevels are selected using -l or -p in addition to cleaning being
> selected using -c, only clean those messages shown by the loglevel
> selection.

Given that this might break test suites, I think it warrants a short
addition to migration-2025.11.0.rst (create if needed).

> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
>  commands/dmesg.c        | 17 ++++++++++-------
>  common/console_common.c | 20 +++++++++++++++++---
>  include/linux/printk.h  |  2 +-
>  3 files changed, 28 insertions(+), 11 deletions(-)
> 
> diff --git a/commands/dmesg.c b/commands/dmesg.c
> index a93ad5b359..6853f3afc9 100644
> --- a/commands/dmesg.c
> +++ b/commands/dmesg.c
> @@ -77,14 +77,20 @@ static unsigned dmesg_get_levels(const char *__args)
>  static int do_dmesg(int argc, char *argv[])
>  {
>  	int opt, ret, i;
> -	int delete_buf = 0, emit = 0;
> +	int delete_buf = -1, emit = 0;

just make it unsigned and use UINT_MAX?

delete_buf is no longer a good name for the variable IMO.

>  	unsigned flags = 0, levels = 0;
>  	char *set = NULL;
>  
> -	while ((opt = getopt(argc, argv, "ctderl:p:n:")) > 0) {
> +	while ((opt = getopt(argc, argv, "c::tderl:p:n:")) > 0) {
>  		switch (opt) {
>  		case 'c':
> -			delete_buf = 1;
> +			if (optarg) {
> +				ret = kstrtoint(optarg, 10, &delete_buf);

With type changed above, kstrtouint

> +				if (ret || delete_buf < 0)

... which simplifies this condition.

> +					return COMMAND_ERROR_USAGE;
> +			} else {
> +				delete_buf = 0;

You can initialize this right after case '0': and drop the else.

> +			}
>  			break;
>  		case 't':
>  			flags |= BAREBOX_LOG_PRINT_TIME;
> @@ -155,13 +161,10 @@ static int do_dmesg(int argc, char *argv[])
>  		return 0;
>  	}
>  
> -	ret = log_print(flags, levels);
> +	ret = log_print(flags, levels, delete_buf);

Not sure, we want to overload log_print with this.
How about we switch the ctrlc() to ctrlc_non_interruptible() and then we
are certain that there will be no messages coming in between as there
will be no resched() points (barebox multitasking is completely
cooperative).

> -int log_print(unsigned flags, unsigned levels)
> +/**

Thanks for adding docs :)

> +		if (delete_buf >= 0 && barebox_logbuf_num_messages > delete_buf)

If delete_buf were unsigned, it would simplify the condition.
The variable name is suboptimal though, something with keep in it would
be better.


Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



