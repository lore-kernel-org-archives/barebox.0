Delivery-date: Fri, 10 Feb 2023 10:53:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQQ6B-002oiE-Er
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 10:53:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQQ68-0007G3-M1
	for lore@pengutronix.de; Fri, 10 Feb 2023 10:53:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FTJsN/DhG0GcMFr2ly8lFJ/Xlpo5HkX9nBv2R9NRjsw=; b=ruzSm7AziRUP6ILA9uJ4i1TyQU
	7hN794XNsP8KvcQBAiNoNBmYUFgMuhjlrtJmTapPVX7I0iKLaeVJdVDY1iETOJbdYsPvUjs0WS3su
	YOlvVu6Z+qauorCTRhwdrqhZUXsgZi68L+sGy5/lyfu4ETrgS9/UEon/Bk2k5diOACmGZX1wxlKHJ
	SIfeBRtg1zyNrAxts8gdkx6dkAIw5O8fFwdenpfc9PFwC5c9q+Uffr4rAxPyFLFz7y0C/A7UXcys3
	nB71uzsF80vss0pQDYE+vEaULfcrgwXvpP2wvK0ayYzSCbYSsdJGoy7m9LRHeSR31jzvdC6nrWZET
	lKjktUXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQQ4x-005A8n-CF; Fri, 10 Feb 2023 09:52:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQQ4t-005A7s-C5
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 09:52:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pQQ4r-00078P-R7; Fri, 10 Feb 2023 10:52:21 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pQQ4r-0003tx-Bf; Fri, 10 Feb 2023 10:52:21 +0100
Date: Fri, 10 Feb 2023 10:52:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230210095221.GV10447@pengutronix.de>
References: <20230209143751.854897-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230209143751.854897-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_015223_431294_4DDBE09C 
X-CRM114-Status: GOOD (  19.71  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] nvme: parse partition table when registering a block
 device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 09, 2023 at 05:37:51PM +0300, Denis Orlov wrote:
> Otherwise, we can not access file systems located on partitioned NVME
> drives.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> ---
>  drivers/nvme/host/core.c | 5 +++++
>  1 file changed, 5 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 79a5f9325e..bf9176ce09 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1,5 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  #include <common.h>
> +#include <disks.h>
>  
>  #include "nvme.h"
>  
> @@ -372,6 +373,10 @@ static void nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
>  		goto out_free_id;
>  	}
>  
> +	ret = parse_partition_table(&ns->blk);
> +	if (ret)
> +		dev_warn(ctrl->dev, "No partition table found\n");
> +
>  	return;
>  out_free_id:
>  	kfree(id);
> -- 
> 2.30.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


