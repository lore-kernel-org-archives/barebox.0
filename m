Delivery-date: Fri, 16 Sep 2022 15:17:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZBE6-006hE8-5t
	for lore@lore.pengutronix.de; Fri, 16 Sep 2022 15:17:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZBE3-00069c-Bs
	for lore@pengutronix.de; Fri, 16 Sep 2022 15:17:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ogaucMCSWv68ZtsLe9lUm6EbDjViM3SNPoT3Wf0WHpo=; b=bxC9KuWgNlwTMxfkIoaC4x8fbz
	LT63FfupLiWlDu3wzsQHwK8T+oxK4UR4pNv6vtc266VLEf6BgE7joKKma8mRlsNDT9wE0VW2vF8HB
	8FDX+9FSLezhJT8zdh1w2krh54T6FH3LF+2b+xip51vIuUB02DPtGCJVsk4JaWOraPjyn5+G/WfT8
	YxQYSSLrH3pBIW65mbjizSjQ2Dc/CXgivj5EDDp7cJz4iRKb334zH5AoFXLfyq1o84WmHPwWWngyD
	KivaDfaI4ieIdHkQ+ERXGT9YX7kIvgFXFMqk27TrYQt+YE8z2tctfqgCBhCwmbXNuvBCT+UiA2w6D
	Bb+jmd2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZBCa-00DYR9-FI; Fri, 16 Sep 2022 13:16:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZBCT-00DYOO-9S
	for barebox@lists.infradead.org; Fri, 16 Sep 2022 13:16:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oZBCR-0005z8-5I; Fri, 16 Sep 2022 15:16:07 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oZBCQ-0005W9-SA; Fri, 16 Sep 2022 15:16:06 +0200
Date: Fri, 16 Sep 2022 15:16:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220916131606.GZ6477@pengutronix.de>
References: <20220916124942.3751131-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220916124942.3751131-1-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_061609_348385_B75EA0AE 
X-CRM114-Status: GOOD (  22.40  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: Bring up all interfaces before going interactive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Sep 16, 2022 at 02:49:42PM +0200, Sascha Hauer wrote:
> So far we only bring up network interfaces when we actually need them.
> This means we could be idling in the shell for long and once the user
> decides to do networking he has to wait for the link to be established.
> We can do better: Before going interactive bring up all known network
> interfaces which makes the links established when the user needs them.
> 
> To implement this we have to rework carrier checking a bit, because
> otherwise barebox would wait for the links to be established before
> dropping to the shell.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/startup.c |  3 +++
>  include/net.h    |  3 +++
>  net/eth.c        | 34 +++++++++++++++++++++-------------
>  3 files changed, 27 insertions(+), 13 deletions(-)
> 
> diff --git a/common/startup.c b/common/startup.c
> index f53b73f81a..f63a0ae7d5 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -37,6 +37,7 @@
>  #include <linux/ctype.h>
>  #include <watchdog.h>
>  #include <glob.h>
> +#include <net.h>
>  #include <bselftest.h>
>  
>  extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
> @@ -208,6 +209,8 @@ enum autoboot_state do_autoboot_countdown(void)
>  				&outkey);
>  	command_slice_acquire();
>  
> +	eth_open_all();
> +

We could make the user experience even a bit better by doing this call
before waiting for the autoboot timeout which then speeds up netboot a
bit.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


