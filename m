Delivery-date: Thu, 04 Mar 2021 09:51:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHjhf-0000xt-9m
	for lore@lore.pengutronix.de; Thu, 04 Mar 2021 09:51:27 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHjhe-0006kN-9G
	for lore@pengutronix.de; Thu, 04 Mar 2021 09:51:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=89GCMqNmNyETI73iRkhKk6GNP7x9YV9Ruy7FPEnX0as=; b=YUZbfXScqlxyNR7sbqc/Z6vHV
	603KIbNrzFhQ3CIuRU1YCLtHtEiGap7joeTB/YcB3EM50XaoR2DoCF8hg/dNGxl+LNGx25Koa7Abv
	KxR8xgI/Z6+aaxqSdqa1+0psCwyWp2Z7T05m0kpSoyBXADB39O2/NoPwbJnKxpqqcaKjxV1K6Fnwo
	8myiotQUu3i1jAu9CcVZLn/AGijRZVctfRKFlbuPSIfx4PbGr6mylKkHuJb4sQzFXshJhSMAgkBPX
	ZTX+1vuULyCJlSZpx1lIoyDsTipy/k6apMQH61PzkfZg/kyE/D+/9H1KTSgUlYoiBS80Ix6MfUYJB
	0XhXJmGpQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHjfw-008Aon-BD; Thu, 04 Mar 2021 08:49:41 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHjfk-008Amp-LW
 for barebox@desiato.infradead.org; Thu, 04 Mar 2021 08:49:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=8Rq4CSWT4EipsS0PtLDYAI9W4bfLL0aYK1auEuAgbpA=; b=F6SdRnMmBOJ2xzT9A44SnHCevO
 iRM8s9KOmPCsudBB3FKYfzBJGBxgTnyrTjx2eEpXGNByKHos+HVhM5x2f6gQAdi56cRVVwMAjGEEe
 PPoJl00m+nOsCHiGzL/Zl+E0v6tT2ban2XTpwDRuye9aOGqN3OwYiLTGPHc6VSZ+lvrdXFP3XJr9J
 382IYiZmABB3SPkbd0MLWPDtxAVFvnvCkHlq/FHcZgR9ESLJ0BWWHh+/rwnSvT4AfyMaO2JeWaLLt
 F38oDKQxb5K8upxZ0epcdrrAEd092xUlryvwjkjdfc/a28gn+ktmELnequhPUYNXdnzfomYPwAyTo
 biNxYsgA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHjfc-006IuZ-41
 for barebox@lists.infradead.org; Thu, 04 Mar 2021 08:49:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lHjfb-0006Iu-Ea; Thu, 04 Mar 2021 09:49:19 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lHjfb-0004f6-4S; Thu, 04 Mar 2021 09:49:19 +0100
Date: Thu, 4 Mar 2021 09:49:19 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210304084919.GP5549@pengutronix.de>
References: <20210301110106.3764-2-a.fatoum@pengutronix.de>
 <20210303102048.10275-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210303102048.10275-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:42:17 up 14 days, 12:06, 74 users,  load average: 0.26, 0.16, 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210304_084922_787646_2FE1A153 
X-CRM114-Status: GOOD (  19.01  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! common: introduce bthreads, co-operative barebox
 threads
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Mar 03, 2021 at 11:20:48AM +0100, Ahmad Fatoum wrote:
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/bthread.c | 142 +++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 142 insertions(+)
>  create mode 100644 commands/bthread.c
> 
> diff --git a/commands/bthread.c b/commands/bthread.c
> new file mode 100644
> index 000000000000..1fd782f03f43
> --- /dev/null
> +++ b/commands/bthread.c
> @@ -0,0 +1,142 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (C) 2021 Ahmad Fatoum, Pengutronix
> + */
> +
> +#include <bthread.h>
> +#include <errno.h>
> +#include <malloc.h>
> +#include <stdio.h>
> +#include <command.h>
> +#include <getopt.h>
> +#include <clock.h>
> +
> +static int bthread_time(void)
> +{
> +	uint64_t start = get_time_ns();
> +	int i = 0;
> +
> +	/*
> +	 * How many background tasks can we have in one second?
> +	 *
> +	 * A low number here may point to problems with bthreads taking too
> +	 * much time.
> +	 */
> +	while (!is_timeout(start, SECOND))
> +		i++;
> +
> +	return i;
> +}
> +
> +static int bthread_infinite(void *data)
> +{
> +	while (!bthread_should_stop())
> +		;
> +
> +	return 0;
> +}
> +
> +static int bthread_isolated_time(void)
> +{
> +	uint64_t start = get_time_ns();
> +	struct bthread *bthread;
> +	int i = 0;
> +
> +	bthread = bthread_create(bthread_infinite, NULL, "infinite");
> +	if (!bthread)
> +		return -ENOMEM;
> +
> +	bthread_wake(bthread);
> +
> +	/*
> +	 * How many context switches can we do in one second?
> +	 *
> +	 * A low number here may point to problems with bthreads taking too
> +	 * much time.
> +	 */
> +	while (!is_timeout_non_interruptible(start, SECOND)) {
> +		bthread_schedule(bthread);
> +		i += 2;
> +	}
> +
> +	bthread_stop(bthread);
> +	bthread_free(bthread);
> +
> +	return i;
> +}
> +
> +static int bthread_printer(void *arg)
> +{
> +	volatile u64 start;
> +	volatile int i = 0;
> +	start = get_time_ns();
> +
> +	while (!bthread_should_stop()) {
> +		if (!is_timeout_non_interruptible(start, 225 * MSECOND))
> +			continue;
> +
> +		printf("%s yield #%d\n", __func__, ++i);
> +		start = get_time_ns();
> +	}
> +
> +	return i;
> +}
> +
> +BAREBOX_CMD_HELP_START(bthread)
> +	BAREBOX_CMD_HELP_TEXT("print info about registered barebox threads")
> +	BAREBOX_CMD_HELP_TEXT("")
> +	BAREBOX_CMD_HELP_TEXT("Options:")
> +	BAREBOX_CMD_HELP_OPT ("-i", "Print information about registered bthreads")
> +	BAREBOX_CMD_HELP_OPT ("-t", "measure how many bthreads we currently run in 1s")
> +	BAREBOX_CMD_HELP_OPT ("-c", "count maximum context switches in 1s")
> +	BAREBOX_CMD_HELP_OPT ("-v", "verify correct bthread operation")
> +	BAREBOX_CMD_HELP_END
> +
> +static int do_bthread(int argc, char *argv[])
> +{
> +	struct bthread *bthread = NULL;
> +	int ret, opt;
> +	int yields;
> +
> +	while ((opt = getopt(argc, argv, "itcv")) > 0) {
> +		switch (opt) {
> +		case 'i':
> +			bthread_info();
> +			return 0;
> +		case 'c':
> +			yields = bthread_isolated_time();
> +			printf("%d bthread context switches possible in 1s\n", yields);
> +			break;
> +		case 'v':
> +			bthread = bthread_create(bthread_printer, NULL, "bthread");
> +			if (!bthread)
> +				return -ENOMEM;
> +
> +			bthread_wake(bthread);
> +
> +			/* fallthrough */
> +		case 't':
> +			yields = bthread_time();
> +			printf("%d bthread yield calls in 1s\n", yields);
> +		}
> +
> +		if (bthread) {
> +			ret = bthread_stop(bthread);
> +			bthread_free(bthread);
> +
> +			if (ret != 4 || yields < ret)
> +				return COMMAND_ERROR;
> +		}
> +
> +		return 0;
> +	}

Could you separate the option parsing from the functionality? The way it
currently is is rather hard to extend.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

