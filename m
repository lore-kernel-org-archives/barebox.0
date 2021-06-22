Delivery-date: Tue, 22 Jun 2021 11:09:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvcPs-0000Yv-4p
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 11:09:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvcPr-0008P8-28
	for lore@pengutronix.de; Tue, 22 Jun 2021 11:09:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bA/GxaMtYkjJ7xlWYuUJhE1ENkGAWV59exOK1ocr5U8=; b=aeXKmQjvbXYfPI
	QbechYFQVgDfiz8w1GufeBCYQLZ5EXIhmAoF/yb3SWtii1C198sXLi6cNmBe6jjI4kqH8B6We1RmM
	isB09BQihmTwGkgC7yLlojLneRU13cdWR83sYr6Bq2NbEYe+i84rDO2wCAlfpqWAfR1t4HLrTes2u
	FGTgXHBVv9Hr5WUdRSjD4Nn/nEoZ2fyFMXbJxkRIU2Mvp6qVH9KKwizsiayreN1ZiG5FtL3KM3x3p
	/qMhX+ne3l3ShCmdy+B1dF9fcEO+WCgrEaPPOl9+CmK+/2fuxK6NAP9FNHtSUYtK5BwQ69FHfdfqK
	zX4F37uZqTMxLcIeHP0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvcOg-006MTJ-DH; Tue, 22 Jun 2021 09:08:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvcOZ-006MRx-Qb
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 09:08:37 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lvcOY-0008Dw-Gb; Tue, 22 Jun 2021 11:08:34 +0200
To: barebox@lists.infradead.org
References: <20210622082617.18011-1-a.fatoum@pengutronix.de>
 <20210622082617.18011-5-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <7d45e6d7-0649-7b4b-3744-ee01e3f34bea@pengutronix.de>
Date: Tue, 22 Jun 2021 11:08:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210622082617.18011-5-a.fatoum@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_020835_942679_E82FB6B3 
X-CRM114-Status: GOOD (  24.73  )
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
Cc: Jan Luebbe <j.luebbe@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v4 4/8] common: bthread: schedule only in command context
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22.06.21 10:26, Ahmad Fatoum wrote:
> Originally, I envisioned bthreads as replacement for pollers and
> workqueues. But even without preemption, having functions you call
> possibly accessing structures you are iterating over can corrupt
> memory. This problem exists with pollers as well, but because of their
> limited scope, it's harder to shoot your foot with them, as you
> don't keep implicit state between poller activations unlike bthreads,
> which maintain their stack across context switches.
> 
> Limit bthread scope instead to be a replacement for workqueues. This
> still allows us to port some classes of state-machine-in-kthread kernel
> code, while avoding the aforementioned pitfalls.
> 
> Cc: Jan Luebbe <j.luebbe@pengutronix.de>
> Cc: Sascha Hauer <a.hauer@pengutronix.de>

Mailer daemon just told me the first character of Sascha is not an a.

Please fixup on apply (or I do with v5)

> Cc: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/bthread.c | 5 +++++
>  common/sched.c     | 6 +++---
>  include/slice.h    | 2 --
>  3 files changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/commands/bthread.c b/commands/bthread.c
> index 964a1044c58b..0c9c221884e8 100644
> --- a/commands/bthread.c
> +++ b/commands/bthread.c
> @@ -10,12 +10,15 @@
>  #include <command.h>
>  #include <getopt.h>
>  #include <clock.h>
> +#include <slice.h>
>  
>  static int bthread_time(void)
>  {
>  	uint64_t start = get_time_ns();
>  	int i = 0;
>  
> +	slice_release(&command_slice);
> +
>  	/*
>  	 * How many background tasks can we have in one second?
>  	 *
> @@ -25,6 +28,8 @@ static int bthread_time(void)
>  	while (!is_timeout(start, SECOND))
>  		i++;
>  
> +	slice_acquire(&command_slice);
> +
>  	return i;
>  }
>  
> diff --git a/common/sched.c b/common/sched.c
> index dcf6522ac058..02582b2c5e4d 100644
> --- a/common/sched.c
> +++ b/common/sched.c
> @@ -15,12 +15,12 @@ void resched(void)
>  
>  	command_slice_acquire();
>  
> -	if (run_workqueues)
> +	if (run_workqueues) {
>  		wq_do_all_works();
> +		bthread_reschedule();
> +	}
>  
>  	poller_call();
>  
>  	command_slice_release();
> -
> -	bthread_reschedule();
>  }
> diff --git a/include/slice.h b/include/slice.h
> index 67d47b9082e6..6c4688e308fa 100644
> --- a/include/slice.h
> +++ b/include/slice.h
> @@ -38,8 +38,6 @@ void command_slice_release(void);
>  
>  #define assert_command_context() do { \
>  	WARN_ONCE(poller_active(), "%s called in poller\n", __func__); \
> -	WARN_ONCE(IS_ENABLED(CONFIG_BTHREAD) && !bthread_is_main(current), \
> -		  "%s called in secondary bthread\n", __func__); \
>  } while (0)
>  
>  #endif
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

