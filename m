Delivery-date: Mon, 13 Nov 2023 13:40:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2WFO-00A0sR-01
	for lore@lore.pengutronix.de;
	Mon, 13 Nov 2023 13:40:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2WFN-0005Ot-VB
	for lore@pengutronix.de; Mon, 13 Nov 2023 13:40:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=czDL0Q7ynxfwl/wusq0iA8Ghzpdhs+HWRrtDwvc1htY=; b=2YUSBkFjjR9xKDdQXDEvbcxOy1
	tEsGEBImWzg60CYF8VHM+jGJgXji2fuUbgLSIvTW+qk9GdqhK5RZOZQwEsf4KueOQmn78gQMXvdYs
	XAmuNKtOve8G+VNkn3RPdobICVGasT5P0tUPGCOBp6cn2V2kNP+9Sua1f1EL9/mlbL10+Ciexi3yc
	TJ2+SwQIDtsC7RQccgHxUEzRMdXVPj3Et4Uo84X2xq0YCAhfJzR3SDN3TsXz48fBGqnygCzcigpfj
	Xl+eiAgSdbBPK8zRZlLdBLTetNdoFvEguX9Xb3G9WShtDgXd9rTm+eYa1l82PDTDhGfKwVZTpmETv
	5tHfnWKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2WEN-00Dylq-1v;
	Mon, 13 Nov 2023 12:39:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2WEK-00DylL-1f
	for barebox@lists.infradead.org;
	Mon, 13 Nov 2023 12:39:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r2WEI-0005Db-V1; Mon, 13 Nov 2023 13:39:50 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r2WEI-008jx3-IY; Mon, 13 Nov 2023 13:39:50 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r2WEI-001oom-GK; Mon, 13 Nov 2023 13:39:50 +0100
Date: Mon, 13 Nov 2023 13:39:50 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231113123950.GO3359458@pengutronix.de>
References: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
 <20231110214421.2726093-16-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231110214421.2726093-16-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231113_043952_559478_A4A853C3 
X-CRM114-Status: GOOD (  19.97  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 15/18] include: add blocking notifier aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Nov 10, 2023 at 10:44:18PM +0100, Ahmad Fatoum wrote:
> All notifiers are blocking in barebox, but to avoid needless mechanical
> fixups during porting, just provide the stubs in a new
> <linux/notifier.h> header. While at it, also provide NOTIFY_DONE and
> NOTIFY_DONE for use in the notifier callbacks.

The 2nd NOTIFY_DONE s/NOTIFY_DONE/NOTIFY_OK/

Sascha

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/notifier.h | 16 ++++++++++++++++
>  include/notifier.h       |  3 +++
>  2 files changed, 19 insertions(+)
>  create mode 100644 include/linux/notifier.h
> 
> diff --git a/include/linux/notifier.h b/include/linux/notifier.h
> new file mode 100644
> index 000000000000..25f4921a3e80
> --- /dev/null
> +++ b/include/linux/notifier.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +#ifndef __LINUX_NOTIFIER_H
> +#define __LINUX_NOTIFIER_H
> +
> +#include <notifier.h>
> +
> +#define BLOCKING_NOTIFIER_HEAD			NOTIFIER_HEAD
> +
> +#define blocking_notifier_call_chain		notifier_call_chain
> +
> +#define blocking_notifier_head			notifier_head
> +
> +#define blocking_notifier_chain_register	notifier_chain_register
> +#define blocking_notifier_chain_unregister	notifier_chain_unregister
> +
> +#endif
> diff --git a/include/notifier.h b/include/notifier.h
> index 432b66c4ca5a..093fedb0e8e4 100644
> --- a/include/notifier.h
> +++ b/include/notifier.h
> @@ -35,4 +35,7 @@ int clock_notifier_call_chain(void);
>  		.blocks = LIST_HEAD_INIT((name).blocks),	\
>  	};
>  
> +#define NOTIFY_DONE		0x0000		/* Don't care */
> +#define NOTIFY_OK		0x0001		/* Suits me */
> +
>  #endif /* __NOTIFIER_H */
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


